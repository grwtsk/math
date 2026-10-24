# Complete source: GRWTSK.Algebra.UniversalAlgebra.Module.Variantf6e1d1e179b6cbb8fe09c00854527b78589ab09246e02c1333e6a99b97715a01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96356ceffdb4ae821d6fdcc614e153e83b0eb99c` · SHA-256 `35bf05787e88201db00bdd1f1e4e6ebb7a3922319d2ef10b0e3b019cb1b122a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Rat.Variantee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Rat.Variantee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"ee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/instance_diamonds/Data/Complex/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Data.Complex.Module

-- Test that the `SMul ℚ ℂ` instance is correct.

namespace GRWTSK.Algebra.UniversalAlgebra.Rat.Variantee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be

example : (Complex.SMul.instSMulRealComplex : SMul ℚ ℂ) = (Algebra.toSMul : SMul ℚ ℂ) := by
  with_reducible_and_instances rfl
```
