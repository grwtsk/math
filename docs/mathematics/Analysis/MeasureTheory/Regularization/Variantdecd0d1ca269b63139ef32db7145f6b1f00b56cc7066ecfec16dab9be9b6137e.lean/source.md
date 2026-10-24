# Complete source: GRWTSK.Analysis.MeasureTheory.Regularization.Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c091387c0c5ba4223914510464a239f8be824e33` · SHA-256 `514931d84b3992c99e7319754e2ce575d72d80c6b499acdc1ad27fa8e070f3b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ExpScalar.Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ExpScalar.Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/Spectral/Zeta/Regularization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.MeasureTheory.ExpScalar.Variant4810f509993d37e19c7d6b2717d3ab5905a097c8491547690469fb63fcfbccc7

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
