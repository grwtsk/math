# completeRows_eq_logKernel_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a70c404-1647-cfc0-54c1-43f556232561",
  "kind": "theorem",
  "lexical_name": "completeRows_eq_logKernel_one",
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
  "slug": "completerows-eq-logkernel-one--498fc2811f8789a2a35dda45",
  "source": {
    "blob": "6d58330dc2b70bf58f0b4fa32b0e9417cb4596b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:498fc2811f8789a2a35dda452b7524a4012989c2f78a4f5535cff43f1dd6dfa8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a70c404-1647-cfc0-54c1-43f556232561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeRows_eq_logKernel_one (A : ℝ) (hA : 1 ≤ A) :
    completeMangoldtPlainRows A = sourceMobiusKernel A 1 := by
  have hf := finite_convolution_sum (sourceKernelCutoff A) vonMangoldt
    (zeta : ArithmeticFunction ℝ) (fun n ↦ sourcePlainWeight A n)
    (sourcePlainWeight_zero_of_cutoff_lt A hA)
  rw [vonMangoldt_mul_zeta] at hf
  simp only [ArithmeticFunction.log_apply] at hf
  have hz (n : ℕ) (hn : n ∈ Finset.Icc 1 (sourceKernelCutoff A)) :
      (zeta : ArithmeticFunction ℝ) n = 1 := by
    rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hn).1; omega),
      Nat.cast_one]
  have hr :
      (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A),
        ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
          vonMangoldt m * (zeta : ArithmeticFunction ℝ) n *
            sourcePlainWeight A ((m * n : ℕ) : ℝ)) = completeMangoldtPlainRows A := by
    unfold completeMangoldtPlainRows sourcePlainKernel
    apply Finset.sum_congr rfl
    intro m _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    rw [hz n hn]
    simp only [mul_one, Nat.cast_mul]
  rw [hr] at hf
  have ht := sourceMobiusKernel_eq_plainWeight A 1 (by norm_num)
  simp only [Nat.one_mul, Nat.cast_one] at ht
  exact hf.symm.trans ht.symm

/-- Unit normalization and evenness specialize the independently defined logarithmic row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D684e2b89207264c0ee40e1c212c4bb3b85241c1dc7ae43d6e9b42321f2a861aSourceWholePlain/Variant3f39afdc4cb7d61c281549e2dea2d8c70d6dd2e783189dc4f7c92fa0681a71ce.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d58330dc2b70bf58f0b4fa32b0e9417cb4596b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
