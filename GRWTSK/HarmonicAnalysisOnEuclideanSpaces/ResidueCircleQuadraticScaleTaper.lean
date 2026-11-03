/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Isolated additive source only.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleWaveHilbertFormalization
import Mathlib.Tactic

/-!
# One everywhere-supported all-order dyadic Hilbert scale taper

Unlike finiteScaleCutoff, the coefficient 2^(-j*j) is nonzero at every
scale j. For each integer order m, the elementary inequality

  m*j <= m*m + j*j

proves the EXACT uniform bound

  2^(m*j) * 2^(-j*j) <= 2^(m*m).

Thus the diagonal output belongs to every dyadic weighted l2 domain for
any input in the complete all-scale Hilbert space. This is actual
weighted sequence regularization; geometric C-infinity, a particular
PDE heat/half-wave propagator, and inversion with uniform stability
require separate source-identified theorems. In particular, this taper
is NOT claimed to control the original signed Moebius pickup energy.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert

/-- Pure arithmetic inequality paying the entire all-order scale loss. -/
theorem scale_order_mul_le_squares (m j : ℕ) :
    m * j ≤ m * m + j * j := by
  by_cases h : j ≤ m
  · exact (Nat.mul_le_mul_left m h).trans (Nat.le_add_right _ _)
  · have hm : m ≤ j := Nat.le_of_lt (Nat.lt_of_not_ge h)
    exact (Nat.mul_le_mul_right j hm).trans (Nat.le_add_left _ _)

/-- Nontrivial, everywhere-supported all-order multiplier; *all* scales
survive with an explicit coefficient, not only a finite prefix. -/
def quadraticScaleTaper (scaleModulus : ℕ → ℕ) :
    AllOrderMultiplier scaleModulus where
  coefficient i := (((2 : ℝ) ^ (i.1 * i.1))⁻¹ : ℝ)
  weightedBound m := by
    refine ⟨(2 : ℝ) ^ (m * m), by positivity, ?_⟩
    intro i
    let j : ℕ := i.1
    have hj : m * j ≤ m * m + j * j :=
      scale_order_mul_le_squares m j
    have hpos : 0 < (2 : ℝ) ^ (j * j) := by positivity
    have hnonneg : 0 ≤ ((2 : ℝ) ^ (j * j))⁻¹ :=
      inv_nonneg.mpr hpos.le
    have hraw :
        (2 : ℝ) ^ (m * j) * ((2 : ℝ) ^ (j * j))⁻¹ ≤
          (2 : ℝ) ^ (m * m) := by
      rw [← div_eq_mul_inv]
      apply (div_le_iff₀ hpos).mpr
      rw [← pow_add]
      exact pow_le_pow_right₀ (by norm_num : (1 : ℝ) ≤ 2) hj
    simpa [j, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg hnonneg] using hraw

/-- Explicit all-order regularity on the genuine, *complete*, all-scale
Hilbert sum without removing any scale by a cutoff. -/
theorem quadraticScaleTaper_all_orders (scaleModulus : ℕ → ℕ)
    (f : AllScaleHilbert scaleModulus) :
    DyadicAllOrders scaleModulus
      ((quadraticScaleTaper scaleModulus).output f) :=
  (quadraticScaleTaper scaleModulus).output_all_orders f

/-- The complete original vector is still represented by the output
and its exact omitted tail; no source remainder is declared zero. -/
theorem quadraticScaleTaper_exact_return (scaleModulus : ℕ → ℕ)
    (f : AllScaleHilbert scaleModulus) :
    (quadraticScaleTaper scaleModulus).output f +
      (quadraticScaleTaper scaleModulus).omittedTail f = f :=
  (quadraticScaleTaper scaleModulus).output_add_omittedTail f

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
