# modifyMetavarDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df439549560f655824d83fd8747d55ad6f3477910e1b95ff37cbff0cd1bdc4dc",
  "kind": "def",
  "lexical_name": "modifyMetavarDecl",
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
  "slug": "modifymetavardecl--51b9dc7b5afb88d489c00870",
  "source": {
    "blob": "0adaa3316de1d9747f5a30a994b2aa2305771287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant76454ef5cffd4c270261fc4b631c5d6f6958b7a10fbbad63eff65712f2c66f59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51b9dc7b5afb88d489c00870d3e6364d43fa160903805710e6dc5e5ef1aaaf1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant76454ef5cffd4c270261fc4b631c5d6f6958b7a10fbbad63eff65712f2c66f59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df439549560f655824d83fd8747d55ad6f3477910e1b95ff37cbff0cd1bdc4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def modifyMetavarDecl [MonadMCtx m] (mvarId : MVarId)
    (f : MetavarDecl → MetavarDecl) : m Unit :=
  modifyMCtx fun mctx ↦
    match mctx.decls.find? mvarId with
    | none => mctx
    | some mdecl => { mctx with decls := mctx.decls.insert mvarId (f mdecl) }

/--
`modifyTarget mvarId f` updates the target of the metavariable `mvarId` with
`f`. For any `e`, `f e` must be defeq to `e`. If `mvarId` does not refer to
a declared metavariable, nothing happens.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant76454ef5cffd4c270261fc4b631c5d6f6958b7a10fbbad63eff65712f2c66f59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant76454ef5cffd4c270261fc4b631c5d6f6958b7a10fbbad63eff65712f2c66f59.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0adaa3316de1d9747f5a30a994b2aa2305771287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
