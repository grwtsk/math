# actualRelativeAffineKernelPayment_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a279da8-efc3-faaa-b706-84412e3a8ce2",
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
  "slug": "actualrelativeaffinekernelpayment-eq--e056b1c37879d24b02c76b26",
  "source": {
    "blob": "1d5ef7bd7ed1c0c4edb85195ddc078eab77bee1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant30b2c62670fda4c9f7a35401d2280a3799341ece9522a165d0e4c8b9f14a5852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e056b1c37879d24b02c76b267073ad554ad52d45b5b19bc11646afa0df4fba82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant30b2c62670fda4c9f7a35401d2280a3799341ece9522a165d0e4c8b9f14a5852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a279da8-efc3-faaa-b706-84412e3a8ce2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–77.

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
  have hi' : IntervalIntegrable (fun t : ℝ => t * baselineLogKernel A t)
      volume 0 (2*A) := by
    simpa only [Pi.mul_apply, id_eq] using
      (continuous_id.mul (baseline_continuous hA)).intervalIntegrable
        (μ:=volume) 0 (2*A)
  unfold actualRelativeAffineKernelPayment
  rw [he, intervalIntegral.integral_add (hi.const_mul _) (hi'.const_mul _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]

/-- The actual affine trend costs only its value and its linked unit secant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant30b2c62670fda4c9f7a35401d2280a3799341ece9522a165d0e4c8b9f14a5852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant30b2c62670fda4c9f7a35401d2280a3799341ece9522a165d0e4c8b9f14a5852.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5ef7bd7ed1c0c4edb85195ddc078eab77bee1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
