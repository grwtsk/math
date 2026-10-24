# D₂_totalShift₂XIso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d91aa6f4ce8e18edc862d3e7dbe896edd414046",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eefac32a-06df-37c2-dc83-8928b5490977",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c10af15-1d55-6053-0f6e-db3efee5274a",
  "kind": "lemma",
  "lexical_name": "D₂_totalShift₂XIso_hom",
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
  "slug": "d-totalshift-xiso-hom--5ed3954ed148260f219073ef",
  "source": {
    "blob": "2d91aa6f4ce8e18edc862d3e7dbe896edd414046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 271,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ed3954ed148260f219073efc8c96db110dc92fa214c9d9f90c76daa22f22cac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c10af15-1d55-6053-0f6e-db3efee5274a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma D₂_totalShift₂XIso_hom (n₀ n₁ n₀' n₁' : ℤ) (h₀ : n₀ + y = n₀') (h₁ : n₁ + y = n₁') :
    ((shiftFunctor₂ C y).obj K).D₂ (up ℤ) n₀ n₁ ≫ (K.totalShift₂XIso y n₁ n₁' h₁).hom =
      y.negOnePow • ((K.totalShift₂XIso y n₀ n₀' h₀).hom ≫ K.D₂ (up ℤ) n₀' n₁') := by
  by_cases h : (up ℤ).Rel n₀ n₁
  · apply total.hom_ext
    intro p q hpq
    dsimp at h hpq
    dsimp [totalShift₂XIso]
    rw [ι_D₂_assoc, Linear.comp_units_smul, ι_totalDesc_assoc, Linear.units_smul_comp,
      smul_smul, ι_D₂, ((shiftFunctor₂ C y).obj K).d₂_eq _ _ rfl _ (by dsimp; omega),
      K.d₂_eq _ _ (show q + y + 1 = q + 1 + y by omega) _ (by dsimp; omega),
      Linear.units_smul_comp, Category.assoc, smul_smul, ι_totalDesc]
    dsimp
    rw [Linear.units_smul_comp, Linear.comp_units_smul, smul_smul, smul_smul,
      ← Int.negOnePow_add, ← Int.negOnePow_add, ← Int.negOnePow_add,
      ← Int.negOnePow_add]
    congr 2
    omega
  · rw [D₂_shape _ _ _ _ h, zero_comp, D₂_shape, comp_zero, smul_zero]
    intro h'
    apply h
    dsimp at h' ⊢
    omega

/-- The isomorphism `((shiftFunctor₂ C y).obj K).total (up ℤ) ≅ (K.total (up ℤ))⟦y⟧`
expressing the compatibility of the total complex with the shift on the second indices.
This isomorphism involves signs: on the summand in degree `(p, q)` of `K`, it is given by the
multiplication by `(p * y).negOnePow`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d91aa6f4ce8e18edc862d3e7dbe896edd414046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
