# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Actions.Variant2a180a7d3cd0043fc5c338eb2ccbdfdaaff849c0a6ea39828bd18545545b30fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecf6c7ca577d9696013f5f6de62d70237ab09bf0` · SHA-256 `0823b845f16d1e17c3f25d9584eebfb22d19a7ae0c04eb8db334c95a0ab12c0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Action.Variant68f710eb7c0d7464606e6dbf3a708b820e9b41bcf29b90ded5e94079c3cc4721","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68f710eb7c0d7464606e6dbf3a708b820e9b41bcf29b90ded5e94079c3cc4721","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Action.Variant68f710eb7c0d7464606e6dbf3a708b820e9b41bcf29b90ded5e94079c3cc4721","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"68f710eb7c0d7464606e6dbf3a708b820e9b41bcf29b90ded5e94079c3cc4721","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Actions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Std.Sat.CNF


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Action.Variant68f710eb7c0d7464606e6dbf3a708b820e9b41bcf29b90ded5e94079c3cc4721

@[expose] public section

/-!
This module contains the definition of the LRAT format (https://www.cs.utexas.edu/~marijn/publications/lrat.pdf)
as a type `Action`, that is polymorphic over the variables used in the CNF. The type
`IntAction := Action (Array Int) Nat` is the version that is used by the checker as input and should
be considered the parsing target for LRAT proofs.
-/

namespace Std.Tactic.BVDecide
namespace LRAT

open Std.Sat

/-- `β` is for the type of a clause, `α` is for the type of variables -/
inductive Action (β : Type u) (α : Type v)
  | addEmpty (id : Nat) (rupHints : Array Nat)
  | addRup (id : Nat) (c : β) (rupHints : Array Nat)
  | addRat (id : Nat) (c : β) (pivot : Literal α) (rupHints : Array Nat) (ratHints : Array (Nat × Array (Nat)))
  | del (ids : Array Nat)
deriving Inhabited, BEq, Repr

def Action.toString [ToString β] [ToString α] : Action β α → String
  | .addEmpty id rup => s!"addEmpty (id: {id}) (hints: {rup})"
  | .addRup id c rup => s!"addRup {c} (id : {id}) (hints: {rup})"
  | .addRat id c l rup rat => s!"addRat {c} (id: {id}) (pivot: {l}) (rup hints: {rup}) (rat hints: {rat})"
  | .del ids => s!"del {ids}"

instance [ToString β] [ToString α] : ToString (Action β α) := ⟨Action.toString⟩

/--
`Action` where variables are (positive) `Nat`, clauses are arrays of `Int`, and ids are `Nat`.
This Action type is meant to be a convenient target for parsing LRAT proofs.
-/
abbrev IntAction : Type := Action (Array Int) Nat


end LRAT
end Std.Tactic.BVDecide
```
