# changeSupport_subset_selected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f59ffee-6a33-85d1-8cbb-7a932fff278a",
  "kind": "theorem",
  "lexical_name": "changeSupport_subset_selected",
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
  "slug": "changesupport-subset-selected--f5f1cca193802160008bf36a",
  "source": {
    "blob": "03183148058832a728523bfdc4ed48406ca43d17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 125,
    "path": "GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5f1cca193802160008bf36a9281eee0156d20178c0a76e87b934d0311167c59",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f59ffee-6a33-85d1-8cbb-7a932fff278a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changeSupport_subset_selected {rows columns : Nat}
    {cut : CutDatum rows columns} (repair : Repair cut) :
    repair.changeSupport ⊆ cut.selected := by
  intro cell changed
  by_contra outside
  have differs : repair.apply cell ≠ cut.source cell :=
    (Finset.mem_filter.mp changed).2
  exact differs (repair.apply_outside cell outside)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03183148058832a728523bfdc4ed48406ca43d17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
