# grothendieckPrecompFunctorToComma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a3e50af28691044a6d64d4e4d6556419194c66d907eab81e85a944911abd04f",
  "kind": "def",
  "lexical_name": "grothendieckPrecompFunctorToComma",
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
  "slug": "grothendieckprecompfunctortocomma--9c1d46f7a8b8e0241b52734f",
  "source": {
    "blob": "551c20bb4cd9932ea52a92e9c75b7f8b8991b94e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c1d46f7a8b8e0241b52734fcfbc34c230d9186e47fe4975536e7b61cbe7d54d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a3e50af28691044a6d64d4e4d6556419194c66d907eab81e85a944911abd04f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grothendieckPrecompFunctorToComma : Grothendieck (R ⋙ functor L) ⥤ Comma L R where
  obj P := ⟨P.fiber.left, P.base, P.fiber.hom⟩
  map f := ⟨f.fiber.left, f.base, by simp⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Fibers of `grothendieckPrecompFunctorToComma L R`, composed with `Comma.fst L R`, are isomorphic
to the projection `proj L (R.obj X)`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9d8d2972bfb373fd9464cc36e43e562fa3fd78a3208b51e33a8a4853a4c02f19.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551c20bb4cd9932ea52a92e9c75b7f8b8991b94e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
