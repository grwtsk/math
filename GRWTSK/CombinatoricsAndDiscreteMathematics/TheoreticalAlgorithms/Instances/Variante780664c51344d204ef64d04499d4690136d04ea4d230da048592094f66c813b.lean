-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListFormat.Variant3ad4af51d6170d462aee34626d5e1077d7ae2740e67044fb83721d578893ae88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ad4af51d6170d462aee34626d5e1077d7ae2740e67044fb83721d578893ae88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListFormat.Variant3ad4af51d6170d462aee34626d5e1077d7ae2740e67044fb83721d578893ae88","mathematical_subject":"Computation.DataStructures","original_sha256":"3ad4af51d6170d462aee34626d5e1077d7ae2740e67044fb83721d578893ae88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Format/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
import Init.Data.String.Search
public import Init.Data.ToString.Basic
import Init.Data.Iterators.Consumers.Collect


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListFormat.Variant3ad4af51d6170d462aee34626d5e1077d7ae2740e67044fb83721d578893ae88

public section

open Std

instance (priority := low) [ToString α] : ToFormat α :=
  ⟨Std.Format.text ∘ toString⟩

def List.format [ToFormat α] : List α → Format
  | [] => "[]"
  | xs => Format.sbracket <| Format.joinSep xs ("," ++ Format.line)

instance [ToFormat α] : ToFormat (List α) where
  format := List.format

instance [ToFormat α] : ToFormat (Array α) where
  format a := "#" ++ format a.toList

/--
Formats an optional value, with no expectation that the Lean parser should be able to parse the
result.

This function is usually accessed through the `ToFormat (Option α)` instance.
-/
def Option.format {α : Type u} [ToFormat α] : Option α → Format
  | none   => "none"
  | some a => "some " ++ Std.format a

instance {α : Type u} [ToFormat α] : ToFormat (Option α) :=
  ⟨Option.format⟩

instance {α : Type u} {β : Type v} [ToFormat α] [ToFormat β] : ToFormat (Prod α β) where
  format := fun (a, b) => Format.paren <| format a ++ "," ++ Format.line ++ format b

/--
Converts a string to a pretty-printer document, replacing newlines in the string with
`Std.Format.line`.
-/
def String.toFormat (s : String) : Std.Format :=
  Std.Format.joinSep (s.split '\n').toList Std.Format.line

instance : ToFormat String.Pos.Raw where
  format p := format p.byteIdx
