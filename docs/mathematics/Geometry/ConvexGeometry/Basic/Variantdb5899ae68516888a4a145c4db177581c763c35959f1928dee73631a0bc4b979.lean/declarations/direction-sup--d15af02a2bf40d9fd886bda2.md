# direction_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a77c46d9fd3c0a1f786a861aa9687a5198caf1d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 445,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87bf1bd7-a6d8-3af9-411f-a4931fda54e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10b5c87a-20cf-e9c3-2b06-99fd61b96fdb",
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
  "slug": "direction-sup--d15af02a2bf40d9fd886bda2",
  "source": {
    "blob": "a77c46d9fd3c0a1f786a861aa9687a5198caf1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 445,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d15af02a2bf40d9fd886bda2bdf9daedc17b77342c99ebef014a86a432abcd8e",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10b5c87a-20cf-e9c3-2b06-99fd61b96fdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem direction_sup {s₁ s₂ : AffineSubspace k P} {p₁ p₂ : P} (hp₁ : p₁ ∈ s₁) (hp₂ : p₂ ∈ s₂) :
    (s₁ ⊔ s₂).direction = s₁.direction ⊔ s₂.direction ⊔ k ∙ (p₂ -ᵥ p₁) := by
  refine le_antisymm ?_ ?_
  · change (affineSpan k ((s₁ : Set P) ∪ s₂)).direction ≤ _
    rw [← mem_coe] at hp₁
    rw [direction_affineSpan, vectorSpan_eq_span_vsub_set_right k (Set.mem_union_left _ hp₁),
      Submodule.span_le]
    rintro v ⟨p₃, hp₃, rfl⟩
    rcases hp₃ with hp₃ | hp₃
    · rw [sup_assoc, sup_comm, SetLike.mem_coe, Submodule.mem_sup]
      use 0, Submodule.zero_mem _, p₃ -ᵥ p₁, vsub_mem_direction hp₃ hp₁
      rw [zero_add]
    · rw [sup_assoc, SetLike.mem_coe, Submodule.mem_sup]
      use 0, Submodule.zero_mem _, p₃ -ᵥ p₁
      rw [and_comm, zero_add]
      use rfl
      rw [← vsub_add_vsub_cancel p₃ p₂ p₁, Submodule.mem_sup]
      use p₃ -ᵥ p₂, vsub_mem_direction hp₃ hp₂, p₂ -ᵥ p₁, Submodule.mem_span_singleton_self _
  · refine sup_le (sup_direction_le _ _) ?_
    rw [direction_eq_vectorSpan, vectorSpan_def]
    exact
      sInf_le_sInf fun p hp =>
        Set.Subset.trans
          (Set.singleton_subset_iff.2
            (vsub_mem_vsub (mem_affineSpan k (Set.mem_union_right _ hp₂))
              (mem_affineSpan k (Set.mem_union_left _ hp₁))))
          hp

/-- The direction of the sup of two affine subspaces with a common point is the sup of the two
directions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a77c46d9fd3c0a1f786a861aa9687a5198caf1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
