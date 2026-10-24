# Prod.pseudoEMetricSpaceMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13cfd72fb0d55f099c31b4fc3ef875b9080219243d090bcd970666e7c8e4afa7",
  "kind": "instance",
  "lexical_name": "Prod.pseudoEMetricSpaceMax",
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
  "slug": "prod-pseudoemetricspacemax--fe0f2c0b9d27c9ba92fc4715",
  "source": {
    "blob": "d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 452,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe0f2c0b9d27c9ba92fc47159bee40bfb92b4be46c71c996fa8d5f0cef1a5039",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13cfd72fb0d55f099c31b4fc3ef875b9080219243d090bcd970666e7c8e4afa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.pseudoEMetricSpaceMax [PseudoEMetricSpace β] : PseudoEMetricSpace (α × β) where
  edist x y := edist x.1 y.1 ⊔ edist x.2 y.2
  edist_self x := by simp
  edist_comm x y := by simp [edist_comm]
  edist_triangle x y z :=
    max_le (le_trans (edist_triangle _ _ _) (add_le_add (le_max_left _ _) (le_max_left _ _)))
      (le_trans (edist_triangle _ _ _) (add_le_add (le_max_right _ _) (le_max_right _ _)))
  uniformity_edist := uniformity_prod.trans <| by
    simp [PseudoEMetricSpace.uniformity_edist, ← iInf_inf_eq, setOf_and]
  toUniformSpace := inferInstance
#align prod.pseudo_emetric_space_max Prod.pseudoEMetricSpaceMax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
