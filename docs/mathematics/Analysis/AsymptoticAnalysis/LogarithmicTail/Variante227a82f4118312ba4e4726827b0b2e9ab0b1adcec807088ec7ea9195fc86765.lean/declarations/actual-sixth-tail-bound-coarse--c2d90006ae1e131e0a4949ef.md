# actual_sixth_tail_bound_coarse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbf6f6c4-5b7f-a7f1-62ae-8442f62c6d28",
  "kind": "theorem",
  "lexical_name": "actual_sixth_tail_bound_coarse",
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
  "slug": "actual-sixth-tail-bound-coarse--c2d90006ae1e131e0a4949ef",
  "source": {
    "blob": "45b7dc87611831c52cfd902ad80de71c58f773cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 257,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2d90006ae1e131e0a4949ef9c838e99cd5cec47f3171a54f4b2cc867e921d8e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbf6f6c4-5b7f-a7f1-62ae-8442f62c6d28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_tail_bound_coarse {C T : ℝ} (hc : PositiveCountBound C) (hT : 2 ≤ T) :
    (∑' o : HeightTail T, sixthWeight o.val) ≤ 9*C*Real.log T/T^5 := by
  have hC : 0 < C := hc.1
  have hlog : 0 ≤ Real.log T := Real.log_nonneg (by linarith)
  apply (actual_sixth_tail_bound hc hT).trans
  gcongr
  norm_num

#print axioms dyadic_sixth_sum_le
#print axioms actual_sixth_tail_bound
#print axioms actual_sixth_tail_bound_coarse

#print axioms dyadic_upper_exists
#print axioms dyadicIndex
#print axioms dyadicIndex_bounds
#print axioms DyadicShell
#print axioms shellToPrefix
#print axioms shellToPrefix_injective
#print axioms nonzeroPrefix_finite
#print axioms dyadicShell_finite
#print axioms dyadicShell_card_le
#print axioms sixthWeight
#print axioms sixthWeight_tail_summable

#print axioms PositivePrefix
#print axioms positivePrefix_finite
#print axioms positiveCount
#print axioms PositiveCountBound
#print axioms NonzeroPrefix
#print axioms positiveSignMap
#print axioms positiveSignMap_injective
#print axioms nonzeroPrefix_card_le
#print axioms dyadic_coefficient_hasSum
#print axioms dyadic_coefficient_tsum
end ContinuousResearch.LogarithmicTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b7dc87611831c52cfd902ad80de71c58f773cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
