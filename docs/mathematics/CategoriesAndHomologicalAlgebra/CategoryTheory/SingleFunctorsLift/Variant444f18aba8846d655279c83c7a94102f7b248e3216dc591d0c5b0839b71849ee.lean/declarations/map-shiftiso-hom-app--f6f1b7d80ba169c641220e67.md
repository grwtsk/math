# map_shiftIso_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a27a495-1e13-887e-51bc-bb65034ba55e",
  "kind": "lemma",
  "lexical_name": "map_shiftIso_hom_app",
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
  "slug": "map-shiftiso-hom-app--f6f1b7d80ba169c641220e67",
  "source": {
    "blob": "41c2a184dc7f71859d20b499744eea1cfa99dd95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6f1b7d80ba169c641220e676bf1d342a1006ab3d9e3beec6d795dddccfc80b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a27a495-1e13-887e-51bc-bb65034ba55e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma map_shiftIso_hom_app (n a a' : A) (h : n + a = a') (X : C) :
    dsimp% G.map ((lift.shiftIso hΦ n a a' h).hom.app X) =
      (G.commShiftIso n).hom.app _ ≫ (shiftFunctor E n).map ((hΦ a').hom.app X) ≫
        (F.shiftIso n a a' h).hom.app X ≫ (hΦ a).inv.app X := by
  simp [shiftIso]

end lift

set_option backward.defeqAttrib.useBackward true in
/-- Let `C`, `D` and `E` be categories. Let `A` be an additive monoid.
Assume that `D` and `E` have shifts by `A` and that we have
a fully faithful functor `G : D ⥤ A` which commutes with shifts.
Given `F : SingleFunctors C E A`, and a family of functors
`Φ a : C ⥤ D` with isomorphisms `Φ a ⋙ G ≅ F.functor a` for all `a : A`,
this is a term in `SingleFunctors C D A` which is given by the functors `Φ a`
for all `a`. -/
@[simps functor]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41c2a184dc7f71859d20b499744eea1cfa99dd95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
