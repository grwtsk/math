# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OneTruncationHom.Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.SSet.Truncated.HomotopyCategory.quotientFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e0e47014b49d22796e77c77137280c52f4948efcb9fe473864680c54a44098a",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OneTruncationHom.Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.SSet.Truncated.HomotopyCategory.quotientFunctor",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-onetruncation--5dec83e31e8e507c47ae0a74",
  "source": {
    "blob": "5735b26e11096397d31d1caffd34f764a611a43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 308,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dec83e31e8e507c47ae0a74ad8c864f792bd59dfc5a2625e84b474716d55e5f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e0e47014b49d22796e77c77137280c52f4948efcb9fe473864680c54a44098a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OneTruncationHom.Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.SSet.Truncated.HomotopyCategory.quotientFunctor (V : SSet.Truncated.{u} 2) :
    Cat.FreeRefl (OneTruncation₂ V) ⥤ V.HomotopyCategory :=
  Quotient.functor _

/-- By `Quotient.lift_unique'` (not `Quotient.lift`) we have that `quotientFunctor V` is an
epimorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5735b26e11096397d31d1caffd34f764a611a43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
