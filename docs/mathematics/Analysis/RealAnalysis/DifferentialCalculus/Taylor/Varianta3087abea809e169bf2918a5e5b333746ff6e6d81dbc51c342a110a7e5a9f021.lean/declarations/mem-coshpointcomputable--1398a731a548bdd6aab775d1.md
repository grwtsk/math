# mem_coshPointComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9744793-87b2-71ec-27ee-38c014b0a805",
  "kind": "theorem",
  "lexical_name": "mem_coshPointComputable",
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
  "slug": "mem-coshpointcomputable--1398a731a548bdd6aab775d1",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1215,
    "line": 1177,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1398a731a548bdd6aab775d11d01d376e1c0f8b2d882a641215e32c0a84e898b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9744793-87b2-71ec-27ee-38c014b0a805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1177–1215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_coshPointComputable (q : ℚ) (n : ℕ) :
    Real.cosh q ∈ coshPointComputable q n := by
  simp only [coshPointComputable]
  have hexp_pos := mem_expPointComputable q n
  have hexp_neg := mem_expPointComputable (-q) n
  rw [Real.cosh_eq]
  simp only [Rat.cast_neg] at hexp_neg
  simp only [mem_def] at hexp_pos hexp_neg ⊢
  obtain ⟨hexp_pos_lo, hexp_pos_hi⟩ := hexp_pos
  obtain ⟨hexp_neg_lo, hexp_neg_hi⟩ := hexp_neg
  -- cosh q ≥ 1 always (AM-GM)
  have hcosh_ge_one : 1 ≤ (Real.exp q + Real.exp (-(q : ℝ))) / 2 := by
    have h1 : Real.exp q > 0 := Real.exp_pos q
    have h2 : Real.exp (-(q : ℝ)) > 0 := Real.exp_pos (-(q : ℝ))
    have hprod : Real.exp q * Real.exp (-(q : ℝ)) = 1 := by
      rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
    have ham : Real.exp q + Real.exp (-(q : ℝ)) ≥ 2 := by nlinarith [sq_nonneg (Real.exp q - Real.exp (-(q : ℝ))), hprod]
    linarith
  split_ifs with h
  · constructor
    · -- Lower bound: max 1 coshLo ≤ cosh q
      simp only [Rat.cast_max, Rat.cast_one, Rat.cast_div, Rat.cast_add, Rat.cast_ofNat]
      apply max_le
      · exact hcosh_ge_one
      · linarith
    · -- Upper bound
      simp only [Rat.cast_div, Rat.cast_add, Rat.cast_ofNat]
      linarith
  · -- Fallback
    constructor
    · simp only [Rat.cast_one]
      exact hcosh_ge_one
    · simp only [Rat.cast_max, Rat.cast_ofNat, Rat.cast_div, Rat.cast_add]
      apply le_max_of_le_right
      linarith

/-- FTIA for sinhComputable: Real.sinh x ∈ sinhComputable I n for any x ∈ I.

    Uses endpoint evaluation and monotonicity of sinh. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L1177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
