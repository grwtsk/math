# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.Poisson.Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `562e8e30e8de3fc293cd138d548b74b7cacbf8a0` · SHA-256 `15be0ad429b915af4333f6f74054c5fd4366ef5caecd096bc4e9758e418e8533`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.PoissonPMFReal.Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PoissonPMFReal.Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/Distributions/Poisson.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Josha Dekker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josha Dekker
-/

import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Probability.ProbabilityMassFunction.Basic
import Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic

/-! # Poisson distributions over ℕ

Define the Poisson measure over the natural numbers

## Main definitions
* `poissonPMFReal`: the function `fun n ↦ exp (- λ) * λ ^ n / n!`
  for `n ∈ ℕ`, which is the probability density function of a Poisson distribution with
  rate `λ > 0`.
* `poissonPMF`: `ℝ≥0∞`-valued pdf,
  `poissonPMF λ = ENNReal.ofReal (poissonPMFReal λ)`.
* `poissonMeasure`: a Poisson measure on `ℕ`, parametrized by its rate `λ`.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.PoissonPMFReal.Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb

open scoped ENNReal NNReal Nat

open MeasureTheory Real Set Filter Topology

namespace ProbabilityTheory

section PoissonPMF

/-- The pmf of the Poisson distribution depending on its rate, as a function to ℝ -/
noncomputable
def poissonPMFReal (r : ℝ≥0) (n : ℕ) : ℝ := exp (- r) * r ^ n / n !

lemma poissonPMFRealSum (r : ℝ≥0) : HasSum (fun n ↦ poissonPMFReal r n) 1 := by
  let r := r.toReal
  unfold poissonPMFReal
  apply (hasSum_mul_left_iff (exp_ne_zero r)).mp
  simp only [mul_one]
  have : (fun i ↦ rexp r * (rexp (-r) * r ^ i / ↑(Nat.factorial i))) =
      fun i ↦ r ^ i / ↑(Nat.factorial i) := by
    ext n
    rw [mul_div_assoc, exp_neg, ← mul_assoc, ← div_eq_mul_inv, div_self (exp_ne_zero r), one_mul]
  rw [this, exp_eq_exp_ℝ]
  exact NormedSpace.expSeries_div_hasSum_exp ℝ r

/-- The Poisson pmf is positive for all natural numbers -/
lemma poissonPMFReal_pos {r : ℝ≥0} {n : ℕ} (hr : 0 < r) : 0 < poissonPMFReal r n := by
  rw [poissonPMFReal]
  positivity

lemma poissonPMFReal_nonneg {r : ℝ≥0} {n : ℕ} : 0 ≤ poissonPMFReal r n := by
  unfold poissonPMFReal
  positivity

/-- The pmf of the Poisson distribution depending on its rate, as a PMF. -/
noncomputable
def poissonPMF (r : ℝ≥0) : PMF ℕ := by
  refine ⟨fun n ↦ ENNReal.ofReal (poissonPMFReal r n), ?_⟩
  apply ENNReal.hasSum_coe.mpr
  rw [← toNNReal_one]
  exact (poissonPMFRealSum r).toNNReal (fun n ↦ poissonPMFReal_nonneg)

/-- The Poisson pmf is measurable. -/
@[fun_prop, measurability]
lemma measurable_poissonPMFReal (r : ℝ≥0) : Measurable (poissonPMFReal r) := by measurability

@[fun_prop, measurability]
lemma stronglyMeasurable_poissonPMFReal (r : ℝ≥0) : StronglyMeasurable (poissonPMFReal r) :=
  stronglyMeasurable_iff_measurable.mpr (measurable_poissonPMFReal r)

end PoissonPMF

/-- Measure defined by the Poisson distribution -/
noncomputable
def poissonMeasure (r : ℝ≥0) : Measure ℕ := (poissonPMF r).toMeasure

instance isProbabilityMeasurePoisson (r : ℝ≥0) :
    IsProbabilityMeasure (poissonMeasure r) := PMF.toMeasure.isProbabilityMeasure (poissonPMF r)

end ProbabilityTheory
```
