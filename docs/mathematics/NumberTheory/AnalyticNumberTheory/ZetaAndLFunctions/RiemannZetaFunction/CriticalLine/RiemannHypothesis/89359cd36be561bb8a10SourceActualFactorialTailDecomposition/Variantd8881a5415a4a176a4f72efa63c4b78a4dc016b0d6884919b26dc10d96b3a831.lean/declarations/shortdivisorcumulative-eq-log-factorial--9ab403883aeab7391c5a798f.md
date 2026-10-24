# shortDivisorCumulative_eq_log_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f142fa76-635b-8efe-0dfa-770ecd0f68de",
  "kind": "theorem",
  "lexical_name": "shortDivisorCumulative_eq_log_factorial",
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
  "slug": "shortdivisorcumulative-eq-log-factorial--9ab403883aeab7391c5a798f",
  "source": {
    "blob": "15d249152bbc27f6be4f722d92bf0cb80836faa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab403883aeab7391c5a798fd9b95cf232a4e49a7b760f6b46b910f6ae953e50",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f142fa76-635b-8efe-0dfa-770ecd0f68de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortDivisorCumulative_eq_log_factorial (U : ℕ) (x : ℝ) :
    shortDivisorCumulative U x =
      ∑ d ∈ Finset.Icc 1 U, realMoebius d * Real.log (⌊x / (d : ℝ)⌋₊.factorial : ℝ) := by
  let f : ArithmeticFunction ℝ :=
    ⟨fun d => if d ≤ U then realMoebius d else 0, by simp [realMoebius]⟩
  have hf (n : ℕ) : shortDivisorLogCoefficient U n = (f * ArithmeticFunction.log) n := by
    unfold shortDivisorLogCoefficient
    rw [ArithmeticFunction.mul_apply]
    apply Finset.sum_congr rfl
    intro dk _
    change (if dk.1 ≤ U then realMoebius dk.1 * Real.log (dk.2 : ℝ) else 0) =
      (if dk.1 ≤ U then realMoebius dk.1 else 0) * ArithmeticFunction.log dk.2
    simp only [ArithmeticFunction.log_apply, ite_mul, zero_mul]
  have hz : shortDivisorLogCoefficient U 0 = 0 := by simp [shortDivisorLogCoefficient]
  have hs : shortDivisorCumulative U x =
      ∑ d ∈ Finset.Icc 1 ⌊x⌋₊,
        (if d ≤ U then realMoebius d else 0) * Real.log ((⌊x⌋₊ / d).factorial : ℝ) := by
    unfold shortDivisorCumulative
    rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons, hz, zero_add]
    simp_rw [hf]
    rw [ArithmeticFunction.sum_Ioc_mul_eq_sum_sum]
    rw [← Finset.Icc_add_one_left_eq_Ioc]
    apply Finset.sum_congr rfl
    intro d _
    change (if d ≤ U then realMoebius d else 0) *
      (∑ m ∈ Finset.Ioc 0 (⌊x⌋₊ / d), ArithmeticFunction.log m) = _
    simp only [ArithmeticFunction.log_apply, ← Finset.Icc_add_one_left_eq_Ioc, Nat.zero_add]
    rw [sum_log_Icc_eq_log_factorial]
  rw [hs]
  simp_rw [floor_div_natCast]
  by_cases hUN : U ≤ ⌊x⌋₊
  · calc
      _ = ∑ d ∈ Finset.Icc 1 U,
          (if d ≤ U then realMoebius d else 0) *
            Real.log ((⌊x⌋₊ / d).factorial : ℝ) := by
        symm
        apply Finset.sum_subset
        · intro d hd
          exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hd).1,
            (Finset.mem_Icc.mp hd).2.trans hUN⟩
        · intro d hd hdnot
          have hgt : U < d := by
            simp only [Finset.mem_Icc] at hd hdnot
            omega
          simp [not_le.mpr hgt]
      _ = _ := by
        apply Finset.sum_congr rfl
        intro d hd
        simp [(Finset.mem_Icc.mp hd).2]
  · have hNU : ⌊x⌋₊ ≤ U := by omega
    calc
      _ = ∑ d ∈ Finset.Icc 1 ⌊x⌋₊,
          realMoebius d * Real.log ((⌊x⌋₊ / d).factorial : ℝ) := by
        apply Finset.sum_congr rfl
        intro d hd
        simp [(Finset.mem_Icc.mp hd).2.trans hNU]
      _ = _ := by
        apply Finset.sum_subset
        · intro d hd
          exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hd).1,
            (Finset.mem_Icc.mp hd).2.trans hNU⟩
        · intro d hd hdnot
          have hgt : ⌊x⌋₊ < d := by
            simp only [Finset.mem_Icc] at hd hdnot
            omega
          simp [Nat.div_eq_of_lt hgt]

/-- The exact short cumulative separates continuous Mellin polynomials from genuine defects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15d249152bbc27f6be4f722d92bf0cb80836faa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
