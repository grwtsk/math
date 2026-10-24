# dCokernelSequence_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4115996232a6baa36e5c092bea8bf2b7ae7e0fbe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03167c3c-cdf9-d685-63e6-524111b5d0d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2f03edf-e901-8481-0927-432e4ae5dc90",
  "kind": "lemma",
  "lexical_name": "dCokernelSequence_exact",
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
  "slug": "dcokernelsequence-exact--a6db69414c517f37367ed124",
  "source": {
    "blob": "4115996232a6baa36e5c092bea8bf2b7ae7e0fbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6db69414c517f37367ed124603f927775d51eb665710e5ccec63f32032d4f16",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f03edf-e901-8481-0927-432e4ae5dc90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dCokernelSequence_exact
    (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) (hn₃ : n₂ + 1 = n₃ := by lia) :
    (X.dCokernelSequence f₁ f₂ f₃ f₄ f₅ f₃₄ h₃₄ n₀ n₁ n₂ n₃).Exact := by
  rw [ShortComplex.exact_iff_exact_up_to_refinements]
  intro A x₂ hx₂
  dsimp at hx₂ ⊢
  have hx₂' := hx₂ =≫ X.ιE ..
  rw [assoc, zero_comp, X.map_ιE f₁ f₂ f₃ f₁ f₂ f₃₄ (fourδ₄Toδ₃ f₁ f₂ f₃ f₄ f₃₄)
    (threeδ₃Toδ₂ f₂ f₃ f₄ f₃₄) n₁ n₂ n₃] at hx₂'
  obtain ⟨A₁, π₁, _, x₁, hx₁⟩ :=
    ((X.sequenceΨ_exact f₂ f₃ f₄ _ rfl f₃₄ h₃₄ n₁ n₂).exact 1).exact_up_to_refinements
      (x₂ ≫ X.ιE ..) (by simp [sequenceΨ, Precomp.map, hx₂'])
  dsimp [sequenceΨ, Precomp.map] at hx₁
  refine ⟨A₁, π₁, inferInstance, x₁ ≫ X.πE f₃ f₄ f₅ n₀ n₁ n₂, ?_⟩
  rw [← cancel_mono (X.ιE ..), assoc, assoc, assoc, hx₁, πE_d_ιE ..]

/-- The exact sequence expressing `E^n(f₂ ≫ f₃, f₄, f₅)` as the kernel
of the differential `E^n(f₃, f₄, f₅) ⟶ E^{n+1}(f₁, f₂, f₃)` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant55c5b91a33845c9303a6d8439002e59d50f78e43c5f77be5375d110c1470360c.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4115996232a6baa36e5c092bea8bf2b7ae7e0fbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
