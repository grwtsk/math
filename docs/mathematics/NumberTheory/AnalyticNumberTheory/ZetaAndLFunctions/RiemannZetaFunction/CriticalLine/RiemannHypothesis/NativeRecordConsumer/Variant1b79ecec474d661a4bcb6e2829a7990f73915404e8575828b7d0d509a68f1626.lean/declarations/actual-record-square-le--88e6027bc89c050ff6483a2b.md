# actual_record_square_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f3d9384-27d5-e25b-6172-41f07f04a202",
  "kind": "theorem",
  "lexical_name": "actual_record_square_le",
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
  "slug": "actual-record-square-le--88e6027bc89c050ff6483a2b",
  "source": {
    "blob": "eb2c6c991b76b0f4644f4d4b969a6ec13cca88ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeRecordConsumer/Variant1b79ecec474d661a4bcb6e2829a7990f73915404e8575828b7d0d509a68f1626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88e6027bc89c050ff6483a2bcc17cdf25c82b24b1f74ffe9d99888a8d799919b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeRecordConsumer/Variant1b79ecec474d661a4bcb6e2829a7990f73915404e8575828b7d0d509a68f1626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f3d9384-27d5-e25b-6172-41f07f04a202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_record_square_le {N K : ℕ} (hN : 1 ≤ N) :
    (primeRecordLevel N K) ^ 2 ≤
      (2 / Real.sqrt N) * recordEnergy N K := by
  by_cases hK : K = 0
  · subst K
    simp [primeRecordLevel, recordEnergy]
  have hw (j : ℕ) (_hj : j ∈ Finset.range K) :
      0 < cellClock (N + j) (N + j + 1 : ℕ) := cellClock_pos (by omega)
  have hW : 0 < ∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ) := by
    apply Finset.sum_pos
    · exact hw
    · exact ⟨0, Finset.mem_range.mpr (by omega)⟩
  have h := WeightedHodge.finite_refinement_mono (Finset.range K)
    (fun j => cellClock (N + j) (N + j + 1 : ℕ)) (primeRecordIncrement N) hw hW.ne'
  rw [record_sum_eq_level] at h
  have hroot := (div_le_iff₀ hW).mp h
  have hE : 0 ≤ recordEnergy N K :=
    Finset.sum_nonneg (fun j hj => div_nonneg (sq_nonneg _) (hw j hj).le)
  have hWidth : (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) ≤
      2 / Real.sqrt N := by
    rw [native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt N = 2 * (1 / Real.sqrt N) by ring]
    linarith
  calc
    _ ≤ recordEnergy N K *
        (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) := hroot
    _ ≤ recordEnergy N K * (2 / Real.sqrt N) := mul_le_mul_of_nonneg_left hWidth hE
    _ = _ := by ring

/-- A supplier with an explicit reserve proves every future integer endpoint nonpositive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeRecordConsumer/Variant1b79ecec474d661a4bcb6e2829a7990f73915404e8575828b7d0d509a68f1626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeRecordConsumer/Variant1b79ecec474d661a4bcb6e2829a7990f73915404e8575828b7d0d509a68f1626.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb2c6c991b76b0f4644f4d4b969a6ec13cca88ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
