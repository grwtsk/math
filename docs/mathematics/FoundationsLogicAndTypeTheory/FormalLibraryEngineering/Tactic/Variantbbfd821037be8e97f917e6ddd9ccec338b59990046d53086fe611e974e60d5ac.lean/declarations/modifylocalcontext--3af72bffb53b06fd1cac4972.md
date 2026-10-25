# modifyLocalContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07647d2de0f586e2259e901694cd9839e2c6adf717c72c4969af48d2bbe99b2b",
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
  "slug": "modifylocalcontext--3af72bffb53b06fd1cac4972",
  "source": {
    "blob": "e46e14c30ba762c9f04f6f796add1bd61444ca49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantbbfd821037be8e97f917e6ddd9ccec338b59990046d53086fe611e974e60d5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3af72bffb53b06fd1cac497251fd0bf56bfee13f45dd96b09ff683e6034a4d35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantbbfd821037be8e97f917e6ddd9ccec338b59990046d53086fe611e974e60d5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07647d2de0f586e2259e901694cd9839e2c6adf717c72c4969af48d2bbe99b2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantbbfd821037be8e97f917e6ddd9ccec338b59990046d53086fe611e974e60d5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantbbfd821037be8e97f917e6ddd9ccec338b59990046d53086fe611e974e60d5ac.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46e14c30ba762c9f04f6f796add1bd61444ca49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
