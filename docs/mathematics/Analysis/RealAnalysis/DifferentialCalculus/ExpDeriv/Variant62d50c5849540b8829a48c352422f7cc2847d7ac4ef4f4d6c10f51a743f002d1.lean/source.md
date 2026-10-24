# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExpDeriv.Variant62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f7b815ef10e696e693dbc78620040fced130b2f` · SHA-256 `62d50c5849540b8829a48c352422f7cc2847d7ac4ef4f4d6c10f51a743f002d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne
-/
import Mathlib.Analysis.Complex.RealDeriv

#align_import analysis.special_functions.exp_deriv from "leanprover-community/mathlib"@"6a5c85000ab93fe5dcfdf620676f614ba8e18c26"

/-!
# Complex and real exponential

In this file we prove that `Complex.exp` and `Real.exp` are infinitely smooth functions.

## Tags

exp, derivative
-/


noncomputable section

open Filter Asymptotics Set Function

open scoped Classical Topology

namespace Complex

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] [NormedAlgebra 𝕜 ℂ]

/-- The complex exponential is everywhere differentiable, with the derivative `exp x`. -/
theorem hasDerivAt_exp (x : ℂ) : HasDerivAt exp (exp x) x := by
  rw [hasDerivAt_iff_isLittleO_nhds_zero]
  have : (1 : ℕ) < 2 := by norm_num
  refine' (IsBigO.of_bound ‖exp x‖ _).trans_isLittleO (isLittleO_pow_id this)
  filter_upwards [Metric.ball_mem_nhds (0 : ℂ) zero_lt_one]
  simp only [Metric.mem_ball, dist_zero_right, norm_pow]
  exact fun z hz => exp_bound_sq x z hz.le
#align complex.has_deriv_at_exp Complex.hasDerivAt_exp

theorem differentiable_exp : Differentiable 𝕜 exp := fun x =>
  (hasDerivAt_exp x).differentiableAt.restrictScalars 𝕜
#align complex.differentiable_exp Complex.differentiable_exp

theorem differentiableAt_exp {x : ℂ} : DifferentiableAt 𝕜 exp x :=
  differentiable_exp x
#align complex.differentiable_at_exp Complex.differentiableAt_exp

@[simp]
theorem deriv_exp : deriv exp = exp :=
  funext fun x => (hasDerivAt_exp x).deriv
#align complex.deriv_exp Complex.deriv_exp

@[simp]
theorem iter_deriv_exp : ∀ n : ℕ, deriv^[n] exp = exp
  | 0 => rfl
  | n + 1 => by rw [iterate_succ_apply, deriv_exp, iter_deriv_exp n]
#align complex.iter_deriv_exp Complex.iter_deriv_exp

theorem contDiff_exp : ∀ {n}, ContDiff 𝕜 n exp := by
  -- porting note: added `@` due to `∀ {n}` weirdness above
  refine' @(contDiff_all_iff_nat.2 fun n => ?_)
  have : ContDiff ℂ (↑n) exp := by
    induction' n with n ihn
    · exact contDiff_zero.2 continuous_exp
    · rw [contDiff_succ_iff_deriv]
      use differentiable_exp
      rwa [deriv_exp]
  exact this.restrict_scalars 𝕜
#align complex.cont_diff_exp Complex.contDiff_exp

theorem hasStrictDerivAt_exp (x : ℂ) : HasStrictDerivAt exp (exp x) x :=
  contDiff_exp.contDiffAt.hasStrictDerivAt' (hasDerivAt_exp x) le_rfl
#align complex.has_strict_deriv_at_exp Complex.hasStrictDerivAt_exp

theorem hasStrictFDerivAt_exp_real (x : ℂ) : HasStrictFDerivAt exp (exp x • (1 : ℂ →L[ℝ] ℂ)) x :=
  (hasStrictDerivAt_exp x).complexToReal_fderiv
#align complex.has_strict_fderiv_at_exp_real Complex.hasStrictFDerivAt_exp_real

end Complex

