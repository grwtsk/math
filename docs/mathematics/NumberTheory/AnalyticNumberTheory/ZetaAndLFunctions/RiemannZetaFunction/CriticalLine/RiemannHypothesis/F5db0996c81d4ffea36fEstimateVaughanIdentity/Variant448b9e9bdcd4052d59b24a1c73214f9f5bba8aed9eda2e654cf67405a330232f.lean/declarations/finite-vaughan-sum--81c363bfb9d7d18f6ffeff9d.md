# finite_vaughan_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3d7d1c4-dd62-f36e-7484-65ad5d8b0e98",
  "kind": "theorem",
  "lexical_name": "finite_vaughan_sum",
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
  "slug": "finite-vaughan-sum--81c363bfb9d7d18f6ffeff9d",
  "source": {
    "blob": "4aa3662eecdd5b7be72a5a3e32847c1956ad55b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 167,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81c363bfb9d7d18f6ffeff9dd6c9f09318a59b1dd1623a1c8ce2554cff160173",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3d7d1c4-dd62-f36e-7484-65ad5d8b0e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_vaughan_sum (N U V : ℕ) (hU : U ≤ N) (hV : V ≤ N)
    (w : ℕ → ℝ) (hw : ∀ n, N < n → w n = 0) :
    (∑ n ∈ Finset.Icc 1 N, vonMangoldt n * w n) =
      (∑ m ∈ Finset.Icc 1 V, vonMangoldt m * w m) +
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ k ∈ Finset.Icc 1 N, Real.log k * w (d*k)) -
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 V, vonMangoldt m * ∑ k ∈ Finset.Icc 1 N, w (d*m*k)) +
      (∑ m ∈ Finset.Ioc V N, vonMangoldt m *
        ∑ n ∈ Finset.Ioc U N, beta U n * w (m*n)) := by
  have hshift (a : ℕ) (ha : 1 ≤ a) (n : ℕ) (hn : N < n) : w (a*n) = 0 :=
    hw _ (hn.trans_le (Nat.le_mul_of_pos_left n ha))
  have hi :
      (∑ n ∈ Finset.Icc 1 N,
        (shortPart U (moebius : ArithmeticFunction ℝ) * log) n * w n) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ k ∈ Finset.Icc 1 N, Real.log k * w (d*k) := by
    rw [finite_convolution_sum N _ _ w hw]
    simp_rw [mul_assoc, ← Finset.mul_sum]
    rw [sum_shortPart U N hU]
    rfl
  have hii :
      (∑ n ∈ Finset.Icc 1 N,
        (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart V vonMangoldt *
          (zeta : ArithmeticFunction ℝ)) n * w n) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 V, vonMangoldt m * ∑ k ∈ Finset.Icc 1 N, w (d*m*k) := by
    rw [mul_assoc, finite_convolution_sum N _ _ w hw]
    simp_rw [mul_assoc, ← Finset.mul_sum]
    rw [sum_shortPart U N hU]
    apply Finset.sum_congr rfl
    intro d hd
    congr 1
    rw [finite_convolution_sum N _ _ (fun n ↦ w (d*n)) (hshift d (Finset.mem_Icc.mp hd).1)]
    simp_rw [mul_assoc, ← Finset.mul_sum]
    rw [sum_shortPart V N hV]
    apply Finset.sum_congr rfl
    intro m _
    congr 1
    apply Finset.sum_congr rfl
    intro k hk
    rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hk).1; omega), Nat.cast_one,
      one_mul]
  have hiii :
      (∑ n ∈ Finset.Icc 1 N,
        (longPart U (moebius : ArithmeticFunction ℝ) * longPart V vonMangoldt *
          (zeta : ArithmeticFunction ℝ)) n * w n) =
      ∑ m ∈ Finset.Ioc V N, vonMangoldt m *
        ∑ n ∈ Finset.Ioc U N, beta U n * w (m*n) := by
    rw [mul_comm (longPart U _), mul_assoc, finite_convolution_sum N _ _ w hw]
    simp_rw [mul_assoc, ← Finset.mul_sum]
    rw [sum_longPart]
    apply Finset.sum_congr rfl
    intro m _
    congr 1
    simp_rw [← beta_eq_long_convolution]
    symm
    apply Finset.sum_subset
    · intro n hn
      exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Ioc.mp hn).1; omega,
        (Finset.mem_Ioc.mp hn).2⟩
    · intro n hn hnot
      have hnU : n ≤ U := by
        by_contra h
        exact hnot (Finset.mem_Ioc.mpr ⟨by omega, (Finset.mem_Icc.mp hn).2⟩)
      rw [beta_zero_of_le U n hnU, zero_mul]
  have he (n : ℕ) := congrArg (fun f : ArithmeticFunction ℝ ↦ f n) (vaughan_identity U V)
  simp only [sub_eq_add_neg, ArithmeticFunction.add_apply, ArithmeticFunction.neg_apply] at he
  conv_lhs => simp only [he, add_mul, neg_mul, Finset.sum_add_distrib, Finset.sum_neg_distrib]
  rw [sum_shortPart V N hV, hi, hii, hiii]
  ring


end

end EstimateVaughanIdentity
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa3662eecdd5b7be72a5a3e32847c1956ad55b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
