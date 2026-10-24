# literal_native_record_tail_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba45d786-7d43-cabf-21c4-142a17f3e936",
  "kind": "theorem",
  "lexical_name": "literal_native_record_tail_price",
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
  "slug": "literal-native-record-tail-price--d83ca0e7ca4394d4e0b164b5",
  "source": {
    "blob": "1137f733c30a0bcbe708485779180b97c4b4bd7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeNativeEnergy/Variantc2ceeebb8cc88c61137cba6dfb84f5e81224364ab581cc7584936000de48b2e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d83ca0e7ca4394d4e0b164b5c2d24c046736a61fc06bc77bd9e0d657e9b6fd06",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeNativeEnergy/Variantc2ceeebb8cc88c61137cba6dfb84f5e81224364ab581cc7584936000de48b2e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba45d786-7d43-cabf-21c4-142a17f3e936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_native_record_tail_price {α t₀ p : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hp : 1 ≤ p) (hfinite : Summable (energyTerm hα ht₀ p)) (J : ℕ) :
    nativeTailPrice α t₀ p (recordTime hα ht₀ J) ≤ tailEnergy hα ht₀ p J := by
  have hppos : 0 < p := by linarith
  have hW : 0 < 2*Real.exp (-recordTime hα ht₀ J/2) := by positivity
  have hE : 0 ≤ tailEnergy hα ht₀ p J :=
    tsum_nonneg (fun j ↦ literal_energy_term_nonneg hα ht₀ p (j+J))
  have hδ : 0 ≤ 2-recordLevel hα ht₀ J := by linarith [literal_record_level_lt_two hα ht₀ J]
  have h := Real.rpow_le_rpow hδ (literal_native_record_tail_holder hα ht₀ hp hfinite J) hppos.le
  rw [Real.mul_rpow (Real.rpow_nonneg hW.le _) (Real.rpow_nonneg hE _),
    ← Real.rpow_mul hW.le,← Real.rpow_mul hE] at h
  have ha : (1-p⁻¹)*p=p-1 := by field_simp
  rw [ha,inv_mul_cancel₀ hppos.ne',Real.rpow_one] at h
  unfold nativeTailPrice
  change (2-recordLevel hα ht₀ J)^p / (2*Real.exp (-recordTime hα ht₀ J/2))^(p-1) ≤ _
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hW (p-1))).mpr
  simpa only [mul_comm] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeNativeEnergy/Variantc2ceeebb8cc88c61137cba6dfb84f5e81224364ab581cc7584936000de48b2e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeNativeEnergy/Variantc2ceeebb8cc88c61137cba6dfb84f5e81224364ab581cc7584936000de48b2e8.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1137f733c30a0bcbe708485779180b97c4b4bd7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
