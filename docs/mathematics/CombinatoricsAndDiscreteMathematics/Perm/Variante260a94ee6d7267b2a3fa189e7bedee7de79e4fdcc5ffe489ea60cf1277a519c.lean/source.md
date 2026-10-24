# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Perm.Variante260a94ee6d7267b2a3fa189e7bedee7de79e4fdcc5ffe489ea60cf1277a519c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8427f52073c48218ccd9d415aa02a597f539e1d5` · SHA-256 `e07b66fa40e89471262def409595fb31e6122062739d07d968503c15225eec0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CardPerm.Variante1ffd34e056f68bd41f402c6d8f0ebe6fbbf54025d1e68e486111582d7e7f469","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1ffd34e056f68bd41f402c6d8f0ebe6fbbf54025d1e68e486111582d7e7f469","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CardPerm.Variante1ffd34e056f68bd41f402c6d8f0ebe6fbbf54025d1e68e486111582d7e7f469","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e1ffd34e056f68bd41f402c6d8f0ebe6fbbf54025d1e68e486111582d7e7f469","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finite/Perm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/

import Mathlib.Data.Fintype.Perm
import Mathlib.SetTheory.Cardinal.Finite

/-! # Properties of `Equiv.Perm` on `Finite` types

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CardPerm.Variante1ffd34e056f68bd41f402c6d8f0ebe6fbbf54025d1e68e486111582d7e7f469

assert_not_exists Field

namespace Nat

theorem card_perm {α : Type*} [Finite α] : Nat.card (Equiv.Perm α) = (Nat.card α)! := by
  classical
  have := Fintype.ofFinite α
  rw [card_eq_fintype_card, card_eq_fintype_card, Fintype.card_perm]

end Nat
```
