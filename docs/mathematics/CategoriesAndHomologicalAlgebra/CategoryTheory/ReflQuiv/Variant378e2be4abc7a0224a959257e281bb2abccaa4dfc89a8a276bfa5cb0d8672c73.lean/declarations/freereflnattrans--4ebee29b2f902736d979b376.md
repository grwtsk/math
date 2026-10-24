# freeReflNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dff304f65c797101be0c9b1eb714116e98dae98ee278453bb3c13b3ff4c404e7",
  "kind": "def",
  "lexical_name": "freeReflNatTrans",
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
  "slug": "freereflnattrans--4ebee29b2f902736d979b376",
  "source": {
    "blob": "9a758752854e65a152db9e7334d96af89aa4a9b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 379,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ebee29b2f902736d979b376d56cdf7a8a1f16cdbeda5a938043003b7d33c584",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dff304f65c797101be0c9b1eb714116e98dae98ee278453bb3c13b3ff4c404e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freeReflNatTrans : ReflQuiv.forgetToQuiv ⋙ Cat.free ⟶ freeRefl where
  app V := (FreeRefl.quotientFunctor V).toCatHom
  naturality v w f := by
    ext1; exact Paths.ext_functor (V := Quiv.of v) (by cat_disch) (by cat_disch)

end Cat

namespace ReflQuiv
open Category

namespace adj

variable {V W : Type*} [ReflQuiver W] [ReflQuiver V]
  {C D : Type*} [Category* C] [Category* D]

set_option backward.isDefEq.respectTransparency false in
/-- Given a reflexive quiver `V` and a category `C`, this is the bijection
between functors `Cat.FreeRefl V ⥤ C` and refl functors `V ⥤rq C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a758752854e65a152db9e7334d96af89aa4a9b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
