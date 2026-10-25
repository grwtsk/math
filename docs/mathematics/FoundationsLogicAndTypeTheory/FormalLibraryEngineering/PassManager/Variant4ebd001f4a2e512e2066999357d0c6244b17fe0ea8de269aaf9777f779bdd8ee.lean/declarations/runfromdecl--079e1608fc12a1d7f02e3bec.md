# runFromDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e2dce88ec07e9ed6c14a00eeb86304271157be6c914130c7e3ed5745cf273c2",
  "kind": "def",
  "lexical_name": "runFromDecl",
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
  "slug": "runfromdecl--079e1608fc12a1d7f02e3bec",
  "source": {
    "blob": "0e915b579881a9b54c9c3b2fec617fdef20a1590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant4ebd001f4a2e512e2066999357d0c6244b17fe0ea8de269aaf9777f779bdd8ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:079e1608fc12a1d7f02e3becca32aeaf1f998d6912d8247b653a721e7d0d8992",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant4ebd001f4a2e512e2066999357d0c6244b17fe0ea8de269aaf9777f779bdd8ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e2dce88ec07e9ed6c14a00eeb86304271157be6c914130c7e3ed5745cf273c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runFromDecl (manager : PassManager) (declName : Name) : CoreM PassManager := do
  let installer ← getPassInstaller declName
  let newState ← PassInstaller.run manager installer
  newState.validate
  return newState

end PassInstaller

end Lean.Compiler.LCNF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant4ebd001f4a2e512e2066999357d0c6244b17fe0ea8de269aaf9777f779bdd8ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant4ebd001f4a2e512e2066999357d0c6244b17fe0ea8de269aaf9777f779bdd8ee.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e915b579881a9b54c9c3b2fec617fdef20a1590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
