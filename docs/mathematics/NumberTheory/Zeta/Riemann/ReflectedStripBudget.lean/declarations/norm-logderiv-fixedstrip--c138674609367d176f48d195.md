# norm_logDeriv_fixedStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1c1a702-5aac-2f73-fa46-43a990196ecd",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_fixedStrip",
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
  "slug": "norm-logderiv-fixedstrip--c138674609367d176f48d195",
  "source": {
    "blob": "1cb28ea8264f8e9ad9dedd1be77c9b6b68e5b1f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c138674609367d176f48d19508021e677fdad2442d1f25802f77a50625e88fd6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1c1a702-5aac-2f73-fa46-43a990196ecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_fixedStrip (N : ℕ) (hN : 2 ≤ N) (σ y : ℝ)
    (hσ : σ ∈ Icc (-3 : ℝ) 2) (hy : |y| = separatedHeight N) :
    ‖logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ stripBudget N := by
  by_cases hnonneg : 0 ≤ σ
  · exact (norm_logDeriv_central N hN σ y ⟨hnonneg, hσ.2⟩ hy).trans
      (centralBudget_le_stripBudget N)
  · have hneg : σ < 0 := lt_of_not_ge hnonneg
    let s : ℂ := (σ : ℂ) + (y : ℂ) * Complex.I
    have hs : s.re < 0 := by simpa [s] using hneg
    have hheight : 1 ≤ |s.im| := by
      simp only [s, Complex.add_im, Complex.ofReal_im, Complex.mul_im,
        Complex.ofReal_re, Complex.I_im, Complex.I_re, mul_one, zero_mul,
        add_zero, zero_add]
      rw [hy]
      linarith [(separatedHeight_bounds N).1, Nat.cast_nonneg (α := ℝ) N]
    have hi : s.im ≠ 0 := by intro he; rw [he, abs_zero] at hheight; norm_num at hheight
    have href := negative_logDeriv_reflection hs (zeta_ne_zero_left_nonreal s hs hi)
    have hg := norm_digamma_le (1 - s) (by
      simp only [s, Complex.sub_re, Complex.one_re, Complex.add_re,
        Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im, Complex.I_re,
        Complex.I_im, mul_zero, zero_mul, sub_zero, add_zero]
      constructor <;> linarith [hσ.1])
    have hgamma : ‖Complex.digamma (1 - s)‖ ≤ 56 * heightLogBudget (separatedHeight N) := by
      have him : (1 - s).im = -y := by simp [s]
      simpa only [heightLogBudget, him, abs_neg, hy,
        abs_of_pos (separatedHeight_pos N)] using hg
    have hz : ‖logDeriv riemannZeta (1 - s)‖ ≤ centralBudget N + mangoldtLineMass :=
      norm_reflected_logDeriv_le N hN σ y hneg hy
    have hcot := norm_half_pi_cot_le s hheight
    have htri : ‖-Complex.log (2 * (Real.pi : ℂ)) + Complex.digamma (1 - s) +
        logDeriv riemannZeta (1 - s) - ((Real.pi : ℂ) / 2) *
          (Complex.cos ((Real.pi : ℂ) * s / 2) /
            Complex.sin ((Real.pi : ℂ) * s / 2))‖ ≤
        ‖Complex.log (2 * (Real.pi : ℂ))‖ + ‖Complex.digamma (1 - s)‖ +
          ‖logDeriv riemannZeta (1 - s)‖ +
          ‖((Real.pi : ℂ) / 2) * (Complex.cos ((Real.pi : ℂ) * s / 2) /
            Complex.sin ((Real.pi : ℂ) * s / 2))‖ := by
      have h₁ := norm_sub_le
        (-Complex.log (2 * (Real.pi : ℂ)) + Complex.digamma (1 - s) +
          logDeriv riemannZeta (1 - s))
        (((Real.pi : ℂ) / 2) * (Complex.cos ((Real.pi : ℂ) * s / 2) /
          Complex.sin ((Real.pi : ℂ) * s / 2)))
      have h₂ := norm_add_le (-Complex.log (2 * (Real.pi : ℂ)) + Complex.digamma (1 - s))
        (logDeriv riemannZeta (1 - s))
      have h₃ := norm_add_le (-Complex.log (2 * (Real.pi : ℂ))) (Complex.digamma (1 - s))
      rw [norm_neg] at h₃
      linarith
    change ‖logDeriv riemannZeta s‖ ≤ stripBudget N
    rw [← norm_neg, href]
    unfold stripBudget
    linarith

/-- The maintained ray-transfer theorem now receives an actual fixed-strip supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb28ea8264f8e9ad9dedd1be77c9b6b68e5b1f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
