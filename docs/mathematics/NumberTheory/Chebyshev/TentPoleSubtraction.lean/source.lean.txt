/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RectangularPoleReduction
import GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours
import GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries

set_option autoImplicit false

/-!
# Actual finite tent principal-part subtraction

The coefficients come from the source zeta function, its pole at one, and the
analytic multiplicities. The analytic remainder is derived on the entire closed
admissible rectangle. The result reduces the closed integral to a finite rational
Cauchy-kernel sum; its winding normalization and all limiting decay estimates
remain separate. No canonical prime consumer hypothesis is removed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction

open Filter Set
open scoped Topology BigOperators
open GRWTSK.Analysis.Complex.FinitePoleSubtraction
open GRWTSK.Analysis.Complex.RectangularPoleReduction
open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalLogarithmicResidues
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours
open GRWTSK.NumberTheory.Chebyshev.TentResidueContributions
open GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries
open GRWTSK.Analysis.Real.TentRationalCorrection

noncomputable section

/-- The negative logarithmic coefficient; only actual zeros and the pole are consumed. -/
def logCoefficient (p : ℂ) : ℂ := by
  classical
  exact if p = 1 then 1 else -(analyticOrderNatAt riemannZeta p : ℂ)

/-- Evaluate the same entire multiplier at the exact complex source point. -/
def tentCoefficient (x h : ℝ) (p : ℂ) : ℂ := logCoefficient p * tentKernel x h p

@[simp] theorem logCoefficient_one : logCoefficient 1 = 1 := by simp [logCoefficient]

theorem logCoefficient_nontrivial (z : ZeroPoint) :
    logCoefficient z.1 = -(multiplicity z : ℂ) := by
  simp only [logCoefficient, if_neg z.2.2.2, CanonicalZeroDivisor.multiplicity]

/-- Simplicity of the actual trivial zero determines its natural analytic order. -/
theorem analyticOrderNatAt_trivialPoint (k : ℕ) :
    analyticOrderNatAt riemannZeta (trivialPoint k) = 1 := by
  have hne : trivialPoint k ≠ 1 := by
    intro he
    have hz := zeta_trivialPoint k
    rw [he] at hz
    exact riemannZeta_one_ne_zero hz
  exact simple_zero_order_nat riemannZeta (trivialPoint k)
    (analyticOn_riemannZeta _ hne) (zeta_trivialPoint k) (deriv_zeta_trivialPoint_ne_zero k)

theorem logCoefficient_trivial (k : ℕ) : logCoefficient (trivialPoint k) = -1 := by
  have hne : trivialPoint k ≠ 1 := by
    intro he
    exact riemannZeta_one_ne_zero (he ▸ zeta_trivialPoint k)
  simp [logCoefficient, hne, analyticOrderNatAt_trivialPoint]

