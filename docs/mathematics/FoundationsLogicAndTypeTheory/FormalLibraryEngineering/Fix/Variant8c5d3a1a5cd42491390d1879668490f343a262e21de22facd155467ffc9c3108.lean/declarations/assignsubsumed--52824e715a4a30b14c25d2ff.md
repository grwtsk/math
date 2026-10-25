# assignSubsumed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:146230acbd626db0a1b22979c02a78f075f19bc1eaeed3f1657aae95cd59cab6",
  "kind": "def",
  "lexical_name": "assignSubsumed",
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
  "slug": "assignsubsumed--52824e715a4a30b14c25d2ff",
  "source": {
    "blob": "39b35edd3f1e666b6e8e366b3289e93b62eed3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52824e715a4a30b14c25d2ffdf598dafc14ed4650667ffea6a67de39502714bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:146230acbd626db0a1b22979c02a78f075f19bc1eaeed3f1657aae95cd59cab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assignSubsumed (mvars : Array MVarId) : MetaM (Array MVarId) :=
  mvars.filterPairsM fun mv₁ mv₂ => do
    let mvdecl₁ ← mv₁.getDecl
    let mvdecl₂ ← mv₂.getDecl
    if mvdecl₁.type == mvdecl₂.type then
      -- same goals; check contexts.
        if mvdecl₁.lctx.isSubPrefixOf mvdecl₂.lctx then
          -- mv₁ is better
          mv₂.assign (.mvar mv₁)
          return (true, false)
        if mvdecl₂.lctx.isSubPrefixOf mvdecl₁.lctx then
          -- mv₂ is better
          mv₁.assign (.mvar mv₂)
          return (false, true)
    return (true, true)

/--
The subgoals, created by `mkDecreasingProof`, are of the form `[data _recApp: rel arg param]`, where
`param` is the `PackMutual`'ed parameter of the current function, and thus we can peek at that to
know which function is making the call.
The close coupling with how arguments are packed and termination goals look like is not great,
but it works for now.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39b35edd3f1e666b6e8e366b3289e93b62eed3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
