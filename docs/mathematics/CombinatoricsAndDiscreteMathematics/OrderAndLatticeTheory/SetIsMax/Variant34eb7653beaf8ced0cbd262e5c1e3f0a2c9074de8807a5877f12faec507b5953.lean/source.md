# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetIsMax.Variant34eb7653beaf8ced0cbd262e5c1e3f0a2c9074de8807a5877f12faec507b5953

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69ed0febd7d879526802edda0c02d4aa9dc1cfd8` · SHA-256 `a6ac5a8f78970ab14e25e662b223b74bd18e2c29aad758556d965570f833bdbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.NotIsMaxCoe.Variant0af0cf13e1013989a0df56bb611aefc518038bb562c170810db488932f71ebae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0af0cf13e1013989a0df56bb611aefc518038bb562c170810db488932f71ebae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.NotIsMaxCoe.Variant0af0cf13e1013989a0df56bb611aefc518038bb562c170810db488932f71ebae","mathematical_subject":"Algebra.OrderTheory","original_sha256":"0af0cf13e1013989a0df56bb611aefc518038bb562c170810db488932f71ebae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/SetIsMax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Order.Max
import Mathlib.Data.Set.CoeSort

/-!
# Maximal elements of subsets

Let `S : Set J` and `m : S`. If `m` is not a maximal element of `S`,
then `↑m : J` is not maximal in `J`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.NotIsMaxCoe.Variant0af0cf13e1013989a0df56bb611aefc518038bb562c170810db488932f71ebae

universe u

namespace Set

variable {J : Type u} [Preorder J] {S : Set J} (m : S)

lemma not_isMax_coe (hm : ¬ IsMax m) :
    ¬ IsMax m.1 :=
  fun h ↦ hm (fun _ hb ↦ h hb)

lemma not_isMin_coe (hm : ¬ IsMin m) :
    ¬ IsMin m.1 :=
  fun h ↦ hm (fun _ hb ↦ h hb)

end Set
```
