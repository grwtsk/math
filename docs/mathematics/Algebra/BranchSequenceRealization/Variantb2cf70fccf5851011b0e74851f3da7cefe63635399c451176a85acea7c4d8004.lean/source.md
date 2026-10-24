# Complete source: GRWTSK.Algebra.BranchSequenceRealization.Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b39d6cf29e119cfff1a261c954d91201d85c2137` · SHA-256 `b2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence
import Mathlib.Algebra.ContinuedFractions.Computation.TerminatesIffRat
import Mathlib.Data.Nat.Fib.Basic
import Mathlib.NumberTheory.Real.Irrational
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Topology.Instances.ENNReal.Lemmas
import Mathlib.Topology.Order.LiminfLimsup

/-!
# Independent sequence scheduling and continued-fraction adapters

User-supplied sequence-role separation, 2026-10-10, inspired by arXiv
2110.07974v2. Every total integer sequence has a bounded, fair batch-clock
realization when the stage budgets are positive. Infinite positive partial
quotients instead generate genuine native continued-fraction continuants.
A real-frequency certificate requires identification with `GenContFract.of`;
its existence for every positive stream is not proved here. Neither role
supplies the CCC pickup identification or its open polynomial cross bound.

Indices: `a 0` is a₁; q₀=1, q₁=a₁ and
qₙ₊₂=aₙ₊₂ qₙ₊₁+qₙ. In particular q₀=q₁=1 is permitted.
The arithmetic exponent takes values in ℝ≥0∞ so infinite limsup is retained.
Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchSequenceRealization

open Filter
open scoped Topology

/-- Normalize arbitrary signed source terms using a declared stage budget. -/
def batchIncrement (b : ℕ → ℤ) (B : ℕ → ℕ) (n : ℕ) : ℕ :=
  1 + min (B n - 1) (b n).natAbs

/-- The clock counts obligations, independently of their truth or disposition. -/
def batchClock (d : ℕ → ℕ) : ℕ → ℕ
  | 0 => 0
  | n + 1 => batchClock d n + d n

/-- Every normalized stage is nonempty. -/
theorem batchIncrement_pos (b : ℕ → ℤ) (B : ℕ → ℕ) (n : ℕ) :
    0 < batchIncrement b B n := by
  unfold batchIncrement
  omega

/-- A positive budget is respected even by negative or enormous source terms. -/
theorem batchIncrement_le (b : ℕ → ℤ) (B : ℕ → ℕ) {n : ℕ} (hB : 1 ≤ B n) :
    batchIncrement b B n ≤ B n := by
  have h := Nat.min_le_left (B n - 1) (b n).natAbs
  unfold batchIncrement
  omega

/-- A positive-increment clock reaches at least its stage index. -/
theorem index_le_batchClock (d : ℕ → ℕ) (hd : ∀ n, 0 < d n) (n : ℕ) :
    n ≤ batchClock d n := by
  induction n with
  | zero => simp [batchClock]
  | succ n ih => rw [batchClock]; have := hd n; omega

/-- Positive increments give strictly increasing checkpoint positions. -/
theorem batchClock_strictMono (d : ℕ → ℕ) (hd : ∀ n, 0 < d n) :
    StrictMono (batchClock d) := by
  apply strictMono_nat_of_lt_succ
  intro n
  rw [batchClock]
  exact Nat.lt_add_of_pos_right (hd n)

/-- The realized clock diverges regardless of the raw sequence's growth. -/
theorem batchClock_tendsto (d : ℕ → ℕ) (hd : ∀ n, 0 < d n) :
    Tendsto (batchClock d) atTop atTop := by
  exact tendsto_atTop_mono (index_le_batchClock d hd) tendsto_id

