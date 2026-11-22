/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimitiveDirichletZeroWindowReflection

/-!
# Multiplicity lost by keeping one zero at each ordinate

The comparison uses actual strip zeros of each primitive character and the
same finite height windows as the cofinal GRH return.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.PrimitiveDirichletSource

open GRWTSK.NumberTheory.WeilNegativeWitness GRWTSK.NumberTheory.Conditional

variable {q : ℕ} [NeZero q]

/-- Total analytic multiplicity at ordinate `t` in the strict height window. -/
def ordinateMass (source : PrimitiveDirichletSource q) (H t : ℝ) : ℕ := by
  classical
  exact ∑ rho ∈ (heightWindow source.character source.isPrimitive H).filter
    (fun rho => rho.1.im = t), zeroMultiplicity source.character rho

/-- A zero off the critical line contributes at least twice its multiplicity
to the mass at its ordinate. -/
theorem twice_multiplicity_le_ordinateMass (source : PrimitiveDirichletSource q)
    {H : ℝ} {rho : CriticalStripZero source.character}
    (hmem : rho ∈ heightWindow source.character source.isPrimitive H)
    (hoff : rho.1.re ≠ 1 / 2) :
    2 * zeroMultiplicity source.character rho ≤ source.ordinateMass H rho.1.im := by
  classical
  obtain ⟨sigma, hSigma, hNe, hIm, hMult⟩ := source.heightWindow_ordinate_collision hmem hoff
  let fiber := (heightWindow source.character source.isPrimitive H).filter
    (fun r => r.1.im = rho.1.im)
  have hsub : {sigma, rho} ⊆ fiber := by
    intro r hr
    simp only [Finset.mem_insert, Finset.mem_singleton] at hr
    rcases hr with rfl | rfl
    · exact Finset.mem_filter.mpr ⟨hSigma, hIm⟩
    · exact Finset.mem_filter.mpr ⟨hmem, rfl⟩
  have hsum := Finset.sum_le_sum_of_subset_of_nonneg (f := zeroMultiplicity source.character)
    hsub (fun _ _ _ => Nat.zero_le _)
  change _ ≤ source.ordinateMass H rho.1.im at hsum
  rwa [Finset.sum_insert (by simpa using hNe), Finset.sum_singleton, hMult, ← two_mul] at hsum

/-- Recording each zero's own order as the whole mass of its ordinate
is exact precisely when the complete window lies on the critical line. -/
theorem ordinateMass_eq_multiplicity_iff (source : PrimitiveDirichletSource q) (H : ℝ) :
    (∀ rho ∈ heightWindow source.character source.isPrimitive H,
      source.ordinateMass H rho.1.im = zeroMultiplicity source.character rho) ↔
    ∀ rho ∈ heightWindow source.character source.isPrimitive H, rho.1.re = 1 / 2 := by
  classical
  constructor
  · intro h rho hmem
    by_contra hoff
    have hle := source.twice_multiplicity_le_ordinateMass hmem hoff
    rw [h rho hmem] at hle
    have hpos := zeroMultiplicity_pos source.character rho
    omega
  · intro h rho hmem
    have hinj := (source.ordinate_injOn_heightWindow_iff H).mpr h
    have hfiber : (heightWindow source.character source.isPrimitive H).filter
        (fun r => r.1.im = rho.1.im) = {rho} := by
      ext r
      simp only [Finset.mem_filter, Finset.mem_singleton]
      constructor
      · rintro ⟨hr, him⟩
        exact hinj hr hmem him
      · rintro rfl
        exact ⟨hmem, rfl⟩
    rw [ordinateMass, hfiber, Finset.sum_singleton]

/-- The ordinate-mass condition on a cofinal family tests the whole strip. -/
theorem criticalLine_iff_cofinal_ordinateMass (source : PrimitiveDirichletSource q)
    (height : ℕ → ℝ) (cofinal : ∀ t : ℝ, ∃ n, t < height n) :
    DirichletCriticalLine source.character ↔
      ∀ n (rho : CriticalStripZero source.character),
        rho ∈ heightWindow source.character source.isPrimitive (height n) →
          source.ordinateMass (height n) rho.1.im = zeroMultiplicity source.character rho := by
  constructor
  · intro h n
    exact (source.ordinateMass_eq_multiplicity_iff (height n)).mpr
      (fun rho _ => h rho.1 rho.2.2.1 rho.2.2.2 rho.2.1)
  · intro h
    apply (source.criticalLine_iff_no_rightZeros_in_cofinal_windows height cofinal).mpr
    intro n rho hrho
    exact ((source.ordinateMass_eq_multiplicity_iff (height n)).mp (h n) rho hrho).le

/-- Each primitive source may use its own cofinal height schedule. -/
theorem dirichletGRH_iff_characterwise_ordinateMass :
    DirichletGRH ↔ ∀ (m : ℕ) [NeZero m] (source : PrimitiveDirichletSource m),
      ∃ height : ℕ → ℝ, (∀ t : ℝ, ∃ n, t < height n) ∧
        ∀ n (rho : CriticalStripZero source.character),
          rho ∈ heightWindow source.character source.isPrimitive (height n) →
            source.ordinateMass (height n) rho.1.im = zeroMultiplicity source.character rho := by
  constructor
  · intro h m _ source
    have hcofinal : ∀ t : ℝ, ∃ n : ℕ, t < (n : ℝ) := exists_nat_gt
    exact ⟨fun n => n, hcofinal,
      (source.criticalLine_iff_cofinal_ordinateMass _ hcofinal).mp (h m source.character)⟩
  · intro h
    apply dirichletGRH_iff_primitive.mpr
    intro m _ chi hprim
    let source : PrimitiveDirichletSource m := ⟨chi, hprim⟩
    obtain ⟨height, hcofinal, hmass⟩ := h m source
    exact (source.criticalLine_iff_cofinal_ordinateMass height hcofinal).mpr hmass

/-- At conductor one the same condition is equivalent to Mathlib's RH. -/
theorem zeta_rh_iff_cofinal_ordinateMass (height : ℕ → ℝ)
    (cofinal : ∀ t : ℝ, ∃ n, t < height n) :
    _root_.RiemannHypothesis ↔
      ∀ n (rho : CriticalStripZero zeta.character),
        rho ∈ heightWindow zeta.character zeta.isPrimitive (height n) →
          zeta.ordinateMass (height n) rho.1.im = zeroMultiplicity zeta.character rho :=
  rh_iff_mod_one.trans (zeta.criticalLine_iff_cofinal_ordinateMass height cofinal)

end GRWTSK.NumberTheory.PrimitiveDirichletSource
