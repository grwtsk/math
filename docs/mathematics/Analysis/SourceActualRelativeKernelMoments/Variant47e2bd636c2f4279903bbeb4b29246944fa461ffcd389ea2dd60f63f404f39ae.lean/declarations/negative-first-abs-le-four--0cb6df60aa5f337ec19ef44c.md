# negative_first_abs_le_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17b8d157-a8be-1ff5-cb04-8ac1cad7a00e",
  "kind": "theorem",
  "lexical_name": "negative_first_abs_le_four",
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
  "slug": "negative-first-abs-le-four--0cb6df60aa5f337ec19ef44c",
  "source": {
    "blob": "f0a4c56098e0a3f72be51aa8caba72250920b157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 253,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant47e2bd636c2f4279903bbeb4b29246944fa461ffcd389ea2dd60f63f404f39ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cb6df60aa5f337ec19ef44c5ead2d4e7592b41f0cc8e9eb1c684674ba3b8101",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variant47e2bd636c2f4279903bbeb4b29246944fa461ffcd389ea2dd60f63f404f39ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17b8d157-a8be-1ff5-cb04-8ac1cad7a00e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem negative_first_abs_le_four {A : ℝ} (hA : 1 ≤ A) :
    |∫ t in 0..2*A, t * Real.exp (-t/2) *
      sourceCorrelation explicitSecondDerivative A t| ≤ 4 := by
  have hab : (0:ℝ) ≤ 2*A := by linarith
  have hc : Continuous (fun t : ℝ => t * Real.exp (-t/2)) := by fun_prop
  have hg := hc.intervalIntegrable (μ:=volume) 0 (2*A)
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ:=volume)
    (f:=fun t => t * Real.exp (-t/2) * sourceCorrelation explicitSecondDerivative A t)
    (g:=fun t => t * Real.exp (-t/2)) hab (ae_of_all _ (fun t ht => by
      simp only [norm_mul, Real.norm_eq_abs, Real.abs_exp,
        abs_of_nonneg ht.1.le]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (actual_correlation_abs_le_one A t hA)
        (mul_nonneg ht.1.le (Real.exp_pos _).le))) hg
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => -(2*t+4)*Real.exp (-t/2))
      (t * Real.exp (-t/2)) t := by
    convert! (((((hasDerivAt_id t).const_mul 2).add_const 4).neg).mul
      (((hasDerivAt_id t).neg.div_const 2).exp)) using 1
    dsimp
    ring
  have he : (∫ t in 0..2*A, t * Real.exp (-t/2)) =
      4 - (4*A+4)*Real.exp (-A) := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hg]
    simp only [mul_zero, zero_add, neg_zero, zero_div, Real.exp_zero, mul_one]
    rw [show -(2*A)/2 = -A by ring]
    ring
  rw [Real.norm_eq_abs, he] at hb
  exact hb.trans (by have := Real.exp_pos (-A); nlinarith)

/-- The full first relative kernel moment is uniformly bounded by six. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variant47e2bd636c2f4279903bbeb4b29246944fa461ffcd389ea2dd60f63f404f39ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant47e2bd636c2f4279903bbeb4b29246944fa461ffcd389ea2dd60f63f404f39ae.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0a4c56098e0a3f72be51aa8caba72250920b157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
