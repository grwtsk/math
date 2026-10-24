# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d9f9b6909885542e71db28eaf72266f50a2768c` · SHA-256 `dee8fef4ba1c0f92aa3ca63c151e6d95cf751d43bea92fd6b18dff0737aa1ea1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceUnit.Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SourceUnit.Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e","mathematical_subject":"Computation.DataStructures","original_sha256":"07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/Monad.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/

import Mathlib.Init
/-!
# Monad instances for `List`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceUnit.Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e

universe u

namespace List

variable {α : Type u}

instance instMonad : Monad List.{u} where
  pure x := [x]
  bind l f := l.flatMap f
  map f l := l.map f

@[simp] theorem pure_def (a : α) : pure a = [a] := rfl

instance instLawfulMonad : LawfulMonad List.{u} := LawfulMonad.mk'
  (id_map := map_id)
  (pure_bind := fun _ _ => List.append_nil _)
  (bind_assoc := fun _ _ _ => List.flatMap_assoc)
  (bind_pure_comp := fun _ _ => map_eq_flatMap.symm)

instance instAlternative : Alternative List.{u} where
  failure := @List.nil
  orElse l l' := List.append l (l' ())

end List
```
