# checkedShareCtx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59b72e17d143054261e93ba4fe2e0ca04d7063a4d654cf39c3d8d49424bd5db6",
  "kind": "def",
  "lexical_name": "checkedShareCtx",
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
  "slug": "checkedsharectx--4115bdbe219e9a01f1f8c549",
  "source": {
    "blob": "b5a2419a382a996d35f885238be16f8c9e136608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfac37897f5e92ccd0ea000246726983f3573d4c76d41ee18e9654246d67e73bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4115bdbe219e9a01f1f8c549c35039f7362dc198a359b6944a693549e538cbc5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfac37897f5e92ccd0ea000246726983f3573d4c76d41ee18e9654246d67e73bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59b72e17d143054261e93ba4fe2e0ca04d7063a4d654cf39c3d8d49424bd5db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkedShareCtx : SymM AlphaShareCommon.Context := do
  let config := (← readThe Context).config
  return {
    env            := (← getEnv)
    checkReducible := config.enforceUnfoldReducible
    checkProj      := config.enforceFoldProjs
  }

/--
Restores the `SymM` invariants enabled in the current configuration.
The final `unfoldReducible` is needed because `foldProjs` can introduce fresh reducible
constants: `mkProjection` recovers structure parameters from `inferType`, and those types
come from environment signatures that were never preprocessed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfac37897f5e92ccd0ea000246726983f3573d4c76d41ee18e9654246d67e73bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfac37897f5e92ccd0ea000246726983f3573d4c76d41ee18e9654246d67e73bd.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5a2419a382a996d35f885238be16f8c9e136608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
