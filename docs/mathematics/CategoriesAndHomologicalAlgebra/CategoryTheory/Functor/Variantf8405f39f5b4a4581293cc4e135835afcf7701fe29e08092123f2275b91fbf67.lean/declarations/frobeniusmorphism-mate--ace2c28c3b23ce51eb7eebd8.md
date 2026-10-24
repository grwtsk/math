# frobeniusMorphism_mate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d5b1739-9d84-625d-6726-1c4ac0848690",
  "kind": "theorem",
  "lexical_name": "frobeniusMorphism_mate",
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
  "slug": "frobeniusmorphism-mate--ace2c28c3b23ce51eb7eebd8",
  "source": {
    "blob": "e11a7169e4e189c14178ca3e7c256f6e63a93541",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 137,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ace2c28c3b23ce51eb7eebd80045de0dc15874c7f519333fca2b0155be4deb79",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d5b1739-9d84-625d-6726-1c4ac0848690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobeniusMorphism_mate (h : L ⊣ F) (A : C) :
    conjugateEquiv (h.comp (exp.adjunction A)) ((exp.adjunction (F.obj A)).comp h)
        (frobeniusMorphism F h A).natTrans = (expComparison F A).natTrans := by
  unfold expComparison frobeniusMorphism
  have conjeq := iterated_mateEquiv_conjugateEquiv h h
    (exp.adjunction (F.obj A)) (exp.adjunction A)
    (prodComparisonNatTrans L (F.obj A) ≫ whiskerLeft L ((curriedTensor C).map (h.counit.app A)))
  rw [← conjeq]
  congr 1
  apply congr_arg
  ext B
  unfold mateEquiv
  simp only [Functor.comp_obj, tensorLeft_obj, Functor.id_obj, Equiv.coe_fn_mk, whiskerLeft_comp,
    whiskerLeft_twice, whiskerRight_comp, assoc, NatTrans.comp_app, whiskerLeft_app,
    curriedTensor_obj_obj, whiskerRight_app, prodComparisonNatTrans_app, curriedTensor_map_app,
    Functor.comp_map, tensorLeft_map, prodComparisonNatIso_inv, asIso_inv, NatIso.isIso_inv_app]
  rw [← F.map_comp, ← F.map_comp]
  simp only [Functor.map_comp]
  apply IsIso.eq_inv_of_inv_hom_id
  simp only [assoc, Functor.associator_inv_app, Functor.associator_hom_app, Functor.comp_obj,
    curriedTensor_obj_obj, tensorLeft_obj, Functor.map_id, id_comp]
  rw [prodComparison_natural_whiskerLeft, prodComparison_natural_whiskerRight_assoc]
  slice_lhs 2 3 => rw [← prodComparison_comp]
  simp only [assoc]
  unfold prodComparison
  have ηlemma : (h.unit.app (F.obj A ⊗ F.obj B) ≫
    lift ((L ⋙ F).map (fst _ _)) ((L ⋙ F).map (snd _ _))) =
      (h.unit.app (F.obj A)) ⊗ (h.unit.app (F.obj B)) := by
    ext <;> simp
  slice_lhs 1 2 => rw [ηlemma]
  simp only [Functor.id_obj, Functor.comp_obj, assoc, ← whisker_exchange, ← tensorHom_def']
  ext <;> simp

/--
If the exponential comparison transformation (at `A`) is an isomorphism, then the Frobenius morphism
at `A` is an isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e11a7169e4e189c14178ca3e7c256f6e63a93541` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
