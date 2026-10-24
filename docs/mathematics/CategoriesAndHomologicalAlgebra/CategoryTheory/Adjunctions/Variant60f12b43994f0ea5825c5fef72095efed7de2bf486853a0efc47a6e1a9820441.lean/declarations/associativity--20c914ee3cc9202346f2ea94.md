# associativity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdd94f25941f223acccf94315aa7738ab17b519f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c99f74ea-17cc-aad8-f596-c49def2c1f8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:046bb71e-1166-de55-728a-9929bd180225",
  "kind": "theorem",
  "lexical_name": "associativity",
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
  "slug": "associativity--20c914ee3cc9202346f2ea94",
  "source": {
    "blob": "fdd94f25941f223acccf94315aa7738ab17b519f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20c914ee3cc9202346f2ea9430f32dfb0192c4c07d45f387d4f4b0cc67a24285",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:046bb71e-1166-de55-728a-9929bd180225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associativity (X Y Z : Type u) :
    ((μ R X Y).hom ⊗ 𝟙 ((free R).obj Z)) ≫ (μ R (X ⊗ Y) Z).hom ≫ map (free R).obj (α_ X Y Z).hom =
      (α_ ((free R).obj X) ((free R).obj Y) ((free R).obj Z)).hom ≫
        (𝟙 ((free R).obj X) ⊗ (μ R Y Z).hom) ≫ (μ R X (Y ⊗ Z)).hom := by
  intros
  -- Porting note: broken ext
  apply TensorProduct.ext
  apply TensorProduct.ext
  apply Finsupp.lhom_ext'
  intro x
  apply LinearMap.ext_ring
  apply Finsupp.lhom_ext'
  intro y
  apply LinearMap.ext_ring
  apply Finsupp.lhom_ext'
  intro z
  apply LinearMap.ext_ring
  apply Finsupp.ext
  intro a
  -- Porting note: used to be dsimp [μ]
  change Finsupp.mapDomain (α_ X Y Z).hom (finsuppTensorFinsupp' R (X ⊗ Y) Z
    (finsuppTensorFinsupp' R X Y
    (Finsupp.single x 1 ⊗ₜ[R] Finsupp.single y 1) ⊗ₜ[R] Finsupp.single z 1)) a =
    finsuppTensorFinsupp' R X (Y ⊗ Z)
    (Finsupp.single x 1 ⊗ₜ[R]
      finsuppTensorFinsupp' R Y Z (Finsupp.single y 1 ⊗ₜ[R] Finsupp.single z 1)) a
  simp_rw [finsuppTensorFinsupp'_single_tmul_single, Finsupp.mapDomain_single, mul_one,
    CategoryTheory.associator_hom_apply]
#align Module.free.associativity ModuleCat.Free.associativity

-- In fact, it's strong monoidal, but we don't yet have a typeclass for that.
/-- The free R-module functor is lax monoidal. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdd94f25941f223acccf94315aa7738ab17b519f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
