# actualHalfMangoldtEdgeMoment_eq_prefix_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78570974-c09c-4573-389b-b2a5f74d9e4a",
  "kind": "theorem",
  "lexical_name": "actualHalfMangoldtEdgeMoment_eq_prefix_integral",
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
  "slug": "actualhalfmangoldtedgemoment-eq-prefix-integral--ac88e26f8fc9b3fe2135efc0",
  "source": {
    "blob": "2857beeefd5b493f9e4964de22a0c5cb060fb474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variant9102348875282be67cf49219f6eab7cb66c76387d61920ff271d602d16f3042f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac88e26f8fc9b3fe2135efc0a9aaf7af082fc64f1571e402fe4bec99cc31ca1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variant9102348875282be67cf49219f6eab7cb66c76387d61920ff271d602d16f3042f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78570974-c09c-4573-389b-b2a5f74d9e4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfMangoldtEdgeMoment_eq_prefix_integral (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    actualHalfMangoldtEdgeMoment (j + 1) L =
      (j + 1 : ℝ) * (∫ t in 0..L, actualHalfMangoldtPrefix t * (L - t) ^ j) := by
  have hF : ContDiff ℝ 1 (fun t : ℝ => (L - t) ^ (j + 1)) := by fun_prop
  have hd : deriv (fun t : ℝ => (L - t) ^ (j + 1)) =
      fun t => -(j + 1 : ℝ) * (L - t) ^ j := by
    funext t
    have hh := ((hasDerivAt_const t L).sub (hasDerivAt_id t)).pow (j + 1)
    have hv : HasDerivAt (fun t : ℝ => (L - t) ^ (j + 1))
        (-(j + 1 : ℝ) * (L - t) ^ j) t := by
      apply hh.congr_deriv
      simp
      ring
    exact hv.deriv
  have hb (n : ℕ) (hn : n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊) :
      0 ≤ Real.log (n : ℝ) ∧ Real.log (n : ℝ) ≤ L := by
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hn).1
    exact ⟨Real.log_nonneg (by exact_mod_cast (Finset.mem_Icc.mp hn).1),
      (Real.log_le_iff_le_exp hn0).mpr
        ((Nat.le_floor_iff (Real.exp_pos L).le).mp (Finset.mem_Icc.mp hn).2)⟩
  have he := integral_finite_steps_deriv 0 L (Finset.Icc 1 ⌊Real.exp L⌋₊)
    (fun n => Real.log n) (fun n => ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ))
    hb (fun t => (L - t) ^ (j + 1)) hF
  have heq : (fun t : ℝ => ∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊,
      (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
        (if Real.log n ≤ t then deriv (fun t : ℝ => (L - t) ^ (j + 1)) t else 0))
        =ᵐ[volume.restrict (uIoc (0 : ℝ) L)]
      (fun t => -(j + 1 : ℝ) * (actualHalfMangoldtPrefix t * (L - t) ^ j)) := by
    filter_upwards [ae_restrict_mem measurableSet_uIoc] with t ht
    rw [halfPrefix_eq_steps ((uIoc_of_le hL ▸ ht).2), Finset.sum_mul, hd,
      Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    split_ifs <;> ring
  rw [intervalIntegral.integral_congr_ae_restrict heq,
    intervalIntegral.integral_const_mul] at he
  simp only [sub_self, zero_pow (by omega : j + 1 ≠ 0), zero_sub, mul_neg,
    Finset.sum_neg_distrib, actualHalfMangoldtEdgeMoment] at he ⊢
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variant9102348875282be67cf49219f6eab7cb66c76387d61920ff271d602d16f3042f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variant9102348875282be67cf49219f6eab7cb66c76387d61920ff271d602d16f3042f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2857beeefd5b493f9e4964de22a0c5cb060fb474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
