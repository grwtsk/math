# singularChainComplexFunctor_exactAt_of_totallyDisconnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab0e2cae-0c26-88ef-27a9-c07ea2dcf4e1",
  "kind": "lemma",
  "lexical_name": "singularChainComplexFunctor_exactAt_of_totallyDisconnectedSpace",
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
  "slug": "singularchaincomplexfunctor-exactat-of-totallydisconnectedspace--57f0a400c4f9cbf0699ec8df",
  "source": {
    "blob": "9dadc8eca432a19b8ecb4749b0849cf9c0ab85b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad9f372e7f7136bf95db06aefbbb48a82102c6453756ed22138cde767d6423f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57f0a400c4f9cbf0699ec8df3785c2d9a23a5171aee1dd15b7c1f4ec9ecbc314",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad9f372e7f7136bf95db06aefbbb48a82102c6453756ed22138cde767d6423f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab0e2cae-0c26-88ef-27a9-c07ea2dcf4e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma singularChainComplexFunctor_exactAt_of_totallyDisconnectedSpace
    (hn : n ≠ 0) :
    (((singularChainComplexFunctor C).obj R).obj X).ExactAt n :=
  have := hasCoproducts_shrink.{0, w} (C := C)
  have : HasZeroObject C := ⟨_, initialIsInitial.isZero⟩
  .of_iso (ChainComplex.alternatingConst_exactAt _ _ hn)
    (singularChainComplexFunctorIsoOfTotallyDisconnectedSpace C R X).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad9f372e7f7136bf95db06aefbbb48a82102c6453756ed22138cde767d6423f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad9f372e7f7136bf95db06aefbbb48a82102c6453756ed22138cde767d6423f4.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dadc8eca432a19b8ecb4749b0849cf9c0ab85b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
