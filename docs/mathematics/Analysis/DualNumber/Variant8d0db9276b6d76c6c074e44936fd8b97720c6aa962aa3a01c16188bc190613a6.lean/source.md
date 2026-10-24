# Complete source: GRWTSK.Analysis.DualNumber.Variant8d0db9276b6d76c6c074e44936fd8b97720c6aa962aa3a01c16188bc190613a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45ff413ae1f35b1fbe5e09ca36a303d691c11b1b` · SHA-256 `ed412610262be3ef8d552ba8c830d2117c4d4e7ab32f5a9d7df65851ee15583e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ExpEps.Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ExpEps.Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/NormedSpace/DualNumber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.DualNumber
import Mathlib.Analysis.Normed.Algebra.TrivSqZeroExt

/-!
# Results on `DualNumber R` related to the norm

These are just restatements of similar statements about `TrivSqZeroExt R M`.

## Main results

* `exp_eps`

-/


namespace GRWTSK.Analysis.ExpEps.Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092

open NormedSpace -- For `NormedSpace.exp`.

namespace DualNumber

open TrivSqZeroExt

variable (𝕜 : Type*) {R : Type*}
variable [Field 𝕜] [CharZero 𝕜] [CommRing R] [Algebra 𝕜 R]
variable [UniformSpace R] [IsTopologicalRing R] [T2Space R]

@[simp]
theorem exp_eps : exp 𝕜 (eps : DualNumber R) = 1 + eps :=
  exp_inr _ _

@[simp]
theorem exp_smul_eps (r : R) : exp 𝕜 (r • eps : DualNumber R) = 1 + r • eps := by
  rw [eps, ← inr_smul, exp_inr]

end DualNumber
```
