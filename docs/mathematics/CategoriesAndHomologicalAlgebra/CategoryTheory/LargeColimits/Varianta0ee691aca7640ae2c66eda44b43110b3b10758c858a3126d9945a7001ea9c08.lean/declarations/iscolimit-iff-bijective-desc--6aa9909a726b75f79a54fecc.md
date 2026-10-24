# isColimit_iff_bijective_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2597e808e08ad4135daacb9e7a9ccc8986db9f64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0ee691aca7640ae2c66eda44b43110b3b10758c858a3126d9945a7001ea9c08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bde9ed6-8fae-5c98-fe95-527956a7be9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbbdf5ce-3d24-33f0-cc39-81cdbe859572",
  "kind": "lemma",
  "lexical_name": "isColimit_iff_bijective_desc",
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
  "slug": "iscolimit-iff-bijective-desc--6aa9909a726b75f79a54fecc",
  "source": {
    "blob": "2597e808e08ad4135daacb9e7a9ccc8986db9f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 33,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Varianta0ee691aca7640ae2c66eda44b43110b3b10758c858a3126d9945a7001ea9c08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aa9909a726b75f79a54fecc9a80ec5aa0391552d2938a308888a1120e698f6b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Varianta0ee691aca7640ae2c66eda44b43110b3b10758c858a3126d9945a7001ea9c08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbbdf5ce-3d24-33f0-cc39-81cdbe859572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isColimit_iff_bijective_desc [DecidableEq J] :
     Nonempty (IsColimit c) ↔ Function.Bijective (Quot.desc F c) := by
  refine ⟨fun ⟨hc⟩ => ?_, fun h ↦ Nonempty.intro (isColimit_of_bijective_desc F c h)⟩
  change Function.Bijective (Quot.desc F c).toIntLinearMap
  rw [← CharacterModule.dual_bijective_iff_bijective]
  refine ⟨fun χ ψ eq ↦ ?_, fun χ ↦ ?_⟩
  · apply (AddMonoidHom.postcompEquiv (@AddEquiv.ulift (AddCircle (1 : ℚ)) _).symm _).injective
    apply ofHom_injective
    refine hc.hom_ext (fun j ↦ ?_)
    ext x
    rw [ConcreteCategory.comp_apply, ConcreteCategory.comp_apply, ← Quot.ι_desc _ c j x]
    simp only [hom_ofHom, AddMonoidHom.postcompEquiv_apply, AddMonoidHom.comp_apply]
    exact DFunLike.congr_fun eq (Quot.ι F j x)
  · set c' : Cocone F :=
      { pt := AddCommGrp.of (ULift (AddCircle (1 : ℚ)))
        ι :=
          { app j := AddCommGrp.ofHom (((@AddEquiv.ulift _ _).symm.toAddMonoidHom.comp χ).comp
                       (Quot.ι F j))
            naturality {j j'} u := by
              ext
              dsimp
              rw [Quot.map_ι F (f := u)] } }
    use AddEquiv.ulift.toAddMonoidHom.comp (hc.desc c').hom
    refine Quot.addMonoidHom_ext _ (fun j x ↦ ?_)
    dsimp
    rw [Quot.ι_desc]
    change AddEquiv.ulift ((c.ι.app j ≫ hc.desc c') x) = _
    rw [hc.fac]
    dsimp [c']
    rw [AddEquiv.apply_symm_apply]

/--
A functor `F : J ⥤ AddCommGrp.{w}` has a colimit if and only if `Colimits.Quot F` is
`w`-small.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Varianta0ee691aca7640ae2c66eda44b43110b3b10758c858a3126d9945a7001ea9c08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Varianta0ee691aca7640ae2c66eda44b43110b3b10758c858a3126d9945a7001ea9c08.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2597e808e08ad4135daacb9e7a9ccc8986db9f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
