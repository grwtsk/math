# adjRetraction_is_retraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5bb3739-7c96-3435-4e4c-3bf3e8e75163",
  "kind": "lemma",
  "lexical_name": "adjRetraction_is_retraction",
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
  "slug": "adjretraction-is-retraction--cba9e369ef1c9d155eec325f",
  "source": {
    "blob": "e4ab65dbfff5c7a1df4b1cfdf79cb2b8147c1030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba9e369ef1c9d155eec325f715b49989a4d30ca400be6897174d5caf0531256",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5bb3739-7c96-3435-4e4c-3bf3e8e75163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma adjRetraction_is_retraction (c : C) (d : D)
    [IsIso (L.map (adj.unit.app ((ihom d).obj (R.obj c)) ⊗ adj.unit.app d))] :
    adj.unit.app ((ihom d).obj (R.obj c)) ≫ adjRetraction adj c d = 𝟙 _ := by
  suffices (_ ◁ adj.unit.app _) ≫ adjRetractionAux adj c d = (ihom.ev _).app _ by
    simp only [id_obj, comp_obj, adjRetraction, ← curry_natural_left, this]
    simp [curry_eq]
  simp only [id_obj, comp_obj, adjRetractionAux, Functor.map_inv, Functor.comp_map,
    braiding_naturality_right_assoc]
  slice_lhs 2 3 =>
    simp only [← id_tensorHom, ← tensorHom_id, ← tensor_comp, Category.id_comp, Category.comp_id]
  slice_lhs 2 4 =>
    rw [← adj.unit_naturality_assoc]
  simp

attribute [local simp] Adjunction.homEquiv_unit Adjunction.homEquiv_counit

/--
Day's reflection theorem.

Let `D` be a symmetric monoidal closed category and let `C` be a reflective subcategory. Denote by
`R : C ⥤ D` the inclusion functor and by `L : D ⥤ C` the reflector. Let `u` denote the unit of the
adjunction `L ⊣ R`. Denote the internal hom by `[-,-]`. The following are equivalent:

1. `u : [d, Rc] ⟶ RL[d, Rc]` is an isomorphism,
2. `[u, 𝟙] : [RLd, Rc] ⟶ [d, Rc]` is an isomorphism,
3. `L(u ▷ d') : L(d ⊗ d') ⟶ L(RLd ⊗ d')` is an isomorphism,
4. `L(u ⊗ u) : L(d ⊗ d') ⟶ L(RLd ⊗ RLd')` is an isomorphism,

where `c, d, d'` are arbitrary objects of `C`/`D`, quantified over separately in each condition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4ab65dbfff5c7a1df4b1cfdf79cb2b8147c1030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
