# IsStableUnderTransfiniteCompositionOfShape.of_isStableUnderColimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4012e30b-b48e-ffe4-84e4-aabf8f355aa5",
  "kind": "lemma",
  "lexical_name": "IsStableUnderTransfiniteCompositionOfShape.of_isStableUnderColimitsOfShape",
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
  "slug": "isstableundertransfinitecompositionofshape-of-isstableundercolimitsofsha--68604f6b00ff38014c99ef8d",
  "source": {
    "blob": "dd8951bb8a45e03495c7bfd4d6cfa6d2666056e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 284,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant7f28fe99f11d99d35ff873c75b98a2e5805aca079d2906b31b2b3ad7c7239a1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68604f6b00ff38014c99ef8d7a5e1d2d2039a68a0ff3faeac3b966bb11dc9125",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant7f28fe99f11d99d35ff873c75b98a2e5805aca079d2906b31b2b3ad7c7239a1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4012e30b-b48e-ffe4-84e4-aabf8f355aa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStableUnderTransfiniteCompositionOfShape.of_isStableUnderColimitsOfShape
    [W.IsMultiplicative] [W.RespectsIso]
    (hJ : ∀ (J : Type w) [LinearOrder J] [SuccOrder J] [OrderBot J] [WellFoundedLT J],
      W.IsStableUnderColimitsOfShape J) :
    W.IsStableUnderTransfiniteCompositionOfShape J where
  le _ _ _ | ⟨hf⟩ => mem hf hJ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant7f28fe99f11d99d35ff873c75b98a2e5805aca079d2906b31b2b3ad7c7239a1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant7f28fe99f11d99d35ff873c75b98a2e5805aca079d2906b31b2b3ad7c7239a1c.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd8951bb8a45e03495c7bfd4d6cfa6d2666056e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
