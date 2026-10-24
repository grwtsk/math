# RectangleIntegral_tendsTo_LowerU

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0896b81-7a3b-6de1-502f-e32deccc5da4",
  "kind": "lemma",
  "lexical_name": "RectangleIntegral_tendsTo_LowerU",
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
  "slug": "rectangleintegral-tendsto-loweru--ecb1aa7434f612ebbd526461",
  "source": {
    "blob": "37ebc097b2f05a955e08b89d04b4afa1b77f2ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecb1aa7434f612ebbd526461db1897ace216f96294cefe0a20758e20de0000e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0896b81-7a3b-6de1-502f-e32deccc5da4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RectangleIntegral_tendsTo_LowerU {σ σ' T : ℝ} {f : ℂ → ℂ}
    (hbot : Tendsto (fun (y : ℝ) ↦ ∫ (x : ℝ) in σ..σ', f (x + y * I)) atBot (𝓝 0))
    (hleft : Integrable (fun (y : ℝ) ↦ f (σ + y * I)))
    (hright : Integrable (fun (y : ℝ) ↦ f (σ' + y * I))) :
    Tendsto (fun (U : ℝ) ↦ RectangleIntegral f (σ - I * U) (σ' - I * T)) atTop
      (𝓝 (- LowerUIntegral f σ σ' T)) := by
  have h_re  (s : ℝ) (t : ℝ) : (s  - I * t).re = s  := by simp
  have h_im  (s : ℝ) (t : ℝ) : (s  - I * t).im = -t  := by simp
  have hbot' :
      Tendsto (fun (y : ℝ) ↦ ∫ (x : ℝ) in σ..σ', f (x - y * I)) atTop (𝓝 0) := by
    convert (hbot.comp tendsto_neg_atTop_atBot) using 1
    ext; simp only [Function.comp_apply, ofReal_neg, neg_mul]; rfl
  have htop : Tendsto (fun (_ : ℝ) ↦ ∫ (x : ℝ) in σ..σ', f (x - T * I)) atTop
      (𝓝 <| ∫ (x : ℝ) in σ..σ', f (x - T * I)) := tendsto_const_nhds
  have hvert (s : ℝ) (int : Integrable (fun (y : ℝ) ↦ f (s + y * I))) :
      Tendsto (fun (U : ℝ) ↦ I * ∫ (y : ℝ) in -U..-T, f (s + y * I)) atTop
        (𝓝 <| I * ∫ (y : ℝ) in Iic (-T), f (s + y * I)) := by
    have := (intervalIntegral_tendsto_integral_Iic (-T) int.restrict tendsto_id).const_smul I
    convert (this.comp tendsto_neg_atTop_atBot) using 1
  have := ((hbot'.sub htop).add (hvert σ' hright)).sub (hvert σ hleft)
  rw [zero_sub] at this
  simp_rw [RectangleIntegral, LowerUIntegral, HIntegral, VIntegral, h_re, h_im, ofReal_neg, neg_mul,
    neg_add_rev, neg_sub]
  have final :
      (((-∫ (x : ℝ) in σ..σ', f (↑x - ↑T * I)) +
          I * ∫ (y : ℝ) in Iic (-T), f (↑σ' + ↑y * I)) -
          I * ∫ (y : ℝ) in Iic (-T), f (↑σ + ↑y * I)) =
      (-(I * ∫ (y : ℝ) in Iic (-T), f (↑σ + ↑y * I)) +
        ((I * ∫ (y : ℝ) in Iic (-T), f (↑σ' + ↑y * I)) -
          ∫ (x : ℝ) in σ..σ', f (↑x - ↑T * I))) := by
    ring_nf
    congr
    ext
    ring_nf
  exact final ▸ this
--%\end{proof}

blueprint_comment /--
TODO : Move to general section
-/
@[blueprint
  (title := "limitOfConstant")
  (statement := /--
  Let $a:\R\to\C$ be a function, and let $\sigma>0$ be a real number. Suppose that, for all
  $\sigma, \sigma'>0$, we have $a(\sigma')=a(\sigma)$, and that
  $\lim_{\sigma\to\infty}a(\sigma)=0$. Then $a(\sigma)=0$.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ebc097b2f05a955e08b89d04b4afa1b77f2ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
