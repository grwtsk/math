/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CenteredSieveRecovery
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.AsymptoticResultsOnArithmeticFunctions.ChowlaSoficObservations
import GRWTSK.Combinatorics.GraphTheory.SearchSoficLanguage
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.DynamicPartitionRecovery
import Mathlib.Tactic

/-!
# Changing centered residue partitions and exact finite arithmetic languages

Prime-square moduli construct an actual refining observation, rather than
assuming a fixed finite state space. Complete histories separate centered
source pairs. At each stage residue plus winding already recovers the source.

Finite arithmetic graphs retain every consecutive source position, including
zero labels. Modulus changes preserve their entire accepted finite-word
language. Removing zero LETTERS instead would generally change that language.
The construction does not prove finite-state stabilization of the infinite
Mobius orbit closure, an integer Chowla estimate, or a zeta-zero height decoder.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Farey.CenteredSieveLanguage

open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.CenteredSieveRecovery
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss.DynamicPartitionRecovery

/-- A prime-square sieve grows its modulus; repetitions are permitted. -/
def primeSquareModulus (p : ℕ → ℕ) : ℕ → ℕ
  | 0 => 1
  | k + 1 => primeSquareModulus p k * (p k) ^ 2

theorem primeSquareModulus_dvd_next (p : ℕ → ℕ) (k : ℕ) :
    primeSquareModulus p k ∣ primeSquareModulus p (k + 1) :=
  ⟨(p k) ^ 2, rfl⟩

/-- No density estimate: p_k >= 2 alone makes these moduli unbounded. -/
theorem primeSquareModulus_ge (p : ℕ → ℕ) (hp : ∀ k, (p k).Prime) (k : ℕ) :
    k + 1 ≤ primeSquareModulus p k := by
  induction k with
  | zero => simp [primeSquareModulus]
  | succ k ih =>
      have hs : 4 ≤ (p k) ^ 2 := by nlinarith [(hp k).two_le]
      have hm := Nat.mul_le_mul_left (primeSquareModulus p k) hs
      rw [primeSquareModulus]
      nlinarith

theorem primeSquareModulus_pos (p : ℕ → ℕ) (hp : ∀ k, (p k).Prime) (k : ℕ) :
    0 < primeSquareModulus p k :=
  lt_of_lt_of_le (Nat.succ_pos k) (primeSquareModulus_ge p hp k)

/-- The finite quotient changes, while the coarsening square commutes exactly. -/
theorem mod_coarsen (d q c : ℕ) (hdq : d ∣ q) : (c % q) % d = c % d := by
  obtain ⟨k, rfl⟩ := hdq
  have h := congrArg (fun n : ℕ => n % d) (Nat.mod_add_div c (d * k))
  simpa [Nat.add_mod, Nat.mul_mod] using h

def centeredResidueRefinement (q : ℕ → ℕ) (hdiv : ∀ k, q k ∣ q (k + 1)) :
    DynamicRefinement CenteredAdditiveMobiusPair (ℕ × ℕ × ℕ) where
  observe := fun k x => (x.r, x.h, x.center % q k)
  coarsen := fun k z => (z.1, z.2.1, z.2.2 % q k)
  commute := by
    intro k x
    change (x.r, x.h, (x.center % q (k + 1)) % q k) =
      (x.r, x.h, x.center % q k)
    rw [mod_coarsen _ _ _ (hdiv k)]

def primeCenteredRefinement (p : ℕ → ℕ) :
    DynamicRefinement CenteredAdditiveMobiusPair (ℕ × ℕ × ℕ) :=
  centeredResidueRefinement (primeSquareModulus p) (primeSquareModulus_dvd_next p)

