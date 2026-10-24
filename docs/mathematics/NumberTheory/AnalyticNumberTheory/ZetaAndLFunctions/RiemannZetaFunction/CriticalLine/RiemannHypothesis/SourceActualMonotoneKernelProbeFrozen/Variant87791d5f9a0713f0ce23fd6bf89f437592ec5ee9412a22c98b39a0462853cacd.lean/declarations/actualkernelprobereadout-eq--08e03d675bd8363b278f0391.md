# actualKernelProbeReadout_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdf5cc64-ad34-adca-31d9-bbd1cea6f6b9",
  "kind": "theorem",
  "lexical_name": "actualKernelProbeReadout_eq",
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
  "slug": "actualkernelprobereadout-eq--08e03d675bd8363b278f0391",
  "source": {
    "blob": "e0b7c91f37f56d530f82638a3e79b9d2aa3ef324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variant87791d5f9a0713f0ce23fd6bf89f437592ec5ee9412a22c98b39a0462853cacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08e03d675bd8363b278f0391bdf50498f56776b76ae647f01636adc985b8c2c4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variant87791d5f9a0713f0ce23fd6bf89f437592ec5ee9412a22c98b39a0462853cacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdf5cc64-ad34-adca-31d9-bbd1cea6f6b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualKernelProbeReadout_eq {A : ℝ} (hA : 1 ≤ A) (epsilon : ℝ) :
    actualKernelProbeReadout A epsilon = epsilon * (3 / 4) *
      (actualHalfCorrelationTransform A (1 / 4)).re - 1 := by
  have he (t : ℝ) : Real.exp (t / 2) * syntheticRelativeProbe epsilon t =
      epsilon * Real.exp (t / 4) - (1 + epsilon) * Real.exp (-t / 2) := by
    unfold syntheticRelativeProbe
    calc
      _ = epsilon * (Real.exp (t / 2) * Real.exp (-t / 4)) -
          (1 + epsilon) * (Real.exp (t / 2) * Real.exp (-t)) := by ring
      _ = _ := by
        rw [← Real.exp_add, ← Real.exp_add]
        congr 2 <;> congr 1 <;> ring
  have hi (z : ℝ) : IntervalIntegrable
      (fun t => Real.exp (z * t) * criticalWeight A t) volume 0 (2 * A) :=
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (z * t))).mul
      (criticalWeight_continuous hA)).intervalIntegrable _ _
  unfold actualKernelProbeReadout
  have hx : (fun t : ℝ => Real.exp (t / 2) * syntheticRelativeProbe epsilon t *
      criticalWeight A t) =
      (fun t => epsilon * (Real.exp ((1 / 4) * t) * criticalWeight A t) -
        (1 + epsilon) * (Real.exp ((-1 / 2) * t) * criticalWeight A t)) := by
    funext t
    rw [he]
    simp only [show (1 / 4 : ℝ) * t = t / 4 by ring,
      show (-1 / 2 : ℝ) * t = -t / 2 by ring]
    ring
  rw [hx, intervalIntegral.integral_sub ((hi (1 / 4)).const_mul epsilon)
      ((hi (-1 / 2)).const_mul (1 + epsilon)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    actual_real_mode hA, actual_real_mode hA]
  norm_num
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variant87791d5f9a0713f0ce23fd6bf89f437592ec5ee9412a22c98b39a0462853cacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variant87791d5f9a0713f0ce23fd6bf89f437592ec5ee9412a22c98b39a0462853cacd.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0b7c91f37f56d530f82638a3e79b9d2aa3ef324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
