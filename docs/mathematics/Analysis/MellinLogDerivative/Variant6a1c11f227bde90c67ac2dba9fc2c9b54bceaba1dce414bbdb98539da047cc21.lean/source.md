# Complete source: GRWTSK.Analysis.MellinLogDerivative.Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c75613d9189397b793a5c31e1a6a9ad7577ee22` · SHA-256 `ca8b63997e4d8ebf831d1d21bd7f62f09df203ceddd9c9b70d05f40f1d8c21eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MellinLogDerivativeSquare.Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MellinLogDerivativeSquare.Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"bf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:b56c6247d3e3c522b9b49498/workspace/lib/Surface/Core/DirichletGRH/MellinLogDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.CenteredPsi
public import Surface.Core.DirichletGRH.CriticalFrechet
public import Mathlib.Analysis.Complex.HasPrimitives
public import Mathlib.NumberTheory.LSeries.SumCoeff
import Mathlib.Tactic

/-!
# Centered Mellin/logarithmic-derivative square

This module isolates the exact analytic data needed to turn a centered
twisted-Chebyshev half-plus-epsilon estimate into zero-freeness on
`re s > 1 / 2`.

The principal channel is handled by a regularized `L`-function.  On the
half-plane of absolute convergence the centered Mellin transform differs
from its negative logarithmic derivative by the constant principal
indicator.  The structure below contains that identity, holomorphy of the
Mellin continuation, and the elementary zero correspondence for the
regularized function.  It contains no zero-free statement and no GRH field.
-/


namespace GRWTSK.Analysis.MellinLogDerivativeSquare.Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open Set Filter MeasureTheory Topology Complex

/-- Real interpolation used by the centered Mellin transform.

The twisted prime sum is held constant between integers, while the
principal main term is the real variable `t`, not `floor t`.  Consequently
the principal Mellin correction is exactly `s / (s - 1)`.  At natural
arguments this agrees with `centeredTwistedPsi`. -/
@[expose]
def centeredTwistedPsiStep
    {q : ℕ} (χ : DirichletCharacter ℂ q) (t : ℝ) : ℂ :=
  if 1 ≤ t then
    twistedPsi χ ⌊t⌋₊ -
      dirichletPrincipalIndicator χ * (t : ℂ)
  else 0

@[surface_novel, surface_published]
theorem centeredTwistedPsiStep_natCast
    {q : ℕ} (χ : DirichletCharacter ℂ q) (x : ℕ) :
    centeredTwistedPsiStep χ x = centeredTwistedPsi χ x := by
  by_cases hx : x = 0
  · simp [hx, centeredTwistedPsiStep, centeredTwistedPsi]
  · have hx1 : (1 : ℝ) ≤ (x : ℝ) := by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr hx)
    simp [centeredTwistedPsiStep, centeredTwistedPsi, hx1]

/-- The literal centered Mellin candidate.  Convergence and holomorphy are
properties, not part of this definition. -/
@[expose]
def centeredTwistedPsiMellin
    {q : ℕ} (χ : DirichletCharacter ℂ q) (s : ℂ) : ℂ :=
  s * mellin (centeredTwistedPsiStep χ) (-s)

/-- Open right half-plane used by the zero-exclusion argument. -/
@[expose]
def criticalRightHalfPlane : Set ℂ :=
  {s | (1 / 2 : ℝ) < s.re}

@[surface_novel, surface_published]
theorem isOpen_criticalRightHalfPlane : IsOpen criticalRightHalfPlane :=
  isOpen_lt continuous_const continuous_re

@[surface_novel, surface_published]
theorem isPreconnected_criticalRightHalfPlane :
    IsPreconnected criticalRightHalfPlane :=
  (convex_halfSpace_re_gt (1 / 2 : ℝ)).isPreconnected

/--
Typed analytic square for one Dirichlet character.

