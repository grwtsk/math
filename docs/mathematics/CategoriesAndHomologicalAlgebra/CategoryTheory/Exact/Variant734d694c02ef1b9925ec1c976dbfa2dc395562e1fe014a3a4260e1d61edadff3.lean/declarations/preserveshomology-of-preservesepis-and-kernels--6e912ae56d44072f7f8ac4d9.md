# preservesHomology_of_preservesEpis_and_kernels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2115bb821b1fd56d3d72fda6a355f46de649f7c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a63db5ff-88a1-5898-cdbf-8df5078a15f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fbb746e-c622-bea2-e550-245487fa7c6f",
  "kind": "lemma",
  "lexical_name": "preservesHomology_of_preservesEpis_and_kernels",
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
  "slug": "preserveshomology-of-preservesepis-and-kernels--6e912ae56d44072f7f8ac4d9",
  "source": {
    "blob": "2115bb821b1fd56d3d72fda6a355f46de649f7c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 286,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e912ae56d44072f7f8ac4d9d938376a70954da12f6d875e545a797a98a3327b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fbb746e-c622-bea2-e550-245487fa7c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesHomology_of_preservesEpis_and_kernels [PreservesZeroMorphisms L]
    [PreservesEpimorphisms L] [∀ {X Y} (f : X ⟶ Y), PreservesLimit (parallelPair f 0) L] :
    PreservesHomology L := by
  apply preservesHomology_of_map_exact
  intro S hS
  let φ : S.map L ⟶ (ShortComplex.mk _ _ (Abelian.image_ι_comp_eq_zero S.zero)).map L :=
    { τ₁ := L.map (Abelian.factorThruImage S.f)
      τ₂ := 𝟙 _
      τ₃ := 𝟙 _
      comm₁₂ := by
        dsimp
        rw [Category.comp_id, ← L.map_comp, kernel.lift_ι] }
  apply (ShortComplex.exact_iff_of_epi_of_isIso_of_mono φ).2
  apply ShortComplex.exact_of_f_is_kernel
  exact KernelFork.mapIsLimit _ ((S.exact_iff_exact_image_ι).1 hS).fIsKernel L

end

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant734d694c02ef1b9925ec1c976dbfa2dc395562e1fe014a3a4260e1d61edadff3.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2115bb821b1fd56d3d72fda6a355f46de649f7c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
