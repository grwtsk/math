# logDeriv_Yfn_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6befe86b10230e4d760832461349890375289e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:861daca0-bd0a-d1d2-6dec-d53cf121a8b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8039ff3-e32e-a88f-eaf3-697a164cbd4b",
  "kind": "lemma",
  "lexical_name": "logDeriv_Yfn_two",
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
  "slug": "logderiv-yfn-two--dcb516a8f47463bc72592166",
  "source": {
    "blob": "c6befe86b10230e4d760832461349890375289e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 80,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb516a8f47463bc725921667200b188595c50a2e6e26f6e9f6d10b6f4739dc4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8039ff3-e32e-a88f-eaf3-697a164cbd4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_Yfn_two {t : ℝ} (hG : Gfn (2 + t * I) ≠ 0) (ht : 2 ≤ |t|) :
    logDeriv Yfn (2 + t * I)
      = logDeriv Pneg (2 + t * I) + logDeriv riemannZeta (2 + t * I) + logDeriv Gfn (2 + t * I) := by
  set s : ℂ := 2 + t * I with hs
  have hopen : IsOpen {z : ℂ | 1 < z.re} := isOpen_lt continuous_const Complex.continuous_re
  have hsU : s ∈ {z : ℂ | 1 < z.re} := by simp [hs]
  set F : ℂ → ℂ := fun z => (-1 : ℂ) * (Pneg z * (riemannZeta z * Gfn z)) with hFdef
  have hev : Yfn =ᶠ[𝓝 s] F := by
    filter_upwards [hopen.mem_nhds hsU] with z hz
    have hz0 : 0 < z.re := lt_trans zero_lt_one hz
    have hz1 : z ≠ 1 := fun h => by rw [h] at hz; simp at hz
    rw [Yfn_eq_factor hz0 hz1 (riemannZeta_ne_zero_of_one_lt_re hz)]
    simp only [hFdef, Pneg, Gfn]
    ring
  have hP : Pneg s ≠ 0 := by
    intro h
    have := re_Pneg_two t
    rw [← hs, h] at this
    simp at this
    nlinarith [sq_abs t]
  have hζ : riemannZeta s ≠ 0 := zeta_two_line_ne_zero t
  have hdP : DifferentiableAt ℂ Pneg s := (Pneg_analyticAt s).differentiableAt
  have hdζ : DifferentiableAt ℂ riemannZeta s := differentiableAt_riemannZeta (two_line_ne_one t)
  have hdG : DifferentiableAt ℂ Gfn s := (Gfn_analyticAt_two t).differentiableAt
  have h1 : logDeriv Yfn s = logDeriv F s := by
    rw [logDeriv_apply, logDeriv_apply, hev.deriv_eq, hev.eq_of_nhds]
  rw [h1, hFdef, logDeriv_const_mul s (-1 : ℂ) (by norm_num)]
  have h2 : logDeriv (fun z => Pneg z * (riemannZeta z * Gfn z)) s
      = logDeriv Pneg s + logDeriv (fun z => riemannZeta z * Gfn z) s :=
    logDeriv_mul s hP (mul_ne_zero hζ hG) hdP (hdζ.mul hdG)
  have h3 : logDeriv (fun z => riemannZeta z * Gfn z) s = logDeriv riemannZeta s + logDeriv Gfn s :=
    logDeriv_mul s hζ hG hdζ hdG
  rw [h2, h3]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6befe86b10230e4d760832461349890375289e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
