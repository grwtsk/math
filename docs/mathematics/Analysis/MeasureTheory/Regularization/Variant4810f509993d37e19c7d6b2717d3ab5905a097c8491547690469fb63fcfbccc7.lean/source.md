# Complete source: GRWTSK.Analysis.MeasureTheory.Regularization.Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df75c380a5e81fbfb83b90a46d1e0d875833c944` · SHA-256 `4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  spectral-rh/Spectral/Zeta/Regularization.lean
  ---------------------------------------------
  Heat semigroup, spectral ζ–function, and ζ–regularised determinant for
  the half-line Schrödinger operator `L`.
-/

import Mathlib.Analysis.SpecialFunctions.Gamma
import Mathlib.Analysis.HeatKernel.Asymptotics
import Mathlib.MeasureTheory.Integral.Bochner
import Mathlib.MeasureTheory.Mellin
import spectral_rh.Spectral.Schrodinger.Operator

open Real Complex MeasureTheory
open scoped BigOperators

namespace SpectralZeta

variable {P : Schrodinger.Potential}

-- handy abbreviations
local notation "E" => Schrodinger.L²(ℝ≥0)
local notation "L" => Schrodinger.L P

/-!  ## 1.  Heat semigroup  t ↦ e^{−tL}                                       -/

/-- Auxiliary scalar map `λ ↦ exp (−t λ)`. -/
noncomputable
def expScalar (t : ℝ≥0) : ℝ →ᵐ[ℝ] ℝ :=
by
  refine
    { toFun         := fun λ ↦ Real.exp (-(t : ℝ) * λ)
      measurable_mk := by
        -- `λ ↦ -t*λ` is measurable, `exp` is measurable
        simpa using (measurable_const.neg.mul measurable_id).exp }  -- `by measurability`

/-- Heat semigroup via functional calculus. -/
noncomputable
def heat (t : ℝ≥0) : L →L[ℝ] L :=
  (L).functionalCalculus (expScalar t)

/-- Semigroup law `e^{-(t+s)L} = e^{-tL} e^{-sL}`. -/
lemma heat_semigroup (t s : ℝ≥0) :
    heat (P := P) (t + s) =
      (heat (P := P) t).comp (heat (P := P) s) := by
  have h : (expScalar (t + s)) =ᵐ[volume]
        ((expScalar t) * (expScalar s)) := by
    filter_upwards [Filter.eventually_all] with λ
    simp [expScalar, mul_add, Real.exp_add]
  simpa using (L).functionalCalculus_mul h

/-!  ## 2.  Trace‐class & heat trace Θ(t)                                      -/

lemma heat_traceClass {t : ℝ} (ht : 0 < t) :
    TraceClass ℝ (heat (P := P) ⟨t, ht.le⟩) :=
  (Schrodinger.L_compactResolvent P).traceClass_exp_neg_mul ht

noncomputable
def heatTrace (t : ℝ) (ht : 0 < t) : ℝ :=
  (TraceClass.trace_real (heat_traceClass (P := P) ht))

/-!  ## 3.  Spectral ζ–function                                                -/

noncomputable
def zeta (s : ℂ) : ℂ :=
  (1 / Complex.Gamma s) *
    ∫ (t : ℝ) in Set.Ioi (0 : ℝ),
      (Complex.ofReal (heatTrace (P := P) t (by
        have : 0 < t := t.2
        simpa using this))) *
      (Complex.ofReal t) ^ (s - 1)

/-- ζ_L extends meromorphically to ℂ. -/
lemma zeta_meromorphic :
    MeromorphicAt (zeta (P := P)) := by
  simpa using
    (Schrodinger.L_compactResolvent P).meromorphic_zeta
      (Schrodinger.L_boundedBelow P)

/-- ζ_L is regular at s = 0. -/
lemma zeta_at0_reg :
    DifferentiableAt ℂ (zeta (P := P)) 0 := by
  simpa using
    (Schrodinger.L_compactResolvent P).zeta_regular_at_zero
      (Schrodinger.L_boundedBelow P)

/-!  ## 4.  ζ–regularised determinant of L                                     -/

noncomputable
def detζ : ℂ :=
  Complex.exp (-(Complex.deriv (zeta (P := P)) 0))

end SpectralZeta
```
