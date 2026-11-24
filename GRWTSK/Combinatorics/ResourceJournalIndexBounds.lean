import GRWTSK.Combinatorics.ResourceJournalPrefixIndex

/-!
# Index calibration and four-coordinate dominance
Math #1851 / PR #1853. SOURCE_PROOF_CANDIDATE, NOT_RUN.

The coefficients are in a declared work or elapsed unit. A measured mean
or a fitted regression is NOT a hard per-operation bound. The incumbent
copy-byte lower bound requires the declared encoding and actual mandatory
copies; a resident lower bound additionally requires simultaneous residency.
The replacement upper bound includes every operation and simultaneously live
object, ingress, failed attempts, migration, finalization, and required
observations. A disk index may visit additional pages; row counts alone do
not bound database work. No wall-time calibration is assumed.
-/
set_option autoImplicit false

namespace GRWTSK.ResourceAttainability.JournalIndexBounds

open JournalEconomics

def prefixAppendReads : Nat → Nat
  | 0 => 0
  | n+1 => prefixAppendReads n+n

theorem prefixAppendReads_twice_succ (n : Nat) :
    2*prefixAppendReads (n+1) = n*(n+1) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [prefixAppendReads]
    calc
      2*(prefixAppendReads (n+1)+(n+1)) =
          2*prefixAppendReads (n+1)+2*(n+1) := by ring
      _ = (n+1)*(n+1+1) := by rw [ih]; ring

theorem prefixAppendReads_twice (n : Nat) :
    2*prefixAppendReads n = n*(n-1) := by
  cases n with
  | zero => rfl
  | succ n => simpa [Nat.mul_comm] using prefixAppendReads_twice_succ n

/-- Reference algorithm reconstructs the whole current prefix on append.
Cache refinement, failed appends, reopen and other readouts are separate.
The query list contains every occurrence, not a set. -/
def totalFetchSlots (n : Nat) (queries : List Nat) : Nat :=
  prefixAppendReads n + (queries.map JournalIndex.indexedFetchSlots).sum

theorem totalFetchSlots_bound (n : Nat) (queries : List Nat)
    (h : ∀ i ∈ queries, i < n) :
    totalFetchSlots n queries ≤ prefixAppendReads n + queries.length*n := by
  have hsum : (queries.map JournalIndex.indexedFetchSlots).sum ≤ queries.length*n := by
    induction queries with
    | nil => simp
    | cons i qs ih =>
      have hi : i < n := h i (by simp)
      have ht : ∀ j ∈ qs, j < n := fun j hj => h j (List.mem_cons.mpr (Or.inr hj))
      have hh := ih ht
      simp only [List.map_cons, List.sum_cons, List.length_cons, JournalIndex.indexedFetchSlots,
        Nat.succ_mul]
      omega
  exact Nat.add_le_add_left hsum _

/-- Concrete operation categories; units within each category must be
declared and independently calibrated. Include all exceptional work in
other, not as free operations. -/
structure Counters where
  indexVisits : Nat
  fetchedRows : Nat
  decodedBytes : Nat
  hashedBytes : Nat
  observerSteps : Nat
  emittedBytes : Nat
  persistedBytes : Nat
  transactions : Nat
  other : Nat

def charge (counts rates : Counters) : Nat :=
  counts.indexVisits*rates.indexVisits +
  counts.fetchedRows*rates.fetchedRows +
  counts.decodedBytes*rates.decodedBytes +
  counts.hashedBytes*rates.hashedBytes +
  counts.observerSteps*rates.observerSteps +
  counts.emittedBytes*rates.emittedBytes +
  counts.persistedBytes*rates.persistedBytes +
  counts.transactions*rates.transactions +
  counts.other*rates.other

/-- Absolute simultaneous occupancy, not sum of non-overlapping peaks.
The old lower and new upper sides intentionally use different information. -/
structure Calibration where
  baseTraceBytes : Nat
  eventBytes : List Nat
  oldCommonStoredLower : Nat
  oldCommonWorkLower : Nat
  oldCopyWorkPerByteLower : Nat
  oldResidentLower : Nat
  oldCommonTimeLower : Nat
  oldCopyTimePerByteLower : Nat
  newEncodedPhases : List LivePhase
  newResidentPhases : List LivePhase
  newCounters : Counters
  newWorkRatesUpper : Counters
  newTimeRatesUpper : Counters
  newFixedWorkUpper : Nat
  newFixedTimeUpper : Nat

def Calibration.copyBytes (p : Calibration) : Nat :=
  copiedBytes p.baseTraceBytes p.eventBytes

def vec4 (b w s t : Nat) : ResourceVec :=
  fun i => if i=0 then b else if i=1 then w else if i=2 then s else t

