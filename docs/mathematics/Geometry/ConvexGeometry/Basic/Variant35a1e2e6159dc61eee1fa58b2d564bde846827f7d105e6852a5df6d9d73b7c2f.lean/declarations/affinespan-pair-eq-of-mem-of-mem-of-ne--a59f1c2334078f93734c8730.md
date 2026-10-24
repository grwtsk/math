# affineSpan_pair_eq_of_mem_of_mem_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f3df658-d9c3-baa1-01f1-fd91e371ee1f",
  "kind": "lemma",
  "lexical_name": "affineSpan_pair_eq_of_mem_of_mem_of_ne",
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
  "slug": "affinespan-pair-eq-of-mem-of-mem-of-ne--a59f1c2334078f93734c8730",
  "source": {
    "blob": "8de1be405ca81df88563402e29d7e86c1fbd5f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1052,
    "line": 1031,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a59f1c2334078f93734c8730b6bc04f7062a354607e91dfe5d2a9ac0ec0cf107",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f3df658-d9c3-baa1-01f1-fd91e371ee1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1031–1052.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineSpan_pair_eq_of_mem_of_mem_of_ne {p₁ p₂ p₃ p₄ : P} (hp₁ : p₁ ∈ line[k, p₃, p₄])
    (hp₂ : p₂ ∈ line[k, p₃, p₄]) (hp₁₂ : p₁ ≠ p₂) : line[k, p₁, p₂] = line[k, p₃, p₄] := by
  refine le_antisymm (affineSpan_pair_le_of_mem_of_mem hp₁ hp₂) ?_
  rw [← vsub_vadd p₁ p₃, vadd_left_mem_affineSpan_pair] at hp₁
  rcases hp₁ with ⟨r₁, hp₁⟩
  rw [← vsub_vadd p₂ p₃, vadd_left_mem_affineSpan_pair] at hp₂
  rcases hp₂ with ⟨r₂, hp₂⟩
  have hr₀ : r₂ - r₁ ≠ 0 := by
    rw [sub_ne_zero]
    rintro rfl
    simp_all
  have hr : (r₂ - r₁) • (p₄ -ᵥ p₃) = p₂ -ᵥ p₁ := by
    simp [sub_smul, hp₁, hp₂]
  rw [← eq_inv_smul_iff₀ hr₀] at hr
  refine affineSpan_pair_le_of_mem_of_mem ?_ ?_
  · convert! smul_vsub_vadd_mem_affineSpan_pair (-r₁ * (r₂ - r₁)⁻¹) p₁ p₂
    simp [mul_smul, ← hr, hp₁]
  · convert! smul_vsub_vadd_mem_affineSpan_pair ((1 - r₁) * (r₂ - r₁)⁻¹) p₁ p₂
    simp [mul_smul, ← hr, sub_smul, hp₁]

/-- One line equals another differing in the first point if the first point of the first line is
contained in the second line and does not equal the second point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean#L1031).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de1be405ca81df88563402e29d7e86c1fbd5f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
