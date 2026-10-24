# tmLog_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90aa401c-7ad6-2fe6-af2b-f78bd8cf57b8",
  "kind": "theorem",
  "lexical_name": "tmLog_correct",
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
  "slug": "tmlog-correct--e2e8ccbd87a9da8bd616bb07",
  "source": {
    "blob": "a1e41e733f1a16cd97715254de4b056b1744911a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 496,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2e8ccbd87a9da8bd616bb07f6a43518a0b88b36c0483b98d83f78de56a8bee0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90aa401c-7ad6-2fe6-af2b-f78bd8cf57b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmLog_correct (J : IntervalRat) (n : ℕ)
    (tm : TaylorModel) (h : tmLog J n = some tm) :
    ∀ z : ℝ, z ∈ J → Real.log z ∈ tm.evalSet z := by
  intro z hz
  simp only [tmLog] at h
  split_ifs at h with hpos
  simp only [Option.some.injEq] at h
  subst h
  simp only [evalSet, Set.mem_setOf_eq]
  set c := J.midpoint with hc_def
  have hc_pos : 0 < c := by
    simp only [IntervalRat.midpoint, c]
    apply div_pos
    · linarith [J.le]
    · decide
  let c_interval : IntervalRat.IntervalRatPos :=
    { toIntervalRat := IntervalRat.singleton c
      lo_pos := by simp only [IntervalRat.singleton]; exact hc_pos }
  let logc_interval := IntervalRat.logInterval c_interval
  let logc_approx := logc_interval.midpoint
  let logc_error := logc_interval.width / 2
  let base_poly := logTaylorPolyAtCenter c n
  have hbase_poly_def : base_poly = logTaylorPolyAtCenter c n := rfl
  let poly := base_poly + Polynomial.C logc_approx
  have hpoly_def : poly = base_poly + Polynomial.C logc_approx := rfl
  let rem := logRemainderBound J c n logc_error
  have hrem_def : rem = logRemainderBound J c n logc_error := rfl
  let r := Real.log z - Polynomial.aeval (z - (c : ℝ)) poly
  have hr_def : r = Real.log z - Polynomial.aeval (z - (c : ℝ)) poly := rfl
  refine ⟨r, ?_, ?_⟩
  · simp only [IntervalRat.mem_def, Rat.cast_neg]
    have hr_decomp : r = (Real.log z - Real.log c -
        Polynomial.aeval (z - (c : ℝ)) base_poly) + (Real.log c - (logc_approx : ℝ)) := by
      simp only [hr_def, hpoly_def, map_add, Polynomial.aeval_C, eq_ratCast]
      ring
    have hlog_approx := log_approx_error_bound hc_pos
    have hz_pos : 0 < z := by
      simp only [IntervalRat.mem_def] at hz
      exact lt_of_lt_of_le (by exact_mod_cast hpos) hz.1
    have hrem_eq : (rem : ℝ) = (logLagrangeRemainder J c n : ℝ) + (logc_error : ℝ) := by
      simp only [hrem_def, logRemainderBound, Rat.cast_add]
    have htri : |r| ≤ |Real.log z - Real.log c - Polynomial.aeval (z - (c : ℝ)) base_poly| +
        |Real.log c - logc_approx| := by
      rw [hr_decomp]
      exact abs_add_le _ _
    have hlog_part : |Real.log c - logc_approx| ≤ logc_error := hlog_approx
    have hTaylor_part : |Real.log z - Real.log c - Polynomial.aeval (z - (c : ℝ)) base_poly| ≤
        (logLagrangeRemainder J c n : ℝ) := by
      have hJle : (J.lo : ℝ) ≤ J.hi := by exact_mod_cast J.le
      have hc_lo : (J.lo : ℝ) ≤ c := by
        simp only [IntervalRat.midpoint, c, Rat.cast_div, Rat.cast_add, Rat.cast_ofNat]
        linarith [hJle]
      have hc_hi : (c : ℝ) ≤ J.hi := by
        simp only [IntervalRat.midpoint, c, Rat.cast_div, Rat.cast_add, Rat.cast_ofNat]
        linarith [hJle]
      rw [hbase_poly_def]
      exact log_taylor_remainder_bound' J c n z hpos hc_lo hc_hi hz
    have habs_r_le : |r| ≤ rem := by
      calc |r| ≤ |Real.log z - Real.log c - Polynomial.aeval (z - (c : ℝ)) base_poly| +
          |Real.log c - logc_approx| := htri
        _ ≤ (logLagrangeRemainder J c n : ℝ) + (logc_error : ℝ) := by
          apply add_le_add hTaylor_part hlog_part
        _ = (rem : ℝ) := hrem_eq.symm
    rw [abs_le] at habs_r_le
    exact habs_r_le
  · simp only [hr_def]
    ring

end TaylorModel

end LeanCert.Engine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1e41e733f1a16cd97715254de4b056b1744911a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
