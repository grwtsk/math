# count_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9264619347e998173efe785f60f559088636afc1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92037238-f623-3c3e-65c6-877799204129",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:236fbcc5-7756-2535-e132-03d601469c04",
  "kind": "theorem",
  "lexical_name": "count_certificate",
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
  "slug": "count-certificate--32254ac44598c8c516a41d9d",
  "source": {
    "blob": "9264619347e998173efe785f60f559088636afc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantb8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32254ac44598c8c516a41d9d8501128f98c3e5c46b16518ac72f0c98b9184d4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantb8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:236fbcc5-7756-2535-e132-03d601469c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_certificate (Z : ZeroConfig) (P : Params) (κ : ℝ) (lower : ℝ → ℝ)
    (θ₀ : ℝ → ℝ)
    (h0 : ∀ᶠ T in atTop, 4 * rtrace (P.hat T (Z.Gz P T)) - frobSq (P.hat T (Z.Gz P T))
      - 2 * (Z.N T (2 * T) : ℝ) - 3 * (NII Z T : ℝ)
      - θ₀ T / (P.a T * P.L T)
          * (4 + 2 * Real.sqrt (frobSq (P.hat T (Z.Gz P T))) + θ₀ T / (P.a T * P.L T))
      ≤ lower T)
    (hB0 : ∀ᶠ T in atTop, 0 ≤ θ₀ T / (P.a T * P.L T))
    (hBto : Tendsto (fun T => θ₀ T / (P.a T * P.L T)) atTop (𝓝 0))
    (hNII_o : (fun T => (NII Z T : ℝ)) =o[atTop] (fun T => (Z.N T (2 * T) : ℝ)))
    (hNtop : Tendsto (fun T => (Z.N T (2 * T) : ℝ)) atTop atTop)
    (htrace : ∀ δ > (0:ℝ), ∀ᶠ T in atTop,
      (1 - δ) * (Z.N T (2 * T) : ℝ) ≤ rtrace (P.hat T (Z.Gz P T)))
    (hfrob : ∀ δ > (0:ℝ), ∀ᶠ T in atTop,
      frobSq (P.hat T (Z.Gz P T)) ≤ (κ + δ) * (Z.N T (2 * T) : ℝ)) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 - κ - ε) * (Z.N T (2 * T) : ℝ) ≤ lower T := by
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
  have hsmall : ∀ᶠ T in atTop,
      3 * (NII Z T : ℝ) + B T * (4 + 2 * Real.sqrt ((κ + δ) * N T) + B T) ≤ δ * N T := by
    filter_upwards [hot.def hδ, hNtop.eventually_ge_atTop 0] with T h1 hN0
    simp only [Real.norm_eq_abs, mul_zero, zero_add, add_zero, abs_of_nonneg hN0] at h1
    exact (le_abs_self _).trans h1
  have hmain : ∀ᶠ T in atTop, (2 - κ - ε) * N T ≤ lower T := by
    filter_upwards [h0, hB0, htrace δ hδ, hfrob δ hδ, hsmall,
      hNtop.eventually_ge_atTop 0] with T hA hB₀ htr hfr hsm hN0
    have hlow := N0star_lower_moment (κ := κ) (R₁ := δ * N T) (R₂ := δ * N T) hB₀ hA
      (by simp only [hNdef] at htr ⊢; linarith) (by simp only [hNdef] at hfr ⊢; linarith)
    rw [show κ * N T + δ * N T = (κ + δ) * N T by ring] at hlow
    have hfin : (2 - κ - ε) * N T
        = (2 - κ) * N T - (4 * (δ * N T) + δ * N T + δ * N T) := by
      simp only [hδdef]; ring
    rw [hfin]
    linarith [hsm, hlow]
  obtain ⟨T₀, hT₀⟩ := eventually_atTop.mp hmain
  exact ⟨T₀, fun T hT => hT₀ T hT⟩

/-- the c = 3 fixed-T algebra: from `6·tr − frob − 3N − 3NII − B·(…) ≤ 2·lower` and the moment
bounds, `(3/2 − κ/2)·N − errors ≤ lower`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantb8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variantb8307fb1e879d8bf50c9afcc14ae9ed17ac7ea39a10d650704c0c64f5c5bb081.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9264619347e998173efe785f60f559088636afc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
