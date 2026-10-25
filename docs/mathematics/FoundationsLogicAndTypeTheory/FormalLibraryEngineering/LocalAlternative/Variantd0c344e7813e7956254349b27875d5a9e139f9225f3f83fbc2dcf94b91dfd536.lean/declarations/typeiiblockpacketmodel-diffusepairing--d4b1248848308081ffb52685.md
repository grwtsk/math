# TypeIIBlockPacketModel.diffusePairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8096236196109689d3a9e354a0eceb712b2162ac8cd1e586b731a3181224d87e",
  "kind": "def",
  "lexical_name": "TypeIIBlockPacketModel.diffusePairing",
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
  "slug": "typeiiblockpacketmodel-diffusepairing--d4b1248848308081ffb52685",
  "source": {
    "blob": "1be9d2cb9ab1df7379a2fdb4cde3d9d454aeb348",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantd0c344e7813e7956254349b27875d5a9e139f9225f3f83fbc2dcf94b91dfd536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4b1248848308081ffb52685c49472f98c854208247231b7aed00ba8c54126eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantd0c344e7813e7956254349b27875d5a9e139f9225f3f83fbc2dcf94b91dfd536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8096236196109689d3a9e354a0eceb712b2162ac8cd1e586b731a3181224d87e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TypeIIBlockPacketModel.diffusePairing
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B)
    (interval : TypeIIDyadicInterval N) : ℂ :=
  bilinearMatrixPairing
    (model.localStructure.leftDiffuse (blockLeftEuclideanCoefficient B))
    (typeIIBlockDyadicIntervalMatrix B interval)
    (model.localStructure.rightDiffuse (blockRightEuclideanCoefficient B))

/-- Sum of the two mixed structured/diffuse pairings. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantd0c344e7813e7956254349b27875d5a9e139f9225f3f83fbc2dcf94b91dfd536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantd0c344e7813e7956254349b27875d5a9e139f9225f3f83fbc2dcf94b91dfd536.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1be9d2cb9ab1df7379a2fdb4cde3d9d454aeb348` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
