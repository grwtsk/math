# hasDerivAt_normG

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6af90193-5c79-6eea-4772-af40fef45ed9",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_normG",
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
  "slug": "hasderivat-normg--70cee973aef479d482508951",
  "source": {
    "blob": "7d4fb99b259b95ad9dd35d18a3572d23786ddc59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70cee973aef479d482508951798ca67b5050271a70f0ab351041c4fb44abe159",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6af90193-5c79-6eea-4772-af40fef45ed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_normG (t : ℝ) :
    HasDerivAt (fun t => ‖Gfun t‖) (-(gG t).im * ‖Gfun t‖) t := by
  -- ‖G‖² has derivative 2⟪G, G′⟫ = 2 Re(conj G · G′·) ; G′ = Γℝ′(s)·i
  have h1 := (hasDerivAt_Gfun t).norm_sq
  have h2 := h1.sqrt (pow_pos (normG_pos t) 2).ne'
  have e1 : (fun y => Real.sqrt (‖Gfun y‖ ^ 2)) = fun y => ‖Gfun y‖ := by
    funext y; rw [Real.sqrt_sq (norm_nonneg _)]
  rw [e1] at h2
  convert h2 using 1
  have hG : Gammaℝ (sline t) ≠ 0 := Gfun_ne_zero t
  have hrel : deriv Gammaℝ (sline t) * conj (Gfun t) = gG t * ((‖Gfun t‖ ^ 2 : ℝ) : ℂ) := by
    rw [gG, logDeriv_apply, Gfun]
    have : ((‖Gammaℝ (sline t)‖ ^ 2 : ℝ) : ℂ) = conj (Gammaℝ (sline t)) * Gammaℝ (sline t) := by
      rw [← Complex.normSq_eq_conj_mul_self, Complex.normSq_eq_norm_sq]
      try push_cast
      try ring
    rw [this, div_mul_eq_mul_div, eq_div_iff hG]
    try ring
  rw [Real.sqrt_sq (norm_nonneg _), Complex.inner,
    show deriv Gammaℝ (sline t) * I * conj (Gfun t) = (gG t * ((‖Gfun t‖ ^ 2 : ℝ) : ℂ)) * I by
      rw [← hrel]; ring]
  simp only [Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im, Complex.ofReal_re,
    Complex.ofReal_im, mul_zero, mul_one, zero_sub, sub_zero]
  have hn := (normG_pos t).ne'
  field_simp
  ring

/-- **e′ = i·Re(g)·e**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4fb99b259b95ad9dd35d18a3572d23786ddc59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
