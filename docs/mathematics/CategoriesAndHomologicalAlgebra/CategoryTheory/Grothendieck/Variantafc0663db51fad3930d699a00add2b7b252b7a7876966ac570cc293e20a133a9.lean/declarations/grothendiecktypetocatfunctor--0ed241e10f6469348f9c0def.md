# grothendieckTypeToCatFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e2e336b7aa703b55608d2280c52a5198bc48e12ba9cdd3498c162c3d85c4cfc",
  "kind": "def",
  "lexical_name": "grothendieckTypeToCatFunctor",
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
  "slug": "grothendiecktypetocatfunctor--0ed241e10f6469348f9c0def",
  "source": {
    "blob": "06aac56f15140744f3cd3a5a1ba3c222d0dc5a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ed241e10f6469348f9c0def829c83d34ccdb4797aafff4dcc7b7255ad95b838",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e2e336b7aa703b55608d2280c52a5198bc48e12ba9cdd3498c162c3d85c4cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grothendieckTypeToCatFunctor : Grothendieck (G ⋙ typeToCat) ⥤ G.Elements where
  obj X := ⟨X.1, X.2.as⟩
  map := @fun X Y f => ⟨f.1, f.2.1.1⟩
set_option linter.uppercaseLean3 false in
#align category_theory.grothendieck.grothendieck_Type_to_Cat_functor CategoryTheory.Grothendieck.grothendieckTypeToCatFunctor

/-- Auxiliary definition for `grothendieck_Type_to_Cat`, to speed up elaboration. -/
-- Porting note:
-- `simps` is incorrectly producing Prop-valued projections here,
-- so we manually specify which ones to produce.
-- See https://leanprover.zulipchat.com/#narrow/stream/144837-PR-reviews/topic/!4.233204.20simps.20bug.20.28Grothendieck.20construction.29
@[simps! obj_base obj_fiber_as map_base]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06aac56f15140744f3cd3a5a1ba3c222d0dc5a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
