# Pi.instBornology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d7b1205f608bd0eae3adb6260eb58ee3598d1e8c3eb7f724b716a6398d33ada",
  "kind": "instance",
  "lexical_name": "Pi.instBornology",
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
  "slug": "pi-instbornology--517d5f7a44dd30d5904838b5",
  "source": {
    "blob": "511d70771daa548556498727add4093b3a53af0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:517d5f7a44dd30d5904838b56d89071d90b10481e6a7897367779e39cced242f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d7b1205f608bd0eae3adb6260eb58ee3598d1e8c3eb7f724b716a6398d33ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.instBornology : Bornology (∀ i, π i) where
  cobounded' := Filter.coprodᵢ fun i => cobounded (π i)
  le_cofinite' := iSup_le fun _ ↦ (comap_mono (Bornology.le_cofinite _)).trans (comap_cofinite_le _)

/-- Inverse image of a bornology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `511d70771daa548556498727add4093b3a53af0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