`regularizedL` is `L` in a nonprincipal channel and may be `(s - 1) L(s)`
in the principal channel.  The logarithmic-derivative identity is written
directly for this regularized function; this keeps the pole at `s = 1`
outside the ODE argument.
-/
structure MellinLogDerivativeSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  mellin : ℂ → ℂ
  regularizedL : ℂ → ℂ

  mellin_eq_centeredIntegral :
    ∀ s, mellin s = centeredTwistedPsiMellin χ s

  regularizedL_differentiable : Differentiable ℂ regularizedL

  regularizedL_zero_iff_LFunction_zero :
    ∀ s : ℂ, 0 < s.re → s.re < 1 →
      (regularizedL s = 0 ↔ DirichletCharacter.LFunction χ s = 0)

  regularizedL_ne_zero_of_one_lt_re :
    ∀ s : ℂ, 1 < s.re → regularizedL s ≠ 0

  mellin_differentiableOn :
    CenteredTwistedPsiHalfPlusEpsilon χ →
      DifferentiableOn ℂ mellin criticalRightHalfPlane

  regularizedLogDerivativeIdentity :
    ∀ s : ℂ, 1 < s.re →
      mellin s + dirichletPrincipalIndicator χ =
        -deriv regularizedL s / regularizedL s

/-- Holomorphic ODE residual for the regularized `L`-function. -/
@[expose]
def MellinLogDerivativeSquare.residual
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ) (s : ℂ) : ℂ :=
  deriv square.regularizedL s +
    (square.mellin s + dirichletPrincipalIndicator χ) *
      square.regularizedL s

theorem MellinLogDerivativeSquare.differentiableOn_residual
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    DifferentiableOn ℂ square.residual criticalRightHalfPlane := by
  have hL : DifferentiableOn ℂ square.regularizedL criticalRightHalfPlane :=
    square.regularizedL_differentiable.differentiableOn
  have hL' : DifferentiableOn ℂ (deriv square.regularizedL)
      criticalRightHalfPlane :=
    hL.deriv isOpen_criticalRightHalfPlane
  exact hL'.add
    (((square.mellin_differentiableOn hBound).add
      (by fun_prop)).mul hL)

theorem MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ) {s : ℂ} (hs : 1 < s.re) :
    square.residual s = 0 := by
  have hEq := square.regularizedLogDerivativeIdentity s hs
  have hne := square.regularizedL_ne_zero_of_one_lt_re s hs
  unfold MellinLogDerivativeSquare.residual
  rw [hEq, div_mul_cancel₀ _ hne]
  ring

/-- Identity-theorem continuation of the regularized logarithmic-derivative
ODE to the whole critical right half-plane. -/
@[surface_novel, surface_published]
theorem MellinLogDerivativeSquare.residual_eq_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ)
    {s : ℂ} (hs : s ∈ criticalRightHalfPlane) :
    square.residual s = 0 := by
  have hAnalytic : AnalyticOnNhd ℂ square.residual criticalRightHalfPlane :=
    (square.differentiableOn_residual hBound).analyticOnNhd
      isOpen_criticalRightHalfPlane
  have hZero : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ))
      criticalRightHalfPlane := analyticOnNhd_const
  have hTwo : (2 : ℂ) ∈ criticalRightHalfPlane := by
    norm_num [criticalRightHalfPlane]
  have hEventually : square.residual =ᶠ[nhds (2 : ℂ)]
      (fun _ : ℂ ↦ (0 : ℂ)) := by
    have hOpen : IsOpen {z : ℂ | 1 < z.re} :=
      isOpen_lt continuous_const continuous_re
    have hMem : (2 : ℂ) ∈ {z : ℂ | 1 < z.re} := by norm_num
    filter_upwards [hOpen.mem_nhds hMem] with z hz
    exact square.residual_eq_zero_of_one_lt_re hz
  exact (hAnalytic.eqOn_of_preconnected_of_eventuallyEq hZero
    isPreconnected_criticalRightHalfPlane hTwo hEventually) hs