theorem vec4_le_iff (b w s t b' w' s' t' : Nat) :
    vec4 b w s t ≤ vec4 b' w' s' t' ↔
      b ≤ b' ∧ w ≤ w' ∧ s ≤ s' ∧ t ≤ t' := by
  constructor
  · intro h
    exact ⟨by simpa [vec4] using h 0, by simpa [vec4] using h 1,
      by simpa [vec4] using h 2, by simpa [vec4] using h 3⟩
  · rintro ⟨hb,hw,hs,ht⟩ i
    fin_cases i <;> simp [vec4, *]

def Calibration.lower (p : Calibration) : ResourceVec :=
  vec4 (p.oldCommonStoredLower+p.copyBytes)
    (p.oldCommonWorkLower+p.copyBytes*p.oldCopyWorkPerByteLower)
    p.oldResidentLower
    (p.oldCommonTimeLower+p.copyBytes*p.oldCopyTimePerByteLower)

def Calibration.upper (p : Calibration) : ResourceVec :=
  vec4 (livePeak p.newEncodedPhases)
    (p.newFixedWorkUpper+charge p.newCounters p.newWorkRatesUpper)
    (livePeak p.newResidentPhases)
    (p.newFixedTimeUpper+charge p.newCounters p.newTimeRatesUpper)

theorem calibration_four_iff (p : Calibration) :
    p.upper ≤ p.lower ↔
      (∀ phase ∈ p.newEncodedPhases,
        phase.total ≤ p.oldCommonStoredLower+p.copyBytes) ∧
      p.newFixedWorkUpper+charge p.newCounters p.newWorkRatesUpper ≤
        p.oldCommonWorkLower+p.copyBytes*p.oldCopyWorkPerByteLower ∧
      (∀ phase ∈ p.newResidentPhases, phase.total ≤ p.oldResidentLower) ∧
      p.newFixedTimeUpper+charge p.newCounters p.newTimeRatesUpper ≤
        p.oldCommonTimeLower+p.copyBytes*p.oldCopyTimePerByteLower := by
  unfold Calibration.upper Calibration.lower
  rw [vec4_le_iff, live_peak_break_even, live_peak_break_even]

/-- A calibration is a certificate only with these separate refinement
inequalities for the actual witness costs. -/
theorem calibrated_cost_le (p : Calibration) (oldCost newCost : ResourceVec)
    (oldRefines : p.lower ≤ oldCost) (newRefines : newCost ≤ p.upper)
    (fits : p.upper ≤ p.lower) : newCost ≤ oldCost :=
  le_trans newRefines (le_trans fits oldRefines)

universe u v w
variable {State : Type u} {Claim : Type v}

def ScopedAttainable (A : ExecutionModel.{u,v,w} State Claim)
    (I : State) (j : Mode) (r : ResourceVec) (p : Claim)
    (scope : A.Witness → Prop) : Prop :=
  ∃ e, scope e ∧ A.valid I j p e ∧ A.cost I j p e ≤ r

/-- The scope is an actual predicate over incumbent witnesses. A paired
context predicate can express exact protected replay. It is not inferred
from an equal resource vector. The conclusion is scoped, not universal. -/
theorem scoped_dominance_of_calibration
    (A : ExecutionModel.{u,v,w} State Claim) (I J : State)
    (j : Mode) (p : Claim) (scope : A.Witness → Prop)
    (contextual : A.Witness → A.Witness → Prop)
    (transport : ∀ e, scope e → A.valid I j p e →
      ∃ f, A.valid J j p f ∧ contextual e f ∧
        ∃ c : Calibration, c.lower ≤ A.cost I j p e ∧
          A.cost J j p f ≤ c.upper ∧ c.upper ≤ c.lower)
    (r : ResourceVec) (h : ScopedAttainable A I j r p scope) :
    Attainable A J j r p := by
  obtain ⟨e,hs,hv,hcost⟩ := h
  obtain ⟨f,hf,_,c,hl,hu,hfit⟩ := transport e hs hv
  exact ⟨f,hf,le_trans (calibrated_cost_le c _ _ hl hu hfit) hcost⟩

/-- Only all-mode, all-witness coverage and deductive-content equality
permit the global filtration conclusion. -/
theorem universal_dominance_of_calibration
    (A : ExecutionModel.{u,v,w} State Claim) (I J : State)
    (content : ∀ p, A.derives I p ↔ A.derives J p)
    (transport : ∀ j p e, A.valid I j p e →
      ∃ f, A.valid J j p f ∧
        ∃ c : Calibration, c.lower ≤ A.cost I j p e ∧
          A.cost J j p f ≤ c.upper ∧ c.upper ≤ c.lower) :
    FiltrationImproves A I J := by
  refine ⟨content,?_⟩
  intro j r p hr
  obtain ⟨e,he,hcost⟩ := hr
  obtain ⟨f,hf,c,hl,hu,hfit⟩ := transport j p e he
  exact ⟨f,hf,le_trans (calibrated_cost_le c _ _ hl hu hfit) hcost⟩

end GRWTSK.ResourceAttainability.JournalIndexBounds
