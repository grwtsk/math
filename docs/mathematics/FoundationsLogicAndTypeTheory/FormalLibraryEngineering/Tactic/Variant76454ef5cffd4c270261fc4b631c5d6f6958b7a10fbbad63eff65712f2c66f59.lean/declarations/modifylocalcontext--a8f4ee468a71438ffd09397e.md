# modifyLocalContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:674ca8ed357a20ceb3f3f2c40fccceaae2dfa7c232d32ed1e558e7e4da18af00",
  "kind": "def",
  "lexical_name": "modifyLocalContext",
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
  "slug": "modifylocalcontext--a8f4ee468a71438ffd09397e",
  "source": {
    "blob": "0adaa3316de1d9747f5a30a994b2aa2305771287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant76454ef5cffd4c270261fc4b631c5d6f6958b7a10fbbad63eff65712f2c66f59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8f4ee468a71438ffd09397eec453f6b3574aaf9505e16b0e163f483d80f7bfa",
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

Occurrence: `declaration:674ca8ed357a20ceb3f3f2c40fccceaae2dfa7c232d32ed1e558e7e4da18af00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def modifyLocalContext [MonadMCtx m] (mvarId : MVarId)
    (f : LocalContext → LocalContext) : m Unit :=
  modifyMetavarDecl mvarId fun mdecl ↦
    { mdecl with lctx := f mdecl.lctx }

/--
`modifyLocalDecl mvarId fvarId f` updates the local decl `fvarId` in the local
context of `mvarId` with `f`. `f` must leave the `fvarId` and `index` of the
`LocalDecl` unchanged. The type of the new `LocalDecl` must be defeq to the type
of the old `LocalDecl` (and the same applies to the value of the `LocalDecl`, if
any).

If `mvarId` does not refer to a declared metavariable or if `fvarId` does not
exist in the local context of `mvarId`, nothing happens.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant76454ef5cffd4c270261fc4b631c5d6f6958b7a10fbbad63eff65712f2c66f59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant76454ef5cffd4c270261fc4b631c5d6f6958b7a10fbbad63eff65712f2c66f59.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0adaa3316de1d9747f5a30a994b2aa2305771287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
