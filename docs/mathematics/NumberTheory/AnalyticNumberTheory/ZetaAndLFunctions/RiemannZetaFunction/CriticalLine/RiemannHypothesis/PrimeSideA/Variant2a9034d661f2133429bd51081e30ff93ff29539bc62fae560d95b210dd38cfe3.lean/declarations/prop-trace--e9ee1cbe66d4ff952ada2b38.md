# prop_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86845fc27b863a2b3c433d644666cb46aa375705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:875833c4-3063-31bf-bf4f-1fa595b41a6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4ac70d5-041d-50ca-fc64-797092fb47f1",
  "kind": "theorem",
  "lexical_name": "prop_trace",
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
  "slug": "prop-trace--e9ee1cbe66d4ff952ada2b38",
  "source": {
    "blob": "86845fc27b863a2b3c433d644666cb46aa375705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 300,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9ee1cbe66d4ff952ada2b385a7e958c11b07c0afe6582007ef6f871ad43ea73",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4ac70d5-041d-50ca-fc64-797092fb47f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_trace (hΓ : Zeta23.GammaFacts) (hcheb : Zeta23.ChebyshevMertens)
    (hlam : 0 < lam ∧ lam ≤ 1) (A : ℝ) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F => ∀ N : ℝ,
      |N - p.T * p.ell1 / (2 * π)| ≤ A * p.l →
      |trGtA p F - F.a * p.L * N| ≤ C * (p.L * Real.sqrt p.X)) := by
  obtain ⟨C₀, T₀, hC₀⟩ := prop_trace_mu cϱ lam hΓ hcheb hlam
  obtain ⟨Cμ, T₂, hCμ⟩ := hΓ.int_mu
  refine ⟨C₀ + |Cμ| + 2 * |A| / lam, max T₀ (max T₂ 1), fun p F hplam hT hF => ?_⟩
  intro N hN
  subst hplam
  have h0 := hC₀ p F rfl ((le_max_left _ _).trans hT) hF
  have hT2 : T₂ ≤ p.T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
  have hT1 : (1:ℝ) ≤ p.T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
  have hμint := hCμ p.T hT2
  have hL := hF.L_pos
  have hlam0 : 0 < p.lam := hlam.1
  have ha0 := hF.a_pos.le
  have ha1 := hF.a_le_one
  have hsX : 0 ≤ Real.sqrt p.X := Real.sqrt_nonneg _
  have hX1 : 1 ≤ Real.sqrt p.X := by
    rw [Real.le_sqrt' one_pos, one_pow]; exact Real.one_le_exp hL.le
  -- l ≤ (2/λ)√X  (since √X = e^{L/2} = e^{λl/2} ≥ λl/2)
  have hl0 : 0 ≤ p.l := zero_le_one.trans hF.one_le_l
  have hlX : p.l ≤ 2 / p.lam * Real.sqrt p.X := by
    have he : Real.sqrt p.X = Real.exp (p.lam * p.l / 2) := by
      rw [show p.X = Real.exp (p.lam * p.l) from rfl, ← Real.exp_half]
    rw [he, div_mul_eq_mul_div, le_div_iff₀ hlam0]
    have h1 := Real.add_one_le_exp (p.lam * p.l / 2)
    nlinarith
  -- assemble
  have e1 : |trGtA p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ|
      ≤ C₀ * (p.L * Real.sqrt p.X) := h0
  have e2 : |F.a * p.L * ((∫ τ in p.T..(2 * p.T), Zeta23.mu τ) - p.T * p.ell1 / (2 * π))|
      ≤ |Cμ| * (p.L * Real.sqrt p.X) := by
    rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ F.a * p.L)]
    have h1 : |(∫ τ in p.T..(2 * p.T), Zeta23.mu τ) - p.T * p.ell1 / (2 * π)| ≤ |Cμ| := by
      refine hμint.trans ?_
      calc Cμ / p.T ≤ |Cμ| / p.T := by gcongr; exact le_abs_self _
        _ ≤ |Cμ| / 1 := by apply div_le_div_of_nonneg_left (abs_nonneg _) one_pos; exact hT1
        _ = |Cμ| := div_one _
    calc F.a * p.L * |(∫ τ in p.T..(2 * p.T), Zeta23.mu τ) - p.T * p.ell1 / (2 * π)|
        ≤ 1 * p.L * |Cμ| := by gcongr
      _ = p.L * |Cμ| := by ring
      _ ≤ (p.L * Real.sqrt p.X) * |Cμ| := by
          have := mul_le_mul_of_nonneg_left hX1 hL.le
          have h0' : 0 ≤ |Cμ| := abs_nonneg _
          nlinarith
      _ = |Cμ| * (p.L * Real.sqrt p.X) := by ring
  have e3 : |F.a * p.L * (p.T * p.ell1 / (2 * π) - N)|
      ≤ (2 * |A| / p.lam) * (p.L * Real.sqrt p.X) := by
    rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ F.a * p.L), abs_sub_comm]
    have hAl : A * p.l ≤ |A| * (2 / p.lam * Real.sqrt p.X) := by
      calc A * p.l ≤ |A| * p.l := mul_le_mul_of_nonneg_right (le_abs_self A) hl0
        _ ≤ |A| * (2 / p.lam * Real.sqrt p.X) :=
            mul_le_mul_of_nonneg_left hlX (abs_nonneg A)
    calc F.a * p.L * |N - p.T * p.ell1 / (2 * π)| ≤ 1 * p.L * (A * p.l) := by gcongr
      _ = p.L * (A * p.l) := by ring
      _ ≤ p.L * (|A| * (2 / p.lam * Real.sqrt p.X)) := mul_le_mul_of_nonneg_left hAl hL.le
      _ = (2 * |A| / p.lam) * (p.L * Real.sqrt p.X) := by field_simp
  calc |trGtA p F - F.a * p.L * N|
      = |(trGtA p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ)
          + F.a * p.L * ((∫ τ in p.T..(2 * p.T), Zeta23.mu τ) - p.T * p.ell1 / (2 * π))
          + F.a * p.L * (p.T * p.ell1 / (2 * π) - N)| := by ring_nf
    _ ≤ |trGtA p F - F.a * p.L * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ|
          + |F.a * p.L * ((∫ τ in p.T..(2 * p.T), Zeta23.mu τ) - p.T * p.ell1 / (2 * π))|
          + |F.a * p.L * (p.T * p.ell1 / (2 * π) - N)| := abs_add_three _ _ _
    _ ≤ (C₀ + |Cμ| + 2 * |A| / p.lam) * (p.L * Real.sqrt p.X) := by linarith

/-! ## [lem:ends]  (§5.3), with [eq:Kdef], [eq:trG2int], [eq:Kbounds] -/

-- **[lem:ends]** is proved in Zeta23/PrimeSideA/Ends.lean:
-- `Zeta23.PrimeSide.lem_ends` (§5.3) — imported by this module.
#check @lem_ends

/-! ## [eq:Msplit]  (§5.4) -/

/-- **[eq:Msplit]** (§5.4, verbatim):
`𝓜 = 𝓜[μ,μ] + 𝓜[P_X,P_X] + 2𝓜[μ,P_X] + 2𝓜[μ,Π_X] + 2𝓜[P_X,Π_X] + 𝓜[Π_X,Π_X]`,
valid because `𝓜[·,·]` is a symmetric bilinear form (`Φ²` even) and all six densities are
continuous on the compact square `I×I` (so every integral is a genuine Lebesgue integral). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86845fc27b863a2b3c433d644666cb46aa375705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
