# TypeIIBlockPacketModel.structuredPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:204e15f5526e66caaaef5731768f611f402cb2355a5f2be9eac7734525036d73",
  "kind": "def",
  "lexical_name": "TypeIIBlockPacketModel.structuredPairing",
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
  "slug": "typeiiblockpacketmodel-structuredpairing--54b4ed4daf01396c29072817",
  "source": {
    "blob": "bfe12479ecb760b99639c9a175ad45c6bf5c6c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantdffb8653457155cf194d2ec7a3bb50a4c51c748e802248d7f521f6cb1dfd4fcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54b4ed4daf01396c29072817731b0bc911747a1d6fcbaa6c10998ff62b253e14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantdffb8653457155cf194d2ec7a3bb50a4c51c748e802248d7f521f6cb1dfd4fcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:204e15f5526e66caaaef5731768f611f402cb2355a5f2be9eac7734525036d73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TypeIIBlockPacketModel.structuredPairing
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B)
    (interval : TypeIIDyadicInterval N) : ℂ :=
  bilinearMatrixPairing
    (model.localStructure.leftStructured (blockLeftEuclideanCoefficient B))
    (typeIIBlockDyadicIntervalMatrix B interval)
    (model.localStructure.rightStructured (blockRightEuclideanCoefficient B))

/-- Quantitative diffuse compressed-pairing theorem at one block. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantdffb8653457155cf194d2ec7a3bb50a4c51c748e802248d7f521f6cb1dfd4fcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantdffb8653457155cf194d2ec7a3bb50a4c51c748e802248d7f521f6cb1dfd4fcc.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfe12479ecb760b99639c9a175ad45c6bf5c6c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
