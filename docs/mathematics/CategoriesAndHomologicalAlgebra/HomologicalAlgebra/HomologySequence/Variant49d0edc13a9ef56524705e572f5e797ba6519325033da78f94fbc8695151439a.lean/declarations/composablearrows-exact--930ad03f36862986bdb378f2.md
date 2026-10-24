# composableArrows₃_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c1f7c810ab91d41268aa5c5cf3f498c5215a687",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9b1c46f-e4c1-82a1-7060-ff5e4af6bfd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:494289e3-eaa2-615e-d105-ee30d74163dc",
  "kind": "lemma",
  "lexical_name": "composableArrows₃_exact",
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
  "slug": "composablearrows-exact--930ad03f36862986bdb378f2",
  "source": {
    "blob": "3c1f7c810ab91d41268aa5c5cf3f498c5215a687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:930ad03f36862986bdb378f210d87f57d73ef008904b9c2c17eb24d31591648f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:494289e3-eaa2-615e-d105-ee30d74163dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma composableArrows₃_exact [CategoryWithHomology C] :
    (composableArrows₃ K i j).Exact := by
  let S := ShortComplex.mk (K.homologyι i) (K.opcyclesToCycles i j) (by simp)
  let S' := ShortComplex.mk (K.homologyι i) (K.fromOpcycles i j) (by simp)
  let ι : S ⟶ S' :=
    { τ₁ := 𝟙 _
      τ₂ := 𝟙 _
      τ₃ := K.iCycles j }
  have hS : S.Exact := by
    rw [ShortComplex.exact_iff_of_epi_of_isIso_of_mono ι]
    exact S'.exact_of_f_is_kernel (K.homologyIsKernel i j (c.next_eq' hij))
  let T := ShortComplex.mk (K.opcyclesToCycles i j) (K.homologyπ j) (by simp)
  let T' := ShortComplex.mk (K.toCycles i j) (K.homologyπ j) (by simp)
  let π : T' ⟶ T :=
    { τ₁ := K.pOpcycles i
      τ₂ := 𝟙 _
      τ₃ := 𝟙 _ }
  have hT : T.Exact := by
    rw [← ShortComplex.exact_iff_of_epi_of_isIso_of_mono π]
    exact T'.exact_of_g_is_cokernel (K.homologyIsCokernel i j (c.prev_eq' hij))
  apply ComposableArrows.exact_of_δ₀
  · exact hS.exact_toComposableArrows
  · exact hT.exact_toComposableArrows

variable (C)

attribute [local simp] homologyMap_comp cyclesMap_comp opcyclesMap_comp

set_option backward.defeqAttrib.useBackward true in
/-- The functor `HomologicalComplex C c ⥤ ComposableArrows C 3` that maps `K` to the
diagram `K.homology i ⟶ K.opcycles i ⟶ K.cycles j ⟶ K.homology j`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1f7c810ab91d41268aa5c5cf3f498c5215a687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
