# exists_eq_smul_of_parallel

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
      "line": 1059,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fbc7b87-da78-d004-5f84-c47bd6e2a9e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f0f3401-6ec1-7a3f-3ceb-117d321dc7b3",
  "kind": "theorem",
  "lexical_name": "exists_eq_smul_of_parallel",
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
  "slug": "exists-eq-smul-of-parallel--a5452b7ad3dd462ec1134865",
  "source": {
    "blob": "a77c46d9fd3c0a1f786a861aa9687a5198caf1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1088,
    "line": 1059,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5452b7ad3dd462ec11348654234f78aca1e959d78d4ecdf368e9d1f93e51355",
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

Occurrence: `result:1f0f3401-6ec1-7a3f-3ceb-117d321dc7b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1059–1088.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_smul_of_parallel {p₁ p₂ p₃ p₄ p₅ p₆ : P} (h₂ : p₂ ∉ line[k, p₁, p₃])
    (h₁₂₄₅ : line[k, p₁, p₂] ∥ line[k, p₄, p₅])
    (h₂₃₅₆ : line[k, p₅, p₆].direction ≤ line[k, p₂, p₃].direction)
    (h₃₁₆₄ : line[k, p₆, p₄].direction ≤ line[k, p₃, p₁].direction) :
    ∃ r : k, r ≠ 0 ∧ p₅ -ᵥ p₄ = r • (p₂ -ᵥ p₁) ∧ p₆ -ᵥ p₅ = r • (p₃ -ᵥ p₂) ∧
      p₄ -ᵥ p₆ = r • (p₁ -ᵥ p₃) := by
  rw [affineSpan_pair_parallel_iff_exists_unit_smul'] at h₁₂₄₅
  rw [direction_affineSpan_pair_le_iff_exists_smul] at h₂₃₅₆ h₃₁₆₄
  obtain ⟨r₁, hr₁⟩ := h₁₂₄₅
  obtain ⟨r₂, hr₂⟩ := h₂₃₅₆
  obtain ⟨r₃, hr₃⟩ := h₃₁₆₄
  rw [Units.smul_def] at hr₁
  by_cases h : (r₁ : k) = r₂
  · refine ⟨r₁, r₁.ne_zero, hr₁.symm, h ▸ hr₂.symm, ?_⟩
    rw [← neg_inj, neg_vsub_eq_vsub_rev, ← smul_neg, neg_vsub_eq_vsub_rev,
      ← vsub_add_vsub_cancel p₆ p₅ p₄, ← vsub_add_vsub_cancel p₃ p₂ p₁, smul_add, hr₁, h, hr₂]
  · exfalso
    have h₁₂ : (r₁ : k) • (p₂ -ᵥ p₁) + r₂ • (p₃ -ᵥ p₂) ∈ vectorSpan k {p₁, p₃} := by
      rw [hr₁, hr₂, add_comm, vsub_add_vsub_cancel, ← neg_vsub_eq_vsub_rev, neg_mem_iff, ← hr₃]
      exact smul_vsub_mem_vectorSpan_pair _ _ _
    have h₁₁ : (r₁ : k) • (p₂ -ᵥ p₁) + (r₁ : k) • (p₃ -ᵥ p₂) ∈ vectorSpan k {p₁, p₃} := by
      rw [add_comm, ← smul_add, vsub_add_vsub_cancel]
      exact smul_vsub_rev_mem_vectorSpan_pair _ _ _
    have h₂₁ : (r₂ - r₁) • (p₃ -ᵥ p₂) ∈ vectorSpan k {p₁, p₃} := by
      simpa [sub_smul] using sub_mem h₁₂ h₁₁
    rw [Submodule.smul_mem_iff _ (by rwa [sub_ne_zero, ne_comm]), ← direction_affineSpan,
      vsub_left_mem_direction_iff_mem (right_mem_affineSpan_pair _ _ _)] at h₂₁
    exact h₂ h₂₁

end DivisionRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean#L1059).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a77c46d9fd3c0a1f786a861aa9687a5198caf1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
