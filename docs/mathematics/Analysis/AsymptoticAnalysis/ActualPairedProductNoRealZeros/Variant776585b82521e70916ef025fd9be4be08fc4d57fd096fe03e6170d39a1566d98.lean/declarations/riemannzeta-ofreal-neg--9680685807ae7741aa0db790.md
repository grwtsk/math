# riemannZeta_ofReal_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1c7968a-1fa0-93d7-3b92-c01c155a6afc",
  "kind": "theorem",
  "lexical_name": "riemannZeta_ofReal_neg",
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
  "slug": "riemannzeta-ofreal-neg--9680685807ae7741aa0db790",
  "source": {
    "blob": "e00db4bfe96da2a5ece9381b609464cd6990c593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 406,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9680685807ae7741aa0db790fc48c8e6c68b76618e1f807b206c30e50c1cf303",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1c7968a-1fa0-93d7-3b92-c01c155a6afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_ofReal_neg {x : ℝ}
    (hx : 0 < x) (hx1 : x < 1) :
    (riemannZeta (x : ℂ)).re < 0 := by
  let a : ℝ := 1 - 2 * (2 : ℝ) ^ (-x)
  have hhalf : (1 : ℝ) / 2 < (2 : ℝ) ^ (-x) := by
    have hpow := Real.rpow_lt_rpow_of_exponent_lt
      (by norm_num : (1 : ℝ) < 2)
      (by linarith : (-1 : ℝ) < -x)
    simpa [Real.rpow_neg_one] using hpow
  have ha : a < 0 := by
    dsimp [a]
    nlinarith
  have hpowC :
      (2 : ℂ) ^ (-(x : ℂ)) =
        (((2 : ℝ) ^ (-x) : ℝ) : ℂ) := by
    rw [← Complex.ofReal_neg]
    exact (Complex.ofReal_cpow
      (by norm_num : (0 : ℝ) ≤ 2) (-x)).symm
  have hfactor :
      1 - 2 * (2 : ℂ) ^ (-(x : ℂ)) = (a : ℂ) := by
    rw [hpowC]
    norm_num [a]
  have heq := pairedEta_eq_factor_of_real hx (ne_of_lt hx1)
  rw [etaZetaFactor, hfactor, pairedEta_of_real] at heq
  have hre := congrArg Complex.re heq
  simp only [Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
    zero_mul, sub_zero] at hre
  have heta : 0 < ∑' n : ℕ, realEtaPairTerm n x := by
    have hp := pairedEta_re_pos_of_real hx
    rw [pairedEta_of_real] at hp
    simpa using hp
  nlinarith [heta]

/-- Every nontrivial zeta zero has nonzero imaginary part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variant776585b82521e70916ef025fd9be4be08fc4d57fd096fe03e6170d39a1566d98.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00db4bfe96da2a5ece9381b609464cd6990c593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
