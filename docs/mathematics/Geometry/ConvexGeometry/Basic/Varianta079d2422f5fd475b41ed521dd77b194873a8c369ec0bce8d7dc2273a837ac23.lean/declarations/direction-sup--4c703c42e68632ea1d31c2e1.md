# direction_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c938fe73d2fb879b088149edf36b2f75c1e848f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37784c07-f571-4ea1-5e20-3b3830c51c41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b8092c2-dc57-21de-c663-55fd2c79162d",
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
  "slug": "direction-sup--4c703c42e68632ea1d31c2e1",
  "source": {
    "blob": "c938fe73d2fb879b088149edf36b2f75c1e848f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 420,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c703c42e68632ea1d31c2e1d30d270f1ea38b7eec44bbb029990f7458e21a87",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b8092c2-dc57-21de-c663-55fd2c79162d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem direction_sup {s₁ s₂ : AffineSubspace k P} {p₁ p₂ : P} (hp₁ : p₁ ∈ s₁) (hp₂ : p₂ ∈ s₂) :
    (s₁ ⊔ s₂).direction = s₁.direction ⊔ s₂.direction ⊔ k ∙ p₂ -ᵥ p₁ := by
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

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Varianta079d2422f5fd475b41ed521dd77b194873a8c369ec0bce8d7dc2273a837ac23.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c938fe73d2fb879b088149edf36b2f75c1e848f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
