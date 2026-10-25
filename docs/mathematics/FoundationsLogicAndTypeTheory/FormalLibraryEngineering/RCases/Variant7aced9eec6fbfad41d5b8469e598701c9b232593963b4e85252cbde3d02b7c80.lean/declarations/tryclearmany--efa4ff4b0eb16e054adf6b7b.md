# tryClearMany'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39daf16662781fdd2ac507afd0d474668ce7464eecbbc2e7e9e9d6fa84eea3c0",
  "kind": "def",
  "lexical_name": "tryClearMany'",
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
  "slug": "tryclearmany--efa4ff4b0eb16e054adf6b7b",
  "source": {
    "blob": "77ea0577850a57144aa89b9217bf41e1eed024a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 485,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efa4ff4b0eb16e054adf6b7bce80b4f84bb9b34fdc9255ec9e169f35849bd076",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39daf16662781fdd2ac507afd0d474668ce7464eecbbc2e7e9e9d6fa84eea3c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryClearMany' (goal : MVarId) (fvarIds : Array FVarId) : MetaM MVarId := do
  let mut toErase := fvarIds
  for localDecl in (← goal.getDecl).lctx do
    if ← findLocalDeclDependsOn localDecl toErase.contains then
      toErase := toErase.push localDecl.fvarId
  goal.tryClearMany toErase

/--
The terminating continuation used in `rcasesCore` and `rcasesContinue`. We specialize the type
`α` to `Array MVarId` to collect the list of goals, and given the list of `clears`, it attempts to
clear them from the goal and adds the goal to the list.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77ea0577850a57144aa89b9217bf41e1eed024a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
