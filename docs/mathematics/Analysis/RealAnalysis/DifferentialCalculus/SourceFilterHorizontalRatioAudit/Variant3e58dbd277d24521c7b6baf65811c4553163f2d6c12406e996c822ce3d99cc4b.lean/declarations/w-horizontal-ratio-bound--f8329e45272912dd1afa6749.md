# W_horizontal_ratio_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fcb4822-62a5-765e-7170-f9bfb6af9100",
  "kind": "theorem",
  "lexical_name": "W_horizontal_ratio_bound",
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
  "slug": "w-horizontal-ratio-bound--f8329e45272912dd1afa6749",
  "source": {
    "blob": "c97c49b2511ed18d180cb2ba66bd9e01008af930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 215,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterHorizontalRatioAudit/Variant3e58dbd277d24521c7b6baf65811c4553163f2d6c12406e996c822ce3d99cc4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8329e45272912dd1afa67490a8f5cfef60fff16158b4cf5d190f1a2a446bd5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterHorizontalRatioAudit/Variant3e58dbd277d24521c7b6baf65811c4553163f2d6c12406e996c822ce3d99cc4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fcb4822-62a5-765e-7170-f9bfb6af9100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem W_horizontal_ratio_bound (ε t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1/4) :
    ‖W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      Real.exp ε / (1 - 4 * ε^2) := by
  have hd : 0 < 1 - 4 * ε^2 := by nlinarith
  have hb := W_horizontal_multiplicative_bound ε t hε.le hsmall
  rw [norm_div]
  have hB : bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := by
    intro he
    have hr := bumpMoment_zero_re _ he
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re,
      Complex.I_re, Complex.I_im, Complex.ofReal_im, mul_zero, zero_mul,
      sub_self, add_zero] at hr
    exact hε.ne' hr
  have hq : ((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4 ≠ 0 := by
    intro he
    have hr := congrArg Complex.re he
    simp [pow_two, Complex.mul_re, Complex.mul_im] at hr
    nlinarith [sq_nonneg t]
  have hc : (Real.sqrt (45056 / 1105 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ) < 45056 / 1105)))
  have hw : W ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := by
    rw [W_eq_bumpMoment]
    exact div_ne_zero (mul_ne_zero (mul_ne_zero (Complex.exp_ne_zero _) hq) hB) hc
  have hn := norm_pos_iff.mpr hw
  apply (div_le_iff₀ hn).mpr
  rw [div_mul_eq_mul_div]
  apply (le_div_iff₀ hd).mpr
  nlinarith [hb]

end
end SourceFilterHorizontalRatioScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceFilterHorizontalRatioScratch.sourceQuadratic_horizontal_bound
#print SourceFilterHorizontalRatioScratch.sourceQuadratic_horizontal_bound
#print axioms SourceFilterHorizontalRatioScratch.sourceQuadratic_horizontal_bound
#check @SourceFilterHorizontalRatioScratch.W_horizontal_multiplicative_bound
#print SourceFilterHorizontalRatioScratch.W_horizontal_multiplicative_bound
#print axioms SourceFilterHorizontalRatioScratch.W_horizontal_multiplicative_bound
#check @SourceFilterHorizontalRatioScratch.W_horizontal_ratio_bound
#print SourceFilterHorizontalRatioScratch.W_horizontal_ratio_bound
#print axioms SourceFilterHorizontalRatioScratch.W_horizontal_ratio_bound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterHorizontalRatioAudit/Variant3e58dbd277d24521c7b6baf65811c4553163f2d6c12406e996c822ce3d99cc4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterHorizontalRatioAudit/Variant3e58dbd277d24521c7b6baf65811c4553163f2d6c12406e996c822ce3d99cc4b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c97c49b2511ed18d180cb2ba66bd9e01008af930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
