# OrderTop.ext_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02ab3644-bde5-a454-d991-6b3998cac287",
  "kind": "theorem",
  "lexical_name": "OrderTop.ext_top",
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
  "slug": "ordertop-ext-top--eb05b7beb7d9811c4140993b",
  "source": {
    "blob": "eeddf66b637bb05e21c05f459212357b81438dda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundedOrder/Variantb63cf5baa6e2b9ce99edea6adf833d144924755962d5672d9e58306fbd9281b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb05b7beb7d9811c4140993bfccdfde05940608218edccaac2d9f21f7407930e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundedOrder/Variantb63cf5baa6e2b9ce99edea6adf833d144924755962d5672d9e58306fbd9281b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02ab3644-bde5-a454-d991-6b3998cac287`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrderTop.ext_top {α} {hA : PartialOrder α} (A : OrderTop α) {hB : PartialOrder α}
    (B : OrderTop α) (H : ∀ x y : α, (haveI := hA; x ≤ y) ↔ x ≤ y) :
    (@Top.top α (@OrderTop.toTop α hA.toLE A)) = (@Top.top α (@OrderTop.toTop α hB.toLE B)) := by
  cases PartialOrder.ext H
  apply top_unique
  exact @le_top _ _ A _
#align order_top.ext_top OrderTop.ext_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundedOrder/Variantb63cf5baa6e2b9ce99edea6adf833d144924755962d5672d9e58306fbd9281b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundedOrder/Variantb63cf5baa6e2b9ce99edea6adf833d144924755962d5672d9e58306fbd9281b6.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeddf66b637bb05e21c05f459212357b81438dda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
