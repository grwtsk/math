# liftAux_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf5d3740-740e-8529-ea75-9983af37866c",
  "kind": "lemma",
  "lexical_name": "liftAux_map",
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
  "slug": "liftaux-map--de81c3f07ef71ff981c18658",
  "source": {
    "blob": "a2ce5520f322d72e6437b717dbf1013328eff1e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de81c3f07ef71ff981c18658dd63ce6b91a5dd711ce18926b4ab9293263b67dc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf5d3740-740e-8529-ea75-9983af37866c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liftAux_map {Y : C} (f : G.obj Y ⟶ X) {W : C} (g : W ⟶ Y) (i : S.Arrow)
    (h : G.obj W ⟶ i.Y) (w : h ≫ i.f = G.map g ≫ f) :
    liftAux hF α s f ≫ F.map g.op = s.ι i ≫ R.map h.op ≫ α.app _ :=
  (Multifork.IsLimit.fac
    (hF.isLimitMultifork ⟨_, G.cover_lift J K (K.pullback_stable f S.2)⟩) _ _
      ⟨W, g, by simpa only [Sieve.functorPullback_apply, functorPullback_mem,
        Sieve.pullback_apply, ← w] using S.1.downward_closed i.hf h⟩).trans (by
        dsimp
        simp only [← Category.assoc]
        congr 1
        let r : S.Relation :=
          { fst.f := G.map g ≫ f
            fst.hf := by simpa only [← w] using S.1.downward_closed i.hf h
            snd := i
            r.g₁ := 𝟙 _
            r.g₂ := h
            r.w := by simpa using w.symm
            .. }
        simpa [r] using s.condition r )

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ce5520f322d72e6437b717dbf1013328eff1e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
