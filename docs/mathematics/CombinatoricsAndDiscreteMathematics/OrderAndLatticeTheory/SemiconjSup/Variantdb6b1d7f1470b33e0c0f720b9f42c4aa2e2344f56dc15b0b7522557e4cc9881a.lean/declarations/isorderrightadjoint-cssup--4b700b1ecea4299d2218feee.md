# isOrderRightAdjoint_csSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f85df9c7-8aaf-ebf4-36f6-31c84b3cb07a",
  "kind": "theorem",
  "lexical_name": "isOrderRightAdjoint_csSup",
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
  "slug": "isorderrightadjoint-cssup--4b700b1ecea4299d2218feee",
  "source": {
    "blob": "bd8c4c4794465376a17e522c1dbe9cda33daaa6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variantdb6b1d7f1470b33e0c0f720b9f42c4aa2e2344f56dc15b0b7522557e4cc9881a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b700b1ecea4299d2218feeec3740f91e073b960994d09c3089d356646bb48a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variantdb6b1d7f1470b33e0c0f720b9f42c4aa2e2344f56dc15b0b7522557e4cc9881a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f85df9c7-8aaf-ebf4-36f6-31c84b3cb07a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOrderRightAdjoint_csSup [ConditionallyCompleteLattice α] [Preorder β] (f : α → β)
    (hne : ∀ y, ∃ x, f x ≤ y) (hbdd : ∀ y, BddAbove { x | f x ≤ y }) :
    IsOrderRightAdjoint f fun y => sSup { x | f x ≤ y } := fun y => isLUB_csSup (hne y) (hbdd y)
#align is_order_right_adjoint_cSup isOrderRightAdjoint_csSup

namespace IsOrderRightAdjoint

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variantdb6b1d7f1470b33e0c0f720b9f42c4aa2e2344f56dc15b0b7522557e4cc9881a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variantdb6b1d7f1470b33e0c0f720b9f42c4aa2e2344f56dc15b0b7522557e4cc9881a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd8c4c4794465376a17e522c1dbe9cda33daaa6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
