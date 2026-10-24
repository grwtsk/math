# HasLeftDerivedFunctor.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd0c4ffe-525f-0a5f-e9bd-f2633d2dd717",
  "kind": "lemma",
  "lexical_name": "HasLeftDerivedFunctor.mk'",
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
  "slug": "hasleftderivedfunctor-mk--ea93cf79fd5a545681fd56c9",
  "source": {
    "blob": "a22ad558e60350fd45bb8cffc8a7e71026caa2bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea93cf79fd5a545681fd56c93020199437f10405b2d49cc11e6a2bce08142bf3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0c4ffe-525f-0a5f-e9bd-f2633d2dd717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasLeftDerivedFunctor.mk' [LF.IsLeftDerivedFunctor α W] :
    HasLeftDerivedFunctor F W := by
  have := IsLeftDerivedFunctor.isRightKanExtension LF α W
  simpa only [hasLeftDerivedFunctor_iff F L W] using HasRightKanExtension.mk LF α

section

variable (F) [F.HasLeftDerivedFunctor W] (L W)

/-- Given a functor `F : C ⥤ H`, and a localization functor `L : D ⥤ H` for `W`,
this is the left derived functor `D ⥤ H` of `F`, i.e. the right Kan extension
of `F` along `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a22ad558e60350fd45bb8cffc8a7e71026caa2bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
