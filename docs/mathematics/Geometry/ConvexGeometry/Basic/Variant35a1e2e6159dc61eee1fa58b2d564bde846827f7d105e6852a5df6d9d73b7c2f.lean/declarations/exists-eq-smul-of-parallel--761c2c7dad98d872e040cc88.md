# exists_eq_smul_of_parallel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44d41760-b7d5-bd1e-91f4-5ab624a6089c",
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
  "slug": "exists-eq-smul-of-parallel--761c2c7dad98d872e040cc88",
  "source": {
    "blob": "8de1be405ca81df88563402e29d7e86c1fbd5f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1096,
    "line": 1067,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:761c2c7dad98d872e040cc881dbecd86f98c65906f2c87f5b35fa23621a63959",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44d41760-b7d5-bd1e-91f4-5ab624a6089c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1067–1096.

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

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean#L1067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de1be405ca81df88563402e29d7e86c1fbd5f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
