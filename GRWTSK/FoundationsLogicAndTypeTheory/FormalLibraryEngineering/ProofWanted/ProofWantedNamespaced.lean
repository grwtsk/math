-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabProofWanted.Variant78d3d6ece4b79935674ab0ce15590468ff1637af1ede1bebb2a801bc8ed736a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78d3d6ece4b79935674ab0ce15590468ff1637af1ede1bebb2a801bc8ed736a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabProofWanted.Variant78d3d6ece4b79935674ab0ce15590468ff1637af1ede1bebb2a801bc8ed736a8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"78d3d6ece4b79935674ab0ce15590468ff1637af1ede1bebb2a801bc8ed736a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Util/ProofWanted.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Thrane Christiansen
-/
import Lean.Elab.Exception
import Lean.Elab.Command
import Lean.Parser



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabProofWanted.Variant78d3d6ece4b79935674ab0ce15590468ff1637af1ede1bebb2a801bc8ed736a8

open Lean Parser Elab Command

/-- This proof would be a welcome contribution to the library!

The syntax of `proof_wanted` declarations is just like that of `theorem`, but without `:=` or the
proof. Lean checks that `proof_wanted` declarations are well-formed (e.g. it ensures that all the
mentioned names are in scope, and that the theorem statement is a valid proposition), but they are
discarded afterwards. This means that they cannot be used as axioms.

Typical usage:
```
@[simp] proof_wanted empty_find? [BEq α] [Hashable α] {a : α} :
    (∅ : HashMap α β).find? a = none
```
-/
@[command_parser]
def «proof_wanted» := leading_parser
  declModifiers false >> "proof_wanted" >> declId >> ppIndent declSig

/-- Elaborate a `proof_wanted` declaration. The declaration is translated to an axiom during
elaboration, but it's then removed from the environment.
-/
@[command_elab «proof_wanted»]
def elabProofWanted : CommandElab
  | `($mods:declModifiers proof_wanted $name $args* : $res) => withoutModifyingEnv do
    -- The helper axiom is used instead of `sorry` to avoid spurious warnings
    elabCommand <| ← `(axiom helper (p : Prop) : p
                       $mods:declModifiers
                       theorem $name $args* : $res := helper _)
  | _ => throwUnsupportedSyntax
