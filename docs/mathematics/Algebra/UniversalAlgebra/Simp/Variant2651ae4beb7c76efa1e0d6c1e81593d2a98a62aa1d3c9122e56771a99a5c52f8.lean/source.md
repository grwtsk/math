# Complete source: GRWTSK.Algebra.UniversalAlgebra.Simp.Variant2651ae4beb7c76efa1e0d6c1e81593d2a98a62aa1d3c9122e56771a99a5c52f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2bc34823e83af1b89428c5088291dfdc1abf02a` · SHA-256 `ff451811403835a28f7548a145b842205af1ebf9ecafdd82f01d64e24fefaf86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Pi.Variant717a47546df10d9806eb951d656229d1c61d3c4896914d438199d3b306b83708","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"717a47546df10d9806eb951d656229d1c61d3c4896914d438199d3b306b83708","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Pi.Variant717a47546df10d9806eb951d656229d1c61d3c4896914d438199d3b306b83708","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"717a47546df10d9806eb951d656229d1c61d3c4896914d438199d3b306b83708","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Algebra.Pi
import Mathlib.Algebra.Algebra.Defs

/-!
Tests for the behavior of `simp`.
-/

/- Taken from [Zulip](https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/
  topic/simp.20.5BX.5D.20fails.2C.20rw.20.5BX.5D.20works) -/
-- Example 1: succeeds

namespace GRWTSK.Algebra.UniversalAlgebra.Pi.Variant717a47546df10d9806eb951d656229d1c61d3c4896914d438199d3b306b83708

example {α R : Type*} [CommRing R] (f : α → R) (r : R) (a : α) :
    (r • f) a = r • (f a) := by
  simp only [Pi.smul_apply] -- succeeds

-- Example 2: used to fail, now succeeds!
example {α R : Type*} [CommRing R] (f : α → R) (r : R) (a : α) :
    (r • f) a = r • (f a) := by
  let _ : SMul R R := SMulZeroClass.toSMul
  simp only [Pi.smul_apply]
```
