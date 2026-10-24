# deletedCells_subset_selected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1310d937e46ae77bd686c04e730bf8be7ee59c3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:674b3e96-43f8-e691-636d-10006fe2556b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45b0dfb5-7d05-63d0-c7ff-a4e00acb66a4",
  "kind": "theorem",
  "lexical_name": "deletedCells_subset_selected",
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
  "slug": "deletedcells-subset-selected--658b4100d7e5eef5b95d9c6d",
  "source": {
    "blob": "1310d937e46ae77bd686c04e730bf8be7ee59c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:658b4100d7e5eef5b95d9c6d01bf70184a3386deb22675406413a32b65879e36",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45b0dfb5-7d05-63d0-c7ff-a4e00acb66a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deletedCells_subset_selected {rows columns : Nat}
    {cut : CutDatum rows columns} (repair : Repair cut) :
    repair.deletedCells ⊆ cut.selected := by
  intro cell deleted
  apply repair.changeSupport_subset_selected
  rw [deletedCells, Finset.mem_filter] at deleted
  rw [changeSupport, Finset.mem_filter]
  refine ⟨Finset.mem_univ cell, ?_⟩
  intro unchanged
  rw [unchanged, deleted.2.1] at deleted
  exact Bool.noConfusion deleted.2.2

/-- Regluing the retained original values reconstructs the exact source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1310d937e46ae77bd686c04e730bf8be7ee59c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
