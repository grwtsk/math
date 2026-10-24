# actual_tail_holder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d03153a-8cac-d999-70b0-8caa85fb9891",
  "kind": "theorem",
  "lexical_name": "actual_tail_holder",
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
  "slug": "actual-tail-holder--a73d6d44004bf6637a0d3823",
  "source": {
    "blob": "6163b06d1fb9815bb76129adbac655bbcf000f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a73d6d44004bf6637a0d38238923939cd857fd2911e7450ab9f9930d2255e59d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d03153a-8cac-d999-70b0-8caa85fb9891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_tail_holder {N : ℕ} {p : ℝ} (hN : 1 ≤ N) (hp : 1 ≤ p)
    (hfinite : Summable (energyTerm N p)) (J : ℕ) :
    NativeRecordTailEnergy.remainingRecordHeight N J ≤
      (2 / Real.sqrt (N + J : ℕ)) ^ (1 - p⁻¹) * (tailEnergy N p J) ^ p⁻¹ := by
  have hr := finite_energy_implies_record_summable hN hp hfinite
  have hrJ : Summable (fun j => primeRecordIncrement N (j + J)) := (summable_nat_add_iff J).mpr hr
  have heJ : Summable (fun j => energyTerm N p (j + J)) := (summable_nat_add_iff J).mpr hfinite
  have hexp : 0 ≤ 1 - p⁻¹ := by linarith [inv_le_one_of_one_le₀ hp]
  have hbound (K : ℕ) : (∑ j ∈ Finset.range K, primeRecordIncrement N (j + J)) ≤
      (2 / Real.sqrt (N + J : ℕ)) ^ (1 - p⁻¹) *
        (∑ j ∈ Finset.range K, energyTerm N p (j + J)) ^ p⁻¹ := by
    let w : ℕ → ℝ := fun j => cellClock (N + J + j) (N + J + j + 1 : ℕ)
    let ρ : ℕ → ℝ := fun j => primeRecordIncrement N (j + J)
    have hw (j : ℕ) : 0 < w j := cellClock_pos (by omega)
    have hρ (j : ℕ) : 0 ≤ ρ j := CausalRecords.recordIncrement_nonneg _ _
    have h := finite_weighted_holder (Finset.range K) w ρ hp hw hρ
    have hterms : (∑ j ∈ Finset.range K, (ρ j) ^ p / (w j) ^ (p - 1)) =
        ∑ j ∈ Finset.range K, energyTerm N p (j + J) := by
      apply Finset.sum_congr rfl
      intro j _
      simp only [ρ, w, energyTerm, Nat.add_comm j J, Nat.add_assoc]
    rw [hterms] at h
    have hwidth : (∑ j ∈ Finset.range K, w j) ≤ 2 / Real.sqrt (N + J : ℕ) := by
      change (∑ j ∈ Finset.range K, cellClock (N + J + j) (N + J + j + 1 : ℕ)) ≤ _
      rw [native_width_telescope]
      have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + J + K : ℕ) := by positivity
      rw [show (2 : ℝ) / Real.sqrt (N + J : ℕ) = 2 * (1 / Real.sqrt (N + J : ℕ)) by ring]
      linarith
    exact h.trans (mul_le_mul_of_nonneg_right
      (Real.rpow_le_rpow (Finset.sum_nonneg (fun j _ => (hw j).le)) hwidth hexp)
      (Real.rpow_nonneg (Finset.sum_nonneg (fun j _ => energy_term_nonneg hN p (j + J))) _))
  exact le_of_tendsto_of_tendsto' hrJ.hasSum.tendsto_sum_nat
    (tendsto_const_nhds.mul (heJ.hasSum.tendsto_sum_nat.rpow_const (Or.inr (by positivity)))) hbound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6163b06d1fb9815bb76129adbac655bbcf000f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
