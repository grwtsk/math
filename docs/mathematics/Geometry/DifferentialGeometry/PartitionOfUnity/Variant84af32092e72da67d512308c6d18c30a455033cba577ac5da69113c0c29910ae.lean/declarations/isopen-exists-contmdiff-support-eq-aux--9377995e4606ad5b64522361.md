# IsOpen.exists_contMDiff_support_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c803a8dde7798a7d126758430e4c7d5e2d933ed6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 693,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ef38eeb-79a3-63c3-bbce-421aad86898f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f2fcc21-b74c-0841-e019-d15e9e8b8e3a",
  "kind": "lemma",
  "lexical_name": "IsOpen.exists_contMDiff_support_eq_aux",
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
  "slug": "isopen-exists-contmdiff-support-eq-aux--9377995e4606ad5b64522361",
  "source": {
    "blob": "c803a8dde7798a7d126758430e4c7d5e2d933ed6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 693,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9377995e4606ad5b6452236193d17bb302307ca8b76300778972f358946ab2b7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f2fcc21-b74c-0841-e019-d15e9e8b8e3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 693–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOpen.exists_contMDiff_support_eq_aux {s : Set H} (hs : IsOpen s) :
    ∃ f : H → ℝ, f.support = s ∧ CMDiff n f ∧ Set.range f ⊆ Set.Icc 0 1 := by
  have h's : IsOpen (I.symm ⁻¹' s) := I.continuous_symm.isOpen_preimage _ hs
  rcases h's.exists_contDiff_support_eq with ⟨f, f_supp, f_diff, f_range⟩
  refine ⟨f ∘ I, ?_, ?_, ?_⟩
  · rw [support_comp_eq_preimage, f_supp, ← preimage_comp]
    simp only [ModelWithCorners.symm_comp_self, preimage_id_eq, id_eq]
  · exact f_diff.comp_contMDiff I.contMDiff
  · exact Subset.trans (range_comp_subset_range _ _) f_range

/-- Given an open set in a finite-dimensional real manifold, there exists a nonnegative smooth
function with support equal to `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean#L693).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c803a8dde7798a7d126758430e4c7d5e2d933ed6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
