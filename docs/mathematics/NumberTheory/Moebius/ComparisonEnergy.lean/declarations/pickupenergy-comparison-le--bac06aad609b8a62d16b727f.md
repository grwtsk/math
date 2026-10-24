# pickupEnergy_comparison_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83fbc41b-ae61-614f-f235-e2f907873acc",
  "kind": "theorem",
  "lexical_name": "pickupEnergy_comparison_le",
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
  "slug": "pickupenergy-comparison-le--bac06aad609b8a62d16b727f",
  "source": {
    "blob": "79ce1f8d04b7c4666f3a81518702123e50610243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 21,
    "path": "GRWTSK/NumberTheory/Moebius/ComparisonEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bac06aad609b8a62d16b727f20a32ed0730cc205047a455a4dc89ec30118fbdf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ComparisonEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83fbc41b-ae61-614f-f235-e2f907873acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergy_comparison_le {g : ℝ → ℝ} (hg : Continuous g)
    {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤
      2 * (∫ u in (0 : ℝ)..T, g u ^ 2) +
        2 * (∫ u in (0 : ℝ)..T, (wholePickup u - g u) ^ 2) := by
  have hm : Continuous (fun u ↦ 2 * g u ^ 2 + 2 * (wholePickup u - g u) ^ 2) :=
    (continuous_const.mul (hg.pow 2)).add
      (continuous_const.mul ((wholePickup_continuous.sub hg).pow 2))
  calc
    pickupEnergy T ≤ ∫ u in (0 : ℝ)..T, 2 * g u ^ 2 + 2 * (wholePickup u - g u) ^ 2 := by
      apply intervalIntegral.integral_mono_on hT (wholePickup_sq_intervalIntegrable 0 T)
        (hm.intervalIntegrable 0 T)
      intro u _
      nlinarith [sq_nonneg (g u - (wholePickup u - g u))]
    _ = _ := by
      have hmain : IntervalIntegrable (fun u ↦ 2 * g u ^ 2) volume 0 T :=
        (continuous_const.mul (hg.pow 2)).intervalIntegrable 0 T
      have herr : IntervalIntegrable (fun u ↦ 2 * (wholePickup u - g u) ^ 2) volume 0 T :=
        (continuous_const.mul ((wholePickup_continuous.sub hg).pow 2)).intervalIntegrable 0 T
      rw [intervalIntegral.integral_add hmain herr,
        intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ComparisonEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ComparisonEnergy.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79ce1f8d04b7c4666f3a81518702123e50610243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
