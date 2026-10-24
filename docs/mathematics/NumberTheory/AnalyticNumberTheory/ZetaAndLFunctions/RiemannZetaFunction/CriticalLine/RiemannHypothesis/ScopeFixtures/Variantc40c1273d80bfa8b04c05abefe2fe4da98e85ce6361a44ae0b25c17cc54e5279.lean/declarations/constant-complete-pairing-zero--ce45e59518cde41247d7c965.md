# constant_complete_pairing_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd3934f56a4cbfadea5edc8a044157685a34aa97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c40c1273d80bfa8b04c05abefe2fe4da98e85ce6361a44ae0b25c17cc54e5279.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03c18139-1975-a47f-ece7-d409ac931365",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28fdaa82-e6ca-9659-2183-e8ddd6368d35",
  "kind": "theorem",
  "lexical_name": "constant_complete_pairing_zero",
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
  "slug": "constant-complete-pairing-zero--ce45e59518cde41247d7c965",
  "source": {
    "blob": "bd3934f56a4cbfadea5edc8a044157685a34aa97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantc40c1273d80bfa8b04c05abefe2fe4da98e85ce6361a44ae0b25c17cc54e5279.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce45e59518cde41247d7c965df922f8d4a0dfddd421c7865a1cbb190d3d053d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantc40c1273d80bfa8b04c05abefe2fe4da98e85ce6361a44ae0b25c17cc54e5279.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28fdaa82-e6ca-9659-2183-e8ddd6368d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constant_complete_pairing_zero {A : ℝ} (hA : 1 ≤ A) (c : ℝ) :
    (∫ u in 0..2 * A, c * deriv (pairedTailTest A) u) = 0 := by
  have hc := (pairedTailTest_contDiff hA).continuous_deriv_one
  have hz : (∫ u in 0..2 * A, deriv (pairedTailTest A) u) = 0 := by
    have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun u _ => ((contDiff_one_iff_deriv.mp (pairedTailTest_contDiff hA)).1 u).hasDerivAt)
      (hc.intervalIntegrable (μ := volume) 0 (2 * A))
    simpa only [pairedTailTest_at_upper hA, pairedTailTest_at_zero hA, sub_self] using h
  rw [intervalIntegral.integral_const_mul, hz, mul_zero]

end FormalResearch.RiemannHypothesis.SourceSecondAbelScopeFixtures

open FormalResearch.RiemannHypothesis.SourceSecondAbelScopeFixtures

#check @actual_paired_deriv_zero
#print axioms actual_paired_deriv_zero
#check @actual_bridge_boundary_product_zero
#print axioms actual_bridge_boundary_product_zero
#check @omitted_one_discrepancy_wrong_at_zero
#print axioms omitted_one_discrepancy_wrong_at_zero
#check @constant_complete_pairing_zero
#print axioms constant_complete_pairing_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantc40c1273d80bfa8b04c05abefe2fe4da98e85ce6361a44ae0b25c17cc54e5279.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantc40c1273d80bfa8b04c05abefe2fe4da98e85ce6361a44ae0b25c17cc54e5279.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd3934f56a4cbfadea5edc8a044157685a34aa97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
