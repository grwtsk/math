# actualClosedPrimeLogPotential_re_negative_right_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c310f2c-c020-dcd6-4bd7-fc2e44a9ba45",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeLogPotential_re_negative_right_line",
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
  "slug": "actualclosedprimelogpotential-re-negative-right-line--67147e4e3d27ac3936621d8b",
  "source": {
    "blob": "8f99b00ab852cd99c5a8c5db4eea98eff2c68c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 153,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variantc336b44fadf64ede2e7b98d5854fab015e0aa3bd72c6ca3999ae17c8a87bff54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67147e4e3d27ac3936621d8ba54caf59f99b1620dd13b3809fb5acf55a2768ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variantc336b44fadf64ede2e7b98d5854fab015e0aa3bd72c6ca3999ae17c8a87bff54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c310f2c-c020-dcd6-4bd7-fc2e44a9ba45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeLogPotential_re_negative_right_line (A : ℝ) (hA : 1 ≤ A) :
    (actualClosedPrimeLogPotential A ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I)).re ≤ -1/48 := by
  let N := ⌊Real.exp (2*A)⌋₊+1
  have hN : 3 ≤ N := by
    have h := two_in_closed A hA
    exact Nat.succ_le_of_lt (Finset.mem_range.mp h)
  have hl : Real.log (2:ℝ) ≠ 0 := (Real.log_pos (by norm_num)).ne'
  have hf0 : a 4 0 * Real.cos ((Real.pi/Real.log 2)*Real.log (0:ℝ)) = 0 := by simp [a]
  have hf1 : a 4 1 * Real.cos ((Real.pi/Real.log 2)*Real.log (1:ℝ)) = 0 := by simp [a]
  have hf2 : a 4 2 * Real.cos ((Real.pi/Real.log 2)*Real.log (2:ℝ)) = -1/16 := by
    have ha : a 4 2 = 1/16 := by
      simp only [a, ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2),
        div_self hl, one_mul]
      rw [show -4*Real.log (2:ℝ) = -(Real.log (2:ℝ)*4) by ring,
        Real.exp_neg, ← Real.rpow_def_of_pos (by norm_num : 0 < (2:ℝ)), Real.rpow_natCast]
      norm_num
    rw [div_mul_cancel₀ _ hl, Real.cos_pi, ha]
    norm_num
  rw [actualClosedPrimeLogPotential_re]
  change ∑ n ∈ Finset.range N, a 4 n * Real.cos ((Real.pi/Real.log 2)*Real.log n) ≤ _
  have hsplit := Finset.sum_range_add (fun n => a 4 n *
    Real.cos ((Real.pi/Real.log 2)*Real.log n)) 3 (N-3)
  rw [Nat.add_sub_of_le hN] at hsplit
  rw [hsplit]
  have hhead : ∑ n ∈ Finset.range 3,
      a 4 n * Real.cos ((Real.pi/Real.log 2)*Real.log n) = -1/16 := by
    simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add, hf0, hf1, hf2]
    norm_num
  rw [hhead]
  have htail : ∑ k ∈ Finset.range (N-3), a 4 (3+k) *
      Real.cos ((Real.pi/Real.log 2)*Real.log (3+k:ℕ)) ≤ 1/24 := by
    calc
      _ ≤ ∑ k ∈ Finset.range (N-3), 1/((k:ℝ)+3)^4 := by
        apply Finset.sum_le_sum
        intro k _
        have h := (mul_le_of_le_one_right (a_nonneg 4 (3+k))
          (Real.cos_le_one _)).trans (a_four_le (3+k) (by omega))
        simpa only [Nat.cast_add, Nat.cast_ofNat, add_comm (3:ℝ)] using h
      _ ≤ 1/24 := fourth_tail_sum (N-3)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualEulerPotentialPhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variantc336b44fadf64ede2e7b98d5854fab015e0aa3bd72c6ca3999ae17c8a87bff54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variantc336b44fadf64ede2e7b98d5854fab015e0aa3bd72c6ca3999ae17c8a87bff54.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f99b00ab852cd99c5a8c5db4eea98eff2c68c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
