# centroid_mem_affineSpan_of_card_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15870f94-aab2-2477-6803-04b92061a0b9",
  "kind": "theorem",
  "lexical_name": "centroid_mem_affineSpan_of_card_ne_zero",
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
  "slug": "centroid-mem-affinespan-of-card-ne-zero--9d29813de261a5076a65c1b5",
  "source": {
    "blob": "0a6ac907ae6e17699091ab4d76849afd971415f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1231,
    "line": 1225,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d29813de261a5076a65c1b5b732935a98c96ad1e0d27a9edb2d7ba08395a761",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15870f94-aab2-2477-6803-04b92061a0b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1225–1231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centroid_mem_affineSpan_of_card_ne_zero [CharZero k] {s : Finset ι} (p : ι → P)
    (h : card s ≠ 0) : s.centroid k p ∈ affineSpan k (range p) :=
  affineCombination_mem_affineSpan (s.sum_centroidWeights_eq_one_of_card_ne_zero k h) p
#align centroid_mem_affine_span_of_card_ne_zero centroid_mem_affineSpan_of_card_ne_zero

/-- In the characteristic zero case, the centroid lies in the affine
span if the set is nonempty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean#L1225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a6ac907ae6e17699091ab4d76849afd971415f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