/-- Constructed separation of the existing source pairs by the whole refining history. -/
theorem prime_center_history_injective (p : ℕ → ℕ) (hp : ∀ k, (p k).Prime) :
    Function.Injective (primeCenteredRefinement p).history := by
  apply DynamicRefinement.history_injective_of_separating
  intro x y hxy
  let k := max x.center y.center
  refine ⟨k, ?_⟩
  intro he
  change (x.r, x.h, x.center % primeSquareModulus p k) =
    (y.r, y.h, y.center % primeSquareModulus p k) at he
  have hk : k < primeSquareModulus p k :=
    lt_of_lt_of_le (Nat.lt_succ_self k) (primeSquareModulus_ge p hp k)
  have hx : x.center < primeSquareModulus p k :=
    lt_of_le_of_lt (le_max_left _ _) hk
  have hy : y.center < primeSquareModulus p k :=
    lt_of_le_of_lt (le_max_right _ _) hk
  have hr := congrArg (fun z : ℕ × ℕ × ℕ => z.1) he
  have hh := congrArg (fun z : ℕ × ℕ × ℕ => z.2.1) he
  have hc := congrArg (fun z : ℕ × ℕ × ℕ => z.2.2) he
  change x.r = y.r at hr
  change x.h = y.h at hh
  change x.center % primeSquareModulus p k = y.center % primeSquareModulus p k at hc
  rw [Nat.mod_eq_of_lt hx, Nat.mod_eq_of_lt hy] at hc
  apply hxy
  apply encode_injective (primeSquareModulus p k)
  unfold encode
  rw [hr, hh, hc]

/-- Actual pairs (1,3) and (3,5): parity/shift agree but the refined centers split. -/
theorem actual_center_residue_split :
    let x : CenteredAdditiveMobiusPair := ⟨0, 1, 1⟩
    let y : CenteredAdditiveMobiusPair := ⟨1, 1, 1⟩
    x.r = y.r ∧ x.h = y.h ∧ x.center % 1 = y.center % 1 ∧
      x.center % 4 ≠ y.center % 4 := by
  norm_num [CenteredAdditiveMobiusPair.center]

/-- Actual consecutive arithmetic transitions, with their zero symbols retained. -/
def centeredEdge (X q : ℕ) (P : Finset ℕ) : CenterCode → ℤ → CenterCode → Prop :=
  fun u label v => ∃ a : ℕ,
    a ∈ anchoredDyadicSourceIndices X ∧
    a + 1 ∈ anchoredDyadicSourceIndices X ∧
    u = encode q (anchoredMobiusPair a) ∧
    v = encode q (anchoredMobiusPair (a + 1)) ∧
    label = sieveCoefficient P a

/-- A literal finite graph presentation using the repository's existing language carrier. -/
def centeredPresentation (X q : ℕ) (P : Finset ℕ) :
    ScopedPresentation CenterCode ℤ where
  sandwich := {
    lower := centeredEdge X q P
    middle := centeredEdge X q P
    upper := centeredEdge X q P
    lower_le_middle := by intro u v l h; exact h
    middle_le_upper := by intro u v l h; exact h }
  states := (anchoredDyadicSourceIndices X).image (fun a => encode q (anchoredMobiusPair a))
  alphabet := (anchoredDyadicSourceIndices X).image (sieveCoefficient P)
  upper_scoped := by
    intro u v label he
    obtain ⟨a, ha, hb, rfl, rfl, rfl⟩ := he
    exact ⟨Finset.mem_image.mpr ⟨a, ha, rfl⟩,
      Finset.mem_image.mpr ⟨a, ha, rfl⟩,
      Finset.mem_image.mpr ⟨a + 1, hb, rfl⟩⟩

/-- An actual finite SoficGraph, not only a predicate saying a trace factors. -/
def centeredFiniteGraph (X q : ℕ) (P : Finset ℕ) :=
  (centeredPresentation X q P).middleFiniteGraph

theorem edge_rechart (X q d : ℕ) (P Q : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hQ : ∀ p ∈ Q, p.Prime)
    {u v : CenterCode} {label : ℤ} (he : centeredEdge X q P u label v) :
    centeredEdge X d Q (rechart q d u) label (rechart q d v) := by
  obtain ⟨a, ha, hb, hu, hv, hl⟩ := he
  refine ⟨a, ha, hb, ?_, ?_, ?_⟩
  · rw [hu, rechart_encode]
  · rw [hv, rechart_encode]
  · rw [hl, sieveCoefficient_eq P hP, sieveCoefficient_eq Q hQ]