section

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] [NormedAlgebra 𝕜 ℂ] {f : 𝕜 → ℂ} {f' : ℂ} {x : 𝕜}
  {s : Set 𝕜}

theorem HasStrictDerivAt.cexp (hf : HasStrictDerivAt f f' x) :
    HasStrictDerivAt (fun x => Complex.exp (f x)) (Complex.exp (f x) * f') x :=
  (Complex.hasStrictDerivAt_exp (f x)).comp x hf
#align has_strict_deriv_at.cexp HasStrictDerivAt.cexp

theorem HasDerivAt.cexp (hf : HasDerivAt f f' x) :
    HasDerivAt (fun x => Complex.exp (f x)) (Complex.exp (f x) * f') x :=
  (Complex.hasDerivAt_exp (f x)).comp x hf
#align has_deriv_at.cexp HasDerivAt.cexp

theorem HasDerivWithinAt.cexp (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun x => Complex.exp (f x)) (Complex.exp (f x) * f') s x :=
  (Complex.hasDerivAt_exp (f x)).comp_hasDerivWithinAt x hf
#align has_deriv_within_at.cexp HasDerivWithinAt.cexp

theorem derivWithin_cexp (hf : DifferentiableWithinAt 𝕜 f s x) (hxs : UniqueDiffWithinAt 𝕜 s x) :
    derivWithin (fun x => Complex.exp (f x)) s x = Complex.exp (f x) * derivWithin f s x :=
  hf.hasDerivWithinAt.cexp.derivWithin hxs
#align deriv_within_cexp derivWithin_cexp

@[simp]
theorem deriv_cexp (hc : DifferentiableAt 𝕜 f x) :
    deriv (fun x => Complex.exp (f x)) x = Complex.exp (f x) * deriv f x :=
  hc.hasDerivAt.cexp.deriv
#align deriv_cexp deriv_cexp

end

section

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] [NormedAlgebra 𝕜 ℂ] {E : Type*}
  [NormedAddCommGroup E] [NormedSpace 𝕜 E] {f : E → ℂ} {f' : E →L[𝕜] ℂ} {x : E} {s : Set E}

theorem HasStrictFDerivAt.cexp (hf : HasStrictFDerivAt f f' x) :
    HasStrictFDerivAt (fun x => Complex.exp (f x)) (Complex.exp (f x) • f') x :=
  (Complex.hasStrictDerivAt_exp (f x)).comp_hasStrictFDerivAt x hf
#align has_strict_fderiv_at.cexp HasStrictFDerivAt.cexp

theorem HasFDerivWithinAt.cexp (hf : HasFDerivWithinAt f f' s x) :
    HasFDerivWithinAt (fun x => Complex.exp (f x)) (Complex.exp (f x) • f') s x :=
  (Complex.hasDerivAt_exp (f x)).comp_hasFDerivWithinAt x hf
#align has_fderiv_within_at.cexp HasFDerivWithinAt.cexp

theorem HasFDerivAt.cexp (hf : HasFDerivAt f f' x) :
    HasFDerivAt (fun x => Complex.exp (f x)) (Complex.exp (f x) • f') x :=
  hasFDerivWithinAt_univ.1 <| hf.hasFDerivWithinAt.cexp
#align has_fderiv_at.cexp HasFDerivAt.cexp

theorem DifferentiableWithinAt.cexp (hf : DifferentiableWithinAt 𝕜 f s x) :
    DifferentiableWithinAt 𝕜 (fun x => Complex.exp (f x)) s x :=
  hf.hasFDerivWithinAt.cexp.differentiableWithinAt
#align differentiable_within_at.cexp DifferentiableWithinAt.cexp

@[simp]
theorem DifferentiableAt.cexp (hc : DifferentiableAt 𝕜 f x) :
    DifferentiableAt 𝕜 (fun x => Complex.exp (f x)) x :=
  hc.hasFDerivAt.cexp.differentiableAt
#align differentiable_at.cexp DifferentiableAt.cexp

theorem DifferentiableOn.cexp (hc : DifferentiableOn 𝕜 f s) :
    DifferentiableOn 𝕜 (fun x => Complex.exp (f x)) s := fun x h => (hc x h).cexp
#align differentiable_on.cexp DifferentiableOn.cexp

@[simp]
theorem Differentiable.cexp (hc : Differentiable 𝕜 f) :
    Differentiable 𝕜 fun x => Complex.exp (f x) := fun x => (hc x).cexp
#align differentiable.cexp Differentiable.cexp

theorem ContDiff.cexp {n} (h : ContDiff 𝕜 n f) : ContDiff 𝕜 n fun x => Complex.exp (f x) :=
  Complex.contDiff_exp.comp h
#align cont_diff.cexp ContDiff.cexp

theorem ContDiffAt.cexp {n} (hf : ContDiffAt 𝕜 n f x) :
    ContDiffAt 𝕜 n (fun x => Complex.exp (f x)) x :=
  Complex.contDiff_exp.contDiffAt.comp x hf
#align cont_diff_at.cexp ContDiffAt.cexp

theorem ContDiffOn.cexp {n} (hf : ContDiffOn 𝕜 n f s) :
    ContDiffOn 𝕜 n (fun x => Complex.exp (f x)) s :=
  Complex.contDiff_exp.comp_contDiffOn hf
#align cont_diff_on.cexp ContDiffOn.cexp

theorem ContDiffWithinAt.cexp {n} (hf : ContDiffWithinAt 𝕜 n f s x) :
    ContDiffWithinAt 𝕜 n (fun x => Complex.exp (f x)) s x :=
  Complex.contDiff_exp.contDiffAt.comp_contDiffWithinAt x hf
#align cont_diff_within_at.cexp ContDiffWithinAt.cexp

end

namespace Real

variable {x y z : ℝ}

theorem hasStrictDerivAt_exp (x : ℝ) : HasStrictDerivAt exp (exp x) x :=
  (Complex.hasStrictDerivAt_exp x).real_of_complex
#align real.has_strict_deriv_at_exp Real.hasStrictDerivAt_exp

theorem hasDerivAt_exp (x : ℝ) : HasDerivAt exp (exp x) x :=
  (Complex.hasDerivAt_exp x).real_of_complex
#align real.has_deriv_at_exp Real.hasDerivAt_exp

theorem contDiff_exp {n} : ContDiff ℝ n exp :=
  Complex.contDiff_exp.real_of_complex
#align real.cont_diff_exp Real.contDiff_exp

theorem differentiable_exp : Differentiable ℝ exp := fun x => (hasDerivAt_exp x).differentiableAt
#align real.differentiable_exp Real.differentiable_exp

theorem differentiableAt_exp : DifferentiableAt ℝ exp x :=
  differentiable_exp x
#align real.differentiable_at_exp Real.differentiableAt_exp

@[simp]
theorem deriv_exp : deriv exp = exp :=
  funext fun x => (hasDerivAt_exp x).deriv
#align real.deriv_exp Real.deriv_exp

@[simp]
theorem iter_deriv_exp : ∀ n : ℕ, deriv^[n] exp = exp
  | 0 => rfl
  | n + 1 => by rw [iterate_succ_apply, deriv_exp, iter_deriv_exp n]
#align real.iter_deriv_exp Real.iter_deriv_exp

end Real

section

/-! Register lemmas for the derivatives of the composition of `Real.exp` with a differentiable
function, for standalone use and use with `simp`. -/


variable {f : ℝ → ℝ} {f' x : ℝ} {s : Set ℝ}

theorem HasStrictDerivAt.exp (hf : HasStrictDerivAt f f' x) :
    HasStrictDerivAt (fun x => Real.exp (f x)) (Real.exp (f x) * f') x :=
  (Real.hasStrictDerivAt_exp (f x)).comp x hf
#align has_strict_deriv_at.exp HasStrictDerivAt.exp

theorem HasDerivAt.exp (hf : HasDerivAt f f' x) :
    HasDerivAt (fun x => Real.exp (f x)) (Real.exp (f x) * f') x :=
  (Real.hasDerivAt_exp (f x)).comp x hf
#align has_deriv_at.exp HasDerivAt.exp

theorem HasDerivWithinAt.exp (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun x => Real.exp (f x)) (Real.exp (f x) * f') s x :=
  (Real.hasDerivAt_exp (f x)).comp_hasDerivWithinAt x hf
#align has_deriv_within_at.exp HasDerivWithinAt.exp

theorem derivWithin_exp (hf : DifferentiableWithinAt ℝ f s x) (hxs : UniqueDiffWithinAt ℝ s x) :
    derivWithin (fun x => Real.exp (f x)) s x = Real.exp (f x) * derivWithin f s x :=
  hf.hasDerivWithinAt.exp.derivWithin hxs
#align deriv_within_exp derivWithin_exp

@[simp]
theorem deriv_exp (hc : DifferentiableAt ℝ f x) :
    deriv (fun x => Real.exp (f x)) x = Real.exp (f x) * deriv f x :=
  hc.hasDerivAt.exp.deriv
#align deriv_exp deriv_exp

end

section

/-! Register lemmas for the derivatives of the composition of `Real.exp` with a differentiable
function, for standalone use and use with `simp`. -/


variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {f : E → ℝ} {f' : E →L[ℝ] ℝ} {x : E}
  {s : Set E}

theorem ContDiff.exp {n} (hf : ContDiff ℝ n f) : ContDiff ℝ n fun x => Real.exp (f x) :=
  Real.contDiff_exp.comp hf
#align cont_diff.exp ContDiff.exp

theorem ContDiffAt.exp {n} (hf : ContDiffAt ℝ n f x) : ContDiffAt ℝ n (fun x => Real.exp (f x)) x :=
  Real.contDiff_exp.contDiffAt.comp x hf
#align cont_diff_at.exp ContDiffAt.exp

theorem ContDiffOn.exp {n} (hf : ContDiffOn ℝ n f s) : ContDiffOn ℝ n (fun x => Real.exp (f x)) s :=
  Real.contDiff_exp.comp_contDiffOn hf
#align cont_diff_on.exp ContDiffOn.exp

theorem ContDiffWithinAt.exp {n} (hf : ContDiffWithinAt ℝ n f s x) :
    ContDiffWithinAt ℝ n (fun x => Real.exp (f x)) s x :=
  Real.contDiff_exp.contDiffAt.comp_contDiffWithinAt x hf
#align cont_diff_within_at.exp ContDiffWithinAt.exp

theorem HasFDerivWithinAt.exp (hf : HasFDerivWithinAt f f' s x) :
    HasFDerivWithinAt (fun x => Real.exp (f x)) (Real.exp (f x) • f') s x :=
  (Real.hasDerivAt_exp (f x)).comp_hasFDerivWithinAt x hf
#align has_fderiv_within_at.exp HasFDerivWithinAt.exp

theorem HasFDerivAt.exp (hf : HasFDerivAt f f' x) :
    HasFDerivAt (fun x => Real.exp (f x)) (Real.exp (f x) • f') x :=
  (Real.hasDerivAt_exp (f x)).comp_hasFDerivAt x hf
#align has_fderiv_at.exp HasFDerivAt.exp

theorem HasStrictFDerivAt.exp (hf : HasStrictFDerivAt f f' x) :
    HasStrictFDerivAt (fun x => Real.exp (f x)) (Real.exp (f x) • f') x :=
  (Real.hasStrictDerivAt_exp (f x)).comp_hasStrictFDerivAt x hf
#align has_strict_fderiv_at.exp HasStrictFDerivAt.exp

theorem DifferentiableWithinAt.exp (hf : DifferentiableWithinAt ℝ f s x) :
    DifferentiableWithinAt ℝ (fun x => Real.exp (f x)) s x :=
  hf.hasFDerivWithinAt.exp.differentiableWithinAt
#align differentiable_within_at.exp DifferentiableWithinAt.exp

@[simp]
theorem DifferentiableAt.exp (hc : DifferentiableAt ℝ f x) :
    DifferentiableAt ℝ (fun x => Real.exp (f x)) x :=
  hc.hasFDerivAt.exp.differentiableAt
#align differentiable_at.exp DifferentiableAt.exp

theorem DifferentiableOn.exp (hc : DifferentiableOn ℝ f s) :
    DifferentiableOn ℝ (fun x => Real.exp (f x)) s := fun x h => (hc x h).exp
#align differentiable_on.exp DifferentiableOn.exp

@[simp]
theorem Differentiable.exp (hc : Differentiable ℝ f) : Differentiable ℝ fun x => Real.exp (f x) :=
  fun x => (hc x).exp
#align differentiable.exp Differentiable.exp

theorem fderivWithin_exp (hf : DifferentiableWithinAt ℝ f s x) (hxs : UniqueDiffWithinAt ℝ s x) :
    fderivWithin ℝ (fun x => Real.exp (f x)) s x = Real.exp (f x) • fderivWithin ℝ f s x :=
  hf.hasFDerivWithinAt.exp.fderivWithin hxs
#align fderiv_within_exp fderivWithin_exp

@[simp]
theorem fderiv_exp (hc : DifferentiableAt ℝ f x) :
    fderiv ℝ (fun x => Real.exp (f x)) x = Real.exp (f x) • fderiv ℝ f x :=
  hc.hasFDerivAt.exp.fderiv
#align fderiv_exp fderiv_exp

end
```
