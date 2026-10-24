# direction_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfa37fec91ccf232a951e4526b4d13d6283bc3fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8776d26-9d85-e61b-5025-0fdcc3b49d01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cf9a5a0-53a7-35a8-4e00-7bc61efad644",
  "kind": "theorem",
  "lexical_name": "direction_sup",
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
  "slug": "direction-sup--ac93f4914b1fc740360745e2",
  "source": {
    "blob": "bfa37fec91ccf232a951e4526b4d13d6283bc3fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1458,
    "line": 1427,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac93f4914b1fc740360745e2ecdf4e6177b1316a47ad30dee4279d2a382f1432",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cf9a5a0-53a7-35a8-4e00-7bc61efad644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1427–1458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem direction_sup {s1 s2 : AffineSubspace k P} {p1 p2 : P} (hp1 : p1 ∈ s1) (hp2 : p2 ∈ s2) :
    (s1 ⊔ s2).direction = s1.direction ⊔ s2.direction ⊔ k ∙ p2 -ᵥ p1 := by
  refine' le_antisymm _ _
  · change (affineSpan k ((s1 : Set P) ∪ s2)).direction ≤ _
    rw [← mem_coe] at hp1
    rw [direction_affineSpan, vectorSpan_eq_span_vsub_set_right k (Set.mem_union_left _ hp1),
      Submodule.span_le]
    rintro v ⟨p3, hp3, rfl⟩
    cases' hp3 with hp3 hp3
    · rw [sup_assoc, sup_comm, SetLike.mem_coe, Submodule.mem_sup]
      use 0, Submodule.zero_mem _, p3 -ᵥ p1, vsub_mem_direction hp3 hp1
      rw [zero_add]
    · rw [sup_assoc, SetLike.mem_coe, Submodule.mem_sup]
      use 0, Submodule.zero_mem _, p3 -ᵥ p1
      rw [and_comm, zero_add]
      use rfl
      rw [← vsub_add_vsub_cancel p3 p2 p1, Submodule.mem_sup]
      use p3 -ᵥ p2, vsub_mem_direction hp3 hp2, p2 -ᵥ p1, Submodule.mem_span_singleton_self _
  · refine' sup_le (sup_direction_le _ _) _
    rw [direction_eq_vectorSpan, vectorSpan_def]
    exact
      sInf_le_sInf fun p hp =>
        Set.Subset.trans
          (Set.singleton_subset_iff.2
            (vsub_mem_vsub (mem_spanPoints k p2 _ (Set.mem_union_right _ hp2))
              (mem_spanPoints k p1 _ (Set.mem_union_left _ hp1))))
          hp
#align affine_subspace.direction_sup AffineSubspace.direction_sup

/-- The direction of the span of the result of adding a point to a nonempty affine subspace is the
sup of the direction of that subspace and of any one difference between that point and a point in
the subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean#L1427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa37fec91ccf232a951e4526b4d13d6283bc3fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
