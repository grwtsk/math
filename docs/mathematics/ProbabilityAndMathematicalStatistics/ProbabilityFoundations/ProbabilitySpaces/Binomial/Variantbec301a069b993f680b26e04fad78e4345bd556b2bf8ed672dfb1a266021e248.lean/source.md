# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Binomial.Variantbec301a069b993f680b26e04fad78e4345bd556b2bf8ed672dfb1a266021e248

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e488dd4975249763e6e172b5c5f51abe1eaaa546` · SHA-256 `92d5e822047dc8ac1e0dfad157ff5743403ce849b11c1a227f1b24accfd7126f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.CondVar.Variantd4b5381b94ec1404bdc6cbc97e406981d8691fc1c4ec8bc70c34b655a48986cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4b5381b94ec1404bdc6cbc97e406981d8691fc1c4ec8bc70c34b655a48986cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ProbabilityMeasures.SourceCorpus.CondVar.Variantd4b5381b94ec1404bdc6cbc97e406981d8691fc1c4ec8bc70c34b655a48986cb","mathematical_subject":"Probability.ProbabilityMeasures","original_sha256":"d4b5381b94ec1404bdc6cbc97e406981d8691fc1c4ec8bc70c34b655a48986cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/Probability/Distributions/Binomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Probability.CondVar
public import Mathlib.Probability.Distributions.Binomial


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.CondVar.Variantd4b5381b94ec1404bdc6cbc97e406981d8691fc1c4ec8bc70c34b655a48986cb

open MeasureTheory
open scoped ProbabilityTheory unitInterval

namespace ProbabilityTheory
variable {Ω : Type*} {m : MeasurableSpace Ω} {P : Measure Ω} {n : ℕ} {p : I} {X : Ω → ℝ}

/-- **Variance of a binomial random variable**.

The variance of a binomial random variable with parameters `n` and `p` is `p(1 - p)n`. -/
proof_wanted variance_of_hasLaw_binomial (hX : HasLaw X Bin(ℝ, n, p) P) :
    Var[X; P] = p * (1 - p) * n

/-- **Conditional variance of a binomial random variable**.

The conditional variance of a binomial random variable is the product of the conditional
probabilities that it's equal to `0` and that it's equal to `1`. -/
proof_wanted condVar_of_hasLaw_binomial {m₀ : MeasurableSpace Ω} (hm : m ≤ m₀) {P : Measure[m₀] Ω}
    (hX : HasLaw X Bin(ℝ, n, p) P) :
    Var[X; P | m] =ᵐ[P] P[X | m] * P[1 - X | m]

end ProbabilityTheory
```
