/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CanonicalZeroDivisor
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.SoficDivisorPartition
import Mathlib.Data.Fintype.EquivFin

set_option autoImplicit false

/-!
# Source-exact finite-height zeta records for the sofic divisor interface

The source is `CanonicalZeroDivisor.heightHead T`, whose points satisfy the
repository's actual nontrivial-zeta-zero predicate and whose weights are the
analytic orders of Mathlib `riemannZeta`. A finite-set equivalence enumerates
this exact head, and the existing `FiniteDivisor` fields retain its full complex
coordinates and actual analytic multiplicities. No additional source-identification
hypothesis is needed for this adapter.

Primary mathematical argument: the chosen equivalence is bijective onto the
complete finite head. Composing it with subtype inclusion is injective and has
image exactly the source zeros of absolute height at most T. Reindexing finite
sums by this bijection preserves every weight and every kernel value. Filtering
by the same real-part and absolute-height predicates therefore also preserves
the exact finite count and the selected/omitted weighted decomposition.

The binary words are injective indexing addresses, here strings of `true` of
distinct lengths. They carry no arithmetic or metric meaning. In particular,
they do not identify an Euler product, finite-field spectrum, zeta approximation,
or an analytic transfer operator. The enumeration is noncomputable; it does not
produce a computable list of certified numerical zeros. The full complex point,
both signs of height, analytic multiplicity, and equality at the cutoff remain.

Hostile boundaries: repeated analytic multiplicity is a weight, rather than
several equal points; full-coordinate injectivity prevents horizontal or sign
projection from merging distinct zeros. Negative height heads are empty by the
imported canonical theorem. As T varies, the finite equivalences can change;
the theorem does not assert one finite graph covering all heights. Every
explicit-formula identity below remains a supplied `ExplicitFormulaAt` premise,
with its complete remainder retained. No zero exclusion, tail estimate,
explicit formula, effective enumeration, or all-height analytic bound is proved.

The consumer is the maintained sofic finite-divisor sum/count/partition API.
This is interoperability by exact finite reindexing, not a claim to novelty or
an independent analytic proof of the imported canonical-zero theorems. The
closest sources are the two imported repository modules and Mathlib's finite
equivalence/sum APIs. Independent mathematical review: NOT_RUN. Novelty:
NOT_ASSESSED. Compilation: NOT_RUN. Fresh kernel replay: NOT_RUN. Transitive
axiom audit: NOT_RUN. Source publication is separate from all these statuses.

Drafted against grwtsk/math e90b10114023c691744f1f6c2b5583850126a31b,
with its Mathlib pin d13f23b723b8a846827a245b89c10fc7d3f11612.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSoficDivisor

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPrimeCountingBridge
open GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPartition

open scoped BigOperators

noncomputable section

/-- The number of distinct actual source points in this one finite head. -/
def size (T : ℝ) : ℕ := (heightHead T).card

