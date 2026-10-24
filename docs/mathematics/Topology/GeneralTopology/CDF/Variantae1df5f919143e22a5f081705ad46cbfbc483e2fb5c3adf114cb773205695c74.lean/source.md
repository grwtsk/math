# Complete source: GRWTSK.Topology.GeneralTopology.CDF.Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecdce085d461386119be1da40d2977f80255f3f2` · SHA-256 `e4b5fd9efd5a850aaa469ce8f7e8f3091e0a69d5efcce8822da86bd8dff2ffd9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Cdf.Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Cdf.Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/CDF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Probability.Kernel.Disintegration.CondCDF

/-!
# Cumulative distribution function of a real probability measure

The cumulative distribution function (cdf) of a probability measure over `ℝ` is a monotone, right
continuous function with limit 0 at -∞ and 1 at +∞, such that `cdf μ x = μ (Iic x)` for all `x : ℝ`.
Two probability measures are equal if and only if they have the same cdf.

## Main definitions

* `ProbabilityTheory.cdf μ`: cumulative distribution function of `μ : Measure ℝ`, defined as the
  conditional cdf (`ProbabilityTheory.condCDF`) of the product measure
  `(Measure.dirac Unit.unit).prod μ` evaluated at `Unit.unit`.

The definition could be replaced by the more elementary `cdf μ x = μ.real (Iic x)`, but using
`condCDF` gives us access to its API, from which most properties of the cdf follow directly.

## Main statements

* `ProbabilityTheory.ofReal_cdf`: for a probability measure `μ` and `x : ℝ`,
  `ENNReal.ofReal (cdf μ x) = μ (Iic x)`.
* `MeasureTheory.Measure.ext_of_cdf`: two probability measures are equal if and only if they have
  the same cdf.

## TODO

The definition could be extended to a finite measure by rescaling `condCDF`, but it would be nice
to have more structure on Stieltjes functions first. Right now, if `f` is a Stieltjes function,
`2 • f` makes no sense. We could define Stieltjes functions as a submodule.

The definition could be extended to `ℝⁿ`, either by extending the definition of `condCDF`, or by
using another construction here.
-/


namespace GRWTSK.Topology.GeneralTopology.Cdf.Variant55e49caed92d0cb1a2b9805b5200b3bac7e57c769052d70f876df7348f2c164c

open MeasureTheory Set Filter

open scoped Topology

namespace ProbabilityTheory

/-- Cumulative distribution function of a real measure. The definition currently makes sense only
for probability measures. In that case, it satisfies `cdf μ x = μ.real (Iic x)` (see
`ProbabilityTheory.cdf_eq_real`). -/
noncomputable
def cdf (μ : Measure ℝ) : StieltjesFunction :=
  condCDF ((Measure.dirac Unit.unit).prod μ) Unit.unit

section ExplicitMeasureArg
variable (μ : Measure ℝ)

/-- The cdf is non-negative. -/
lemma cdf_nonneg (x : ℝ) : 0 ≤ cdf μ x := condCDF_nonneg _ _ _

/-- The cdf is lower or equal to 1. -/
lemma cdf_le_one (x : ℝ) : cdf μ x ≤ 1 := condCDF_le_one _ _ _

/-- The cdf is monotone. -/
lemma monotone_cdf : Monotone (cdf μ) := (condCDF _ _).mono

/-- The cdf tends to 0 at -∞. -/
lemma tendsto_cdf_atBot : Tendsto (cdf μ) atBot (𝓝 0) := tendsto_condCDF_atBot _ _

/-- The cdf tends to 1 at +∞. -/
lemma tendsto_cdf_atTop : Tendsto (cdf μ) atTop (𝓝 1) := tendsto_condCDF_atTop _ _

lemma ofReal_cdf [IsProbabilityMeasure μ] (x : ℝ) : ENNReal.ofReal (cdf μ x) = μ (Iic x) := by
  have h := lintegral_condCDF ((Measure.dirac Unit.unit).prod μ) x
  simpa only [MeasureTheory.Measure.fst_prod, Measure.prod_prod, measure_univ, one_mul,
    lintegral_dirac] using h

lemma cdf_eq_real [IsProbabilityMeasure μ] (x : ℝ) : cdf μ x = μ.real (Iic x) := by
  rw [measureReal_def, ← ofReal_cdf μ x, ENNReal.toReal_ofReal (cdf_nonneg μ x)]

@[deprecated (since := "2025-04-19")] alias cdf_eq_toReal := cdf_eq_real

instance instIsProbabilityMeasurecdf : IsProbabilityMeasure (cdf μ).measure := by
  constructor
  simp only [StieltjesFunction.measure_univ _ (tendsto_cdf_atBot μ) (tendsto_cdf_atTop μ), sub_zero,
    ENNReal.ofReal_one]

/-- The measure associated to the cdf of a probability measure is the same probability measure. -/
lemma measure_cdf [IsProbabilityMeasure μ] : (cdf μ).measure = μ := by
  refine Measure.ext_of_Iic (cdf μ).measure μ (fun a ↦ ?_)
  rw [StieltjesFunction.measure_Iic _ (tendsto_cdf_atBot μ), sub_zero, ofReal_cdf]

end ExplicitMeasureArg

lemma cdf_measure_stieltjesFunction (f : StieltjesFunction) (hf0 : Tendsto f atBot (𝓝 0))
    (hf1 : Tendsto f atTop (𝓝 1)) :
    cdf f.measure = f := by
  refine (cdf f.measure).eq_of_measure_of_tendsto_atBot f ?_ (tendsto_cdf_atBot _) hf0
  have h_prob : IsProbabilityMeasure f.measure :=
    ⟨by rw [f.measure_univ hf0 hf1, sub_zero, ENNReal.ofReal_one]⟩
  exact measure_cdf f.measure

end ProbabilityTheory

open ProbabilityTheory

/-- If two real probability distributions have the same cdf, they are equal. -/
lemma MeasureTheory.Measure.eq_of_cdf (μ ν : Measure ℝ) [IsProbabilityMeasure μ]
    [IsProbabilityMeasure ν] (h : cdf μ = cdf ν) : μ = ν := by
  rw [← measure_cdf μ, ← measure_cdf ν, h]

@[simp] lemma MeasureTheory.Measure.cdf_eq_iff (μ ν : Measure ℝ) [IsProbabilityMeasure μ]
    [IsProbabilityMeasure ν] :
    cdf μ = cdf ν ↔ μ = ν :=
⟨MeasureTheory.Measure.eq_of_cdf μ ν, fun h ↦ by rw [h]⟩
```
