# toFilterDistortioniUnion_neBot'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b962498d990ed137c67eb5d0b7ed7b79eadf5208a70e67e4ebb871c8f09aa11",
  "kind": "instance",
  "lexical_name": "toFilterDistortioniUnion_neBot'",
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
  "slug": "tofilterdistortioniunion-nebot--78bc83cad5293ddc75e7bf85",
  "source": {
    "blob": "689666b8c173fbbbd70c32e4394467dfb2e25007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 507,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78bc83cad5293ddc75e7bf85df17f433a486bb16bc1e1ccd1bebdcfd9702e404",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b962498d990ed137c67eb5d0b7ed7b79eadf5208a70e67e4ebb871c8f09aa11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toFilterDistortioniUnion_neBot' (l : IntegrationParams) (I : Box ι) (π₀ : Prepartition I) :
    (l.toFilterDistortioniUnion I (max π₀.distortion π₀.compl.distortion) π₀).NeBot :=
  l.toFilterDistortioniUnion_neBot I π₀ (le_max_left _ _) (le_max_right _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variantbc1927559a9d3508a4e883738a096d6b2a314bef03f3b01aa1d4e9d4217c35d3.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `689666b8c173fbbbd70c32e4394467dfb2e25007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
