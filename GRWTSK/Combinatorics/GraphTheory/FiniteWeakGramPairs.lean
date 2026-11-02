/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Quantitative signed weak-energy pair bound from a genuine Gram Cauchy estimate

The exact finite source kernel k(i,j) is not assumed nonnegative. We use
a SOURCE BOUND of Cauchy type k(i,j)^2 <= d(i)*d(j), nonnegative diagonal
energies, and a supplied nonnegative diagonal total upper bound D.

For the complete ORIGINAL ordered packet of off-diagonal pairs whose
minimum source diagonal energy is below q>0:

  |W_q| <= |S|^2 * sqrt(q * D).

The theorem does not assume any uniform RH-strength cancellation, and
its only nontrivial analytic input is the actual two-point Gram
Cauchy estimate. That estimate is true for literal square-integrable
real response functions; the source-specific interval-integral Lean
bridge must be independently checked at its exact dependencies.

No geometric mass is silently equated to energy: the geometric
consumer must prove the exact pi*min(d_i,d_j) Lebesgue disk formula.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteWeakGramPairs

universe u
variable {ι : Type u} [DecidableEq ι]
classical

/-- Full ordered, signed OFF-DIAGONAL weak-energy pair packet. -/
def weakEnergyCross (S : Finset ι)
    (d : ι → ℝ) (q : ℝ) (k : ι → ι → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i ≠ j ∧ min (d i) (d j) < q then k i j else 0

/-- Fundamental per-pair quantitative claim: small minimum diagonal
energy plus the genuine Gram Cauchy inequality controls EACH signed
cross term by sqrt(q*D), without a sign assumption. -/
theorem weak_pair_abs_le_sqrt
    (S : Finset ι) (d : ι → ℝ) (k : ι → ι → ℝ)
    (q D : ℝ) (hq : 0 ≤ q) (hD : 0 ≤ D)
    (hd : ∀ i ∈ S, 0 ≤ d i ∧ d i ≤ D)
    (hCS : ∀ i ∈ S, ∀ j ∈ S,
      (k i j)^2 ≤ d i * d j)
    (i : ι) (hi : i ∈ S) (j : ι) (hj : j ∈ S)
    (hweak : min (d i) (d j) < q) :
    |k i j| ≤ Real.sqrt (q * D) := by
  obtain ⟨hdi0, hdiD⟩ := hd i hi
  obtain ⟨hdj0, hdjD⟩ := hd j hj
  have hprod : d i * d j ≤ q * D := by
    rcases le_total (d i) (d j) with hle | hle
    · have hsmall : d i ≤ q := by
        simpa only [min_eq_left hle] using hweak.le
      calc
        d i * d j ≤ q * d j :=
          mul_le_mul_of_nonneg_right hsmall hdj0
        _ ≤ q * D := mul_le_mul_of_nonneg_left hdjD hq
    · have hsmall : d j ≤ q := by
        simpa only [min_eq_right hle] using hweak.le
      calc
        d i * d j = d j * d i := mul_comm _ _
        _ ≤ q * d i := mul_le_mul_of_nonneg_right hsmall hdi0
        _ ≤ q * D := mul_le_mul_of_nonneg_left hdiD hq
  have hpair : |k i j|^2 ≤ q * D := by
    simpa only [sq_abs] using (le_trans (hCS i hi j hj) hprod)
  have hsqrt : (Real.sqrt (q * D))^2 = q * D :=
    Real.sq_sqrt (mul_nonneg hq hD)
  nlinarith [Real.sqrt_nonneg (q*D), abs_nonneg (k i j)]

/-- Summation of ALL ordered off-diagonal weak source pairs.
The cardinality loss |S|^2 and its q,D dependence are explicit;
no arbitrary remainder certificate or omitted orientation occurs. -/
theorem weakEnergyCross_abs_le_card_sq_sqrt
    (S : Finset ι) (d : ι → ℝ) (k : ι → ι → ℝ)
    (q D : ℝ) (hq : 0 ≤ q) (hD : 0 ≤ D)
    (hd : ∀ i ∈ S, 0 ≤ d i ∧ d i ≤ D)
    (hCS : ∀ i ∈ S, ∀ j ∈ S,
      (k i j)^2 ≤ d i * d j) :
    |weakEnergyCross S d q k| ≤
      ((S.card : ℝ)^2) * Real.sqrt (q * D) := by
  let term : ι → ι → ℝ := fun i j =>
    if i ≠ j ∧ min (d i) (d j) < q then k i j else 0
  have htriangle :
      |∑ i ∈ S, ∑ j ∈ S, term i j| ≤
        ∑ i ∈ S, ∑ j ∈ S, |term i j| := by
    calc
      _ ≤ ∑ i ∈ S, |∑ j ∈ S, term i j| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ i ∈ S, ∑ j ∈ S, |term i j| := by
        apply Finset.sum_le_sum
        intro i hi
        exact Finset.abs_sum_le_sum_abs _ _
  have hsingle (i : ι) (hi : i ∈ S) (j : ι) (hj : j ∈ S) :
      |term i j| ≤ Real.sqrt (q * D) := by
    by_cases hsel : i ≠ j ∧ min (d i) (d j) < q
    · simpa only [term, if_pos hsel] using
        weak_pair_abs_le_sqrt S d k q D hq hD hd hCS
          i hi j hj hsel.2
    · simp only [term, if_neg hsel, abs_zero]
      exact Real.sqrt_nonneg _
  have hbound :
      (∑ i ∈ S, ∑ j ∈ S, |term i j|) ≤
        ∑ i ∈ S, ∑ j ∈ S, Real.sqrt (q * D) := by
    apply Finset.sum_le_sum
    intro i hi
    apply Finset.sum_le_sum
    intro j hj
    exact hsingle i hi j hj
  have hcount :
      (∑ i ∈ S, ∑ j ∈ S, Real.sqrt (q * D)) =
        (S.card : ℝ)^2 * Real.sqrt (q * D) := by
    simp [pow_two]
    ring
  change |∑ i ∈ S, ∑ j ∈ S, term i j| ≤
    (S.card : ℝ)^2 * Real.sqrt (q * D)
  exact htriangle.trans (hbound.trans_eq hcount)


/-- The same quantitative bound for ANY source-labelled selected pair
relation contained in the low-diagonal-energy packet. This allows
extra original additive-gap and projective-separation conditions:
those filters can remove pairs but NEVER amplify the certified
per-pair Cauchy allowance. No symmetry or positivity of k is needed. -/
theorem selectedWeakCross_abs_le_card_sq_sqrt
    (S : Finset ι) (R : ι → ι → Prop)
    (d : ι → ℝ) (k : ι → ι → ℝ)
    (q D : ℝ) (hq : 0 ≤ q) (hD : 0 ≤ D)
    (hd : ∀ i ∈ S, 0 ≤ d i ∧ d i ≤ D)
    (hCS : ∀ i ∈ S, ∀ j ∈ S,
      (k i j)^2 ≤ d i * d j)
    (hselect : ∀ i ∈ S, ∀ j ∈ S,
      R i j → min (d i) (d j) < q) :
    |∑ i ∈ S, ∑ j ∈ S, if i ≠ j ∧ R i j then k i j else 0| ≤
      ((S.card : ℝ)^2) * Real.sqrt (q * D) := by
  let term : ι → ι → ℝ :=
    fun i j => if i ≠ j ∧ R i j then k i j else 0
  have htriangle :
      |∑ i ∈ S, ∑ j ∈ S, term i j| ≤
        ∑ i ∈ S, ∑ j ∈ S, |term i j| := by
    calc
      _ ≤ ∑ i ∈ S, |∑ j ∈ S, term i j| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ i ∈ S, ∑ j ∈ S, |term i j| := by
        apply Finset.sum_le_sum
        intro i hi
        exact Finset.abs_sum_le_sum_abs _ _
  have hlocal (i : ι) (hi : i ∈ S) (j : ι) (hj : j ∈ S) :
      |term i j| ≤ Real.sqrt (q * D) := by
    by_cases hsel : i ≠ j ∧ R i j
    · simpa only [term, if_pos hsel] using
        weak_pair_abs_le_sqrt S d k q D hq hD hd hCS
          i hi j hj (hselect i hi j hj hsel.2)
    · simp only [term, if_neg hsel, abs_zero]
      exact Real.sqrt_nonneg _
  have hsum :
      (∑ i ∈ S, ∑ j ∈ S, |term i j|) ≤
        ∑ i ∈ S, ∑ j ∈ S, Real.sqrt (q * D) := by
    apply Finset.sum_le_sum
    intro i hi
    apply Finset.sum_le_sum
    intro j hj
    exact hlocal i hi j hj
  change |∑ i ∈ S, ∑ j ∈ S, term i j| ≤ _
  calc
    _ ≤ ∑ i ∈ S, ∑ j ∈ S, |term i j| := htriangle
    _ ≤ ∑ i ∈ S, ∑ j ∈ S, Real.sqrt (q * D) := hsum
    _ = ((S.card : ℝ)^2) * Real.sqrt (q * D) := by
      simp [pow_two]
      ring

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteWeakGramPairs
