# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashMap.Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `641a81b5759c759d3e67556a4334d69065ff9116` · SHA-256 `a098bf2176b7190bbc78530b375e26d6a01c4098df12bbe23f4f122443cf5141`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Keys.Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Keys.Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/HashMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison

As `HashMap` has been completely reimplemented in `Std`,
nothing from the mathlib3 file `data.hash_map` is reflected here.
The porting header is just here to mark that no further work on `data.hash_map` is desired.
-/
import Mathlib.Init.Align
import Std.Data.HashMap
import Std.Data.RBMap


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Keys.Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a

#align_import data.hash_map from "leanprover-community/mathlib"@"f0c8bf9245297a541f468be517f1bde6195105e9"

/-!
# Additional API for `HashMap` and `RBSet`.

These should be replaced by proper implementations in Std.
-/

set_option autoImplicit true

namespace Std.HashMap

-- not an exact match, the Lean3 version was dependently-typed
#align hash_map Std.HashMapₓ

variable [BEq α] [Hashable α]

/-- The list of keys in a `HashMap`. -/
def keys (m : HashMap α β) : List α :=
  m.fold (fun ks k _ => k :: ks) []

/-- The list of values in a `HashMap`. -/
def values (m : HashMap α β) : List β :=
  m.fold (fun vs _ v => v :: vs) []

/-- Add a value to a `HashMap α (List β)` viewed as a multimap. -/
def consVal (self : HashMap α (List β)) (a : α) (b : β) : HashMap α (List β) :=
  match self.find? a with
  | none => self.insert a [b]
  | some L => self.insert a (b::L)

end Std.HashMap

namespace Std.RBSet

/-- Insert all elements of a list into an `RBSet`. -/
def insertList {cmp} (m : RBSet α cmp) (L : List α) : RBSet α cmp :=
  L.foldl (fun m a => m.insert a) m

end Std.RBSet
```
