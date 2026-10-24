# actualRelativeAffineKernelPayment_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8069e31-57e7-e1a0-8832-eb11aeecac71",
  "kind": "theorem",
  "lexical_name": "actualRelativeAffineKernelPayment_eq",
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
  "slug": "actualrelativeaffinekernelpayment-eq--b50313f1161648c32029f87f",
  "source": {
    "blob": "238094f113e05abe7979dae15f68afd9793b31bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant3935927f37736b19e63de172ee44a15b95c73fef0fc4917c0cb74d6fde48bec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b50313f1161648c32029f87f57b271129b4595c3083dac3cfca6c51bac459d8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant3935927f37736b19e63de172ee44a15b95c73fef0fc4917c0cb74d6fde48bec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8069e31-57e7-e1a0-8832-eb11aeecac71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativeAffineKernelPayment_eq {A : ℝ} (hA : 1 ≤ A) :
    actualRelativeAffineKernelPayment A =
      (relativePsiError (2*A) - 2*A *
        (relativePsiError (2*A) - relativePsiError (2*A-1))) *
        (∫ t in 0..2*A, baselineLogKernel A t) +
      (relativePsiError (2*A) - relativePsiError (2*A-1)) *
        (∫ t in 0..2*A, t * baselineLogKernel A t) := by
  have he : (fun t => baselineLogKernel A t * actualRelativeAffineTrend A t) =
      fun t => (relativePsiError (2*A) - 2*A *
        (relativePsiError (2*A) - relativePsiError (2*A-1))) * baselineLogKernel A t +
      (relativePsiError (2*A) - relativePsiError (2*A-1)) *
        (t * baselineLogKernel A t) := by
    funext t
    unfold actualRelativeAffineTrend
    ring
  have hi := (baseline_continuous hA).intervalIntegrable (μ:=volume) 0 (2*A)
  have hc : Continuous (baselineLogKernel A) := baseline_continuous hA
  have hi' : IntervalIntegrable (fun t : ℝ => t * baselineLogKernel A t)
      volume 0 (2*A) :=
    (by fun_prop : Continuous (fun t : ℝ => t * baselineLogKernel A t)).intervalIntegrable _ _
  unfold actualRelativeAffineKernelPayment
  rw [he, intervalIntegral.integral_add (hi.const_mul _) (hi'.const_mul _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]

/-- The actual affine trend costs only its value and its linked unit secant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant3935927f37736b19e63de172ee44a15b95c73fef0fc4917c0cb74d6fde48bec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant3935927f37736b19e63de172ee44a15b95c73fef0fc4917c0cb74d6fde48bec5.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238094f113e05abe7979dae15f68afd9793b31bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
