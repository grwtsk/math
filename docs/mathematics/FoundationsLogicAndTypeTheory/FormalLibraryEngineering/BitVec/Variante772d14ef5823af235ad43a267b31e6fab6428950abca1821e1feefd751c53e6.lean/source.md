# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variante772d14ef5823af235ad43a267b31e6fab6428950abca1821e1feefd751c53e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `151d202d2407f6e787cb1ae5cacaeda1fc3ff50b` · SHA-256 `b95fdbefd81c891c9b2c997dd8eb938c2e4a0d7382f5e526c9f71eea85eecd91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant9e3e8c70877aae9c83e4ddf50926661c5eec377803d4a9a6bce870ab2d926118","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e3e8c70877aae9c83e4ddf50926661c5eec377803d4a9a6bce870ab2d926118","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Ord.Variant9e3e8c70877aae9c83e4ddf50926661c5eec377803d4a9a6bce870ab2d926118","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9e3e8c70877aae9c83e4ddf50926661c5eec377803d4a9a6bce870ab2d926118","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Ord/BitVec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Paul Reichert, Robin Arnez
-/
module

prelude
public import Init.Data.Order.Ord
import Init.Data.BitVec.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant9e3e8c70877aae9c83e4ddf50926661c5eec377803d4a9a6bce870ab2d926118

public section

/-!
# Instances for strings.

-/

set_option autoImplicit false
set_option linter.missingDocs true

open Std

namespace BitVec

variable {n : Nat}

instance : TransOrd (BitVec n) :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    BitVec.le_antisymm BitVec.le_trans BitVec.le_total BitVec.not_le

instance : LawfulEqOrd (BitVec n) where
  eq_of_compare h := compareOfLessAndEq_eq_eq BitVec.le_refl BitVec.not_le |>.mp h

end BitVec
```
