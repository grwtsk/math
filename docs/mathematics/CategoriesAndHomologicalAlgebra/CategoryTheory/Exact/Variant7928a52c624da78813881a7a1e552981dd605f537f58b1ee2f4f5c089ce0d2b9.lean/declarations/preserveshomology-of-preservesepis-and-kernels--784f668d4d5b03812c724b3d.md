# preservesHomology_of_preservesEpis_and_kernels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec6dd8ef-2a72-b533-26ec-53b274f65aa4",
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
  "slug": "preserveshomology-of-preservesepis-and-kernels--784f668d4d5b03812c724b3d",
  "source": {
    "blob": "b00c4ce2d0f5a6ffbf5c0778331fb842f1d1d623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 317,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:784f668d4d5b03812c724b3da96d2ab471559ba38f2345297aba3431f9df6f79",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec6dd8ef-2a72-b533-26ec-53b274f65aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–337.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00c4ce2d0f5a6ffbf5c0778331fb842f1d1d623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
