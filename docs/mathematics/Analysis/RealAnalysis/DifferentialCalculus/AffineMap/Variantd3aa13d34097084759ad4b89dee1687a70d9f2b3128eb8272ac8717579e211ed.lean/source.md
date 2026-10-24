# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineMap.Variantd3aa13d34097084759ad4b89dee1687a70d9f2b3128eb8272ac8717579e211ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb0de43d6a06b6969d1e748f5acaf37305b2a7fe` · SHA-256 `6ec4324230a96a90fe26587152b3a499ff07b595601c1aec6377caf36a93f279`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiff.Variant2202318f0a8d3999bc7a1bebd5e575b850da21e21a8ba5a40a5e577c93e402fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2202318f0a8d3999bc7a1bebd5e575b850da21e21a8ba5a40a5e577c93e402fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ContDiff.Variant2202318f0a8d3999bc7a1bebd5e575b850da21e21a8ba5a40a5e577c93e402fc","mathematical_subject":"Analysis.Calculus","original_sha256":"2202318f0a8d3999bc7a1bebd5e575b850da21e21a8ba5a40a5e577c93e402fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/AddTorsor/AffineMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Analysis.Normed.Affine.ContinuousAffineMap
import Mathlib.Analysis.Calculus.ContDiff.Operations

/-!
# Smooth affine maps

This file contains results about smoothness of affine maps.

## Main definitions:

* `ContinuousAffineMap.contDiff`: a continuous affine map is smooth

-/



namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiff.Variant2202318f0a8d3999bc7a1bebd5e575b850da21e21a8ba5a40a5e577c93e402fc

namespace ContinuousAffineMap

variable {𝕜 V W : Type*} [NontriviallyNormedField 𝕜]
variable [NormedAddCommGroup V] [NormedSpace 𝕜 V]
variable [NormedAddCommGroup W] [NormedSpace 𝕜 W]

/-- A continuous affine map between normed vector spaces is smooth. -/
theorem contDiff {n : WithTop ℕ∞} (f : V →ᴬ[𝕜] W) : ContDiff 𝕜 n f := by
  rw [f.decomp]
  apply f.contLinear.contDiff.add
  exact contDiff_const

end ContinuousAffineMap
```
