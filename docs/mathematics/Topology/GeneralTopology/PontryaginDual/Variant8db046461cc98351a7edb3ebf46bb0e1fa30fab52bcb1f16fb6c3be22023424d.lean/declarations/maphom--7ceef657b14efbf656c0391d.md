# mapHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53bb28e29c039f2a04528f525e8b97fdeb915629b1774fd17962dcd40d9cbcb8",
  "kind": "def",
  "lexical_name": "mapHom",
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
  "slug": "maphom--7ceef657b14efbf656c0391d",
  "source": {
    "blob": "0d1bcd29b672d04af55b14a4b1d3ec0b6f6e5f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/PontryaginDual/Variant8db046461cc98351a7edb3ebf46bb0e1fa30fab52bcb1f16fb6c3be22023424d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ceef657b14efbf656c0391dd57aceac77f504c344003a7c0ea748c1d72cb9de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PontryaginDual/Variant8db046461cc98351a7edb3ebf46bb0e1fa30fab52bcb1f16fb6c3be22023424d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53bb28e29c039f2a04528f525e8b97fdeb915629b1774fd17962dcd40d9cbcb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapHom [LocallyCompactSpace G] :
    (A →ₜ* G) →ₜ* ((PontryaginDual G) →ₜ* (PontryaginDual A)) where
  toFun := map
  map_one' := map_one
  map_mul' := map_mul
  continuous_toFun := continuous_of_continuous_uncurry _ continuous_comp

end PontryaginDual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PontryaginDual/Variant8db046461cc98351a7edb3ebf46bb0e1fa30fab52bcb1f16fb6c3be22023424d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PontryaginDual/Variant8db046461cc98351a7edb3ebf46bb0e1fa30fab52bcb1f16fb6c3be22023424d.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d1bcd29b672d04af55b14a4b1d3ec0b6f6e5f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
