# FiberBundle.chartedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52e89c503449b701db7dede50d7d2bca01bd4ab4f581b8f446b5c45ebbe0114a",
  "kind": "instance",
  "lexical_name": "FiberBundle.chartedSpace",
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
  "slug": "fiberbundle-chartedspace--f8423cf4c758d0554fc6a8df",
  "source": {
    "blob": "a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 102,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8423cf4c758d0554fc6a8df023431575c09c06c2f008ae1c1ed65ae77859555",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52e89c503449b701db7dede50d7d2bca01bd4ab4f581b8f446b5c45ebbe0114a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance FiberBundle.chartedSpace : ChartedSpace (ModelProd HB F) (TotalSpace F E) :=
  ChartedSpace.comp _ (B × F) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