/-- Exact labels and all transitions transport, not merely the endpoint states. -/
theorem wordPath_rechart (X q d : ℕ) (P Q : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hQ : ∀ p ∈ Q, p.Prime)
    {u v : CenterCode} {word : List ℤ}
    (path : WordPath (centeredEdge X q P) u word v) :
    WordPath (centeredEdge X d Q) (rechart q d u) word (rechart q d v) := by
  induction path with
  | nil u => exact WordPath.nil _
  | cons he _ ih => exact WordPath.cons (edge_rechart X q d P Q hP hQ he) ih

/-- Equality of the ENTIRE declared finite accepted language, not a full-shift overapproximation. -/
theorem accepts_rechart_iff (X q d : ℕ) (P Q : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hQ : ∀ p ∈ Q, p.Prime)
    (x : CenteredAdditiveMobiusPair) (word : List ℤ) :
    AcceptsFrom (centeredEdge X q P) (encode q x) word ↔
      AcceptsFrom (centeredEdge X d Q) (encode d x) word := by
  constructor
  · rintro ⟨v, path⟩
    refine ⟨rechart q d v, ?_⟩
    simpa only [rechart_encode] using wordPath_rechart X q d P Q hP hQ path
  · rintro ⟨v, path⟩
    refine ⟨rechart d q v, ?_⟩
    simpa only [rechart_encode] using wordPath_rechart X d q Q P hQ hP path

def sourceWord (P : Finset ℕ) : ℕ → ℕ → List ℤ
  | 0, _ => []
  | n + 1, a => sieveCoefficient P a :: sourceWord P n (a + 1)

/-- Actual consecutive source words are realized by literal paths inside the cutoff. -/
theorem consecutive_source_path (X q : ℕ) (P : Finset ℕ) (n : ℕ) (a : ℕ)
    (ha : 1 ≤ a) (hend : a + n ≤ 2 * X) :
    WordPath (centeredEdge X q P) (encode q (anchoredMobiusPair a))
      (sourceWord P n a) (encode q (anchoredMobiusPair (a + n))) := by
  induction n generalizing a with
  | zero => simpa only [sourceWord, Nat.add_zero] using
      (WordPath.nil (encode q (anchoredMobiusPair a)) :
        WordPath (centeredEdge X q P) _ [] _)
  | succ n ih =>
      have he : centeredEdge X q P (encode q (anchoredMobiusPair a))
          (sieveCoefficient P a) (encode q (anchoredMobiusPair (a + 1))) := by
        refine ⟨a, ?_, ?_, rfl, rfl, rfl⟩
        · exact Finset.mem_Icc.mpr ⟨ha, by omega⟩
        · exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
      have ht := ih (a + 1) (by omega) (by omega)
      have heq : a + 1 + n = a + (n + 1) := by omega
      simpa only [sourceWord, heq] using WordPath.cons he ht


/-- No distinct positive anchor indices are merged by the lifted code. -/
theorem anchor_index_eq_of_code_eq (q : ℕ) {a b : ℕ}
    (ha : 0 < a) (hb : 0 < b)
    (h : encode q (anchoredMobiusPair a) = encode q (anchoredMobiusPair b)) : a = b := by
  have hpair := encode_injective q h
  have hr := congrArg CenteredAdditiveMobiusPair.right hpair
  simpa only [anchoredMobiusPair_right ha, anchoredMobiusPair_right hb] using hr

