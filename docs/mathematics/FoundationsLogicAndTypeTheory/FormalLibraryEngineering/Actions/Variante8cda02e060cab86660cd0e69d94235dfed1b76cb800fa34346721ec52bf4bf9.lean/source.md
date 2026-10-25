# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Actions.Variante8cda02e060cab86660cd0e69d94235dfed1b76cb800fa34346721ec52bf4bf9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c4837604f3a8c925f44c372b1a9258349ea22a3` · SHA-256 `beb824ae3b526a2e59d60e313605c502bd9e0b22f85f998e1a57c48a3d1ba217`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultClauseAction.Variant097c0188d8c521e07a2651da5bd97ce017645e1c1c1b017ec2314869c7c10c5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"097c0188d8c521e07a2651da5bd97ce017645e1c1c1b017ec2314869c7c10c5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DefaultClauseAction.Variant097c0188d8c521e07a2651da5bd97ce017645e1c1c1b017ec2314869c7c10c5e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"097c0188d8c521e07a2651da5bd97ce017645e1c1c1b017ec2314869c7c10c5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/Actions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Actions
public import Std.Tactic.BVDecide.LRAT.Internal.Clause


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultClauseAction.Variant097c0188d8c521e07a2651da5bd97ce017645e1c1c1b017ec2314869c7c10c5e

@[expose] public section

namespace Std.Tactic.BVDecide

namespace LRAT
namespace Internal

open Std.Sat

/--
`Action` where variables have type `PosFin n`, clauses are `DefaultClause`, and ids are `Nat`.
This Action type is meant to be usable for verifying LRAT proofs that operate on default formulas.
-/
abbrev DefaultClauseAction (n : Nat) : Type := Action (DefaultClause n) (PosFin n)

/--
A predicate for Actions that ensures that the pivot of a clause is always included in the clause.
In the LRAT format, the clause's pivot is always its first literal. However, from an interface
perspective, it is awkward to require that all `Clause` implementations preserve the ordering of
their literals. It is also awkward to have the pivot in the `addRat` action not included in the
clause itself, since then the pivot would need to be readded to the clause when it is added to the
formula. So to avoid imposing awkward constraints on the `Clause` interface, and to avoid requiring
`Formula` implementations to add pivots to the clauses provided by the `addRat` action, we use this
predicate to indicate that the pivot provided by the `addRat` action is indeed in the provided
clause.
-/
def WellFormedAction [Clause α β] : Action β α → Prop
  -- Note that `Limplies α p c` is equivalent to `p ∈ toList c` by `limplies_iff_mem` in CNF.lean
  | .addRat _ c p _ _ => Limplies α p c
  | _ => True

@[inline]
def natLiteralToPosFinLiteral {n : Nat} (x : Literal Nat) : Option (Literal (PosFin n)) := do
  if h : x.1 < n ∧ x.1 ≠ 0 then
    some (⟨x.1, ⟨Nat.zero_lt_of_ne_zero h.right, h.left⟩⟩, x.2)
  else
    none

@[inline]
def intToLiteral {n : Nat} (x : Int) : Option (Literal (PosFin n)) := do
  if h1 : x.natAbs < n ∧ x ≠ 0 then
    if h2 : x > 0 then
      some (⟨x.natAbs, ⟨by omega, h1.left⟩⟩, true)
    else
      some (⟨x.natAbs, ⟨by omega, h1.left⟩⟩, false)
  else
    none

/--
Since `IntAction` is a convenient parsing target and `DefaultClauseAction` is a useful Action type
for working with default clauses, an expected workflow pattern is to parse an external LRAT proof
into a list of `IntAction`s, and then use this function to convert that list of `IntAction`s to
`DefaultClauseAction`s.

This function returns an `Option` type so that `none` can be returned if converting from the
`IntAction` to `DefaultClauseAction` fails. This can occur if any of the literals in the `IntAction`
are 0 or ≥ n.
-/
def intActionToDefaultClauseAction (n : Nat) : IntAction → Option (DefaultClauseAction n)
  | .addEmpty cId rupHints => some <| .addEmpty cId rupHints
  | .addRup cId c rupHints => do
    let c ← c.mapM intToLiteral
    let c ← Clause.ofArray c
    return .addRup cId c rupHints
  | .addRat cId c pivot rupHints ratHints => do
    let pivot ← natLiteralToPosFinLiteral pivot
    let c ← c.mapM intToLiteral
    let c ← Clause.ofArray c
    return .addRat cId c pivot rupHints ratHints
  | .del ids => return .del ids


end Internal
end LRAT

end Std.Tactic.BVDecide
```
