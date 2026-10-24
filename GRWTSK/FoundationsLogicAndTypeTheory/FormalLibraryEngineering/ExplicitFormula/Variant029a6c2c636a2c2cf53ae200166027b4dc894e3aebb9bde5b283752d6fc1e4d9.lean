-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimitiveExplicitFormulaSquare.Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PrimitiveExplicitFormulaSquare.Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:8b626f31a05a3649348e97df/workspace/lib/Surface/Core/DirichletGRH/ExplicitFormula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimitiveExplicitFormulaSquare.Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6

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

/-- Exact decomposition data for a smoothed primitive explicit formula.

The zero, gamma, trivial-zero, contour, and de-smoothing contributions are
separate functions.  No quantitative estimate is stored in this structure. -/
structure PrimitiveExplicitFormulaSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  smoothedPsi : ℕ → ℂ
  zeroContribution : ℕ → ℂ
  gammaContribution : ℕ → ℂ
  trivialZeroContribution : ℕ → ℂ
  contourError : ℕ → ℂ
  desmoothingError : ℕ → ℂ

  smoothedExplicitFormula :
    ∀ x,
      smoothedPsi x =
        zeroContribution x + gammaContribution x +
          trivialZeroContribution x + contourError x

  desmoothingIdentity :
    ∀ x,
      centeredTwistedPsi χ x = smoothedPsi x + desmoothingError x

/-- One function is bounded by the conductor/modulus critical rate. -/
@[expose]
def IsCenteredCriticalRateBound
    (q : ℕ) (F : ℕ → ℂ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ x : ℕ, 2 ≤ x →
      ‖F x‖ ≤ C * centeredTwistedPsiCriticalRate q x

/-- Quantitative analytic obligations associated with an exact explicit
formula square.  GRH is used only for the nontrivial-zero contribution; all
remaining estimates are unconditional fields of this proposition. -/
@[expose]
def PrimitiveExplicitFormulaBounds
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveExplicitFormulaSquare χ) : Prop :=
  (GRHForPrimitiveCharacter χ →
      IsCenteredCriticalRateBound q square.zeroContribution) ∧
    IsCenteredCriticalRateBound q square.gammaContribution ∧
    IsCenteredCriticalRateBound q square.trivialZeroContribution ∧
    IsCenteredCriticalRateBound q square.contourError ∧
    IsCenteredCriticalRateBound q square.desmoothingError

/-- The exact formula plus its five separately visible estimates derives the
sharp centered twisted-Chebyshev bound. -/

@[surface_novel, surface_published]
theorem grh_implies_centeredTwistedPsiCriticalBound
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveExplicitFormulaSquare χ)
    (hBounds : PrimitiveExplicitFormulaBounds square)
    (hGRH : GRHForPrimitiveCharacter χ) :
    CenteredTwistedPsiCriticalBound χ := by
  obtain ⟨Czero, hCzero, hZero⟩ := hBounds.1 hGRH
  obtain ⟨Cgamma, hCgamma, hGamma⟩ := hBounds.2.1
  obtain ⟨Ctrivial, hCtrivial, hTrivial⟩ := hBounds.2.2.1
  obtain ⟨Ccontour, hCcontour, hContour⟩ := hBounds.2.2.2.1
  obtain ⟨Cdesmooth, hCdesmooth, hDesmooth⟩ := hBounds.2.2.2.2
  refine ⟨Czero + Cgamma + Ctrivial + Ccontour + Cdesmooth,
    by positivity, ?_⟩
  intro x hx
  rw [square.desmoothingIdentity x, square.smoothedExplicitFormula x]
  have hnorm :
      ‖square.zeroContribution x + square.gammaContribution x +
          square.trivialZeroContribution x + square.contourError x +
          square.desmoothingError x‖ ≤
        ‖square.zeroContribution x‖ + ‖square.gammaContribution x‖ +
          ‖square.trivialZeroContribution x‖ + ‖square.contourError x‖ +
          ‖square.desmoothingError x‖ := by
    calc
      ‖square.zeroContribution x + square.gammaContribution x +
          square.trivialZeroContribution x + square.contourError x +
          square.desmoothingError x‖ ≤
          ‖square.zeroContribution x + square.gammaContribution x +
            square.trivialZeroContribution x + square.contourError x‖ +
            ‖square.desmoothingError x‖ := norm_add_le _ _
      _ ≤ (‖square.zeroContribution x + square.gammaContribution x +
            square.trivialZeroContribution x‖ +
            ‖square.contourError x‖) +
            ‖square.desmoothingError x‖ := by
          gcongr
          exact norm_add_le _ _
      _ ≤ ((‖square.zeroContribution x + square.gammaContribution x‖ +
            ‖square.trivialZeroContribution x‖) +
            ‖square.contourError x‖) +
            ‖square.desmoothingError x‖ := by
          gcongr
          exact norm_add_le _ _
      _ ≤ (((‖square.zeroContribution x‖ +
            ‖square.gammaContribution x‖) +
            ‖square.trivialZeroContribution x‖) +
            ‖square.contourError x‖) +
            ‖square.desmoothingError x‖ := by
          gcongr
          exact norm_add_le _ _
  calc
    ‖square.zeroContribution x + square.gammaContribution x +
        square.trivialZeroContribution x + square.contourError x +
        square.desmoothingError x‖ ≤
        ‖square.zeroContribution x‖ + ‖square.gammaContribution x‖ +
          ‖square.trivialZeroContribution x‖ + ‖square.contourError x‖ +
          ‖square.desmoothingError x‖ := hnorm
    _ ≤ Czero * centeredTwistedPsiCriticalRate q x +
        Cgamma * centeredTwistedPsiCriticalRate q x +
        Ctrivial * centeredTwistedPsiCriticalRate q x +
        Ccontour * centeredTwistedPsiCriticalRate q x +
        Cdesmooth * centeredTwistedPsiCriticalRate q x := by
      gcongr
      · exact hZero x hx
      · exact hGamma x hx
      · exact hTrivial x hx
      · exact hContour x hx
      · exact hDesmooth x hx
    _ = (Czero + Cgamma + Ctrivial + Ccontour + Cdesmooth) *
        centeredTwistedPsiCriticalRate q x := by ring

@[surface_novel, surface_published]
theorem grh_implies_centeredTwistedPsiHalfPlusEpsilon
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveExplicitFormulaSquare χ)
    (hBounds : PrimitiveExplicitFormulaBounds square)
    (hGRH : GRHForPrimitiveCharacter χ) :
    CenteredTwistedPsiHalfPlusEpsilon χ :=
  centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon
    (grh_implies_centeredTwistedPsiCriticalBound square hBounds hGRH)

end

end Surface.Core.DirichletGRH
