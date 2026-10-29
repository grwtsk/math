-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimitiveExplicitFormulaSquare.Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PrimitiveExplicitFormulaSquare.Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:b56c6247d3e3c522b9b49498/workspace/lib/Surface/Core/DirichletGRH/ExplicitFormula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.ZeroExclusion
import Mathlib.Tactic

/-!
# Primitive explicit-formula square

The reverse implication from GRH to a sharp centered twisted-Chebyshev
estimate is an analytic theorem, not a definition.  This module states its
exact quantitative endpoint and proves only the elementary passage from the
logarithmic critical rate to every half-plus-epsilon power.

`PrimitiveExplicitFormulaSquare` is deliberately uninhabited here.  A future
inhabitant must supply the checked explicit-formula estimate; no GRH theorem
or zero enumeration is built into the surrounding definitions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimitiveExplicitFormulaSquare.Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- Sharp centered twisted-Chebyshev rate at modulus `q`. -/
@[expose]
def centeredTwistedPsiCriticalRate (q x : ℕ) : ℝ :=
  Real.sqrt (x : ℝ) * Real.log ((q * x : ℕ) : ℝ) ^ 2

/-- Sharp logarithmic estimate for one character. -/
@[expose]
def CenteredTwistedPsiCriticalBound
    {q : ℕ} (χ : DirichletCharacter ℂ q) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ x : ℕ, 2 ≤ x →
      ‖centeredTwistedPsi χ x‖ ≤
        C * centeredTwistedPsiCriticalRate q x

/-- The logarithmic critical rate is bounded by every half-plus-epsilon
power.  The constant is allowed to depend on the fixed modulus. -/
theorem centeredTwistedPsiCriticalRate_le_halfPlusEpsilon
    (q : ℕ) [NeZero q] {ε : ℝ} (hε : 0 < ε)
    (x : ℕ) (hx : 2 ≤ x) :
    centeredTwistedPsiCriticalRate q x ≤
      ((4 / ε ^ 2) * (q : ℝ) ^ ε) *
        (x : ℝ) ^ (1 / 2 + ε) := by
  have hhalf : 0 < ε / 2 := by positivity
  have hq0 : 0 ≤ (q : ℝ) := Nat.cast_nonneg q
  have hx0 : 0 ≤ (x : ℝ) := Nat.cast_nonneg x
  have hqx0 : 0 ≤ ((q * x : ℕ) : ℝ) := Nat.cast_nonneg _
  have hqx1 : 1 ≤ ((q * x : ℕ) : ℝ) := by
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr
      (mul_ne_zero (NeZero.ne q) (by omega))
  have hlog0 : 0 ≤ Real.log ((q * x : ℕ) : ℝ) :=
    Real.log_nonneg hqx1
  have hlog := Real.log_le_rpow_div hqx0 hhalf
  have hpow0 : 0 ≤ ((q * x : ℕ) : ℝ) ^ (ε / 2) :=
    Real.rpow_nonneg hqx0 _
  have hdiv0 : 0 ≤ ((q * x : ℕ) : ℝ) ^ (ε / 2) / (ε / 2) :=
    div_nonneg hpow0 hhalf.le
  have hlog2 : Real.log ((q * x : ℕ) : ℝ) ^ 2 ≤
      (((q * x : ℕ) : ℝ) ^ (ε / 2) / (ε / 2)) ^ 2 :=
    (sq_le_sq₀ hlog0 hdiv0).2 hlog
  unfold centeredTwistedPsiCriticalRate
  rw [Real.sqrt_eq_rpow]
  calc
    (x : ℝ) ^ ((1 : ℝ) / 2) *
        Real.log ((q * x : ℕ) : ℝ) ^ 2 ≤
        (x : ℝ) ^ ((1 : ℝ) / 2) *
          (((q * x : ℕ) : ℝ) ^ (ε / 2) / (ε / 2)) ^ 2 := by
      exact mul_le_mul_of_nonneg_left hlog2 (Real.rpow_nonneg hx0 _)
    _ = ((4 / ε ^ 2) * (q : ℝ) ^ ε) *
        (x : ℝ) ^ (1 / 2 + ε) := by
      rw [div_pow, ← Real.rpow_natCast]
      rw [← Real.rpow_mul hqx0]
      norm_num only [Nat.cast_ofNat]
      have hexp : ε / 2 * (2 : ℝ) = ε := by ring
      rw [hexp, Nat.cast_mul, Real.mul_rpow hq0 hx0]
      have hden : ((ε / 2) ^ 2)⁻¹ = 4 / ε ^ 2 := by
        field_simp [ne_of_gt hε]
        norm_num
      rw [show ((q : ℝ) ^ ε * (x : ℝ) ^ ε) / (ε / 2) ^ 2 =
          ((q : ℝ) ^ ε * (x : ℝ) ^ ε) * ((ε / 2) ^ 2)⁻¹ by
        rw [div_eq_mul_inv]]
      rw [hden]
      have hxpos : 0 < (x : ℝ) := by exact_mod_cast (show 0 < x by omega)
      calc
        (x : ℝ) ^ ((1 : ℝ) / 2) *
            ((q : ℝ) ^ ε * (x : ℝ) ^ ε * (4 / ε ^ 2)) =
            (4 / ε ^ 2) * (q : ℝ) ^ ε *
              ((x : ℝ) ^ ((1 : ℝ) / 2) * (x : ℝ) ^ ε) := by ring
        _ = (4 / ε ^ 2) * (q : ℝ) ^ ε *
            (x : ℝ) ^ ((1 : ℝ) / 2 + ε) := by
          rw [← Real.rpow_add hxpos]

