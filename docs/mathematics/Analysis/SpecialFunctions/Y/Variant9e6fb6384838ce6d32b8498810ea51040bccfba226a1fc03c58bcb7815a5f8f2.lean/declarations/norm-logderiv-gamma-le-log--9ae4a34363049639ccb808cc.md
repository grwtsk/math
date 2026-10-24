# norm_logDeriv_Gammaℝ_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62b2b455-7665-ae0d-29a2-9e35a7a724d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbb350c5-8d01-ff3d-e5b3-bc4995492baa",
  "kind": "lemma",
  "lexical_name": "norm_logDeriv_Gammaℝ_le_log",
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
  "slug": "norm-logderiv-gamma-le-log--9ae4a34363049639ccb808cc",
  "source": {
    "blob": "fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 352,
    "path": "GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ae4a34363049639ccb808ccc9e9a77cc01ef34ca28cd80636c5be9dc4554841",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbb350c5-8d01-ff3d-e5b3-bc4995492baa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_logDeriv_Gammaℝ_le_log {s : ℂ} (hre : 0 < s.re) (hre' : s.re ≤ 4) (him : 2 ≤ |s.im|) :
    ‖logDeriv Gammaℝ s‖ ≤ Real.log (|s.im| + 3) + 5 := by
  rw [Zeta23.RvM.logDeriv_Gammaℝ hre]
  set w : ℂ := s / 2 with hw
  have hwre : 0 < w.re := by simp [hw]; linarith
  have hwim : w.im = s.im / 2 := by simp [hw]
  have hw' : 1 ≤ |w.im| := by rw [hwim, abs_div, abs_two]; linarith
  have h := Zeta23.StirlingVert.digamma_stirling hwre (by linarith)
  have him2 : 1 ≤ w.im ^ 2 := by have := sq_abs w.im; nlinarith [abs_nonneg w.im]
  have h3 : 3 / w.im ^ 2 ≤ 3 := by rw [div_le_iff₀ (by positivity)]; nlinarith
  have hw1 : 1 ≤ ‖w‖ := le_trans hw' (Complex.abs_im_le_norm w)
  have hwle : ‖w‖ ≤ |s.im| + 3 := by
    have : ‖w‖ = ‖s‖ / 2 := by rw [hw, norm_div]; norm_num
    rw [this]
    have := Complex.norm_le_abs_re_add_abs_im s
    rw [abs_of_pos hre] at this
    linarith
  have hlog : ‖Complex.log w‖ ≤ Real.log (|s.im| + 3) + Real.pi := by
    calc ‖Complex.log w‖ ≤ |(Complex.log w).re| + |(Complex.log w).im| :=
          Complex.norm_le_abs_re_add_abs_im _
      _ = |Real.log ‖w‖| + |Complex.arg w| := by rw [Complex.log_re, Complex.log_im]
      _ ≤ Real.log (|s.im| + 3) + Real.pi := by
          apply add_le_add _ (Complex.abs_arg_le_pi w)
          rw [abs_of_nonneg (Real.log_nonneg hw1)]
          exact Real.log_le_log (by linarith) hwle
  have hinv : ‖(1 / 2 : ℂ) / w‖ ≤ 1 / 2 := by
    rw [norm_div]
    have : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by norm_num
    rw [this, div_le_iff₀ (by linarith)]
    nlinarith
  have hψ : ‖Complex.digamma w‖ ≤ Real.log (|s.im| + 3) + Real.pi + 7 / 2 := by
    calc ‖Complex.digamma w‖
        = ‖(Complex.digamma w - Complex.log w + (1 / 2 : ℂ) / w) + Complex.log w - (1 / 2 : ℂ) / w‖ := by
          ring_nf
      _ ≤ ‖Complex.digamma w - Complex.log w + (1 / 2 : ℂ) / w‖ + ‖Complex.log w‖ + ‖(1 / 2 : ℂ) / w‖ := by
          refine le_trans (norm_sub_le _ _) ?_
          gcongr
          exact norm_add_le _ _
      _ ≤ 3 + (Real.log (|s.im| + 3) + Real.pi) + 1 / 2 := by linarith
      _ = Real.log (|s.im| + 3) + Real.pi + 7 / 2 := by ring
  have hlogpi : ‖-(Real.log Real.pi : ℂ) / 2‖ ≤ 1 := by
    rw [norm_div, norm_neg, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (Real.log_nonneg (by linarith [Real.pi_gt_three]))]
    have : Real.log Real.pi ≤ 2 := by
      have h4 : Real.log Real.pi ≤ Real.log 4 := Real.log_le_log Real.pi_pos Real.pi_lt_four.le
      have h4' : Real.log 4 = 2 * Real.log 2 := by
        rw [show (4:ℝ) = 2 ^ 2 by norm_num, Real.log_pow]; push_cast; ring
      linarith [Real.log_two_lt_d9]
    have h2 : ‖(2 : ℂ)‖ = 2 := by norm_num
    rw [h2]; linarith
  calc ‖-(Real.log Real.pi : ℂ) / 2 + (1 / 2 : ℂ) * Complex.digamma w‖
      ≤ ‖-(Real.log Real.pi : ℂ) / 2‖ + ‖(1 / 2 : ℂ) * Complex.digamma w‖ := norm_add_le _ _
    _ ≤ 1 + 1 / 2 * (Real.log (|s.im| + 3) + Real.pi + 7 / 2) := by
        gcongr
        rw [norm_mul]
        have : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by norm_num
        rw [this]
        gcongr
    _ ≤ Real.log (|s.im| + 3) + 5 := by
        have := Real.log_nonneg (by linarith [abs_nonneg s.im] : (1:ℝ) ≤ |s.im| + 3)
        nlinarith [Real.pi_lt_four]

end ZeroCount
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
