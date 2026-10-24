# isLeftDerivabilityStructure_of_isLocalizedEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c482aa24-5192-28a9-3601-f2f7cdef25b1",
  "kind": "lemma",
  "lexical_name": "isLeftDerivabilityStructure_of_isLocalizedEquivalence",
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
  "slug": "isleftderivabilitystructure-of-islocalizedequivalence--396a871809afd90e885d1293",
  "source": {
    "blob": "3b1101deea54428a0be2aa5150ea87b729f917c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:396a871809afd90e885d1293a13d35840b3a19acd2e089a2e8f1153b5ce366aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c482aa24-5192-28a9-3601-f2f7cdef25b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftDerivabilityStructure_of_isLocalizedEquivalence
    [T.IsLeftDerivabilityStructure]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor)
    [TwoSquare.GuitartExact iso.inv] :
    B.IsLeftDerivabilityStructure := by
  have : B.HasLeftResolutions := fun Y₂ ↦ by
    obtain ⟨X₂, ⟨e₂⟩⟩ := Functor.EssSurj.mem_essImage R.functor Y₂
    have ρ : T.LeftResolution X₂ := Classical.arbitrary _
    exact ⟨{
      X₁ := L.functor.obj ρ.X₁
      w := iso.inv.app _ ≫ R.functor.map ρ.w ≫ e₂.hom
      hw := (W₂'.arrow_mk_iso_iff (Arrow.isoMk (iso.app _) e₂)).1 (R.map _ ρ.hw) }⟩
  let F := B.localizedFunctor W₁'.Q W₂'.Q
  let e' := CatCommSq.iso B.functor W₁'.Q W₂'.Q F
  let iso' : CatCommSq T.functor L.functor R.functor B.functor := ⟨iso⟩
  let : CatCommSq T.functor (L.functor ⋙ W₁'.Q) (R.functor ⋙ W₂'.Q) F :=
    CatCommSq.vComp (H₂ := B.functor) _ _ _ _ _ _
  have : (TwoSquare.hComp iso.inv e'.inv).GuitartExact := by
    convert!
      T.guitartExact_of_isLeftDerivabilityStructure' (L.functor ⋙ W₁'.Q) (R.functor ⋙ W₂'.Q) F
        (CatCommSq.iso _ _ _ _)
    ext
    simp [e', CatCommSq.iso, iso']
  rw [B.isLeftDerivabilityStructure_iff W₁'.Q W₂'.Q F e']
  apply TwoSquare.GuitartExact.of_hComp iso.inv

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1101deea54428a0be2aa5150ea87b729f917c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
