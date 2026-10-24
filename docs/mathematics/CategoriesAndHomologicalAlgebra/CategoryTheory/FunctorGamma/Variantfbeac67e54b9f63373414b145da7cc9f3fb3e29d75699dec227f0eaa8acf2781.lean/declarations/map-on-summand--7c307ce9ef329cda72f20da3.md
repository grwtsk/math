# map_on_summand₀

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
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbeac67e54b9f63373414b145da7cc9f3fb3e29d75699dec227f0eaa8acf2781.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:445603e2-959c-6592-abfb-15d6bb4e63fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c0acb0a-7bad-cbe6-46ab-8d95bb5db217",
  "kind": "theorem",
  "lexical_name": "map_on_summand₀",
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
  "slug": "map-on-summand--7c307ce9ef329cda72f20da3",
  "source": {
    "blob": "8d6f1980de826aaa4c0fb455b856291f83d2a0c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfbeac67e54b9f63373414b145da7cc9f3fb3e29d75699dec227f0eaa8acf2781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c307ce9ef329cda72f20da3751ef57df8b7948c8fa659053e95e6b0ccef22ed",
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

Occurrence: `result:8c0acb0a-7bad-cbe6-46ab-8d95bb5db217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_on_summand₀ {Δ Δ' : SimplexCategoryᵒᵖ} (A : Splitting.IndexSet Δ) {θ : Δ ⟶ Δ'}
    {Δ'' : SimplexCategory} {e : Δ'.unop ⟶ Δ''} {i : Δ'' ⟶ A.1.unop} [Epi e] [Mono i]
    (fac : e ≫ i = θ.unop ≫ A.e) :
    Sigma.ι (summand K Δ) A ≫ map K θ =
      Termwise.mapMono K i ≫ Sigma.ι (summand K Δ') (Splitting.IndexSet.mk e) := by
  simp only [map, colimit.ι_desc, Cofan.mk_ι_app]
  obtain rfl := SimplexCategory.image_eq fac
  congr
  · exact SimplexCategory.image_ι_eq fac
  · dsimp only [SimplicialObject.Splitting.IndexSet.pull]
    congr
    exact SimplexCategory.factorThruImage_eq fac

set_option backward.isDefEq.respectTransparency false in -- This is needed below
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfbeac67e54b9f63373414b145da7cc9f3fb3e29d75699dec227f0eaa8acf2781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfbeac67e54b9f63373414b145da7cc9f3fb3e29d75699dec227f0eaa8acf2781.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6f1980de826aaa4c0fb455b856291f83d2a0c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