/-- Every obligation index lies in exactly one contiguous batch. -/
theorem unique_batch (d : ℕ → ℕ) (hd : ∀ n, 0 < d n) (j : ℕ) :
    ∃! n, batchClock d n ≤ j ∧ j < batchClock d (n + 1) := by
  have hex : ∃ n, j < batchClock d n :=
    ⟨j + 1, lt_of_lt_of_le (Nat.lt_succ_self j) (index_le_batchClock d hd (j + 1))⟩
  let k := Nat.find hex
  have hk : j < batchClock d k := Nat.find_spec hex
  have hk0 : k ≠ 0 := by
    intro he
    simp [he, batchClock] at hk
  obtain ⟨n, hn⟩ := Nat.exists_eq_succ_of_ne_zero hk0
  have hnle : batchClock d n ≤ j := by
    have h := Nat.find_min hex (show n < Nat.find hex by change n < k; omega)
    omega
  have hnlt : j < batchClock d (n + 1) := by simpa [hn] using hk
  refine ⟨n, ⟨hnle, hnlt⟩, ?_⟩
  intro m hm
  have hmono := (batchClock_strictMono d hd).monotone
  rcases lt_trichotomy m n with h | h | h
  · have := hmono (show m + 1 ≤ n by omega)
    omega
  · exact h
  · have := hmono (show n + 1 ≤ m by omega)
    omega

/-- Each member of a nonempty finite epoch reappears at arbitrarily late indices
and each such index belongs to a unique stage. This is scheduling, not signoff. -/
theorem epoch_no_starvation (d : ℕ → ℕ) (hd : ∀ n, 0 < d n)
    {size r : ℕ} (hr : r < size) (lower : ℕ) :
    ∃ j, lower ≤ j ∧ j % size = r ∧
      ∃! n, batchClock d n ≤ j ∧ j < batchClock d (n + 1) := by
  have hs : 1 ≤ size := by omega
  refine ⟨r + lower * size, ?_, ?_, unique_batch d hd _⟩
  · have := Nat.mul_le_mul_left lower hs
    omega
  · simp [Nat.add_mod, Nat.mod_eq_of_lt hr]

/-- Source terms drive positive partial quotients, rather than being denominators. -/
def partialQuotient (b : ℕ → ℤ) (n : ℕ) : ℕ := 1 + (b n).natAbs

/-- The infinite native simple fraction [0;a₁,a₂,...]. -/
def continuedFraction (a : ℕ → ℕ) : GenContFract ℝ :=
  ⟨0, Stream'.Seq.ofStream (fun n ↦ ⟨1, (a n : ℝ)⟩)⟩

/-- Natural denominator continuants, with the initial q₋₁=0 already absorbed. -/
def denominator (a : ℕ → ℕ) : ℕ → ℕ
  | 0 => 1
  | 1 => a 0
  | n + 2 => a (n + 1) * denominator a (n + 1) + denominator a n

/-- Natural numerator continuants for head zero. -/
def numerator (a : ℕ → ℕ) : ℕ → ℕ
  | 0 => 0
  | 1 => 1
  | n + 2 => a (n + 1) * numerator a (n + 1) + numerator a n

/-- The source-to-partial-quotient adapter always has positive coefficients. -/
theorem partialQuotient_pos (b : ℕ → ℤ) (n : ℕ) : 0 < partialQuotient b n := by
  unfold partialQuotient
  omega

/-- The constructed fraction has all its declared terms, without truncation. -/
theorem continuedFraction_term (a : ℕ → ℕ) (n : ℕ) :
    (continuedFraction a).s.get? n = some ⟨1, (a n : ℝ)⟩ := rfl

/-- An infinite supplied stream does not terminate. -/
theorem continuedFraction_not_terminates (a : ℕ → ℕ) :
    ¬ (continuedFraction a).Terminates := by
  rintro ⟨n, hn⟩
  change some _ = none at hn
  contradiction

