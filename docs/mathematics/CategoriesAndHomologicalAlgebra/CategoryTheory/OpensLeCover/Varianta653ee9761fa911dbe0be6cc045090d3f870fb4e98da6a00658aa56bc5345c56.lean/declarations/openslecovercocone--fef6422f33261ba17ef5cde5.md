# opensLeCoverCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:588975905bf4c236ad448ad69897e9a8f76fd88ab76a98487344eb246cc09f8d",
  "kind": "def",
  "lexical_name": "opensLeCoverCocone",
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
  "slug": "openslecovercocone--fef6422f33261ba17ef5cde5",
  "source": {
    "blob": "97e295cc1dc9414c02a853c37085fd3143523e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Varianta653ee9761fa911dbe0be6cc045090d3f870fb4e98da6a00658aa56bc5345c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fef6422f33261ba17ef5cde570c6ae41d8535b12a8f8cb01494990a79409de60",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Varianta653ee9761fa911dbe0be6cc045090d3f870fb4e98da6a00658aa56bc5345c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:588975905bf4c236ad448ad69897e9a8f76fd88ab76a98487344eb246cc09f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opensLeCoverCocone : Cocone (ObjectProperty.ι _ : OpensLeCover U ⥤ Opens X) where
  pt := iSup U
  ι := { app := fun V : OpensLeCover U => V.homToIndex ≫ Opens.leSupr U _ }

end SheafCondition

open SheafCondition

/-- An equivalent formulation of the sheaf condition
(which we prove equivalent to the usual one below as
`isSheaf_iff_isSheafOpensLeCover`).

A presheaf is a sheaf if `F` sends the cone `(opensLeCoverCocone U).op` to a limit cone.
(Recall `opensLeCoverCocone U`, has cone point `iSup U`,
mapping down to any `V` which is contained in some `U i`.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Varianta653ee9761fa911dbe0be6cc045090d3f870fb4e98da6a00658aa56bc5345c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Varianta653ee9761fa911dbe0be6cc045090d3f870fb4e98da6a00658aa56bc5345c56.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e295cc1dc9414c02a853c37085fd3143523e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