theorem tentCoefficient_one (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    tentCoefficient x h 1 = (h : ℂ) := by
  rw [tentCoefficient, logCoefficient_one, one_mul, tentKernel_one x h hh ha]

theorem tentCoefficient_nontrivial (x h : ℝ) (z : ZeroPoint) :
    tentCoefficient x h z.1 = -(multiplicity z : ℂ) * tentKernel x h z.1 := by
  rw [tentCoefficient, logCoefficient_nontrivial]

theorem tentCoefficient_trivial (x h : ℝ) (k : ℕ) :
    tentCoefficient x h (trivialPoint k) = -tentKernel x h (trivialPoint k) := by
  rw [tentCoefficient, logCoefficient_trivial, neg_one_mul]

/-- The exact distinct-point inventory sums to the expected signed coefficient total.
This evaluates the coefficients, not the boundary integrals of their Cauchy kernels. -/
theorem sum_tentCoefficient_singularHead (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) :
    (∑ p ∈ singularHead N, tentCoefficient x h p) =
      (h : ℂ) - (∑ z ∈ heightHead (contourHeight N),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ) := by
  classical
  let A := (heightHead (contourHeight N)).image (fun z : ZeroPoint => z.1)
  let B := (Finset.range N).image trivialPoint
  have hone : (1 : ℂ) ∉ A ∪ B := by
    intro hm
    rcases Finset.mem_union.mp hm with hm | hm
    · obtain ⟨z, _, hz⟩ := Finset.mem_image.mp hm
      exact z.2.2.2 hz
    · obtain ⟨k, _, hk⟩ := Finset.mem_image.mp hm
      exact riemannZeta_one_ne_zero (hk ▸ zeta_trivialPoint k)
  have hd : Disjoint A B := by
    apply Finset.disjoint_left.mpr
    intro p hpA hpB
    obtain ⟨z, _, rfl⟩ := Finset.mem_image.mp hpA
    obtain ⟨k, _, hk⟩ := Finset.mem_image.mp hpB
    apply trivialPoint_not_nontrivial k
    rw [hk]
    exact z.2
  have hA : (∑ p ∈ A, tentCoefficient x h p) =
      -(∑ z ∈ heightHead (contourHeight N), (multiplicity z : ℂ) * tentKernel x h z.1) := by
    dsimp only [A]
    rw [Finset.sum_image (fun a _ b _ he => Subtype.val_injective he)]
    simp only [tentCoefficient_nontrivial, neg_mul, Finset.sum_neg_distrib]
  have hB : (∑ p ∈ B, tentCoefficient x h p) = (correctionPrefix N x h : ℂ) := by
    dsimp only [B]
    rw [Finset.sum_image (fun a _ b _ he => trivialPoint_injective he)]
    simp only [tentCoefficient_trivial]
    exact finite_trivial_coefficients N x h hh ha
  change (∑ p ∈ insert 1 (A ∪ B), tentCoefficient x h p) = _
  rw [Finset.sum_insert hone, Finset.sum_union hd, hA, hB, tentCoefficient_one x h hh ha]
  ring

/-- Principal parts at every actual singular point, with analytic regular terms.
A scaled-limit assertion alone is not used as an analytic-extension oracle. -/
theorem negative_log_principal_part (p : ℂ) (hp : p = 1 ∨ riemannZeta p = 0) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A p ∧
      (fun z => -logDeriv riemannZeta z) =ᶠ[𝓝[≠] p]
        fun z => logCoefficient p / (z - p) + A z := by
  rcases hp with rfl | hp
  · refine ⟨fun z => -logDeriv riemannZeta₁ z, zeta_pole_principal_part.1.neg, ?_⟩
    filter_upwards [zeta_pole_principal_part.2] with z hz
    rw [logCoefficient_one, hz]
    ring
  · rcases (zeta_zero_iff p).mp hp with hnt | ⟨k, rfl⟩
    · obtain ⟨A, hA, he⟩ := canonical_zero_principal_part ⟨p, hnt⟩
      refine ⟨fun z => -A z, hA.neg, ?_⟩
      filter_upwards [he] with z hz
      rw [show logCoefficient p = -(multiplicity ⟨p, hnt⟩ : ℂ) from
        logCoefficient_nontrivial ⟨p, hnt⟩, hz]
      ring
    · have hne : trivialPoint k ≠ 1 := by
        intro he
        exact riemannZeta_one_ne_zero (he ▸ zeta_trivialPoint k)
      obtain ⟨A, hA, he⟩ := simple_zero_log_principal_part riemannZeta (trivialPoint k)
        (analyticOn_riemannZeta _ hne) (zeta_trivialPoint k) (deriv_zeta_trivialPoint_ne_zero k)
      refine ⟨fun z => -A z, hA.neg, ?_⟩
      filter_upwards [he] with z hz
      rw [logCoefficient_trivial, hz]
      ring

/-- The multiplier's divided difference supplies the otherwise missing analytic term. -/
theorem tent_principal_part (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (p : ℂ) (hp : p = 1 ∨ riemannZeta p = 0) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A p ∧
      integrand x h =ᶠ[𝓝[≠] p] fun z => tentCoefficient x h p / (z - p) + A z := by
  obtain ⟨A, hA, hpart⟩ := negative_log_principal_part p hp
  exact principal_part_mul (fun z => -logDeriv riemannZeta z) A (tentKernel x h)
    p (logCoefficient p) hA ((differentiable_tentKernel x h hh ha).analyticAt p) hpart

/-- The filled rectangle is the interior together with all four closed edges. -/
theorem closed_mem_interior_or_boundary (N : ℕ) (z : ℂ)
    (hz : z ∈ closedRectangle (leftEdge N) 2 (contourHeight N)) :
    z ∈ interior N ∨ z ∈ boundary N := by
  rcases lt_or_eq_of_le hz.1 with hl | hl
  · rcases lt_or_eq_of_le hz.2.1 with hr | hr
    · rcases lt_or_eq_of_le hz.2.2 with ht | ht
      · exact Or.inl ⟨hl, hr, ht⟩
      · exact Or.inr ⟨hz.1, hz.2.1, hz.2.2, Or.inr (Or.inr ht)⟩
    · exact Or.inr ⟨hz.1, hz.2.1, hz.2.2, Or.inr (Or.inl hr)⟩
  · exact Or.inr ⟨hz.1, hz.2.1, hz.2.2, Or.inl hl.symm⟩

theorem analyticAt_integrand_on_closed_off_inventory (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (N : ℕ) (z : ℂ)
    (hz : z ∈ closedRectangle (leftEdge N) 2 (contourHeight N))
    (hout : z ∉ singularHead N) : AnalyticAt ℂ (integrand x h) z := by
  rcases closed_mem_interior_or_boundary N z hz with hi | hb
  · exact analyticAt_integrand_off_singularHead x h hh ha N z hi hout
  · exact analyticAt_integrand_on_boundary x h hh ha N z hb

/-- The remainder is analytically extended at every inventory point, not silently totalized. -/
theorem exists_analytic_tent_remainder (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (N : ℕ) :
    ∃ g : ℂ → ℂ, AnalyticOnNhd ℂ g (closedRectangle (leftEdge N) 2 (contourHeight N)) ∧
      ∀ z : ℂ, z ∉ singularHead N → integrand x h z =
        g z + principalSum (singularHead N) (tentCoefficient x h) z := by
  exact finite_pole_subtraction (singularHead N) (integrand x h) (tentCoefficient x h)
    (closedRectangle (leftEdge N) 2 (contourHeight N))
    (analyticAt_integrand_on_closed_off_inventory x h hh ha N)
    (fun p hp => tent_principal_part x h hh ha p ((mem_singularHead_iff N p).mp hp).2)

/-- The closed zeta/tent integral is reduced to an explicit finite rational principal sum.
Rectangular winding normalization, contour limits and prime margins are NOT conclusions. -/
theorem tent_boundary_eq_principalSum (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (N : ℕ) :
    boundaryIntegral (integrand x h) (leftEdge N) 2 (contourHeight N) =
      boundaryIntegral (principalSum (singularHead N) (tentCoefficient x h))
        (leftEdge N) 2 (contourHeight N) := by
  exact boundaryIntegral_eq_principalSum (singularHead N) (integrand x h) (tentCoefficient x h)
    (leftEdge N) 2 (contourHeight N) ((leftEdge_neg N).trans (by norm_num))
    (contourHeight_pos N) (fun p hp => ((mem_singularHead_iff N p).mp hp).1)
    (analyticAt_integrand_on_closed_off_inventory x h hh ha N)
    (fun p hp => tent_principal_part x h hh ha p ((mem_singularHead_iff N p).mp hp).2)

/-- The closed term is replaced without discarding either oriented correction edge. -/
theorem rightSegment_principal_decomposition (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) :
    rightSegment x h N =
      boundaryIntegral (principalSum (singularHead N) (tentCoefficient x h))
        (leftEdge N) 2 (contourHeight N) / (((2 * Real.pi : ℝ) : ℂ) * Complex.I) +
      vertical (integrand x h) (leftEdge N) (contourHeight N) / ((2 * Real.pi : ℝ) : ℂ) +
      (horizontal (integrand x h) (leftEdge N) 2 (contourHeight N) -
        horizontal (integrand x h) (leftEdge N) 2 (-contourHeight N)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  rw [rightSegment_decomposition, tent_boundary_eq_principalSum x h hh ha N]

end
end GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction
