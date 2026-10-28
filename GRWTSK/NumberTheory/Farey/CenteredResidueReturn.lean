/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Farey.FareyResidueChannelDecomposition
import GRWTSK.NumberTheory.Farey.ChowlaSoficObservations

/-!
# Centered gcd-stratum return and exact finite-word transport

A center is a retained chart parameter, not a weighted average. Every centered
residue is represented by its gcd stratum and reduced representative. The
existing stratum theorem supplies a unit at its OWN reduced modulus. Both
coordinates are retained. No prime-modulus or unit-density hypothesis is used.
Changing the modulus is faithful on the stated unwrapped finite inventory;
outside that range a residue alone does not recover an integer.

The graph theorem preserves exactly the language of a GIVEN finite labeled
graph. It does not produce a finite presentation of the entire infinite
Mobius language or a zeta-zero spectral correspondence.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.CenteredResidueReturn

open ResidueChannelDecomposition
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- The original centered residue contributes BOTH its stratum and reduced value. -/
def encode (q : ℕ) [NeZero q] (c x : ZMod q) : ℕ × ℕ :=
  (residueGCD q (x - c), reducedResidueRepresentative q (x - c))

/-- Return to the original modulus and center, without discarding nonunits. -/
def restore (q : ℕ) (c : ZMod q) (z : ℕ × ℕ) : ZMod q :=
  c + ((z.1 * z.2 : ℕ) : ZMod q)

theorem restore_encode (q : ℕ) [NeZero q] (c x : ZMod q) :
    restore q c (encode q c x) = x := by
  unfold restore encode
  rw [cast_residueGCD_mul_reducedResidueRepresentative q (x - c)]
  abel

theorem encode_injective (q : ℕ) [NeZero q] (c : ZMod q) :
    Function.Injective (encode q c) := by
  intro x y h
  have he := congrArg (restore q c) h
  simpa only [restore_encode] using he

/-- The reduced coordinate is a unit in a stratum-dependent modulus. -/
theorem reduced_coordinate_coprime (q : ℕ) [NeZero q] (c x : ZMod q) :
    Nat.Coprime (encode q c x).2 (q / (encode q c x).1) :=
  reducedResidueRepresentative_coprime q (x - c)

/-- Only canonical stratum records are states of the recoded graph. -/
def CodeState (q : ℕ) [NeZero q] (c : ZMod q) : Type :=
  {z : ℕ × ℕ // encode q c (restore q c z) = z}

/-- A genuine equivalence with the whole residue space, including every nonunit. -/
def chartEquiv (q : ℕ) [NeZero q] (c : ZMod q) : ZMod q ≃ CodeState q c where
  toFun x := ⟨encode q c x, by rw [restore_encode]⟩
  invFun z := restore q c z.1
  left_inv := restore_encode q c
  right_inv z := Subtype.ext z.2

instance codeStateFintype (q : ℕ) [NeZero q] (c : ZMod q) :
    Fintype (CodeState q c) := Fintype.ofEquiv (ZMod q) (chartEquiv q c)

/-- The carrier has q states, not merely phi(q) surviving unit states. -/
theorem codeState_card (q : ℕ) [NeZero q] (c : ZMod q) :
    Fintype.card (CodeState q c) = q := by
  simpa using (Fintype.card_congr (chartEquiv q c)).symm

/-- Recenter via the retained source, not by identifying two compressed moments. -/
def changeCenter (q : ℕ) [NeZero q] (c d : ZMod q) :
    CodeState q c ≃ CodeState q d :=
  (chartEquiv q c).symm.trans (chartEquiv q d)

theorem changeCenter_apply (q : ℕ) [NeZero q] (c d x : ZMod q) :
    changeCenter q c d (chartEquiv q c x) = chartEquiv q d x := by
  simp [changeCenter]

/-- Every retained center returns exactly around a finite change-of-chart triangle. -/
theorem changeCenter_comp (q : ℕ) [NeZero q] (c d e : ZMod q)
    (z : CodeState q c) :
    changeCenter q d e (changeCenter q c d z) = changeCenter q c e z := by
  simp [changeCenter]

/-- A scalar or other observation is read after exact return. -/
theorem readout_return {F : Type*} (q : ℕ) [NeZero q] (c x : ZMod q)
    (readout : ZMod q → F) :
    readout ((chartEquiv q c).symm (chartEquiv q c x)) = readout x := by simp

/-- Integer return uses the canonical representative; its exact range is explicit below. -/
def recoveredNat (q : ℕ) [NeZero q] (c : ZMod q) (n : ℕ) : ℕ :=
  (restore q c (encode q c (n : ZMod q))).val

theorem recoveredNat_eq (q : ℕ) [NeZero q] (c : ZMod q) {n : ℕ}
    (hn : n < q) : recoveredNat q c n = n := by
  simp [recoveredNat, restore_encode, ZMod.val_natCast, Nat.mod_eq_of_lt hn]

/-- Modulus growth changes the finite carrier. The original representative is retained. -/
def changeModulus (q r : ℕ) [NeZero q] [NeZero r]
    (c : ZMod q) (d : ZMod r) (z : CodeState q c) : CodeState r d :=
  chartEquiv r d (((chartEquiv q c).symm z).val : ZMod r)

theorem changeModulus_on_inventory (q r : ℕ) [NeZero q] [NeZero r]
    (c : ZMod q) (d : ZMod r) {n : ℕ} (hn : n < q) :
    changeModulus q r c d (chartEquiv q c (n : ZMod q)) =
      chartEquiv r d (n : ZMod r) := by
  simp [changeModulus, ZMod.val_natCast, Nat.mod_eq_of_lt hn]

/-- Coherent transitions on the common unwrapped inventory, with changing centers and sizes. -/
theorem changeModulus_comp_on_inventory (q r s : ℕ)
    [NeZero q] [NeZero r] [NeZero s]
    (c : ZMod q) (d : ZMod r) (e : ZMod s)
    {n : ℕ} (hnq : n < q) (hnr : n < r) :
    changeModulus r s d e (changeModulus q r c d
      (chartEquiv q c (n : ZMod q))) =
    changeModulus q s c e (chartEquiv q c (n : ZMod q)) := by
  rw [changeModulus_on_inventory q r c d hnq,
    changeModulus_on_inventory r s d e hnr,
    changeModulus_on_inventory q s c e hnq]

/-- All labels in a finite arithmetic word survive, not just its average. -/
theorem recover_word (q : ℕ) [NeZero q] (c : ZMod q) (word : List ℕ)
    (hword : ∀ n ∈ word, n < q) :
    word.map (recoveredNat q c) = word := by
  revert hword
  induction word with
  | nil => intro _; rfl
  | cons n word ih =>
    intro hword
    have hn : n < q := hword n (by simp)
    have ht : ∀ k ∈ word, k < q := fun k hk => hword k (by simp [hk])
    simp only [List.map_cons, recoveredNat_eq q c hn, ih ht]

/-- Direct application to the existing Chowla word-product readout. -/
theorem chowla_word_product_return (q : ℕ) [NeZero q] (c : ZMod q)
    (word : List ℕ) (hword : ∀ n ∈ word, n < q) :
    ChowlaSoficObservations.wordProduct ArithmeticFunction.moebius
      (word.map (recoveredNat q c)) =
    ChowlaSoficObservations.wordProduct ArithmeticFunction.moebius word := by
  rw [recover_word q c word hword]

private theorem map_wordPath {X Y Label : Type*}
    {edge : LabeledEdgeRelation X Label} {edge' : LabeledEdgeRelation Y Label}
    (f : X → Y)
    (hf : ∀ x a y, edge x a y → edge' (f x) a (f y))
    {x y : X} {word : List Label} (h : WordPath edge x word y) :
    WordPath edge' (f x) word (f y) := by
  induction h with
  | nil x => exact WordPath.nil (f x)
  | cons hedge _ ih => exact WordPath.cons (hf _ _ _ hedge) ih

/-- Transport the actual edge relation, including all arithmetic transition labels. -/
def transportedEdge {Label : Type*} (q : ℕ) [NeZero q] (c : ZMod q)
    (edge : LabeledEdgeRelation (ZMod q) Label) :
    LabeledEdgeRelation (CodeState q c) Label :=
  fun x a y => edge ((chartEquiv q c).symm x) a ((chartEquiv q c).symm y)

theorem wordPath_return_iff {Label : Type*} (q : ℕ) [NeZero q] (c : ZMod q)
    (edge : LabeledEdgeRelation (ZMod q) Label)
    (x y : CodeState q c) (word : List Label) :
    WordPath (transportedEdge q c edge) x word y ↔
      WordPath edge ((chartEquiv q c).symm x) word ((chartEquiv q c).symm y) := by
  constructor
  · exact map_wordPath (chartEquiv q c).symm (fun _ _ _ h => h)
  · intro h
    have hm := map_wordPath (edge' := transportedEdge q c edge)
      (chartEquiv q c) (fun x a y he => by simpa [transportedEdge] using he) h
    simpa using hm

/-- Exact language equality, stronger than merely admitting one selected trace. -/
theorem accepts_return_iff {Label : Type*} (q : ℕ) [NeZero q] (c : ZMod q)
    (edge : LabeledEdgeRelation (ZMod q) Label) (start : ZMod q) (word : List Label) :
    AcceptsFrom (transportedEdge q c edge) (chartEquiv q c start) word ↔
      AcceptsFrom edge start word := by
  constructor
  · rintro ⟨finish, hp⟩
    refine ⟨(chartEquiv q c).symm finish, ?_⟩
    simpa using (wordPath_return_iff q c edge _ _ word).mp hp
  · rintro ⟨finish, hp⟩
    refine ⟨chartEquiv q c finish, ?_⟩
    apply (wordPath_return_iff q c edge _ _ word).mpr
    simpa using hp

/-- A finite stage reads the original integer edge relation at canonical representatives. -/
def boundedNaturalEdge {Label : Type*} (q : ℕ)
    (edge : LabeledEdgeRelation ℕ Label) : LabeledEdgeRelation (ZMod q) Label :=
  fun x a y => edge x.val a y.val

/-- Enlarging the carrier preserves old transitions without requiring equal moduli,
primality, or an unchanged partition. New states/edges may genuinely be added. -/
theorem growing_edge_iff {Label : Type*} (q r : ℕ) [NeZero q] [NeZero r]
    (c : ZMod q) (d : ZMod r) (hqr : q ≤ r)
    (edge : LabeledEdgeRelation ℕ Label) (x y : CodeState q c) (a : Label) :
    transportedEdge r d (boundedNaturalEdge r edge)
        (changeModulus q r c d x) a (changeModulus q r c d y) ↔
      transportedEdge q c (boundedNaturalEdge q edge) x a y := by
  have hx : ((chartEquiv q c).symm x).val < r :=
    (ZMod.val_lt _).trans_le hqr
  have hy : ((chartEquiv q c).symm y).val < r :=
    (ZMod.val_lt _).trans_le hqr
  simp [transportedEdge, boundedNaturalEdge, changeModulus,
    ZMod.val_natCast, Nat.mod_eq_of_lt hx, Nat.mod_eq_of_lt hy]

/-- A whole labeled path survives a growing centered sieve stage, not only its states. -/
theorem growing_wordPath {Label : Type*} (q r : ℕ) [NeZero q] [NeZero r]
    (c : ZMod q) (d : ZMod r) (hqr : q ≤ r)
    (edge : LabeledEdgeRelation ℕ Label) {x y : CodeState q c} {word : List Label}
    (hp : WordPath (transportedEdge q c (boundedNaturalEdge q edge)) x word y) :
    WordPath (transportedEdge r d (boundedNaturalEdge r edge))
      (changeModulus q r c d x) word (changeModulus q r c d y) :=
  map_wordPath (changeModulus q r c d)
    (fun x a y he => (growing_edge_iff q r c d hqr edge x y a).mpr he) hp

private def boundedEdge {Label : Type*} (N : ℕ)
    (edge : LabeledEdgeRelation ℕ Label) : LabeledEdgeRelation ℕ Label :=
  fun x a y => edge x a y ∧ x < N ∧ y < N

private theorem finite_path_bound {Label : Type*}
    {edge : LabeledEdgeRelation ℕ Label} {x y : ℕ} {word : List Label}
    (hp : WordPath edge x word y) :
    ∃ N : ℕ, WordPath (boundedEdge N edge) x word y ∧ x < N ∧ y < N := by
  induction hp with
  | nil x => exact ⟨x + 1, WordPath.nil x, by omega, by omega⟩
  | @cons x middle y a word he _ ih =>
    obtain ⟨N, ht, hm, hy⟩ := ih
    let M := max N (x + 1)
    have hNM : N ≤ M := le_max_left _ _
    have hxM : x < M := lt_of_lt_of_le (by omega) (le_max_right N (x + 1))
    have htail : WordPath (boundedEdge M edge) middle word y := by
      apply WordPath.mono (lower := boundedEdge N edge) (upper := boundedEdge M edge) ?_ ht
      intro u v label h
      exact ⟨h.1, h.2.1.trans_le hNM, h.2.2.trans_le hNM⟩
    exact ⟨M, WordPath.cons ⟨he, hxM, hm.trans_le hNM⟩ htail, hxM, hy.trans_le hNM⟩

/-- Every ACTUAL finite integer path occurs in all sufficiently large stages,
with any retained center. This is tower completeness, not eventual stabilization
of the language in one fixed finite automaton. -/
theorem natural_path_eventually_presented {Label : Type*}
    {edge : LabeledEdgeRelation ℕ Label} {x y : ℕ} {word : List Label}
    (hp : WordPath edge x word y) :
    ∃ N : ℕ, ∀ (q : ℕ) [NeZero q], N ≤ q → ∀ c : ZMod q,
      WordPath (transportedEdge q c (boundedNaturalEdge q edge))
        (chartEquiv q c (x : ZMod q)) word (chartEquiv q c (y : ZMod q)) := by
  obtain ⟨N, ht, _hx, _hy⟩ := finite_path_bound hp
  refine ⟨N, ?_⟩
  intro q _ hN c
  have hb : WordPath (boundedNaturalEdge q edge) (x : ZMod q) word (y : ZMod q) := by
    apply map_wordPath (fun n : ℕ => (n : ZMod q)) ?_ ht
    intro u a v he
    have hu : u < q := he.2.1.trans_le hN
    have hv : v < q := he.2.2.trans_le hN
    simpa [boundedNaturalEdge, ZMod.val_natCast,
      Nat.mod_eq_of_lt hu, Nat.mod_eq_of_lt hv] using he.1
  apply (wordPath_return_iff q c (boundedNaturalEdge q edge) _ _ word).mpr
  simpa using hb

end GRWTSK.NumberTheory.Farey.CenteredResidueReturn
