/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.GeometricProductCertificates
import GRWTSK.FunctionsOfAComplexVariable.AnalyticResidualCover

/-!
# Explicit certificate families for finite Weil factors

The spectral input is a finite list a with |a_i| <= R, R>0. For a pure
weight-w Frobenius factor one takes R=q^(w/2); geometric purity and the exact
identification with the characteristic factor are external source theorems,
not axioms introduced here. Deligne, La conjecture de Weil I, Publ. Math. IHES
43 (1974), (1.5.4), (1.7), supplies the classical mathematical context.
Reciprocal roots a_i and zeros of product(1-a_i*t) are not interchanged.

On the closed disk |t| <= ((n+1)/(n+2))/R, the preceding polynomial has
residual <=1/4 and size <=(n+2)^d. Each compact core is covered by ONE explicit
larger concentric patch; no invocation of an already existing inverse, no
compactness selection, no unknown successful cutoff, and no sampled-only
inference occurs in this construction. The disk radii exhaust |t|<1/R.

The finite-field technique is thus used to construct, rather than assume,
a universally quantified family in the existing Boundary.Certificate and
Cover.FiniteCover interfaces. This does not construct etale cohomology, prove
Deligne's theorem in Lean, or identify classical zeta with a finite factor.
The separate Gauss-sum consumer supplies actual finite-field coefficients.

Primary proof: norm multiplicativity supplies contraction; the explicit
geometric schedule supplies the strict residual; Archimedean exhaustion and
a singleton patch give the return. An independent factor-zero argument gives
the exact root circle under equality of the coefficient norms.
Source reuse at 0908f8d055bb6fec87d0685b5582fd473b5fd565. AI-assisted
formalization. Novelty and independent review not assessed. Compilation,
fresh kernel checking, transitive axiom auditing: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.NumberTheory.WeilCertificates

open GRWTSK.Analysis.GeometricProduct
open GRWTSK.Analysis.Division
open GRWTSK.Analysis.Division.Cover

def radius (R : ℝ) (n : ℕ) : ℝ := ratio n / R

def innerDomain (R : ℝ) : Set ℂ := Metric.ball 0 (1 / R)

def innerCore (R : ℝ) (n : ℕ) : Set ℂ := Metric.closedBall 0 (radius R n)

theorem ratio_strict_step (n : ℕ) : ratio n < ratio (n + 1) := by
  unfold ratio
  push_cast
  apply (div_lt_div_iff₀ (by positivity) (by positivity)).mpr
  nlinarith

/-- An arithmetic coverage witness, independent of the function being certified. -/
theorem exists_ratio_above {t : ℝ} (ht : t < 1) : ∃ n : ℕ, t < ratio n := by
  have hgap : 0 < 1 - t := sub_pos.mpr ht
  obtain ⟨n, hn⟩ := exists_nat_gt (1 / (1 - t))
  have hprod : 1 < (n : ℝ) * (1 - t) := (div_lt_iff₀ hgap).mp hn
  refine ⟨n, ?_⟩
  unfold ratio
  apply (lt_div_iff₀ (by positivity)).mpr
  nlinarith

theorem radius_pos {R : ℝ} (hR : 0 < R) (n : ℕ) : 0 < radius R n :=
  div_pos (ratio_pos n) hR

theorem radius_lt_limit {R : ℝ} (hR : 0 < R) (n : ℕ) : radius R n < 1 / R :=
  div_lt_div_of_pos_right (ratio_lt_one n) hR

theorem radius_strict_step {R : ℝ} (hR : 0 < R) (n : ℕ) :
    radius R n < radius R (n + 1) :=
  div_lt_div_of_pos_right (ratio_strict_step n) hR