/-- The sharp logarithmic estimate implies every half-plus-epsilon bound. -/
@[surface_novel, surface_published]
theorem centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (hCritical : CenteredTwistedPsiCriticalBound χ) :
    CenteredTwistedPsiHalfPlusEpsilon χ := by
  rintro ε hε
  obtain ⟨C, hC, hBound⟩ := hCritical
  let K : ℝ := (4 / ε ^ 2) * (q : ℝ) ^ ε
  refine ⟨C * K, by positivity, ?_⟩
  intro x hx
  calc
    ‖centeredTwistedPsi χ x‖ ≤
        C * centeredTwistedPsiCriticalRate q x := hBound x hx
    _ ≤ C * (K * (x : ℝ) ^ (1 / 2 + ε)) := by
      exact mul_le_mul_of_nonneg_left
        (centeredTwistedPsiCriticalRate_le_halfPlusEpsilon q hε x hx) hC
    _ = (C * K) * (x : ℝ) ^ (1 / 2 + ε) := by ring

/-- Checked endpoint expected from the completed explicit formula, zero
counting, gamma/trivial-zero estimates, contour control, and de-smoothing.

The structure contains the reverse analytic implication only; it contains no
forward GRH proof and has no inhabitant in this module. -/
structure PrimitiveExplicitFormulaSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  criticalBound_of_grh :
    GRHForPrimitiveCharacter χ → CenteredTwistedPsiCriticalBound χ

@[surface_novel, surface_published]
theorem grh_implies_centeredTwistedPsiCriticalBound
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveExplicitFormulaSquare χ)
    (hGRH : GRHForPrimitiveCharacter χ) :
    CenteredTwistedPsiCriticalBound χ :=
  square.criticalBound_of_grh hGRH

@[surface_novel, surface_published]
theorem grh_implies_centeredTwistedPsiHalfPlusEpsilon
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveExplicitFormulaSquare χ)
    (hGRH : GRHForPrimitiveCharacter χ) :
    CenteredTwistedPsiHalfPlusEpsilon χ :=
  centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon
    (square.criticalBound_of_grh hGRH)

end

end Surface.Core.DirichletGRH
