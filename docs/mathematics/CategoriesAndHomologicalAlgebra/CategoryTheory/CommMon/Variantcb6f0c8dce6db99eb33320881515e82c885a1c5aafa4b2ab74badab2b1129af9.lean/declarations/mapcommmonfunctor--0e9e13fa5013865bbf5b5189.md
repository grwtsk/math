# mapCommMonFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3245b61f5a0dda23b21119f4906f247744fedc5fb000654ad011dc10ffcf7714",
  "kind": "def",
  "lexical_name": "mapCommMonFunctor",
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
  "slug": "mapcommmonfunctor--0e9e13fa5013865bbf5b5189",
  "source": {
    "blob": "1850ab3cfa042952640372f6a43da271583a6b1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e9e13fa5013865bbf5b5189161a9ddb9d204b929080d979cebe28233cb9f167",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3245b61f5a0dda23b21119f4906f247744fedc5fb000654ad011dc10ffcf7714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapCommMonFunctor : LaxBraidedFunctor C D ⥤ CommMon_ C ⥤ CommMon_ D where
  obj := mapCommMon
  map α :=
    { app := fun A => { hom := α.app A.X }
      naturality := by intros; ext; simp }
set_option linter.uppercaseLean3 false in
#align category_theory.lax_braided_functor.map_CommMon_functor CategoryTheory.LaxBraidedFunctor.mapCommMonFunctor

end CategoryTheory.LaxBraidedFunctor

namespace CommMon_

open CategoryTheory.LaxBraidedFunctor

namespace EquivLaxBraidedFunctorPunit

/-- Implementation of `CommMon_.equivLaxBraidedFunctorPunit`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1850ab3cfa042952640372f6a43da271583a6b1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
