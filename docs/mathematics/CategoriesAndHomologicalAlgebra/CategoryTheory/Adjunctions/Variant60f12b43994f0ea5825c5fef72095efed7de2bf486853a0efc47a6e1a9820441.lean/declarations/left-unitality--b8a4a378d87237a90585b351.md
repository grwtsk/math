# left_unitality

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
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc908d43-7b36-f410-af92-bcf16858285c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffde6409-eedc-e591-ad70-0701d3a4d644",
  "kind": "theorem",
  "lexical_name": "left_unitality",
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
  "slug": "left-unitality--b8a4a378d87237a90585b351",
  "source": {
    "blob": "fdd94f25941f223acccf94315aa7738ab17b519f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8a4a378d87237a90585b351be73b7a12ed36850c196e737845b21b912891e67",
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

Occurrence: `result:ffde6409-eedc-e591-ad70-0701d3a4d644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem left_unitality (X : Type u) :
    (λ_ ((free R).obj X)).hom =
      (ε R ⊗ 𝟙 ((free R).obj X)) ≫ (μ R (𝟙_ (Type u)) X).hom ≫ map (free R).obj (λ_ X).hom := by
  intros
  -- Porting note: broken ext
  apply TensorProduct.ext
  apply LinearMap.ext_ring
  apply Finsupp.lhom_ext'
  intro x
  apply LinearMap.ext_ring
  apply Finsupp.ext
  intro x'
  -- Porting note: used to be dsimp [ε, μ]
  let q : X →₀ R := ((λ_ (of R (X →₀ R))).hom) (1 ⊗ₜ[R] Finsupp.single x 1)
  change q x' = Finsupp.mapDomain (λ_ X).hom (finsuppTensorFinsupp' R (𝟙_ (Type u)) X
    (Finsupp.single PUnit.unit 1 ⊗ₜ[R] Finsupp.single x 1)) x'
  simp_rw [finsuppTensorFinsupp'_single_tmul_single,
    ModuleCat.MonoidalCategory.leftUnitor_hom_apply, mul_one,
    Finsupp.mapDomain_single, CategoryTheory.leftUnitor_hom_apply, one_smul]
#align Module.free.left_unitality ModuleCat.Free.left_unitality

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdd94f25941f223acccf94315aa7738ab17b519f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
