-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mtr.Variant578a3d03c068e9c1b69698a20a92baa96944f7ef16dd57fb535f80e51f118c40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"578a3d03c068e9c1b69698a20a92baa96944f7ef16dd57fb535f80e51f118c40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Mtr.Variant578a3d03c068e9c1b69698a20a92baa96944f7ef16dd57fb535f80e51f118c40","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"578a3d03c068e9c1b69698a20a92baa96944f7ef16dd57fb535f80e51f118c40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Contrapose.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Tactic.Push

/-! # Contrapose

The `contrapose` tactic transforms the goal into its contrapositive when that goal is an
implication.

* `contrapose`     turns a goal `P → Q` into `¬ Q → ¬ P`
* `contrapose!`    turns a goal `P → Q` into `¬ Q → ¬ P` and pushes negations inside `P` and `Q`
  using `push_neg`
* `contrapose h`   first reverts the local assumption `h`, and then uses `contrapose` and `intro h`
* `contrapose! h`  first reverts the local assumption `h`, and then uses `contrapose!` and `intro h`
* `contrapose h with new_h` uses the name `new_h` for the introduced hypothesis

-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mtr.Variant578a3d03c068e9c1b69698a20a92baa96944f7ef16dd57fb535f80e51f118c40

namespace Mathlib.Tactic.Contrapose

lemma mtr {p q : Prop} : (¬ q → ¬ p) → (p → q) := fun h hp ↦ by_contra (fun h' ↦ h h' hp)

/--
Transforms the goal into its contrapositive.
* `contrapose`     turns a goal `P → Q` into `¬ Q → ¬ P`
* `contrapose h`   first reverts the local assumption `h`, and then uses `contrapose` and `intro h`
* `contrapose h with new_h` uses the name `new_h` for the introduced hypothesis
-/
syntax (name := contrapose) "contrapose" (ppSpace colGt ident (" with " ident)?)? : tactic
macro_rules
  | `(tactic| contrapose) => `(tactic| (refine mtr ?_))
  | `(tactic| contrapose $e) => `(tactic| (revert $e:ident; contrapose; intro $e:ident))
  | `(tactic| contrapose $e with $e') => `(tactic| (revert $e:ident; contrapose; intro $e':ident))

/--
Transforms the goal into its contrapositive and uses pushes negations inside `P` and `Q`.
Usage matches `contrapose`
-/
syntax (name := contrapose!) "contrapose!" (ppSpace colGt ident (" with " ident)?)? : tactic
macro_rules
  | `(tactic| contrapose!) => `(tactic| (contrapose; try push_neg))
  | `(tactic| contrapose! $e) => `(tactic| (revert $e:ident; contrapose!; intro $e:ident))
  | `(tactic| contrapose! $e with $e') => `(tactic| (revert $e:ident; contrapose!; intro $e':ident))

end Mathlib.Tactic.Contrapose
