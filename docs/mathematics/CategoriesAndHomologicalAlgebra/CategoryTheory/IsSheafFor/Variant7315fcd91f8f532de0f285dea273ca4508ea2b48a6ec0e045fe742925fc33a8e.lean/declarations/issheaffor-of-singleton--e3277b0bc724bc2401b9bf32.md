# IsSheafFor.of_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0ede3bb-15e7-6d76-fe83-ba6e146a00fd",
  "kind": "lemma",
  "lexical_name": "IsSheafFor.of_singleton",
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
  "slug": "issheaffor-of-singleton--e3277b0bc724bc2401b9bf32",
  "source": {
    "blob": "8485a07ed9e2e94ce5dc8de624236eeef4406f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1051,
    "line": 1022,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3277b0bc724bc2401b9bf328768f6403ace3e4472962097534d367c173a6aa6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0ede3bb-15e7-6d76-fe83-ba6e146a00fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1022–1051.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSheafFor.of_singleton {S : C} {f : X ⟶ S} (hf : IsSheafFor P (singleton f))
    {R : Presieve S} (hf' : R f)
    (H : ∀ {Y : C} (g : Y ⟶ S) (_ : R g),
      ∃ (Z : C) (a : Z ⟶ Y) (b : Z ⟶ X), a ≫ g = b ≫ f ∧ IsSeparatedFor P (singleton a)) :
    IsSheafFor P R := by
  simp only [isSeparatedFor_singleton] at H
  intro x hx
  refine existsUnique_of_exists_of_unique ?_ (fun α α' hα hα' ↦ ?_)
  · let x' : FamilyOfElements P (singleton f) := x.restrict (by simpa)
    have hx' : x'.Compatible := FamilyOfElements.Compatible.restrict _ hx
    refine ⟨hf.amalgamate x' hx', fun Y g hg ↦ ?_⟩
    obtain ⟨Z, a, b, fac, ha⟩ := H g hg
    refine ha ?_
    rw [← ConcreteCategory.comp_apply, ← Functor.map_comp, ← op_comp, fac,
      op_comp, Functor.map_comp, ConcreteCategory.comp_apply,
      hf.valid_glue hx' f (by simp)]
    exact hx _ _ _ _ fac.symm
  · refine hf.isSeparatedFor.ext ?_
    rintro _ _ ⟨⟩
    rw [hα f hf', hα' f hf']

/--
To show `P` is a sheaf for the binding of `U` with `B`, it suffices to show that `P` is a sheaf for
`U`, that `P` is a sheaf for each sieve in `B`, and that it is separated for any pullback of any
sieve in `B`.

This is mostly an auxiliary lemma to show `Presieve.isSheafFor_trans`.
Adapted from [Elephant], Lemma C2.1.7(i) with suggestions as mentioned in
https://math.stackexchange.com/a/358709/
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variant7315fcd91f8f532de0f285dea273ca4508ea2b48a6ec0e045fe742925fc33a8e.lean#L1022).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8485a07ed9e2e94ce5dc8de624236eeef4406f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
