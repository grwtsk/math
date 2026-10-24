# mapMatComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca025ddfd67820f7793b9416992734613bfc99af9c33b404b33f980362679f65",
  "kind": "def",
  "lexical_name": "mapMatComp",
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
  "slug": "mapmatcomp--c17b1e4a25fddb5a7fe4edb7",
  "source": {
    "blob": "1b306c6bcfb9e9c42deb3386cd93e24c576cfe9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 298,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant777789ecfb39498f1acf45a6e5c8cc66c1c60a5af8534c020ae9b477a3e49a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c17b1e4a25fddb5a7fe4edb7745cf661fe29a151ebde3db165e1a5a923682bcc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant777789ecfb39498f1acf45a6e5c8cc66c1c60a5af8534c020ae9b477a3e49a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca025ddfd67820f7793b9416992734613bfc99af9c33b404b33f980362679f65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapMatComp {E : Type*} [Category.{v₁} E] [Preadditive E] (F : C ⥤ D) [Functor.Additive F]
    (G : D ⥤ E) [Functor.Additive G] : (F ⋙ G).mapMat_ ≅ F.mapMat_ ⋙ G.mapMat_ :=
  NatIso.ofComponents (fun M => eqToIso (by cases M; rfl)) fun {M N} f => by
    ext
    cases M; cases N
    simp [comp_dite, dite_comp]
set_option linter.uppercaseLean3 false in
#align category_theory.functor.map_Mat_comp CategoryTheory.Functor.mapMatComp

end Functor

namespace Mat_

/-- The embedding of `C` into `Mat_ C` as one-by-one matrices.
(We index the summands by `punit`.) -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant777789ecfb39498f1acf45a6e5c8cc66c1c60a5af8534c020ae9b477a3e49a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant777789ecfb39498f1acf45a6e5c8cc66c1c60a5af8534c020ae9b477a3e49a1d.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b306c6bcfb9e9c42deb3386cd93e24c576cfe9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