/-- Exact agreement with native numerator and denominator continuants. -/
theorem native_continuants (a : ℕ → ℕ) (n : ℕ) :
    (continuedFraction a).conts n =
      ⟨(numerator a n : ℝ), (denominator a n : ℝ)⟩ := by
  induction n using Nat.twoStepInduction with
  | zero =>
    change (continuedFraction a).contsAux 1 = _
    simp [GenContFract.contsAux, continuedFraction, numerator, denominator]
  | one =>
    change (continuedFraction a).contsAux 2 = _
    simpa [numerator, denominator, continuedFraction, GenContFract.contsAux] using
      (GenContFract.contsAux_recurrence (continuedFraction_term a 0) rfl rfl)
  | more n ih ih' =>
    rw [GenContFract.conts_recurrence (continuedFraction_term a (n + 1)) ih ih']
    simp [numerator, denominator, Nat.cast_add, Nat.cast_mul]

/-- All natural denominators are positive for positive partial quotients. -/
theorem denominator_pos (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) (n : ℕ) :
    0 < denominator a n := by
  induction n using Nat.twoStepInduction with
  | zero => simp [denominator]
  | one => exact ha 0
  | more n ih ih' => rw [denominator]; omega

/-- Even the smallest coefficients give the Fibonacci lower bound. -/
theorem fib_le_denominator (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) (n : ℕ) :
    Nat.fib (n + 1) ≤ denominator a n := by
  induction n using Nat.twoStepInduction with
  | zero => simp [denominator]
  | one => simpa [denominator] using (Nat.succ_le_of_lt (ha 0))
  | more n ih ih' =>
    rw [denominator, Nat.fib_add_two]
    have hmul := Nat.mul_le_mul_right (denominator a (n + 1)) (ha (n + 1))
    omega

/-- Denominator growth has a direct linear lower bound, including the equal initial pair. -/
theorem index_le_denominator (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) (n : ℕ) :
    n ≤ denominator a n := by
  induction n using Nat.twoStepInduction with
  | zero => omega
  | one => exact ha 0
  | more n ih ih' =>
    rw [denominator]
    have hp := denominator_pos a ha n
    have hmul := Nat.mul_le_mul_right (denominator a (n + 1)) (ha (n + 1))
    omega

/-- Genuine denominator continuants diverge. -/
theorem denominator_tendsto (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) :
    Tendsto (denominator a) atTop atTop :=
  tendsto_atTop_mono (index_le_denominator a ha) tendsto_id

/-- Ones produce exactly Fibonacci denominators, with q₀=q₁=1. -/
theorem denominator_ones (n : ℕ) : denominator (fun _ ↦ 1) n = Nat.fib (n + 1) := by
  induction n using Nat.twoStepInduction with
  | zero => simp [denominator]
  | one => simp [denominator]
  | more n ih ih' =>
    rw [denominator, ih, ih', Nat.one_mul]
    simpa only [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
      (Nat.fib_add_two (n := n + 1)).symm

/-- Direct denominators must satisfy the positive-integral recurrence. -/
def DenominatorRecurrence (q : ℕ → ℕ) : Prop :=
  q 0 = 1 ∧ ∃ a : ℕ → ℕ, (∀ n, 0 < a n) ∧ q 1 = a 0 ∧
    ∀ n, q (n + 2) = a (n + 1) * q (n + 1) + q n

/-- The generated denominators satisfy the required arithmetic recurrence. -/
theorem generated_denominator_recurrence (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) :
    DenominatorRecurrence (denominator a) :=
  ⟨rfl, a, ha, rfl, fun _ ↦ rfl⟩

/-- A positive-integral recurrence fixes the entire denominator stream. -/
theorem denominator_recurrence_identifies {q : ℕ → ℕ} (h : DenominatorRecurrence q) :
    ∃ a : ℕ → ℕ, (∀ n, 0 < a n) ∧ q = denominator a := by
  obtain ⟨h0, a, ha, h1, hrec⟩ := h
  refine ⟨a, ha, funext fun n ↦ ?_⟩
  induction n using Nat.twoStepInduction with
  | zero => exact h0
  | one => exact h1
  | more n ih ih' => rw [hrec, ih, ih']; rfl

/-- Ordinary powers of two are legal driver terms but fail the denominator recurrence. -/
theorem powers_two_not_denominators : ¬ DenominatorRecurrence (fun n ↦ 2 ^ n) := by
  rintro ⟨_, a, _, _, hrec⟩
  have h := hrec 0
  norm_num at h
  omega

/-- A conservative integer growth-target coefficient; exact multiples may overshoot
by one coefficient. The previous denominator is retained. -/
def growthCoefficient (target previous current : ℕ) : ℕ :=
  1 + (target - previous) / current

/-- The growth-target coefficient is always positive. -/
theorem growthCoefficient_pos (target previous current : ℕ) :
    0 < growthCoefficient target previous current := by
  simpa only [growthCoefficient, Nat.add_comm] using
    Nat.succ_pos ((target - previous) / current)

/-- Every lower growth target can be met by a genuine recurrence step. -/
theorem growthCoefficient_meets_target (target previous current : ℕ) (hc : 0 < current) :
    target ≤ growthCoefficient target previous current * current + previous := by
  by_cases hp : previous ≤ target
  · have h := Nat.lt_mul_div_succ (target - previous) hc
    have hs := Nat.sub_add_cancel hp
    have hb : target - previous < growthCoefficient target previous current * current := by
      simpa [growthCoefficient, Nat.mul_comm, Nat.add_comm] using h
    omega
  · exact (le_of_lt (lt_of_not_ge hp)).trans (Nat.le_add_left _ _)

/-- Consecutive genuine denominator continuants are coprime. -/
theorem denominator_coprime (a : ℕ → ℕ) (n : ℕ) :
    Nat.Coprime (denominator a n) (denominator a (n + 1)) := by
  induction n with
  | zero => simp [denominator]
  | succ n ih =>
    rw [denominator, Nat.add_comm (a (n + 1) * denominator a (n + 1)) (denominator a n),
      Nat.coprime_add_mul_right_right]
    exact ih.symm

/-- Genuine denominators are nondecreasing, permitting only the initial tie. -/
theorem denominator_le_succ (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) (n : ℕ) :
    denominator a n ≤ denominator a (n + 1) := by
  cases n with
  | zero => simpa [denominator] using Nat.succ_le_of_lt (ha 0)
  | succ n =>
    rw [denominator]
    have h := Nat.mul_le_mul_right (denominator a (n + 1))
      (Nat.succ_le_of_lt (ha (n + 1)))
    omega

/-- The denominator recurrence retains its predecessor modulo the current denominator. -/
theorem denominator_remainder (a : ℕ → ℕ) (n : ℕ) :
    denominator a (n + 2) % denominator a (n + 1) =
      denominator a n % denominator a (n + 1) := by
  simp [denominator, Nat.add_mod]

/-- The frequency arithmetic exponent is an extended nonnegative limsup. It is
assigned to a real frequency only after actual continued-fraction identification. -/
def arithmeticExponent (q : ℕ → ℕ) : ENNReal :=
  limsup (fun n ↦ ENNReal.ofReal (Real.log (q (n + 1) : ℝ) / (q n : ℝ))) atTop

/-- Bounded successive ratios and diverging denominators force zero arithmetic exponent. -/
theorem log_ratio_tendsto_zero (q : ℕ → ℕ) (hq : ∀ n, 0 < q n)
    (htop : Tendsto q atTop atTop) {C : ℝ} (hC : 0 < C)
    (hbound : ∀ n, (q (n + 1) : ℝ) ≤ C * (q n : ℝ)) :
    Tendsto (fun n ↦ Real.log (q (n + 1) : ℝ) / (q n : ℝ)) atTop (𝓝 0) := by
  have hr : Tendsto (fun n ↦ (q n : ℝ)) atTop atTop :=
    tendsto_natCast_atTop_atTop.comp htop
  have hlog : Tendsto (fun n ↦ Real.log (q n : ℝ) / (q n : ℝ)) atTop (𝓝 0) := by
    simpa [Function.comp_def] using
      (Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero).comp hr
  have hup : Tendsto (fun n ↦ (Real.log C + Real.log (q n : ℝ)) / (q n : ℝ))
      atTop (𝓝 0) := by
    simpa only [add_div, add_zero] using (tendsto_const_nhds.div_atTop hr).add hlog
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds hup
  · intro n
    exact div_nonneg (Real.log_nonneg (by exact_mod_cast Nat.succ_le_of_lt (hq (n + 1))))
      (Nat.cast_nonneg _)
  · intro n
    have hn : (0 : ℝ) < q n := by exact_mod_cast hq n
    have hs : (0 : ℝ) < q (n + 1) := by exact_mod_cast hq (n + 1)
    have he := Real.log_le_log hs (hbound n)
    rw [Real.log_mul (ne_of_gt hC) (ne_of_gt hn)] at he
    exact div_le_div_of_nonneg_right he (le_of_lt hn)

/-- The bounded-ratio result uses the complete extended exponent, without a
real-valued fallback for infinite limsup. -/
theorem arithmeticExponent_zero_of_bounded_ratio (q : ℕ → ℕ) (hq : ∀ n, 0 < q n)
    (htop : Tendsto q atTop atTop) {C : ℝ} (hC : 0 < C)
    (hbound : ∀ n, (q (n + 1) : ℝ) ≤ C * (q n : ℝ)) :
    arithmeticExponent q = 0 := by
  have h := (ENNReal.tendsto_ofReal (log_ratio_tendsto_zero q hq htop hC hbound)).limsup_eq
  simpa [arithmeticExponent] using h

/-- The Fibonacci control profile has arithmetic exponent zero. -/
theorem fibonacci_arithmeticExponent_zero :
    arithmeticExponent (denominator (fun _ ↦ 1)) = 0 := by
  apply arithmeticExponent_zero_of_bounded_ratio _
    (denominator_pos _ (fun _ ↦ by norm_num))
    (denominator_tendsto _ (fun _ ↦ by norm_num)) (C := 2) (by norm_num)
  intro n
  cases n with
  | zero => norm_num [denominator]
  | succ n =>
    have h := denominator_le_succ (fun _ ↦ 1) (fun _ ↦ by norm_num) n
    have hn : denominator (fun _ ↦ 1) (n + 2) ≤
        2 * denominator (fun _ ↦ 1) (n + 1) := by rw [denominator]; omega
    exact_mod_cast hn

/-- Quantified spike strength becomes a positive integral partial quotient. -/
def spikeCoefficient (gamma : ℝ) (current : ℕ) : ℕ :=
  Nat.ceil (Real.exp (gamma * current))

/-- The predecessor is retained in every spike recurrence step. -/
def spikeStep (gamma : ℝ) (previous current : ℕ) : ℕ :=
  spikeCoefficient gamma current * current + previous

/-- Every exponential spike coefficient is positive, including gamma zero. -/
theorem spikeCoefficient_pos (gamma : ℝ) (current : ℕ) :
    0 < spikeCoefficient gamma current := Nat.ceil_pos.2 (Real.exp_pos _)

/-- Zero effective strength recovers the modest partial quotient one. -/
theorem spikeCoefficient_zero (current : ℕ) : spikeCoefficient 0 current = 1 := by
  simp [spikeCoefficient]

/-- The actual recurrence's logarithmic rate lies within a vanishing envelope
of its nonnegative effective strength, with rounding and predecessor charged. -/
theorem spike_rate_bounds {gamma : ℝ} {previous current : ℕ}
    (hgamma : 0 ≤ gamma) (hcurrent : 0 < current) (hprevious : previous ≤ current) :
    gamma ≤ Real.log (spikeStep gamma previous current : ℝ) / (current : ℝ) ∧
    Real.log (spikeStep gamma previous current : ℝ) / (current : ℝ) ≤
      gamma + (Real.log 3 + Real.log (current : ℝ)) / (current : ℝ) := by
  have hc : (0 : ℝ) < current := by exact_mod_cast hcurrent
  have hc1 : (1 : ℝ) ≤ current := by exact_mod_cast Nat.succ_le_of_lt hcurrent
  have hp : (previous : ℝ) ≤ current := by exact_mod_cast hprevious
  have he1 : 1 ≤ Real.exp (gamma * current) := Real.one_le_exp_iff.2
    (mul_nonneg hgamma (Nat.cast_nonneg _))
  have hl := Nat.le_ceil (Real.exp (gamma * current))
  have hu := Nat.ceil_lt_add_one (le_of_lt (Real.exp_pos (gamma * current)))
  have hcast : (spikeStep gamma previous current : ℝ) =
      (spikeCoefficient gamma current : ℝ) * current + previous := by
    simp [spikeStep]
  have hlo : Real.exp (gamma * current) ≤ (spikeStep gamma previous current : ℝ) := by
    rw [hcast]
    change Real.exp (gamma * current) ≤
      (Nat.ceil (Real.exp (gamma * current)) : ℝ) * current + previous
    nlinarith [show (0 : ℝ) ≤ previous from Nat.cast_nonneg previous]
  have hhi : (spikeStep gamma previous current : ℝ) ≤
      3 * Real.exp (gamma * current) * current := by
    rw [hcast]
    change (Nat.ceil (Real.exp (gamma * current)) : ℝ) * current + previous ≤ _
    nlinarith
  have hs := lt_of_lt_of_le (Real.exp_pos _) hlo
  constructor
  · have h := Real.log_le_log (Real.exp_pos _) hlo
    rw [Real.log_exp] at h
    exact (le_div_iff₀ hc).2 h
  · have h := Real.log_le_log hs hhi
    rw [Real.log_mul (by positivity) (ne_of_gt hc),
      Real.log_mul (by norm_num : (3 : ℝ) ≠ 0) (ne_of_gt (Real.exp_pos _)),
      Real.log_exp] at h
    apply (div_le_iff₀ hc).2
    have he := div_mul_cancel₀ (Real.log 3 + Real.log (current : ℝ)) (ne_of_gt hc)
    nlinarith

/-- Only selected spike strengths enter the arithmetic control stream. -/
def effectiveStrength (selected : ℕ → Bool) (gamma : ℕ → ℝ) (n : ℕ) : ℝ :=
  if selected n then gamma n else 0

/-- Effective strengths are nonnegative when the selected source strengths are. -/
theorem effectiveStrength_nonneg (selected : ℕ → Bool) (gamma : ℕ → ℝ)
    (hgamma : ∀ n, 0 ≤ gamma n) (n : ℕ) : 0 ≤ effectiveStrength selected gamma n := by
  unfold effectiveStrength
  split
  · exact hgamma n
  · exact le_rfl

/-- Under the actual spike recurrence the complete extended exponent equals the
limsup of effective strengths, including sparse spikes and infinite limsup. -/
theorem arithmeticExponent_of_spikes (q : ℕ → ℕ) (gamma : ℕ → ℝ)
    (hq : ∀ n, 0 < q n) (htop : Tendsto q atTop atTop)
    (hgamma : ∀ n, 0 ≤ gamma n)
    (hstep : ∀ n, ∃ previous : ℕ, previous ≤ q n ∧
      q (n + 1) = spikeStep (gamma n) previous (q n)) :
    arithmeticExponent q = limsup (fun n ↦ ENNReal.ofReal (gamma n)) atTop := by
  have hr : Tendsto (fun n ↦ (q n : ℝ)) atTop atTop :=
    tendsto_natCast_atTop_atTop.comp htop
  let err : ℕ → ENNReal :=
    fun n ↦ ENNReal.ofReal ((Real.log 3 + Real.log (q n : ℝ)) / (q n : ℝ))
  let strengths : ℕ → ENNReal := fun n ↦ ENNReal.ofReal (gamma n)
  have he : Tendsto err atTop (𝓝 0) := by
    have hl : Tendsto (fun n ↦ Real.log (q n : ℝ) / (q n : ℝ)) atTop (𝓝 0) := by
      simpa [Function.comp_def] using
        (Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero).comp hr
    have he' : Tendsto
        (fun n ↦ (Real.log 3 + Real.log (q n : ℝ)) / (q n : ℝ)) atTop (𝓝 0) := by
      simpa only [add_div, add_zero] using (tendsto_const_nhds.div_atTop hr).add hl
    simpa only [ENNReal.ofReal_zero] using ENNReal.tendsto_ofReal he'
  have hb (n : ℕ) :
      gamma n ≤ Real.log (q (n + 1) : ℝ) / (q n : ℝ) ∧
      Real.log (q (n + 1) : ℝ) / (q n : ℝ) ≤
        gamma n + (Real.log 3 + Real.log (q n : ℝ)) / (q n : ℝ) := by
    obtain ⟨p, hp, hs⟩ := hstep n
    simpa only [← hs] using spike_rate_bounds (hgamma n) (hq n) hp
  apply le_antisymm
  · calc
      arithmeticExponent q ≤ limsup (strengths + err) atTop := by
        apply limsup_le_limsup (Eventually.of_forall fun n ↦ ?_)
        exact (ENNReal.ofReal_le_ofReal (hb n).2).trans ENNReal.ofReal_add_le
      _ = limsup strengths atTop := ENNReal.limsup_add_of_right_tendsto_zero he strengths
  · exact limsup_le_limsup (Eventually.of_forall fun n ↦ ENNReal.ofReal_le_ofReal (hb n).1)

/-- Converging effective strengths give the claimed finite exponent. -/
theorem arithmeticExponent_of_converging_spikes (q : ℕ → ℕ) (gamma : ℕ → ℝ)
    (hq : ∀ n, 0 < q n) (htop : Tendsto q atTop atTop)
    (hgamma : ∀ n, 0 ≤ gamma n)
    (hstep : ∀ n, ∃ previous : ℕ, previous ≤ q n ∧
      q (n + 1) = spikeStep (gamma n) previous (q n))
    {beta : ℝ} (hbeta : Tendsto gamma atTop (𝓝 beta)) :
    arithmeticExponent q = ENNReal.ofReal beta := by
  rw [arithmeticExponent_of_spikes q gamma hq htop hgamma hstep]
  exact (ENNReal.tendsto_ofReal hbeta).limsup_eq

/-- Diverging effective strengths retain infinite arithmetic exponent. The actual
recurrence and nonnegative strengths are still required at every index. -/
theorem arithmeticExponent_of_diverging_spikes (q : ℕ → ℕ) (gamma : ℕ → ℝ)
    (hq : ∀ n, 0 < q n) (hgamma : ∀ n, 0 ≤ gamma n)
    (hstep : ∀ n, ∃ previous : ℕ, previous ≤ q n ∧
      q (n + 1) = spikeStep (gamma n) previous (q n))
    (hgammaTop : Tendsto gamma atTop atTop) : arithmeticExponent q = ⊤ := by
  have hb (n : ℕ) : gamma n ≤ Real.log (q (n + 1) : ℝ) / (q n : ℝ) := by
    obtain ⟨p, hp, hs⟩ := hstep n
    simpa only [← hs] using (spike_rate_bounds (hgamma n) (hq n) hp).1
  have ht := tendsto_atTop_mono hb hgammaTop
  exact (ENNReal.tendsto_ofReal_nhds_top.2 ht).limsup_eq

/-- A recursive denominator construction uses the current denominator to set
its next spike coefficient and keeps the actual previous denominator. -/
def spikeDenominator (gamma : ℕ → ℝ) : ℕ → ℕ
  | 0 => 1
  | 1 => spikeCoefficient (gamma 0) 1
  | n + 2 => spikeStep (gamma (n + 1)) (spikeDenominator gamma n)
      (spikeDenominator gamma (n + 1))

/-- The constructed denominators induce positive integral partial quotients. -/
def spikePartialQuotient (gamma : ℕ → ℝ) (n : ℕ) : ℕ :=
  spikeCoefficient (gamma n) (spikeDenominator gamma n)

/-- The recursively chosen spikes are genuine native denominator continuants. -/
theorem spikeDenominator_identifies (gamma : ℕ → ℝ) :
    spikeDenominator gamma = denominator (spikePartialQuotient gamma) := by
  funext n
  induction n using Nat.twoStepInduction with
  | zero => rfl
  | one => rfl
  | more n ih ih' =>
    rw [spikeDenominator, denominator, ← ih, ← ih']
    rfl

/-- All constructed spike denominators are positive. -/
theorem spikeDenominator_pos (gamma : ℕ → ℝ) (n : ℕ) :
    0 < spikeDenominator gamma n := by
  rw [spikeDenominator_identifies]
  exact denominator_pos _ (fun k ↦ spikeCoefficient_pos (gamma k) _) n

/-- Infinite spike constructions diverge even with all strengths zero. -/
theorem spikeDenominator_tendsto (gamma : ℕ → ℝ) :
    Tendsto (spikeDenominator gamma) atTop atTop := by
  rw [spikeDenominator_identifies]
  exact denominator_tendsto _ (fun k ↦ spikeCoefficient_pos (gamma k) _)

/-- Every constructed step supplies its real predecessor, including q₋₁=0. -/
theorem spikeDenominator_step (gamma : ℕ → ℝ) (n : ℕ) :
    ∃ previous : ℕ, previous ≤ spikeDenominator gamma n ∧
      spikeDenominator gamma (n + 1) =
        spikeStep (gamma n) previous (spikeDenominator gamma n) := by
  cases n with
  | zero => exact ⟨0, by simp [spikeDenominator], by simp [spikeStep, spikeDenominator]⟩
  | succ n =>
    refine ⟨spikeDenominator gamma n, ?_, rfl⟩
    rw [spikeDenominator_identifies]
    exact denominator_le_succ _ (fun k ↦ spikeCoefficient_pos (gamma k) _) n

/-- The constructed genuine denominator stream has exactly the effective-strength
limsup as its exponent; no extra divergence assumption is needed. -/
theorem spikeDenominator_exponent (gamma : ℕ → ℝ) (hgamma : ∀ n, 0 ≤ gamma n) :
    arithmeticExponent (spikeDenominator gamma) =
      limsup (fun n ↦ ENNReal.ofReal (gamma n)) atTop :=
  arithmeticExponent_of_spikes _ gamma (spikeDenominator_pos gamma)
    (spikeDenominator_tendsto gamma) hgamma (spikeDenominator_step gamma)

/-- Sparse selected spikes charge only their effective strengths, including zero
at all nonselected indices. Raw unused terms do not enter this limsup. -/
theorem selected_spike_exponent (selected : ℕ → Bool) (gamma : ℕ → ℝ)
    (hgamma : ∀ n, 0 ≤ gamma n) :
    arithmeticExponent (spikeDenominator (effectiveStrength selected gamma)) =
      limsup (fun n ↦ ENNReal.ofReal (effectiveStrength selected gamma n)) atTop :=
  spikeDenominator_exponent _ (effectiveStrength_nonneg selected gamma hgamma)

/-- A frequency certificate is actual agreement with the native expansion of a real number.
This definition supplies no automatic certificate or arithmetic growth regime. -/
def FrequencyRealization (a : ℕ → ℕ) (alpha : ℝ) : Prop :=
  GenContFract.of alpha = continuedFraction a

/-- A supplied native frequency identification proves irrationality. -/
theorem frequency_irrational {a : ℕ → ℕ} {alpha : ℝ}
    (h : FrequencyRealization a alpha) : Irrational alpha := by
  rintro ⟨q, hq⟩
  have ht : (GenContFract.of alpha).Terminates :=
    (GenContFract.terminates_iff_rat alpha).2 ⟨q, hq.symm⟩
  rw [h] at ht
  exact continuedFraction_not_terminates a ht

/-- A real-frequency certificate identifies the actual native convergent, not the raw driver. -/
theorem frequency_convergent {a : ℕ → ℕ} {alpha : ℝ}
    (h : FrequencyRealization a alpha) (n : ℕ) :
    (GenContFract.of alpha).convs n =
      (numerator a n : ℝ) / (denominator a n : ℝ) := by
  rw [h]
  change ((continuedFraction a).conts n).a / ((continuedFraction a).conts n).b = _
  rw [native_continuants]

end FormalResearch.RiemannHypothesis.BranchSequenceRealization
```
