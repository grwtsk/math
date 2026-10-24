# criticalRelativePairing_eq_nonaffine_add_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d771fe-a419-eec5-3ba8-bf0df8f655fb",
  "kind": "theorem",
  "lexical_name": "criticalRelativePairing_eq_nonaffine_add_payment",
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
  "slug": "criticalrelativepairing-eq-nonaffine-add-payment--7937725d2cb9d747d6eda036",
  "source": {
    "blob": "239b8c6afa13fc8ea03b3340f8cc09f7a61c1d1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 176,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant69e75eb91623d8e0b2cf3c3ee25e4797430fb577fd3c4efa8dec18ec3ee8c88a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7937725d2cb9d747d6eda036d9591f3752ee0a31ea515f21c3ca765c13fe726d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant69e75eb91623d8e0b2cf3c3ee25e4797430fb577fd3c4efa8dec18ec3ee8c88a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d771fe-a419-eec5-3ba8-bf0df8f655fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalRelativePairing_eq_nonaffine_add_payment {A : ℝ} (hA : 1 ≤ A) :
    criticalRelativePairing A =
      (∫ t in 0..2*A, baselineLogKernel A t *
        (relativePsiError t-actualRelativeAffineTrend A t)) +
      actualRelativeAffineKernelPayment A := by
  have he : (∫ t in Ioi (0:ℝ), criticalKernel A t) =
      ∫ t in 0..2*A, criticalKernel A t := by
    rw [intervalIntegral.integral_of_le (by linarith : (0:ℝ) ≤ 2*A),
      ← Ioc_union_Ioi_eq_Ioi (by linarith : (0:ℝ) ≤ 2*A)]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro t ht
    simp [criticalKernel, criticalWeight_zero_above hA ht]
  have hi : IntervalIntegrable (criticalKernel A) volume 0 (2*A) := by
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith : (0:ℝ)≤2*A)]
    exact (criticalKernel_integrable hA).mono_set (fun _ h => h.1)
  have ha := actualRelativeAffineKernel_intervalIntegrable hA
  have hsub : (fun t => criticalKernel A t -
      baselineLogKernel A t * actualRelativeAffineTrend A t) =
      fun t => baselineLogKernel A t *
        (relativePsiError t-actualRelativeAffineTrend A t) := by
    funext t
    unfold criticalKernel baselineLogKernel
    ring
  unfold criticalRelativePairing actualRelativeAffineKernelPayment
  rw [he, ← hsub, intervalIntegral.integral_sub hi ha]
  ring

end FormalResearch.RiemannHypothesis.SourceActualRelativeAffinePayment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant69e75eb91623d8e0b2cf3c3ee25e4797430fb577fd3c4efa8dec18ec3ee8c88a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant69e75eb91623d8e0b2cf3c3ee25e4797430fb577fd3c4efa8dec18ec3ee8c88a.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `239b8c6afa13fc8ea03b3340f8cc09f7a61c1d1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