/-- Every accepted path is an actual chronological source word, not a spurious
concatenation obtained by merging equal residues. -/
theorem path_is_source_word (X q : ℕ) (P : Finset ℕ)
    {word : List ℤ} {a : ℕ} {v : CenterCode}
    (ha : a ∈ anchoredDyadicSourceIndices X)
    (path : WordPath (centeredEdge X q P) (encode q (anchoredMobiusPair a)) word v) :
    word = sourceWord P word.length a ∧ a + word.length ≤ 2 * X ∧
      v = encode q (anchoredMobiusPair (a + word.length)) := by
  induction word generalizing a v with
  | nil =>
      cases path
      refine ⟨by simp [sourceWord], ?_, by simp⟩
      simpa using (Finset.mem_Icc.mp ha).2
  | cons label word ih =>
      cases path with
      | cons he tail =>
          obtain ⟨b, hb, hbnext, hstart, hnext, hlabel⟩ := he
          have hab : a = b := anchor_index_eq_of_code_eq q
            (by have := (Finset.mem_Icc.mp ha).1; omega)
            (by have := (Finset.mem_Icc.mp hb).1; omega) hstart
          subst b
          rw [hnext] at tail
          obtain ⟨hword, hbound, hfinish⟩ := ih hbnext tail
          refine ⟨?_, ?_, ?_⟩
          · change label :: word = sieveCoefficient P a :: sourceWord P word.length (a + 1)
            exact congrArg₂ List.cons hlabel hword
          · simp only [List.length_cons]
            omega
          · simpa only [List.length_cons, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
              using hfinish

/-- Exact finite-language characterization, including the terminal cutoff. -/
theorem accepts_iff_source_word (X q : ℕ) (P : Finset ℕ)
    {a : ℕ} (ha : a ∈ anchoredDyadicSourceIndices X) (word : List ℤ) :
    AcceptsFrom (centeredEdge X q P) (encode q (anchoredMobiusPair a)) word ↔
      a + word.length ≤ 2 * X ∧ word = sourceWord P word.length a := by
  constructor
  · rintro ⟨v, path⟩
    obtain ⟨hw, hb, _⟩ := path_is_source_word X q P ha path
    exact ⟨hb, hw⟩
  · rintro ⟨hb, hw⟩
    refine ⟨encode q (anchoredMobiusPair (a + word.length)), ?_⟩
    have path := consecutive_source_path X q P word.length a
      (Finset.mem_Icc.mp ha).1 hb
    rw [← hw] at path
    exact path

/-- Zero positions are retained, so the full chronological word equals the unsieved word. -/
theorem sourceWord_eq_unsieved (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (n a : ℕ) : sourceWord P n a = sourceWord ∅ n a := by
  induction n generalizing a with
  | zero => rfl
  | succ n ih =>
      simp only [sourceWord, sieveCoefficient_eq P hP,
        sieveCoefficient_eq ∅ (by simp), ih]

/-- The union of these actual finite languages is EXACTLY all finite consecutive
source factors. This is growing-stage completeness, not one finite automaton
presenting the infinite Mobius subshift. -/
theorem finite_factor_iff_some_stage (q : ℕ) (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (word : List ℤ) :
    (∃ a : ℕ, 1 ≤ a ∧ word = sourceWord ∅ word.length a) ↔
      ∃ X a : ℕ, a ∈ anchoredDyadicSourceIndices X ∧
        AcceptsFrom (centeredEdge X q P) (encode q (anchoredMobiusPair a)) word := by
  constructor
  · rintro ⟨a, ha, hw⟩
    let X := a + word.length
    have hsource : a ∈ anchoredDyadicSourceIndices X := by
      apply Finset.mem_Icc.mpr
      dsimp [X]
      omega
    refine ⟨X, a, hsource, ?_⟩
    apply (accepts_iff_source_word X q P hsource word).mpr
    refine ⟨by dsimp [X]; omega, ?_⟩
    rw [sourceWord_eq_unsieved P hP]
    exact hw
  · rintro ⟨X, a, ha, hword⟩
    obtain ⟨_, hw⟩ := (accepts_iff_source_word X q P ha word).mp hword
    refine ⟨a, (Finset.mem_Icc.mp ha).1, ?_⟩
    rw [sourceWord_eq_unsieved P hP] at hw
    exact hw

/-- The finite Chowla-style product reads the same Mobius coefficients at every sieve stage.
No cancellation theorem, averaging limit, or function-field transfer is used. -/
theorem chowla_word_product (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (offsets : List ℕ) (a : ℕ) :
    ChowlaSoficObservations.wordProduct id
        (offsets.map (fun h => sieveCoefficient P (a + h))) =
      (offsets.map (fun h => ArithmeticFunction.moebius (a + h))).prod := by
  simp only [ChowlaSoficObservations.wordProduct, sieveCoefficient_eq P hP, List.map_id]

end GRWTSK.NumberTheory.Farey.CenteredSieveLanguage
