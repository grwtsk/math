# endIsFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ca32636-6a41-7109-11a7-f8dcf0f72c62",
  "kind": "lemma",
  "lexical_name": "endIsFree",
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
  "slug": "endisfree--a3ff4ac6a24dac0d7ad7cb68",
  "source": {
    "blob": "71621bf15a90d24e7c6700738b893c4b2bc473b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3ff4ac6a24dac0d7ad7cb6870d7f6643a7fa3242014cefdc2015ea34b24ab7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ca32636-6a41-7109-11a7-f8dcf0f72c62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma endIsFree : IsFreeGroup (End (root' T)) :=
  IsFreeGroup.ofUniqueLift ((wideSubquiverEquivSetTotal <| wideSubquiverSymmetrify T)ᶜ : Set _)
    (fun e => loopOfHom T (of e.val.hom))
    (by
      intro X _ f
      let f' : Labelling (Generators G) X := fun a b e =>
        if h : e ∈ wideSubquiverSymmetrify T a b then 1 else f ⟨⟨a, b, e⟩, h⟩
      rcases unique_lift f' with ⟨F', hF', uF'⟩
      refine ⟨F'.mapEnd _, ?_, ?_⟩
      · suffices ∀ {x y} (q : x ⟶ y), F'.map (loopOfHom T q) = (F'.map q : X) by
          rintro ⟨⟨a, b, e⟩, h⟩
          simp only [Functor.mapEnd, DFunLike.coe, this, hF']
          exact dite_eq_right h
        intro x y q
        suffices ∀ {a} (p : Path (root T) a), F'.map (homOfPath T p) = 1 by
          simp only [this, treeHom, comp_as_mul, inv_as_inv, loopOfHom, inv_one, mul_one,
            one_mul, Functor.map_inv, Functor.map_comp]
        intro a p
        induction p with
        | nil => rw [homOfPath, F'.map_id, id_as_one]
        | cons p e ih =>
          rw [homOfPath, F'.map_comp, comp_as_mul, ih, mul_one]
          rcases e with ⟨e | e, eT⟩
          · rw [hF']
            exact dite_eq_left (Or.inl eT)
          · rw [F'.map_inv, inv_as_inv, inv_eq_one, hF']
            exact dite_eq_left (Or.inr eT)
      · intro E hE
        ext x
        suffices (functorOfMonoidHom T E).map x = F'.map x by
          simpa only [loopOfHom, functorOfMonoidHom, IsIso.inv_id, treeHom_root,
            Category.id_comp, Category.comp_id] using! this
        congr
        apply uF'
        intro a b e
        change E (loopOfHom T _) = dite _ _ _
        split_ifs with h
        · rw [loopOfHom_eq_id T e h, ← End.one_def, E.map_one]
        · exact hE ⟨⟨a, b, e⟩, h⟩)

end SpanningTree

set_option backward.privateInPublic true in
/-- Another name for the identity function `G → G`, to help type checking. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71621bf15a90d24e7c6700738b893c4b2bc473b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
