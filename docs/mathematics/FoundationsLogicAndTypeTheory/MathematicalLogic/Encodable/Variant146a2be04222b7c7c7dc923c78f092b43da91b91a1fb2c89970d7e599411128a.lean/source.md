# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Encodable.Variant146a2be04222b7c7c7dc923c78f092b43da91b91a1fb2c89970d7e599411128a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `955441761af594d82ab9a761157ba6d9356ac77b` · SHA-256 `ccf56e97e660174ad98e33ea3eee73787ee1bb98d3682de258d38b23caa0a908`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ToDFinsupp.Variant825b74cdf6909156d79f75212b845825ff1ca863458dc2250ad9d87990bffc5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"825b74cdf6909156d79f75212b845825ff1ca863458dc2250ad9d87990bffc5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ToDFinsupp.Variant825b74cdf6909156d79f75212b845825ff1ca863458dc2250ad9d87990bffc5c","mathematical_subject":"Logic.Foundations","original_sha256":"825b74cdf6909156d79f75212b845825ff1ca863458dc2250ad9d87990bffc5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finsupp/Encodable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Finsupp.ToDFinsupp
import Mathlib.Data.DFinsupp.Encodable
/-!
# `Encodable` and `Countable` instances for `α →₀ β`

In this file we provide instances for `Encodable (α →₀ β)` and `Countable (α →₀ β)`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ToDFinsupp.Variant825b74cdf6909156d79f75212b845825ff1ca863458dc2250ad9d87990bffc5c

instance {α β : Type*} [Encodable α] [Encodable β] [Zero β] [∀ x : β, Decidable (x ≠ 0)] :
    Encodable (α →₀ β) :=
  letI : DecidableEq α := Encodable.decidableEqOfEncodable _
  .ofEquiv _ finsuppEquivDFinsupp

instance {α β : Type*} [Countable α] [Countable β] [Zero β] : Countable (α →₀ β) := by
  classical exact .of_equiv _ finsuppEquivDFinsupp.symm
```
