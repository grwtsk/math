# restrictStalkIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:071835871235dbc563aa00b88b676c60d669e7cfb81dd475c2687a4d88fb1eb3",
  "kind": "def",
  "lexical_name": "restrictStalkIso",
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
  "slug": "restrictstalkiso--068508abac63385129425a5b",
  "source": {
    "blob": "707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:068508abac63385129425a5b5e5c85e28a4de0004e310f5df9df784f551adef3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:071835871235dbc563aa00b88b676c60d669e7cfb81dd475c2687a4d88fb1eb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictStalkIso {U : TopCat} (X : PresheafedSpace.{_, _, v} C) {f : U ⟶ (X : TopCat.{v})}
    (h : OpenEmbedding f) (x : U) : (X.restrict h).stalk x ≅ X.stalk (f x) :=
  haveI := initial_of_adjunction (h.isOpenMap.adjunctionNhds x)
  Final.colimitIso (h.isOpenMap.functorNhds x).op ((OpenNhds.inclusion (f x)).op ⋙ X.presheaf)
  -- As a left adjoint, the functor `h.is_open_map.functor_nhds x` is initial.
  -- Typeclass resolution knows that the opposite of an initial functor is final. The result
  -- follows from the general fact that postcomposing with a final functor doesn't change colimits.
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.restrict_stalk_iso AlgebraicGeometry.PresheafedSpace.restrictStalkIso

-- Porting note : removed `simp` attribute, for left hand side is not in simple normal form.
@[elementwise, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
