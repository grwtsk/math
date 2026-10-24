# mertensSignedAbelDepthBilinearModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf3b13da30c3d5bdc4b7c1113f68f0c567a92911db88bdb564f6593bd6652980",
  "kind": "def",
  "lexical_name": "mertensSignedAbelDepthBilinearModel",
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
  "slug": "mertenssignedabeldepthbilinearmodel--ca1cd05612e7c9b84afb0d33",
  "source": {
    "blob": "b62cc3cf45684b539152b66d3dd26f0a0a5f659e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 89,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelBilinear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca1cd05612e7c9b84afb0d3340d643bba486e420b7e9ae8d38b882907d0ee8ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf3b13da30c3d5bdc4b7c1113f68f0c567a92911db88bdb564f6593bd6652980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mertensSignedAbelDepthBilinearModel :
    SignedAbelDepthBilinearModel where
  support := fun _j t => Finset.range (t + 1)
  alpha := fun _j _t a => moebiusReal (a + 1)
  beta := fun j t a => signedAbelDepthShiftResponse j t a
  residual := fun _j _t => 0
  slice_identity := by
    intro j t
    simpa [SignedAbelDepthBilinearModel.structuredSlice] using
      weightedMertensDyadicSignedAbelDepthSlice_eq_baseBilinear j t

/-- The structured packet of the source-specific model is exactly the inherited
signed depth packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSignedAbelBilinear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSignedAbelBilinear.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b62cc3cf45684b539152b66d3dd26f0a0a5f659e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
