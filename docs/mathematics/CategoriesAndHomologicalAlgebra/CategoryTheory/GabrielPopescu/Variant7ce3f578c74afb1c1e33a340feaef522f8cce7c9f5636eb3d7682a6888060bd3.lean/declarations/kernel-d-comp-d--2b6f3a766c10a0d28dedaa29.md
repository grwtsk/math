# kernel_ι_d_comp_d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fca6aff0f68fb1457332ff9a3ec2ebeff6a73e8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e15cf6a-a5e7-9fab-7ed4-eae99f7f183a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa00b77a-3dac-07aa-a77b-a164da9736a0",
  "kind": "theorem",
  "lexical_name": "kernel_ι_d_comp_d",
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
  "slug": "kernel-d-comp-d--2b6f3a766c10a0d28dedaa29",
  "source": {
    "blob": "fca6aff0f68fb1457332ff9a3ec2ebeff6a73e8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b6f3a766c10a0d28dedaa29f17978941c7cfffc7057fbb823ad8db3be62c9fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa00b77a-3dac-07aa-a77b-a164da9736a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_ι_d_comp_d {G : C} (hG : IsSeparator G) {A B : C} {M : ModuleCat (End G)ᵐᵒᵖ}
    (g : M ⟶ ModuleCat.of (End G)ᵐᵒᵖ (G ⟶ A)) (hg : Mono g)
    (f : M ⟶ ModuleCat.of (End G)ᵐᵒᵖ (G ⟶ B)) :
    kernel.ι (d g) ≫ d f = 0 := by
  refine (isColimitFiniteSubproductsCocone (fun (_ : M) => G)).pullback_zero_ext (fun F => ?_)
  dsimp only [liftToFinsetObj_obj, Discrete.functor_obj_eq_as, finiteSubcoproductsCocone_pt,
    Functor.const_obj_obj]
  classical
  rw [finiteSubcoproductsCocone_ι_app_eq_sum, ← pullback.condition_assoc]
  refine (Preadditive.isSeparator_iff G).1 hG _ (fun h => ?_)
  rw [Preadditive.comp_sum_assoc, Preadditive.comp_sum_assoc, Preadditive.sum_comp]
  simp only [Category.assoc, ι_d]
  let r (x : F) : (End G)ᵐᵒᵖ := MulOpposite.op (h ≫ pullback.fst _ _ ≫ Sigma.π _ x)
  suffices ∑ x ∈ F.attach, r x • f.hom x.1.as = 0 by simpa [End.smul_left, r] using this
  simp only [← LinearMap.map_smul, ← map_sum]
  suffices ∑ x ∈ F.attach, r x • x.1.as = 0 by simp [this]
  simp only [← g.hom.map_eq_zero_iff ((ModuleCat.mono_iff_injective _).1 hg), map_sum, map_smul]
  simp only [← ι_d g, End.smul_left, MulOpposite.unop_op, Category.assoc, r]
  simp [← Preadditive.comp_sum, ← Preadditive.sum_comp', pullback.condition_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca6aff0f68fb1457332ff9a3ec2ebeff6a73e8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
