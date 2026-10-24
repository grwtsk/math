# RectangleIntegral_tendsTo_LowerU

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94fbd337-c0a7-bf56-19a1-28350187837e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91da9622-e6eb-79a6-bbd2-5bd6d44b4557",
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
  "slug": "rectangleintegral-tendsto-loweru--c6f2dab1563dbf4d61919798",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f2dab1563dbf4d61919798adfcad2cc76be0effb9bd72284e60cb70c48b41d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91da9622-e6eb-79a6-bbd2-5bd6d44b4557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–199.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
