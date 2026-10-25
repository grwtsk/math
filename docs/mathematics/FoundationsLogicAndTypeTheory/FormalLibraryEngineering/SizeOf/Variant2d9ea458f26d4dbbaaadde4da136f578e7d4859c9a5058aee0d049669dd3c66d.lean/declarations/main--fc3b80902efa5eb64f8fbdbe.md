# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d7570bc8472c3a6f0059c017992622bb04c5dfa3cc57b7c4068e869b65f0c16",
  "kind": "def",
  "lexical_name": "main",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "main--fc3b80902efa5eb64f8fbdbe",
  "source": {
    "blob": "0faca0128fc0bcfc46156f3d678ddc6618e6ec7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 393,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc3b80902efa5eb64f8fbdbe32c354f0b3eec23938c3db3e24d36ce41d5c1b37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d7570bc8472c3a6f0059c017992622bb04c5dfa3cc57b7c4068e869b65f0c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def main (lhs rhs : Expr) : M Expr := do
  if (← isDefEq lhs rhs) then
    mkEqRefl rhs
  else
    /- Expand lhs and rhs to obtain `Nat.add` applications -/
    let lhs ← whnfI lhs            -- Expand `sizeOf (ctor ...)` into `_sizeOf_<idx>` application
    let lhs ← unfoldDefinition lhs -- Unfold `_sizeOf_<idx>` application into `HAdd.hAdd` application
    loop lhs rhs
where
  loop (lhs rhs : Expr) : M Expr := do
    trace[Meta.sizeOf.loop] "{lhs} =?= {rhs}"
    if (← isDefEq lhs rhs) then
      mkEqRefl rhs
    else
      match (← whnfI lhs).natAdd?, (← whnfI rhs).natAdd? with
      | some (a₁, b₁), some (a₂, b₂) =>
        let p₁ ← loop a₁ a₂
        let p₂ ← step b₁ b₂
        mkCongr (← mkCongrArg (mkConst ``Nat.add) p₁) p₂
      | _, _ =>
        throwUnexpected m!"expected 'Nat.add' application, lhs is {indentExpr lhs}\nrhs is{indentExpr rhs}"

  step (lhs rhs : Expr) : M Expr := do
    if (← isDefEq lhs rhs) then
      mkEqRefl rhs
    else
      let lhs ← recToSizeOf lhs
      mkSizeOfAuxLemma lhs rhs

end SizeOfSpecNested

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0faca0128fc0bcfc46156f3d678ddc6618e6ec7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
