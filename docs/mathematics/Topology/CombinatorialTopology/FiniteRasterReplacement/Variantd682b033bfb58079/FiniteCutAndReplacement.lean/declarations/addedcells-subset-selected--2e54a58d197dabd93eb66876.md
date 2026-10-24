# addedCells_subset_selected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:343a9766-d078-0c27-61a8-922bcae293bb",
  "kind": "theorem",
  "lexical_name": "addedCells_subset_selected",
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
  "slug": "addedcells-subset-selected--2e54a58d197dabd93eb66876",
  "source": {
    "blob": "9a42d070078fdd25836d3d8c77ba19c55c019cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 135,
    "path": "GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e54a58d197dabd93eb66876484e531477f954d4912af88badaa1ec7fe40d5e2",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:343a9766-d078-0c27-61a8-922bcae293bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addedCells_subset_selected {rows columns : Nat}
    {cut : CutDatum rows columns} (repair : Repair cut) :
    repair.addedCells ⊆ cut.selected := by
  intro cell added
  apply repair.changeSupport_subset_selected
  rw [addedCells, Finset.mem_filter] at added
  rw [changeSupport, Finset.mem_filter]
  refine ⟨Finset.mem_univ cell, ?_⟩
  intro unchanged
  rw [unchanged, added.2.1] at added
  exact Bool.noConfusion added.2.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a42d070078fdd25836d3d8c77ba19c55c019cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
