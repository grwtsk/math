# logDeriv_Yfn_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73f24488-3461-1a02-dc08-82d2ac1b2a81",
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
  "slug": "logderiv-yfn-two--4605592da70503c67aea403f",
  "source": {
    "blob": "06759d8f9d559acee3bc52992d42d2435e60fc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 88,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4605592da70503c67aea403fc18776f0133fc952c18f9eda6a65f88eb70d4c85",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73f24488-3461-1a02-dc08-82d2ac1b2a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–122.

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

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06759d8f9d559acee3bc52992d42d2435e60fc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
