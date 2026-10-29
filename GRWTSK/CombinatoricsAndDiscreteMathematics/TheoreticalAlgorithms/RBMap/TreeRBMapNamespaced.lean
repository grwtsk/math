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
