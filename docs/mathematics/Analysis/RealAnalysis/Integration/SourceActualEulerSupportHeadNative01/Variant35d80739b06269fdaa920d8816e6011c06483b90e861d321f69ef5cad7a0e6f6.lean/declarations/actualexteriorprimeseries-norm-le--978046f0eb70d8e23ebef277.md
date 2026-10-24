# actualExteriorPrimeSeries_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dadd14d-5d66-c778-7be1-22af8e4aa377",
  "kind": "theorem",
  "lexical_name": "actualExteriorPrimeSeries_norm_le",
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
  "slug": "actualexteriorprimeseries-norm-le--978046f0eb70d8e23ebef277",
  "source": {
    "blob": "f5296ceb68e69efbf54b7c12a81c9ae577fad347",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant35d80739b06269fdaa920d8816e6011c06483b90e861d321f69ef5cad7a0e6f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:978046f0eb70d8e23ebef277ee76126c082fce4f106c9076d85642b94b80f1a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant35d80739b06269fdaa920d8816e6011c06483b90e861d321f69ef5cad7a0e6f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dadd14d-5d66-c778-7be1-22af8e4aa377`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualExteriorPrimeSeries_norm_le (A c d t : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    ‖actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I)‖ ≤
      actualRightLineMass d * Real.exp (-2*(c-d)*A) := by
  let S := {n : ℕ // n ∉ Finset.range (⌊Real.exp (2*A)⌋₊+1)}
  have hs : Summable (fun n : S =>
      ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖) :=
    (ArithmeticFunction.LSeriesSummable_vonMangoldt
      (show 1 < ((c:ℂ)+(t:ℂ)*I).re by simp; linarith)).norm.subtype _
  have hD : Summable (fun n : ℕ => ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖) :=
    actualRightLineMass_summable d hd
  have hb (n : S) : ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ ≤
      ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖ * Real.exp (-2*(c-d)*A) := by
    have hN : ⌊Real.exp (2*A)⌋₊ < (n:ℕ) := by
      simpa only [Finset.mem_range, not_lt] using n.2
    have hn : Real.exp (2*A) < (n:ℝ) := Nat.lt_of_floor_lt hN
    have hn0 : 0 < (n:ℝ) := (Real.exp_pos _).trans hn
    have hnz : (n:ℕ) ≠ 0 := by exact_mod_cast hn0.ne'
    have hl : 2*A ≤ Real.log (n:ℝ) := by
      simpa using Real.log_le_log (Real.exp_pos _) hn.le
    have he : Real.exp (-Real.log (n:ℝ)*(c-d)) ≤ Real.exp (-2*(c-d)*A) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    simp only [LSeries.norm_term_eq, hnz, if_false, actualMangoldtCoefficients,
      Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
      Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re, Complex.I_im,
      Complex.ofReal_im, mul_zero, zero_mul, sub_zero, add_zero]
    rw [Real.rpow_def_of_pos hn0, Real.rpow_def_of_pos hn0]
    simp only [div_eq_mul_inv, ← Real.exp_neg]
    have hx : Real.exp (-(Real.log (n:ℝ)*c)) =
        Real.exp (-(Real.log (n:ℝ)*d)) * Real.exp (-Real.log (n:ℝ)*(c-d)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    rw [hx]
    exact mul_le_mul_of_nonneg_left he (by positivity)
  unfold actualExteriorPrimeSeries
  calc
    _ ≤ ∑' n : S, ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ :=
      norm_tsum_le_tsum_norm hs
    _ ≤ ∑' n : S, ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖ *
        Real.exp (-2*(c-d)*A) := hs.tsum_le_tsum hb ((hD.subtype _).mul_right _)
    _ = (∑' n : S, ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖) *
        Real.exp (-2*(c-d)*A) := tsum_mul_right
    _ ≤ actualRightLineMass d * Real.exp (-2*(c-d)*A) := by
      apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
      exact hD.tsum_subtype_le (fun _ => norm_nonneg _) _

end
end FormalResearch.RiemannHypothesis.SourceActualEulerSupportHead
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant35d80739b06269fdaa920d8816e6011c06483b90e861d321f69ef5cad7a0e6f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant35d80739b06269fdaa920d8816e6011c06483b90e861d321f69ef5cad7a0e6f6.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5296ceb68e69efbf54b7c12a81c9ae577fad347` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
