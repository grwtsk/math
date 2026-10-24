# eventually_zetaCount_le_Ncount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e977c23ce5839e0cbd49741cf48f80606e3e8071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e8b19b7-8de3-33f4-5e7c-df53ecd88779",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c7047e4-126b-ff63-44dd-25ca7515842a",
  "kind": "theorem",
  "lexical_name": "eventually_zetaCount_le_Ncount",
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
  "slug": "eventually-zetacount-le-ncount--19d6ea87df739764d07cdc89",
  "source": {
    "blob": "e977c23ce5839e0cbd49741cf48f80606e3e8071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 279,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19d6ea87df739764d07cdc895ede1fa23e20e5ce654374c10a16ba397c2a6764",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c7047e4-126b-ff63-44dd-25ca7515842a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_zetaCount_le_Ncount (δ : ℝ) (hδ : 0 < δ) :
    ∀ᶠ T in atTop, (1 - δ) * (Zeta23.zetaZeroConfig.N T (2 * T) : ℝ) ≤ (Ncount T (2 * T) : ℝ) := by
  have hRζ : RiemannVonMangoldt Zeta23.zetaZeroConfig := Zeta23.RvM.riemannVonMangoldt Zeta23.gammaFacts
  obtain ⟨C₁, T₁, h₁⟩ := xiDerivZeros₀_rvm.main
  obtain ⟨C₂, T₂, h₂⟩ := hRζ.main
  -- (|C₁| + |C₂|)·log T = o(N_ζ)
  have ho : (fun T => (|C₁| + |C₂|) * Real.log T) =o[atTop] fun T => (Zeta23.zetaZeroConfig.N T (2 * T) : ℝ) :=
    Assembly.isLittleO_N_of_isLittleO_Tl _ hRζ (Assembly.isLittleO_log_Tl.const_mul_left _)
  filter_upwards [ho.def hδ, eventually_ge_atTop T₁, eventually_ge_atTop T₂, eventually_ge_atTop (1:ℝ)]
    with T hsmall hT₁ hT₂ hT1
  have hN0 : 0 ≤ (Zeta23.zetaZeroConfig.N T (2 * T) : ℝ) := Nat.cast_nonneg _
  have hlog : 0 ≤ Real.log T := Real.log_nonneg hT1
  rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg hN0, abs_of_nonneg (by positivity)] at hsmall
  have a₁ := (abs_le.mp (h₁ T hT₁)).1
  have a₂ := (abs_le.mp (h₂ T hT₂)).2
  have e : (xiDerivZeros₀.N T (2 * T) : ℝ) = (Ncount T (2 * T) : ℝ) := by simp [xiDerivZeros₀]
  rw [e] at a₁
  have hC₁ : C₁ * Real.log T ≤ |C₁| * Real.log T := mul_le_mul_of_nonneg_right (le_abs_self _) hlog
  have hC₂ : C₂ * Real.log T ≤ |C₂| * Real.log T := mul_le_mul_of_nonneg_right (le_abs_self _) hlog
  nlinarith

/-- **vs. N_ζ — unconditional:** there is T₀ such that for every T ≥ T₀,
  0.85838 · N_ζ(T,2T) ≤ N⁰ˢ_{ξ′}(T,2T)   and   0.92919 · N_ζ(T,2T) ≤ N_{d,ξ′}(T,2T),
N_ζ(T,2T) = Zeta23.Ncount T (2T) = # nontrivial zeros of ζ with T < Im ≤ 2T, with multiplicity.  ("At least 85.838 % of
N(T,2T)": that many simple critical-line zeros of ξ′ at height in (T,2T].) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e977c23ce5839e0cbd49741cf48f80606e3e8071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
