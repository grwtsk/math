# Functor.postcompose₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13fe416fe54c0abc1b53b626592608908a31abdf88866a4202157f7e620ef2f2",
  "kind": "def",
  "lexical_name": "Functor.postcompose₂",
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
  "slug": "functor-postcompose--300fe84ff21c2db56a08998a",
  "source": {
    "blob": "a976835c2d639a4b88b7851f4aa3db21784e7de0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 436,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:300fe84ff21c2db56a08998a886741eb44685e58517a5e4e3aff5770ad7edd0c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13fe416fe54c0abc1b53b626592608908a31abdf88866a4202157f7e620ef2f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.postcompose₂ {E' : Type*} [Category E'] :
    (E ⥤ E') ⥤ (C₁ ⥤ C₂ ⥤ E) ⥤ C₁ ⥤ C₂ ⥤ E' :=
  whiskeringRight C₂ _ _ ⋙ whiskeringRight C₁ _ _

/-- The "postcomposition" with a functor `E ⥤ E'` gives a functor
`(E ⥤ E') ⥤ (C₁ ⥤ C₂ ⥤ C₃ ⥤ E) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ E'`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a976835c2d639a4b88b7851f4aa3db21784e7de0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