/-- An arbitrary finite enumeration of the complete actual source head.
No computability or stability as the height changes is asserted. -/
def enumeration (T : ℝ) :
    Fin (size T) ≃ {z : ZeroPoint // z ∈ heightHead T} := by
  classical
  exact (heightHead T).equivFin.symm

/-- The source point, retaining its entire complex coordinate and zero proof. -/
def point (T : ℝ) (i : Fin (size T)) : ZeroPoint := (enumeration T i).1

theorem point_mem_head (T : ℝ) (i : Fin (size T)) :
    point T i ∈ heightHead T := (enumeration T i).2

theorem point_injective (T : ℝ) : Function.Injective (point T) := by
  intro i j hij
  apply (enumeration T).injective
  exact Subtype.ext hij

/-- Exact source coverage before forgetting the subtype proof. -/
theorem exists_point_eq_iff (T : ℝ) (z : ZeroPoint) :
    (∃ i : Fin (size T), point T i = z) ↔ z ∈ heightHead T := by
  constructor
  · rintro ⟨i, rfl⟩
    exact point_mem_head T i
  · intro hz
    obtain ⟨i, hi⟩ := (enumeration T).surjective ⟨z, hz⟩
    exact ⟨i, congrArg Subtype.val hi⟩

/-- A source-exact adapter to the existing finite indexed divisor structure. -/
def divisor (T : ℝ) : FiniteDivisor (size T) where
  cell i := List.replicate i.val true
  root i := (point T i).1
  multiplicity i := multiplicity (point T i)

@[simp] theorem cell_length (T : ℝ) (i : Fin (size T)) :
    ((divisor T).cell i).length = i.val := by
  simp [divisor]

/-- The words distinguish records; this is their sole meaning in this adapter. -/
theorem cell_injective (T : ℝ) : Function.Injective (divisor T).cell := by
  intro i j hij
  apply Fin.ext
  simpa only [cell_length] using congrArg List.length hij

/-- No two indices represent the same full complex point. -/
theorem root_injective (T : ℝ) : Function.Injective (divisor T).root := by
  intro i j hij
  apply point_injective T
  exact Subtype.ext hij

theorem root_nontrivial (T : ℝ) (i : Fin (size T)) :
    GRWTSK.RiemannHypothesis.NontrivialZetaZero ((divisor T).root i) :=
  (point T i).2

theorem root_zeta_zero (T : ℝ) (i : Fin (size T)) :
    riemannZeta ((divisor T).root i) = 0 := (point T i).2.1

/-- These are actual analytic orders, rather than freely supplied metadata. -/
theorem multiplicity_eq_analyticOrder (T : ℝ) (i : Fin (size T)) :
    (divisor T).multiplicity i =
      analyticOrderNatAt riemannZeta ((divisor T).root i) := rfl

theorem divisor_multiplicity_pos (T : ℝ) (i : Fin (size T)) :
    0 < (divisor T).multiplicity i :=
  GRWTSK.RiemannHypothesis.CanonicalZeroDivisor.multiplicity_pos (point T i)

theorem root_height_le (T : ℝ) (i : Fin (size T)) :
    |((divisor T).root i).im| ≤ T :=
  (mem_heightHead T (point T i)).mp (point_mem_head T i)

/-- Every actual nontrivial source zero in the closed height range occurs,
and every indexed root is such a zero. There is no assumed identification. -/
theorem root_coverage (T : ℝ) (z : ℂ) :
    (∃ i : Fin (size T), (divisor T).root i = z) ↔
      GRWTSK.RiemannHypothesis.NontrivialZetaZero z ∧ |z.im| ≤ T := by
  constructor
  · rintro ⟨i, rfl⟩
    exact ⟨root_nontrivial T i, root_height_le T i⟩
  · rintro ⟨hz, hT⟩
    have hm : (⟨z, hz⟩ : ZeroPoint) ∈ heightHead T :=
      (mem_heightHead T ⟨z, hz⟩).mpr hT
    obtain ⟨i, hi⟩ := (exists_point_eq_iff T ⟨z, hz⟩).mpr hm
    exact ⟨i, congrArg Subtype.val hi⟩

/-- The quantifier order is point-by-point finite-height coverage, not a
single finite graph containing all zeros or a uniform analytic estimate. -/
theorem point_occurs_at_own_height (z : ZeroPoint) :
    ∃ i : Fin (size (height z)), (divisor (height z)).root i = z.1 :=
  (root_coverage (height z) z.1).mpr ⟨z.2, le_rfl⟩

/-- Reindexing an arbitrary additive observable is the reusable source return. -/
theorem sum_points {M : Type*} [AddCommMonoid M] (T : ℝ) (f : ZeroPoint → M) :
    (∑ i : Fin (size T), f (point T i)) = ∑ z ∈ heightHead T, f z := by
  classical
  refine Finset.sum_bij (fun i _ => point T i) ?_ ?_ ?_ ?_
  · intro i hi
    exact point_mem_head T i
  · intro i hi j hj hij
    exact point_injective T hij
  · intro z hz
    obtain ⟨i, hi⟩ := (exists_point_eq_iff T z).mpr hz
    exact ⟨i, Finset.mem_univ i, hi⟩
  · intro i hi
    rfl

/-- The same exact bijection reindexes every finite source subfamily. -/
theorem sum_filtered_points {M : Type*} [AddCommMonoid M]
    (T : ℝ) (p : ZeroPoint → Prop) [DecidablePred p] (f : ZeroPoint → M) :
    (∑ i ∈ Finset.univ.filter (fun i : Fin (size T) => p (point T i)),
      f (point T i)) = ∑ z ∈ (heightHead T).filter p, f z := by
  classical
  refine Finset.sum_bij (fun i _ => point T i) ?_ ?_ ?_ ?_
  · intro i hi
    exact Finset.mem_filter.mpr
      ⟨point_mem_head T i, (Finset.mem_filter.mp hi).2⟩
  · intro i hi j hj hij
    exact point_injective T hij
  · intro z hz
    obtain ⟨i, hi⟩ := (exists_point_eq_iff T z).mpr (Finset.mem_filter.mp hz).1
    refine ⟨i, Finset.mem_filter.mpr ⟨Finset.mem_univ i, ?_⟩, hi⟩
    rw [hi]
    exact (Finset.mem_filter.mp hz).2
  · intro i hi
    rfl

/-- Every complex kernel has exactly its canonical weighted source sum. -/
theorem zeroSum_eq_source (T : ℝ) (kernel : ℂ → ℂ) :
    zeroSum (divisor T) kernel =
      ∑ z ∈ heightHead T, (multiplicity z : ℂ) * kernel z.1 :=
  sum_points T (fun z => (multiplicity z : ℂ) * kernel z.1)

/-- The graph's total multiplicity is the canonical full-height count. -/
theorem total_multiplicity_eq (T : ℝ) :
    (∑ i : Fin (size T), (divisor T).multiplicity i) = heightCount T :=
  sum_points T multiplicity

/-- The canonical source subfamily with precisely the existing cutoffs. -/
def selectedHead (T sigma H : ℝ) : Finset ZeroPoint := by
  classical
  exact (heightHead T).filter (fun z => sigma ≤ z.1.re ∧ height z ≤ H)

/-- Every unselected canonical point stays in this explicit finite complement. -/
def omittedHead (T sigma H : ℝ) : Finset ZeroPoint := by
  classical
  exact (heightHead T \ selectedHead T sigma H)

theorem selectedZeroSum_eq_source (T : ℝ) (kernel : ℂ → ℂ)
    (sigma H : ℝ) :
    selectedZeroSum (divisor T) kernel sigma H =
      ∑ z ∈ selectedHead T sigma H,
        (multiplicity z : ℂ) * kernel z.1 := by
  classical
  exact sum_filtered_points T
    (fun z => sigma ≤ z.1.re ∧ height z ≤ H)
    (fun z => (multiplicity z : ℂ) * kernel z.1)

/-- Exact analytic-multiplicity counting on the selected source subfamily. -/
theorem zeroCount_eq_source (T sigma H : ℝ) :
    zeroCount (divisor T) sigma H =
      ∑ z ∈ selectedHead T sigma H, multiplicity z := by
  classical
  exact sum_filtered_points T
    (fun z => sigma ≤ z.1.re ∧ height z ≤ H) multiplicity

theorem selectedHead_subset (T sigma H : ℝ) :
    selectedHead T sigma H ⊆ heightHead T := by
  classical
  exact Finset.filter_subset _ _

/-- The existing omitted contribution returns to the exact canonical
complement, preserving its sign and every multiplicity. -/
theorem omittedZeroSum_eq_source (T : ℝ) (kernel : ℂ → ℂ)
    (sigma H : ℝ) :
    omittedZeroSum (divisor T) kernel sigma H =
      ∑ z ∈ omittedHead T sigma H,
        (multiplicity z : ℂ) * kernel z.1 := by
  classical
  have hm := zeroSum_eq_selected_add_omitted (divisor T) kernel sigma H
  rw [zeroSum_eq_source, selectedZeroSum_eq_source] at hm
  have hs := Finset.sum_sdiff
    (f := fun z => (multiplicity z : ℂ) * kernel z.1)
    (selectedHead_subset T sigma H)
  rw [add_comm] at hs
  exact add_left_cancel (hm.symm.trans hs.symm)

/-- The canonical strip theorem makes the zero real-part cutoff exhaustive
within this one head; it is not a critical-line assertion. -/
theorem selectedHead_zero_full_height (T : ℝ) :
    selectedHead T 0 T = heightHead T := by
  classical
  apply Finset.filter_eq_self.mpr
  intro z hz
  exact ⟨(point_mem_strip z).1.le, (mem_heightHead T z).mp hz⟩

theorem zeroCount_zero_full_height (T : ℝ) :
    zeroCount (divisor T) 0 T = heightCount T := by
  rw [zeroCount_eq_source, selectedHead_zero_full_height]
  rfl

/-- A supplied explicit formula returns the actual canonical finite zero
contribution. The formula and its entire analytic remainder remain premises. -/
theorem prime_counting_correction_source (T : ℝ) (kernel : ℂ → ℂ)
    (F : ExplicitFormulaAt (divisor T) kernel) :
    F.psi - F.mainTerm =
      -(∑ z ∈ heightHead T, (multiplicity z : ℂ) * kernel z.1) + F.remainder := by
  rw [prime_counting_correction (divisor T) kernel F, zeroSum_eq_source]

end
end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSoficDivisor
