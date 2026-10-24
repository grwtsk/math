# count_certificate_c3_fn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbefb0a7-877b-81d1-5214-6908c6d30ecf",
  "kind": "theorem",
  "lexical_name": "count_certificate_c3_fn",
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
  "slug": "count-certificate-c3-fn--15e9f767e65c4b26caa1bd5f",
  "source": {
    "blob": "ebbe5ad998e2ec93844568c5fbdf2d4f8c0852e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateFn/Variant69b81b51242f0cc65d1e74e08d1df4c02f3e432774cf119047aa9986b0e10eca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e9f767e65c4b26caa1bd5ff0e0c5a880194cdc6ae600e4274f682d327c85b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateFn/Variant69b81b51242f0cc65d1e74e08d1df4c02f3e432774cf119047aa9986b0e10eca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbefb0a7-877b-81d1-5214-6908c6d30ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_certificate_c3_fn (κ : ℝ) {N NII tr fr B lower : ℝ → ℝ}
    (hfr0 : ∀ᶠ T in atTop, 0 ≤ fr T)
    (h0 : ∀ᶠ T in atTop,
      6 * tr T - fr T - 3 * N T - 5 * NII T - B T * (6 + 2 * Real.sqrt (fr T) + B T) ≤ 2 * lower T)
    (hB0 : ∀ᶠ T in atTop, 0 ≤ B T)
    (hBto : Tendsto B atTop (𝓝 0))
    (hNII_o : NII =o[atTop] N)
    (hNtop : Tendsto N atTop atTop)
    (htrace : ∀ δ > (0:ℝ), ∀ᶠ T in atTop, (1 - δ) * N T ≤ tr T)
    (hfrob : ∀ δ > (0:ℝ), ∀ᶠ T in atTop, fr T ≤ (κ + δ) * N T) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (3 / 2 - κ / 2 - ε) * N T ≤ lower T := by
  intro ε hε
  set δ : ℝ := ε / 6 with hδdef
  have hδ : 0 < δ := by simp only [hδdef]; linarith
  have hκδ0 : 0 ≤ κ + δ := by
    by_contra h
    rw [not_le] at h
    obtain ⟨T, hT1, hT2, hT3⟩ :=
      ((hfrob δ hδ).and ((hNtop.eventually_ge_atTop 1).and hfr0)).exists
    have : fr T < 0 := lt_of_le_of_lt hT1 (mul_neg_of_neg_of_pos h (by linarith))
    linarith
  have hot := err_isLittleO (N := N) (R₁ := fun _ => 0) (R₂ := fun _ => 0)
    (NII := NII) (B := B) (cl := fun _ => κ + δ) (K := κ + δ)
    hNtop (isLittleO_zero _ _) (isLittleO_zero _ _) hNII_o hBto
    (Eventually.of_forall fun _ => ⟨hκδ0, le_rfl⟩)
  have hBsmall : ∀ᶠ T in atTop, B T ≤ δ / 2 * N T := by
    have hB1 : ∀ᶠ T in atTop, B T ≤ 1 :=
      hBto.eventually (eventually_le_nhds (show (0:ℝ) < 1 by norm_num))
    filter_upwards [hB1, hNtop.eventually_ge_atTop (2 / δ)] with T h1 h2
    have : 1 ≤ δ / 2 * N T := by
      rw [div_le_iff₀ hδ] at h2
      nlinarith
    linarith
  have hsmall : ∀ᶠ T in atTop,
      (5 / 2) * NII T + (B T / 2) * (6 + 2 * Real.sqrt ((κ + δ) * N T) + B T)
        ≤ 2 * δ * N T := by
    filter_upwards [hot.def hδ, hNII_o.def hδ, hNtop.eventually_ge_atTop 0, hBsmall, hB0]
      with T h1 hnii hN0 hBs hB₀
    simp only [Real.norm_eq_abs, mul_zero, zero_add, add_zero, abs_of_nonneg hN0] at h1 hnii
    have h1' : 3 * NII T + B T * (4 + 2 * Real.sqrt ((κ + δ) * N T) + B T) ≤ δ * N T :=
      (le_abs_self _).trans h1
    have hnii' : NII T ≤ δ * N T := (le_abs_self _).trans hnii
    have hB₀' : 0 ≤ B T := hB₀
    nlinarith
  have hmain : ∀ᶠ T in atTop, (3 / 2 - κ / 2 - ε) * N T ≤ lower T := by
    filter_upwards [h0, hB0, htrace δ hδ, hfrob δ hδ, hsmall,
      hNtop.eventually_ge_atTop 0] with T hA hB₀ htr hfr hsm hN0
    have hlow := count_lower_moment_c3_five (κ := κ) (R₁ := δ * N T) (R₂ := δ * N T) hB₀ hA
      (by linarith) (by linarith)
    rw [show κ * N T + δ * N T = (κ + δ) * N T by ring] at hlow
    have hεδ : (3 / 2 - κ / 2 - ε) * N T
        ≤ (3 / 2 - κ / 2) * N T - (3 * (δ * N T) + δ * N T / 2 + 2 * δ * N T) := by
      simp only [hδdef]; nlinarith
    linarith [hsm, hlow, hεδ]
  obtain ⟨T₀, hT₀⟩ := eventually_atTop.mp hmain
  exact ⟨T₀, fun T hT => hT₀ T hT⟩

end XiPrime
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateFn/Variant69b81b51242f0cc65d1e74e08d1df4c02f3e432774cf119047aa9986b0e10eca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateFn/Variant69b81b51242f0cc65d1e74e08d1df4c02f3e432774cf119047aa9986b0e10eca.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebbe5ad998e2ec93844568c5fbdf2d4f8c0852e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
