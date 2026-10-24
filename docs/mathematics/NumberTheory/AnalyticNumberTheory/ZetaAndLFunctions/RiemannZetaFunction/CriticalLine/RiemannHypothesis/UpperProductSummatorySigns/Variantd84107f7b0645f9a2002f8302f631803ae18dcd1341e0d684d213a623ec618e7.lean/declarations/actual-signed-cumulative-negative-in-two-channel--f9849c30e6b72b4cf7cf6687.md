# actual_signed_cumulative_negative_in_two_channel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb4be45e1d5f30d83e4aac441d626131d021230c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d84107f7b0645f9a2002f8302f631803ae18dcd1341e0d684d213a623ec618e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e297d37-5ab6-0a59-6a7f-84a6a983a7e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17f9d762-b1cf-95b9-3bb4-311b8cd7f95c",
  "kind": "theorem",
  "lexical_name": "actual_signed_cumulative_negative_in_two_channel",
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
  "slug": "actual-signed-cumulative-negative-in-two-channel--f9849c30e6b72b4cf7cf6687",
  "source": {
    "blob": "bb4be45e1d5f30d83e4aac441d626131d021230c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variantd84107f7b0645f9a2002f8302f631803ae18dcd1341e0d684d213a623ec618e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9849c30e6b72b4cf7cf6687b524b9ede8c8ad09b439716b45ed5995a649bb0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variantd84107f7b0645f9a2002f8302f631803ae18dcd1341e0d684d213a623ec618e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17f9d762-b1cf-95b9-3bb4-311b8cd7f95c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_cumulative_negative_in_two_channel :
    ∃ A : ℝ, 1 ≤ A ∧ 2*42 < Real.exp (2*A) ∧
      upperProductSummatory ⌊Real.exp A⌋₊ 42 < 0 := by
  refine ⟨Real.log 10, ?_, ?_, ?_⟩
  · apply (Real.le_log_iff_exp_le (by norm_num : (0:ℝ)<10)).mpr
    exact Real.exp_one_lt_three.le.trans (by norm_num)
  · rw [two_mul (Real.log 10), Real.exp_add, Real.exp_log (by norm_num)]
    norm_num
  · rw [Real.exp_log (by norm_num)]
    norm_num only [Nat.floor_natCast, upperProductSummatory_10_42]

end
end UpperProductSummatorySignsScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variantd84107f7b0645f9a2002f8302f631803ae18dcd1341e0d684d213a623ec618e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variantd84107f7b0645f9a2002f8302f631803ae18dcd1341e0d684d213a623ec618e7.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb4be45e1d5f30d83e4aac441d626131d021230c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
