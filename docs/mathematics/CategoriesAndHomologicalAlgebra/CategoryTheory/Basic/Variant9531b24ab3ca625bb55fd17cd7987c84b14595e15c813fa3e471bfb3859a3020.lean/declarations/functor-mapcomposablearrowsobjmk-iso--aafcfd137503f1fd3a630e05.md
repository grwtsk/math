# Functor.mapComposableArrowsObjMk₁Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed3146e5e4be0c130dd9b122ccd08067838c289a803ed9e7e92aea32d58868a8",
  "kind": "def",
  "lexical_name": "Functor.mapComposableArrowsObjMk₁Iso",
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
  "slug": "functor-mapcomposablearrowsobjmk-iso--aafcfd137503f1fd3a630e05",
  "source": {
    "blob": "c26ad360015de270edede2cfd2eef795a656462e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1081,
    "line": 1074,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aafcfd137503f1fd3a630e053e4ca377d981fa438efdc13c82943b72d998446b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed3146e5e4be0c130dd9b122ccd08067838c289a803ed9e7e92aea32d58868a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1074–1081.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.mapComposableArrowsObjMk₁Iso {X Y : C} (f : X ⟶ Y) :
    (G.mapComposableArrows 1).obj (.mk₁ f) ≅ .mk₁ (G.map f) :=
  isoMk₁ (Iso.refl _) (Iso.refl _)

set_option backward.defeqAttrib.useBackward true in
/-- The isomorphism between `(G.mapComposableArrows 2).obj (.mk₂ f g)` and
`.mk₂ (G.map f) (G.map g)`. -/
@[implicit_reducible, simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean#L1074).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26ad360015de270edede2cfd2eef795a656462e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
