# Complete source: GRWTSK.Algebra.GroupTheory.Perm.Variantdc9118027c517f35b40acd4ebd9f0d0a48779be115d12eba61d9d1fd92b5bd42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e831541752f673a3f52d47669d843862a01bb87` · SHA-256 `42790e6a2a5db2d1b9e8e094d5635e8dd274fb5b451e084c1419eb79011bce5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Concrete.Variant5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Concrete.Variant5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Perm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

import Mathlib.GroupTheory.Perm.Cycle.Concrete
import Mathlib.Tactic.DeriveFintype


namespace GRWTSK.Algebra.GroupTheory.Concrete.Variant5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549

open Equiv

#guard with_decl_name% ex₁ unsafe (reprStr (1 : Perm (Fin 4))) == "1"
#guard with_decl_name% ex₂ unsafe (reprStr (c[0, 1] : Perm (Fin 4))) == "c[0, 1]"
#guard with_decl_name% ex₃
  unsafe (reprStr (c[0, 1] * c[2, 3] : Perm (Fin 4))) == "c[0, 1] * c[2, 3]"
#guard with_decl_name% ex₄
  unsafe (reprPrec (c[0, 1] * c[2, 3] : Perm (Fin 4)) 70).pretty == "(c[0, 1] * c[2, 3])"
#guard with_decl_name% ex₅
  unsafe (reprPrec (c[0, 1] * c[1, 2] : Perm (Fin 4)) 70).pretty == "c[0, 1, 2]"
```
