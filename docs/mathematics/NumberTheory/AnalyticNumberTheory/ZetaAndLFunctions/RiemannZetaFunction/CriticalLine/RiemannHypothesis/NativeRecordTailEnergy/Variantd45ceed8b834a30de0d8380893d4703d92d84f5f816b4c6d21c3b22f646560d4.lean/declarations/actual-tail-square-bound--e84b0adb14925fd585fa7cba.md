# actual_tail_square_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:839b4cea-9212-fa67-5b6d-119bb283a686",
  "kind": "theorem",
  "lexical_name": "actual_tail_square_bound",
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
  "slug": "actual-tail-square-bound--e84b0adb14925fd585fa7cba",
  "source": {
    "blob": "dd0412824663cf0d21c4e0a343cfaacef6a25dcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeRecordTailEnergy/Variantd45ceed8b834a30de0d8380893d4703d92d84f5f816b4c6d21c3b22f646560d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e84b0adb14925fd585fa7cba9923ebdd0c409f072c0025a15a4a5531ff3b401a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeRecordTailEnergy/Variantd45ceed8b834a30de0d8380893d4703d92d84f5f816b4c6d21c3b22f646560d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:839b4cea-9212-fa67-5b6d-119bb283a686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_tail_square_bound {N : ℕ} (hN : 1 ≤ N)
    (hfinite : Summable (energyTerm N)) (J : ℕ) :
    (remainingRecordHeight N J) ^ 2 ≤ (2 / Real.sqrt (N + J : ℕ)) * tailEnergy N J := by
  have hr := finite_energy_implies_record_summable hN hfinite
  have hrJ : Summable (fun j => primeRecordIncrement N (j + J)) :=
    (summable_nat_add_iff J).mpr hr
  have heJ : Summable (fun j => energyTerm N (j + J)) :=
    (summable_nat_add_iff J).mpr hfinite
  have hfiniteBound (K : ℕ) :
      (∑ j ∈ Finset.range K, primeRecordIncrement N (j + J)) ^ 2 ≤
        (2 / Real.sqrt (N + J : ℕ)) * ∑ j ∈ Finset.range K, energyTerm N (j + J) := by
    let w : ℕ → ℝ := fun j => cellClock (N + J + j) (N + J + j + 1 : ℕ)
    let ρ : ℕ → ℝ := fun j => primeRecordIncrement N (j + J)
    have hw (j : ℕ) : 0 < w j := cellClock_pos (by omega)
    have h := TailEnergyBarrier.finite_square_bound w ρ hw K
    have hterms : (∑ j ∈ Finset.range K, (ρ j) ^ 2 / w j) =
        ∑ j ∈ Finset.range K, energyTerm N (j + J) := by
      apply Finset.sum_congr rfl
      intro j _
      simp only [ρ, w, energyTerm, Nat.add_comm j J, Nat.add_assoc]
    have hwidth : (∑ j ∈ Finset.range K, w j) ≤ 2 / Real.sqrt (N + J : ℕ) := by
      change (∑ j ∈ Finset.range K, cellClock (N + J + j) (N + J + j + 1 : ℕ)) ≤ _
      rw [native_width_telescope]
      have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + J + K : ℕ) := by positivity
      rw [show (2 : ℝ) / Real.sqrt (N + J : ℕ) =
        2 * (1 / Real.sqrt (N + J : ℕ)) by ring]
      linarith
    rw [hterms] at h
    exact h.trans (mul_le_mul_of_nonneg_right hwidth
      (Finset.sum_nonneg (fun j _ => energy_term_nonneg hN (j + J))))
  exact le_of_tendsto_of_tendsto' (hrJ.hasSum.tendsto_sum_nat.pow 2)
    (tendsto_const_nhds.mul heJ.hasSum.tendsto_sum_nat) hfiniteBound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeRecordTailEnergy/Variantd45ceed8b834a30de0d8380893d4703d92d84f5f816b4c6d21c3b22f646560d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeRecordTailEnergy/Variantd45ceed8b834a30de0d8380893d4703d92d84f5f816b4c6d21c3b22f646560d4.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd0412824663cf0d21c4e0a343cfaacef6a25dcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
