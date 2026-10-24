# count_certificate_c3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae9d1d3ae43d01b3cd8daab6271ffae92e292f10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e8e1482fa729d6b4843feb46e881e82aa2508bedd0e2f5ad85917934f19b7de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5ae230a-c8dc-2384-a23c-0c4cbfbf09d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40b8e7cf-96ba-528e-a3bc-d742ae7aab4c",
  "kind": "theorem",
  "lexical_name": "count_certificate_c3",
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
  "slug": "count-certificate-c3--151d1d70749f82fbbccf3b91",
  "source": {
    "blob": "ae9d1d3ae43d01b3cd8daab6271ffae92e292f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateC3/Variant5e8e1482fa729d6b4843feb46e881e82aa2508bedd0e2f5ad85917934f19b7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:151d1d70749f82fbbccf3b91a85b5576b2d3333698881612331df15043769125",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateC3/Variant5e8e1482fa729d6b4843feb46e881e82aa2508bedd0e2f5ad85917934f19b7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40b8e7cf-96ba-528e-a3bc-d742ae7aab4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_certificate_c3 (Z : ZeroConfig) (P : Params) (κ : ℝ) (lower : ℝ → ℝ)
    (θ₀ : ℝ → ℝ)
    (h0 : ∀ᶠ T in atTop, 6 * rtrace (P.hat T (Z.Gz P T)) - frobSq (P.hat T (Z.Gz P T))
      - 3 * (Z.N T (2 * T) : ℝ) - 5 * (NII Z T : ℝ)
      - θ₀ T / (P.a T * P.L T)
          * (6 + 2 * Real.sqrt (frobSq (P.hat T (Z.Gz P T))) + θ₀ T / (P.a T * P.L T))
      ≤ 2 * lower T)
    (hB0 : ∀ᶠ T in atTop, 0 ≤ θ₀ T / (P.a T * P.L T))
    (hBto : Tendsto (fun T => θ₀ T / (P.a T * P.L T)) atTop (𝓝 0))
    (hNII_o : (fun T => (NII Z T : ℝ)) =o[atTop] (fun T => (Z.N T (2 * T) : ℝ)))
    (hNtop : Tendsto (fun T => (Z.N T (2 * T) : ℝ)) atTop atTop)
    (htrace : ∀ δ > (0:ℝ), ∀ᶠ T in atTop,
      (1 - δ) * (Z.N T (2 * T) : ℝ) ≤ rtrace (P.hat T (Z.Gz P T)))
    (hfrob : ∀ δ > (0:ℝ), ∀ᶠ T in atTop,
      frobSq (P.hat T (Z.Gz P T)) ≤ (κ + δ) * (Z.N T (2 * T) : ℝ)) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (3/2 - κ/2 - ε) * (Z.N T (2 * T) : ℝ) ≤ lower T := by
  intro ε hε
  set N : ℝ → ℝ := fun T => (Z.N T (2 * T) : ℝ) with hNdef
  set B : ℝ → ℝ := fun T => θ₀ T / (P.a T * P.L T) with hBdef
  set δ : ℝ := ε / 6 with hδdef
  have hδ : 0 < δ := by simp only [hδdef]; linarith
  have hκδ0 : 0 ≤ κ + δ := by
    by_contra h
    rw [not_le] at h
    obtain ⟨T, hT1, hT2⟩ := ((hfrob δ hδ).and (hNtop.eventually_ge_atTop 1)).exists
    have : frobSq (P.hat T (Z.Gz P T)) < 0 :=
      lt_of_le_of_lt hT1 (mul_neg_of_neg_of_pos h (by simp only [hNdef] at hT2 ⊢; linarith))
    exact absurd (frobSq_nonneg _) (not_le.mpr this)
  have hot := err_isLittleO (N := N) (R₁ := fun _ => 0) (R₂ := fun _ => 0)
    (NII := fun T => (NII Z T : ℝ)) (B := B) (cl := fun _ => κ + δ) (K := κ + δ)
    hNtop (isLittleO_zero _ _) (isLittleO_zero _ _) hNII_o hBto
    (Eventually.of_forall fun _ => ⟨hκδ0, le_rfl⟩)
  -- B ≤ δ/2 · N eventually (B → 0, N → ∞)
  have hBsmall : ∀ᶠ T in atTop, B T ≤ δ / 2 * N T := by
    have hB1 : ∀ᶠ T in atTop, B T ≤ 1 := by
      have := hBto.eventually (eventually_le_nhds (show (0:ℝ) < 1 by norm_num))
      exact this
    filter_upwards [hB1, hNtop.eventually_ge_atTop (2 / δ)] with T h1 h2
    have : 1 ≤ δ / 2 * N T := by
      rw [div_le_iff₀ hδ] at h2
      nlinarith
    linarith
  have hsmall : ∀ᶠ T in atTop,
      (5/2) * (NII Z T : ℝ) + (B T / 2) * (6 + 2 * Real.sqrt ((κ + δ) * N T) + B T)
        ≤ 2 * δ * N T := by
    filter_upwards [hot.def hδ, hNII_o.def hδ, hNtop.eventually_ge_atTop 0, hBsmall, hB0]
      with T h1 hnii hN0 hBs hB₀
    simp only [Real.norm_eq_abs, mul_zero, zero_add, add_zero, abs_of_nonneg hN0] at h1 hnii
    have h1' : 3 * (NII Z T : ℝ) + B T * (4 + 2 * Real.sqrt ((κ + δ) * N T) + B T) ≤ δ * N T :=
      (le_abs_self _).trans h1
    have hnii' : (NII Z T : ℝ) ≤ δ * N T := (le_abs_self _).trans hnii
    have hB₀' : 0 ≤ B T := hB₀
    -- (5/2)NII + (B/2)(6 + 2√ + B) = ½[3NII + B(4 + 2√ + B)] + NII + B
    nlinarith
  have hmain : ∀ᶠ T in atTop, (3/2 - κ/2 - ε) * N T ≤ lower T := by
    filter_upwards [h0, hB0, htrace δ hδ, hfrob δ hδ, hsmall,
      hNtop.eventually_ge_atTop 0] with T hA hB₀ htr hfr hsm hN0
    have hlow := count_lower_moment_c3_five (κ := κ) (R₁ := δ * N T) (R₂ := δ * N T) hB₀ hA
      (by simp only [hNdef] at htr ⊢; linarith) (by simp only [hNdef] at hfr ⊢; linarith)
    rw [show κ * N T + δ * N T = (κ + δ) * N T by ring] at hlow
    have hεδ : (3/2 - κ/2 - ε) * N T
        ≤ (3/2 - κ/2) * N T - (3 * (δ * N T) + δ * N T / 2 + 2 * δ * N T) := by
      simp only [hδdef]; nlinarith
    linarith [hsm, hlow, hεδ]
  obtain ⟨T₀, hT₀⟩ := eventually_atTop.mp hmain
  exact ⟨T₀, fun T hT => hT₀ T hT⟩

end Assembly
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateC3/Variant5e8e1482fa729d6b4843feb46e881e82aa2508bedd0e2f5ad85917934f19b7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificateC3/Variant5e8e1482fa729d6b4843feb46e881e82aa2508bedd0e2f5ad85917934f19b7de.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9d1d3ae43d01b3cd8daab6271ffae92e292f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
