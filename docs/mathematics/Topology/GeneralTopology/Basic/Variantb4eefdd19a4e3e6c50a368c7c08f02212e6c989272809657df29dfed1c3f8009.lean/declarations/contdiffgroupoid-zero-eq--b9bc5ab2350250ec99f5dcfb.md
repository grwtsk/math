# contDiffGroupoid_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "680c70c7452343c30c386f7b04c79ff48cd7f3ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 688,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88c7c2d3-0f28-3c61-149d-647352e352ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66e3143e-7f98-2bae-7b3c-2c7e55f06044",
  "kind": "theorem",
  "lexical_name": "contDiffGroupoid_zero_eq",
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
  "slug": "contdiffgroupoid-zero-eq--b9bc5ab2350250ec99f5dcfb",
  "source": {
    "blob": "680c70c7452343c30c386f7b04c79ff48cd7f3ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 688,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9bc5ab2350250ec99f5dcfbd739775528b6961d572bdfbd6d4ecbc8792e6a8a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66e3143e-7f98-2bae-7b3c-2c7e55f06044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffGroupoid_zero_eq : contDiffGroupoid 0 I = continuousGroupoid H := by
  apply le_antisymm le_top
  intro u _
  -- we have to check that every open partial homeomorphism belongs to `contDiffGroupoid 0 I`,
  -- by unfolding its definition
  change u ∈ contDiffGroupoid 0 I
  rw [contDiffGroupoid, mem_groupoid_of_pregroupoid, contDiffPregroupoid]
  simp only [contDiffOn_zero]
  constructor
  · refine I.continuous.comp_continuousOn (u.continuousOn.comp I.continuousOn_symm ?_)
    exact (mapsTo_preimage _ _).mono_left inter_subset_left
  · refine I.continuous.comp_continuousOn (u.symm.continuousOn.comp I.continuousOn_symm ?_)
    exact (mapsTo_preimage _ _).mono_left inter_subset_left

-- FIXME: does this generalise to other groupoids? The argument is not specific
-- to C^n functions, but uses something about the groupoid's property that is not easy to abstract.
/-- Any change of coordinates with empty source belongs to `contDiffGroupoid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `680c70c7452343c30c386f7b04c79ff48cd7f3ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
