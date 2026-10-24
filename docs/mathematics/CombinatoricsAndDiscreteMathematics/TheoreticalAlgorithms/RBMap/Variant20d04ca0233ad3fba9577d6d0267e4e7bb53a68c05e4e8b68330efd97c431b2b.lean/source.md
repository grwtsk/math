# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RBMap.Variant20d04ca0233ad3fba9577d6d0267e4e7bb53a68c05e4e8b68330efd97c431b2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4804bb7e6ff28a42db04c1259174e7617377685` · SHA-256 `bc9b863701ef002a0cf4b4170ac924ffcb23db16773228f824d95b885c29423f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfRBNode.Variantd247d22003c636878a5b4a24f55fefd5075965ff4afd830be9a57ee738995c7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d247d22003c636878a5b4a24f55fefd5075965ff4afd830be9a57ee738995c7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OfRBNode.Variantd247d22003c636878a5b4a24f55fefd5075965ff4afd830be9a57ee738995c7d","mathematical_subject":"Computation.DataStructures","original_sha256":"d247d22003c636878a5b4a24f55fefd5075965ff4afd830be9a57ee738995c7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Tree/RBMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 mathlib community. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Wojciech Nawrocki
-/
import Batteries.Data.RBMap.Basic
import Mathlib.Data.Tree.Basic

/-!
# Binary tree and RBMaps

In this file we define `Tree.ofRBNode`.
This definition was moved from the main file to avoid a dependency on `RBMap`.

## TODO

Implement a `Traversable` instance for `Tree`.

## References

<https://leanprover-community.github.io/archive/stream/113488-general/topic/tactic.20question.html>
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfRBNode.Variantd247d22003c636878a5b4a24f55fefd5075965ff4afd830be9a57ee738995c7d

namespace Tree

universe u

variable {α : Type u}

open Batteries (RBNode)

/-- Makes a `Tree α` out of a red-black tree. -/
@[deprecated "Deprecated without replacement." (since := "2025-04-02")]
def ofRBNode : RBNode α → Tree α
  | RBNode.nil => nil
  | RBNode.node _color l key r => node key (ofRBNode l) (ofRBNode r)

end Tree
```
