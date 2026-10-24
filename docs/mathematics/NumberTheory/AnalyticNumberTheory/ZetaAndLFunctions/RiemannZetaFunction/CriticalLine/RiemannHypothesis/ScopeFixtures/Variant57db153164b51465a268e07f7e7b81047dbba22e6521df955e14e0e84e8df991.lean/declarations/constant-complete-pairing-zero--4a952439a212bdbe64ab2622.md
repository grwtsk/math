# constant_complete_pairing_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab9dd1a2-4067-0146-c5bc-095a50c075a7",
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
  "slug": "constant-complete-pairing-zero--4a952439a212bdbe64ab2622",
  "source": {
    "blob": "768e3a907f67bf1a0fde218b1fd18a83ee83e892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant57db153164b51465a268e07f7e7b81047dbba22e6521df955e14e0e84e8df991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a952439a212bdbe64ab2622b5b32f806dd8c50df994e0a02abd6d6a64f66e5e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant57db153164b51465a268e07f7e7b81047dbba22e6521df955e14e0e84e8df991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab9dd1a2-4067-0146-c5bc-095a50c075a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–95.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant57db153164b51465a268e07f7e7b81047dbba22e6521df955e14e0e84e8df991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant57db153164b51465a268e07f7e7b81047dbba22e6521df955e14e0e84e8df991.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768e3a907f67bf1a0fde218b1fd18a83ee83e892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
