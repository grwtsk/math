# abs_gentryNu_PiX_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f81c0772-5dae-cf71-c06c-59ca885b51d1",
  "kind": "lemma",
  "lexical_name": "abs_gentryNu_PiX_le",
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
  "slug": "abs-gentrynu-pix-le--018a62f99ad5a4d6de926dfd",
  "source": {
    "blob": "66a3151faad91392cf595133a0dffa7df549aa1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:018a62f99ad5a4d6de926dfdf67d25a81dc634e67a5d4a01c479125613b5ee55",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f81c0772-5dae-cf71-c06c-59ca885b51d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_gentryNu_PiX_le (hF : LocalHypsCore cϱ p Fn) {t : ℝ} (ht : 2 ≤ t) {k l : ℤ}
    (hk : t ≤ p.tau k) (hl : t ≤ p.tau l) :
    |GentryNu (Zeta23.PiX p.X) p Fn k l|
      ≤ 6 * Real.sqrt p.X / t * (2 * π * Fn.a * p.L)
        + 12 * Real.sqrt p.X / t ^ 2 * (8 + 2 * (cϱ / p.w) ^ 2) := by
  set B : ℝ → ℝ := fun s => 6 * Real.sqrt p.X / s * (2 * π * Fn.a * p.L)
    + 12 * Real.sqrt p.X / s ^ 2 * (8 + 2 * (cϱ / p.w) ^ 2) with hB
  have ht0 : 0 < t := by linarith
  have ha0 : 0 ≤ Fn.a := by
    have h := hF.phiHat_sq_integral
    have hi : 0 ≤ ∫ r, Fn.phiHat r ^ 2 := integral_nonneg fun r => sq_nonneg _
    have hL := hF.L_pos
    nlinarith [Real.pi_pos, mul_pos Real.pi_pos hL]
  -- B is antitone in s ≥ t > 0
  have hLp := hF.L_pos
  have hBmono : ∀ s, t ≤ s → B s ≤ B t := by
    intro s hs
    have hs0 : 0 < s := by linarith
    have : 0 ≤ 2 * π * Fn.a * p.L := by positivity
    simp only [hB]
    gcongr
  -- the two diagonal-type integrals
  have hIk := (integral_phiHat_sq_abs_PiX_le hF (ht.trans hk)).trans (hBmono _ hk)
  have hIl := (integral_phiHat_sq_abs_PiX_le hF (ht.trans hl)).trans (hBmono _ hl)
  -- integrability of the majorant
  have hint : ∀ s : ℝ, Integrable (fun τ => Fn.phiHat (τ - s) ^ 2 * |Zeta23.PiX p.X τ|) := by
    intro s
    have h := (Pi_part_integrable hF s).norm.comp_sub_right s
    refine h.congr (Eventually.of_forall fun τ => ?_)
    simp [Real.norm_eq_abs, add_sub_cancel]
  unfold GentryNu
  rw [← Real.norm_eq_abs]
  calc ‖∫ τ, Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l) * Zeta23.PiX p.X τ‖
      ≤ ∫ τ, ‖Fn.phiHat (τ - p.tau k) * Fn.phiHat (τ - p.tau l) * Zeta23.PiX p.X τ‖ :=
        norm_integral_le_integral_norm _
    _ ≤ ∫ τ, (Fn.phiHat (τ - p.tau k) ^ 2 * |Zeta23.PiX p.X τ|
          + Fn.phiHat (τ - p.tau l) ^ 2 * |Zeta23.PiX p.X τ|) / 2 := by
        refine integral_mono_of_nonneg (Eventually.of_forall fun τ => norm_nonneg _)
          (((hint _).add (hint _)).div_const 2) (Eventually.of_forall fun τ => ?_)
        simp only [Real.norm_eq_abs, abs_mul]
        set a := Fn.phiHat (τ - p.tau k)
        set b := Fn.phiHat (τ - p.tau l)
        have hab : |a| * |b| ≤ (a ^ 2 + b ^ 2) / 2 := by
          nlinarith [sq_abs a, sq_abs b, sq_nonneg (|a| - |b|)]
        have hv := abs_nonneg (Zeta23.PiX p.X τ)
        calc |a| * |b| * |Zeta23.PiX p.X τ| ≤ (a ^ 2 + b ^ 2) / 2 * |Zeta23.PiX p.X τ| :=
              mul_le_mul_of_nonneg_right hab hv
          _ = _ := by ring
    _ = ((∫ τ, Fn.phiHat (τ - p.tau k) ^ 2 * |Zeta23.PiX p.X τ|)
          + ∫ τ, Fn.phiHat (τ - p.tau l) ^ 2 * |Zeta23.PiX p.X τ|) / 2 := by
        rw [integral_div, integral_add (hint _) (hint _)]
    _ ≤ (B t + B t) / 2 := by gcongr
    _ = B t := by ring

end PiPart

/-! ### The three HatNegligible pieces and the main W theorem -/

/-- **M^𝒵 − M^{c,2} is HatNegligible** ([XF′ 6.1] at the real base ½l). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66a3151faad91392cf595133a0dffa7df549aa1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