theorem contraction_on_core (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (spectral : ∀ a ∈ as, ‖a‖ ≤ R) (n : ℕ) {z : ℂ} (hz : z ∈ innerCore R n) :
    ∀ a ∈ as, ‖a * z‖ ≤ ratio n := by
  have hnorm : ‖z‖ ≤ ratio n / R := by
    simpa only [innerCore, radius, Metric.mem_closedBall, dist_zero_right] using hz
  have hprod : ‖z‖ * R ≤ ratio n := (le_div_iff₀ hR).mp hnorm
  intro a ha
  rw [norm_mul]
  exact (mul_le_mul_of_nonneg_right (spectral a ha) (norm_nonneg z)).trans
    (by simpa only [mul_comm] using hprod)

/-- Each level carries the exact existing boundary-certificate type. -/
def innerCertificate (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (spectral : ∀ a ∈ as, ‖a‖ ≤ R) (n : ℕ) :
    Boundary.Certificate (factorProduct as) (Metric.ball 0 (radius R n)) where
  approximation := familyApproximation as n
  bound := 1 / 4
  strict := by norm_num
  regular := Boundary.residual_regular
    (differentiable_product as).diffContOnCl
    (differentiable_approximate as (truncation n as.length)).diffContOnCl
  boundary_bound := by
    intro z hz
    have hcore : z ∈ innerCore R n :=
      Metric.closure_ball_subset_closedBall (frontier_subset_closure hz)
    exact family_residual as n z (contraction_on_core as hR spectral n hcore)

/-- The patch is concrete, bounded, and its whole closure stays inside the domain. -/
def innerPatch (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (spectral : ∀ a ∈ as, ‖a‖ ≤ R) (n : ℕ) : Patch (factorProduct as) (innerDomain R) where
  region := Metric.ball 0 (radius R n)
  open_region := Metric.isOpen_ball
  bounded := Metric.isBounded_ball
  contained := by
    intro z hz
    have hnorm : ‖z‖ ≤ radius R n := by
      simpa only [Metric.mem_closedBall, dist_zero_right] using
        (Metric.closure_ball_subset_closedBall hz)
    exact (show dist z 0 < 1 / R by simpa using hnorm.trans_lt (radius_lt_limit hR n))
  certificate := innerCertificate as hR spectral n

/-- One explicitly specified patch suffices for every compact core. -/
theorem universal_inner_core_cover (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (spectral : ∀ a ∈ as, ‖a‖ ≤ R) (n : ℕ) :
    FiniteCover (factorProduct as) (innerDomain R) (innerCore R n) := by
  classical
  let p := innerPatch as hR spectral (n + 1)
  refine ⟨{p}, ?_⟩
  intro z hz
  refine ⟨p, by simp, ?_⟩
  have hnorm : ‖z‖ ≤ radius R n := by
    simpa only [innerCore, Metric.mem_closedBall, dist_zero_right] using hz
  change dist z 0 < radius R (n + 1)
  simpa only [dist_zero_right] using hnorm.trans_lt (radius_strict_step hR n)

/-- The open disk is exhausted by these specifically constructed patches. -/
theorem universal_inner_cover (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (spectral : ∀ a ∈ as, ‖a‖ ≤ R) : CertifiedOn (factorProduct as) (innerDomain R) := by
  intro z hz
  have hnorm : ‖z‖ < 1 / R := by
    simpa only [innerDomain, Metric.mem_ball, dist_zero_right] using hz
  have hprod : ‖z‖ * R < 1 := (lt_div_iff₀ hR).mp hnorm
  obtain ⟨n, hn⟩ := exists_ratio_above hprod
  refine ⟨innerPatch as hR spectral n, ?_⟩
  change dist z 0 < ratio n / R
  rw [dist_zero_right]
  exact (lt_div_iff₀ hR).mpr hn

/-- The existing cover consumer returns nonvanishing of the actual product. -/
theorem inner_nonzero (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (spectral : ∀ a ∈ as, ‖a‖ ≤ R) {z : ℂ} (hz : z ∈ innerDomain R) :
    factorProduct as z ≠ 0 :=
  certifiedOn_nonzero (universal_inner_cover as hR spectral) z hz

/-- No characteristic-polynomial root is lost in a product representation. -/
theorem zero_has_factor (as : List ℂ) {z : ℂ} (hz : factorProduct as z = 0) :
    ∃ a ∈ as, a * z = 1 := by
  revert hz
  induction as with
  | nil => intro hz; exact False.elim (one_ne_zero hz)
  | cons a as ih =>
    intro hz
    rcases mul_eq_zero.mp hz with first | rest
    · exact ⟨a, by simp, (sub_eq_zero.mp first).symm⟩
    · obtain ⟨b, hb, hprod⟩ := ih rest
      exact ⟨b, by simp [hb], hprod⟩

/-- Purity concerns reciprocal roots; the actual zero radius is 1/R. -/
theorem pure_zero_radius (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (pure : ∀ a ∈ as, ‖a‖ = R) {z : ℂ} (hz : factorProduct as z = 0) :
    ‖z‖ = 1 / R := by
  obtain ⟨a, ha, hprod⟩ := zero_has_factor as hz
  have hnorm : R * ‖z‖ = 1 := by
    simpa only [norm_mul, norm_one, pure a ha] using congrArg norm hprod
  apply (eq_div_iff (ne_of_gt hR)).mpr
  simpa only [mul_comm] using hnorm

/-- A factor on the limiting circle shows why no uniform strict extension is possible. -/
theorem critical_circle_fixture : factorProduct [1] 1 = 0 ∧ ‖(1 : ℂ)‖ = 1 := by
  simp [factorProduct]

end GRWTSK.NumberTheory.WeilCertificates