/-- The centered half-plus-epsilon estimate excludes critical-strip zeros
to the right of the critical line.  The proof is local ODE uniqueness plus
global analytic continuation of `regularizedL`; no pole theorem is assumed
as a black-box conclusion. -/
@[surface_novel, surface_published]
theorem zeroFree_rightHalfPlane_of_mellinHolomorphic
    {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q}
    (_hPrimitive : DirichletCharacter.IsPrimitive χ)
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    ∀ s : ℂ,
      (1 / 2 : ℝ) < s.re →
      s.re < 1 →
      DirichletCharacter.LFunction χ s ≠ 0 := by
  intro s hsHalf hsOne hLs
  have hFs : square.regularizedL s = 0 :=
    (square.regularizedL_zero_iff_LFunction_zero s (by linarith) hsOne).2 hLs
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.mp
    isOpen_criticalRightHalfPlane s hsHalf
  have hMellin : DifferentiableOn ℂ square.mellin (Metric.ball s r) :=
    (square.mellin_differentiableOn hBound).mono hball
  have hCoefficient : DifferentiableOn ℂ
      (fun z ↦ square.mellin z + dirichletPrincipalIndicator χ)
      (Metric.ball s r) := hMellin.add (by fun_prop)
  obtain ⟨P, _hPs, hP⟩ := hCoefficient.isExactOn_ball.with_val_at s (0 : ℂ)
  let H : ℂ → ℂ := fun z ↦ Complex.exp (P z) * square.regularizedL z
  have hPdiff : DifferentiableOn ℂ P (Metric.ball s r) := by
    intro z hz
    exact (hP z hz).differentiableAt.differentiableWithinAt
  have hHdiff : DifferentiableOn ℂ H (Metric.ball s r) :=
    hPdiff.cexp.mul square.regularizedL_differentiable.differentiableOn
  have hHderiv : EqOn (deriv H) (fun _ : ℂ ↦ 0) (Metric.ball s r) := by
    intro z hz
    have hpz := hP z hz
    have hlz := (square.regularizedL_differentiable z).hasDerivAt
    have hprod := hpz.cexp.mul hlz
    change deriv ((fun z ↦ Complex.exp (P z)) * square.regularizedL) z = 0
    rw [hprod.deriv]
    have hODE := square.residual_eq_zero hBound (hball hz)
    change deriv square.regularizedL z +
      (square.mellin z + dirichletPrincipalIndicator χ) *
        square.regularizedL z = 0 at hODE
    calc
      Complex.exp (P z) *
          (square.mellin z + dirichletPrincipalIndicator χ) *
            square.regularizedL z +
          Complex.exp (P z) * deriv square.regularizedL z =
          Complex.exp (P z) *
            (deriv square.regularizedL z +
              (square.mellin z + dirichletPrincipalIndicator χ) *
                square.regularizedL z) := by ring
      _ = 0 := by rw [hODE, mul_zero]
  have hHs : H s = 0 := by simp [H, hFs]
  have hH_zero : ∀ z ∈ Metric.ball s r, H z = 0 := by
    intro z hz
    have hconst :=
      (Metric.isOpen_ball : IsOpen (Metric.ball s r)).is_const_of_deriv_eq_zero
        Metric.isPreconnected_ball hHdiff hHderiv hz (Metric.mem_ball_self hr)
    exact hconst.trans hHs
  have hF_zero : ∀ z ∈ Metric.ball s r, square.regularizedL z = 0 := by
    intro z hz
    have h := hH_zero z hz
    dsimp [H] at h
    exact (mul_eq_zero.mp h).resolve_left (Complex.exp_ne_zero (P z))
  have hEventually : square.regularizedL =ᶠ[nhds s]
      (fun _ : ℂ ↦ (0 : ℂ)) := by
    filter_upwards [Metric.ball_mem_nhds s hr] with z hz
    exact hF_zero z hz
  have hLAnalytic : AnalyticOnNhd ℂ square.regularizedL (Set.univ : Set ℂ) :=
    square.regularizedL_differentiable.differentiableOn.analyticOnNhd isOpen_univ
  have hZeroAnalytic : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ))
      (Set.univ : Set ℂ) := analyticOnNhd_const
  have hEverywhere := hLAnalytic.eqOn_of_preconnected_of_eventuallyEq
    hZeroAnalytic isPreconnected_univ
      (show s ∈ (Set.univ : Set ℂ) by simp) hEventually
  have hAtTwo : square.regularizedL (2 : ℂ) = 0 := hEverywhere (by simp)
  exact square.regularizedL_ne_zero_of_one_lt_re (2 : ℂ) (by norm_num) hAtTwo

end

end Surface.Core.DirichletGRH
```
