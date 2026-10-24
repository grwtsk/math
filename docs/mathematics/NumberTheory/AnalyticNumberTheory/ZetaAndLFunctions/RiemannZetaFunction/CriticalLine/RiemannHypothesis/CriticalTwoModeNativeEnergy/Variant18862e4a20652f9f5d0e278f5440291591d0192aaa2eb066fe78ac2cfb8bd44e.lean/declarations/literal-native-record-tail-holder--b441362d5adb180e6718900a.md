# literal_native_record_tail_holder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9056363-da16-61d3-b337-9b7b8aa42d00",
  "kind": "theorem",
  "lexical_name": "literal_native_record_tail_holder",
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
  "slug": "literal-native-record-tail-holder--b441362d5adb180e6718900a",
  "source": {
    "blob": "d74c2776eabfffaeb4c628e895d8631d2d3599bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeNativeEnergy/Variant18862e4a20652f9f5d0e278f5440291591d0192aaa2eb066fe78ac2cfb8bd44e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b441362d5adb180e6718900a2266a2f1620458720ea9bcb904d8385723f78806",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeNativeEnergy/Variant18862e4a20652f9f5d0e278f5440291591d0192aaa2eb066fe78ac2cfb8bd44e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9056363-da16-61d3-b337-9b7b8aa42d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_native_record_tail_holder {α t₀ p : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hp : 1 ≤ p) (hfinite : Summable (energyTerm hα ht₀ p)) (J : ℕ) :
    2-recordLevel hα ht₀ J ≤
      (2*Real.exp (-recordTime hα ht₀ J/2))^(1-p⁻¹) * (tailEnergy hα ht₀ p J)^p⁻¹ := by
  have heJ : Summable (fun j : ℕ ↦ energyTerm hα ht₀ p (j+J)) := (summable_nat_add_iff J).mpr hfinite
  have hexp : 0 ≤ 1-p⁻¹ := by linarith [inv_le_one_of_one_le₀ hp]
  have hbound (K : ℕ) : (∑ j ∈ Finset.range K, recordHeight hα ht₀ (j+J)) ≤
      (2*Real.exp (-recordTime hα ht₀ J/2))^(1-p⁻¹) *
        (∑ j ∈ Finset.range K, energyTerm hα ht₀ p (j+J))^p⁻¹ := by
    let w : ℕ → ℝ := fun j ↦ nativeClock hα ht₀ (j+J)
    let ρ : ℕ → ℝ := fun j ↦ recordHeight hα ht₀ (j+J)
    have hw (j : ℕ) : 0 < w j := literal_native_clock_pos hα ht₀ (j+J)
    have hρ (j : ℕ) : 0 ≤ ρ j := (literal_record_height_pos hα ht₀ (j+J)).le
    have h := finite_weighted_holder (Finset.range K) w ρ hp hw hρ
    change (∑ j ∈ Finset.range K, recordHeight hα ht₀ (j+J)) ≤
      (∑ j ∈ Finset.range K, w j)^(1-p⁻¹) *
        (∑ j ∈ Finset.range K, energyTerm hα ht₀ p (j+J))^p⁻¹ at h
    have hwidth : (∑ j ∈ Finset.range K, w j) ≤ 2*Real.exp (-recordTime hα ht₀ J/2) :=
      literal_native_clock_prefix_le_remaining_width hα ht₀ J K
    exact h.trans (mul_le_mul_of_nonneg_right
      (Real.rpow_le_rpow (Finset.sum_nonneg (fun j _ ↦ (hw j).le)) hwidth hexp)
      (Real.rpow_nonneg (Finset.sum_nonneg (fun j _ ↦ literal_energy_term_nonneg hα ht₀ p (j+J))) _))
  exact le_of_tendsto_of_tendsto' (literal_record_height_tail_has_sum hα ht₀ J).tendsto_sum_nat
    (tendsto_const_nhds.mul (heJ.hasSum.tendsto_sum_nat.rpow_const (Or.inr (by positivity)))) hbound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeNativeEnergy/Variant18862e4a20652f9f5d0e278f5440291591d0192aaa2eb066fe78ac2cfb8bd44e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeNativeEnergy/Variant18862e4a20652f9f5d0e278f5440291591d0192aaa2eb066fe78ac2cfb8bd44e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74c2776eabfffaeb4c628e895d8631d2d3599bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
