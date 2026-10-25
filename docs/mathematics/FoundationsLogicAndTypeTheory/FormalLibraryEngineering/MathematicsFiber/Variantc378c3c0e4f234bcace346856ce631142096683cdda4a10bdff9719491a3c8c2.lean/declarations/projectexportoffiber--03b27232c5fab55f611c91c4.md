# projectExportOfFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab1f056280f653b2a99fc412811005f3656d3e8ed3e26cc3f6e261264e6d7a48",
  "kind": "def",
  "lexical_name": "projectExportOfFiber",
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
  "slug": "projectexportoffiber--03b27232c5fab55f611c91c4",
  "source": {
    "blob": "f5cb3de99c1b46ed30bb0052b9bf432d35db6ccd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variantc378c3c0e4f234bcace346856ce631142096683cdda4a10bdff9719491a3c8c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03b27232c5fab55f611c91c4d01a302071c652e1d46f5fe98b8b9227e8a6b61c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variantc378c3c0e4f234bcace346856ce631142096683cdda4a10bdff9719491a3c8c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab1f056280f653b2a99fc412811005f3656d3e8ed3e26cc3f6e261264e6d7a48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projectExportOfFiber
    (fiber : Mathematics.Federation.ProjectFiber)
    (metadata : ProjectExportMetadata) :
    ProjectExport where
  key := projectKeyOfFiber fiber
  packageName := metadata.packageName
  publicRoot := metadata.publicRoot
  leanToolchainDigest := metadata.leanToolchainDigest
  lakeGraphDigest := metadata.lakeGraphDigest
  sourceDigest := ⟨fiber.snapshot.revision.sourceDigest.value⟩
  compiledEnvironmentDigest := metadata.compiledEnvironmentDigest
  publicApiDigest := metadata.publicApiDigest
  theoremIndexDigest := metadata.theoremIndexDigest
  kernelCheckDigest := metadata.kernelCheckDigest
  unresolvedDigest := metadata.unresolvedDigest
  payloadRoot := metadata.payloadRoot
  exportDigest := metadata.exportDigest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variantc378c3c0e4f234bcace346856ce631142096683cdda4a10bdff9719491a3c8c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variantc378c3c0e4f234bcace346856ce631142096683cdda4a10bdff9719491a3c8c2.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5cb3de99c1b46ed30bb0052b9bf432d35db6ccd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
