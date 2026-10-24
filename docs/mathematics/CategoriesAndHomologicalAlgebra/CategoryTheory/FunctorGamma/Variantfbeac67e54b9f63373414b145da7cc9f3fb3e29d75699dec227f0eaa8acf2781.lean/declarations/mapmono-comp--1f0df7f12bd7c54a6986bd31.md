# mapMono_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d6f1980de826aaa4c0fb455b856291f83d2a0c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbeac67e54b9f63373414b145da7cc9f3fb3e29d75699dec227f0eaa8acf2781.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d152297-ebf9-6f06-d656-ddc1fbed7584",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ff15cd3-d24e-668e-f592-f504f428f353",
  "kind": "theorem",
  "lexical_name": "mapMono_comp",
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
  "slug": "mapmono-comp--1f0df7f12bd7c54a6986bd31",
  "source": {
    "blob": "8d6f1980de826aaa4c0fb455b856291f83d2a0c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfbeac67e54b9f63373414b145da7cc9f3fb3e29d75699dec227f0eaa8acf2781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f0df7f12bd7c54a6986bd31d07a938f09e83b0c29b69e0bef7e17d4f050b8df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfbeac67e54b9f63373414b145da7cc9f3fb3e29d75699dec227f0eaa8acf2781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ff15cd3-d24e-668e-f592-f504f428f353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapMono_comp (i' : Δ'' ⟶ Δ') (i : Δ' ⟶ Δ) [Mono i'] [Mono i] :
    mapMono K i ≫ mapMono K i' = mapMono K (i' ≫ i) := by
  -- case where i : Δ' ⟶ Δ is the identity
  by_cases h₁ : Δ = Δ'
  · subst h₁
    simp only [SimplexCategory.eq_id_of_mono i, comp_id, id_comp, mapMono_id K]
  -- case where i' : Δ'' ⟶ Δ' is the identity
  by_cases h₂ : Δ' = Δ''
  · subst h₂
    simp only [SimplexCategory.eq_id_of_mono i', comp_id, id_comp, mapMono_id K]
  -- then the RHS is always zero
  obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_lt (len_lt_of_mono i h₁)
  obtain ⟨k', hk'⟩ := Nat.exists_eq_add_of_lt (len_lt_of_mono i' h₂)
  have eq : Δ.len = Δ''.len + (k + k' + 2) := by lia
  rw [mapMono_eq_zero K (i' ≫ i) _ _]; rotate_left
  · by_contra h
    simp only [left_eq_add, h, add_eq_zero, and_false, reduceCtorEq] at eq
  · by_contra h
    simp only [h.1, add_right_inj] at eq
    lia
  -- in all cases, the LHS is also zero, either by definition, or because d ≫ d = 0
  by_cases h₃ : Isδ₀ i
  · by_cases h₄ : Isδ₀ i'
    · rw [mapMono_δ₀' K i h₃, mapMono_δ₀' K i' h₄, HomologicalComplex.d_comp_d]
    · simp only [mapMono_eq_zero K i' h₂ h₄, comp_zero]
  · simp only [mapMono_eq_zero K i h₁ h₃, zero_comp]

end Termwise

variable [HasFiniteCoproducts C]

/-- The simplicial morphism on the simplicial object `Γ₀.obj K` induced by
a morphism `Δ' → Δ` in `SimplexCategory` is defined on each summand
associated to an `A : Splitting.IndexSet Δ` in terms of the epi-mono factorisation
of `θ ≫ A.e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfbeac67e54b9f63373414b145da7cc9f3fb3e29d75699dec227f0eaa8acf2781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfbeac67e54b9f63373414b145da7cc9f3fb3e29d75699dec227f0eaa8acf2781.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6f1980de826aaa4c0fb455b856291f83d2a0c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
