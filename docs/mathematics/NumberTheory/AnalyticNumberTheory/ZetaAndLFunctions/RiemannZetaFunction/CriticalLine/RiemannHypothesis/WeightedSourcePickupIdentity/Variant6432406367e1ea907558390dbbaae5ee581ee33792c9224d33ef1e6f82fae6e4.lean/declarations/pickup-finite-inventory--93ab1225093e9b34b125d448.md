# pickup_finite_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58c2dce5-dc31-4367-60f2-abac479c501c",
  "kind": "theorem",
  "lexical_name": "pickup_finite_inventory",
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
  "slug": "pickup-finite-inventory--93ab1225093e9b34b125d448",
  "source": {
    "blob": "30a8f805449456b94a8c67527c804d27727d29ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93ab1225093e9b34b125d44823d732aee0cbca0d7cb1c159492c461375b2f7b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58c2dce5-dc31-4367-60f2-abac479c501c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_finite_inventory {A T : ℝ} (hT : 0 ≤ T) (hTA : T ≤ 2 * A) :
    pickup T = ∑ n ∈ integerInventory A, realMoebius n * atomPickup T n := by
  rw [pickup_eq_integral hT, intervalIntegral.integral_of_le hT,
    ← integral_Icc_eq_integral_Ioc]
  calc
    _ = ∫ u in Icc 0 T, ∑ n ∈ integerInventory A, realMoebius n * clockAtom n u := by
      apply setIntegral_congr_fun measurableSet_Icc
      intro u hu
      rw [pickupDensity, recording_clock_inventory hTA hu, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      simp only [clockAtom, indicator_apply, mem_Ici]
      split_ifs <;> ring
    _ = ∑ n ∈ integerInventory A, ∫ u in Icc 0 T, realMoebius n * clockAtom n u := by
      rw [integral_finsetSum]
      intro n _
      exact (clockAtom_integrableOn n T).const_mul _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [integral_const_mul, clockAtom_integral (Finset.mem_Icc.mp hn).1 hT]

/-- The original centered reading equals the specified weighted Möbius sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a8f805449456b94a8c67527c804d27727d29ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
