# lem_ends_nu

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e397fea-0565-2ad7-2cbb-8d51f8d42080",
  "kind": "theorem",
  "lexical_name": "lem_ends_nu",
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
  "slug": "lem-ends-nu--fc994ee3e8ee01ed43f02507",
  "source": {
    "blob": "1a977344875dd88362ac57a0fde406bebbda2cd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variant37e364198e3e4164041f2977a5c43fcf5a8409e4a402d2fde22192acdc66ce75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc994ee3e8ee01ed43f02507ae46098b33ce0206ee140bc4138bb3b0bbefc4a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variant37e364198e3e4164041f2977a5c43fcf5a8409e4a402d2fde22192acdc66ce75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e397fea-0565-2ad7-2cbb-8d51f8d42080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lem_ends_nu :
    ∃ C T₀ : ℝ, ∀ (p : Setting) (F : LocalFun) (B : ℝ) (ν : ℝ → ℝ), p.lam = lam → T₀ ≤ p.T →
      LocalHypsCore cϱ p F → Continuous ν → NuBound p B ν → p.l ≤ B →
      |(p.L)⁻¹ ^ 2 * ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu ν p F k l ^ 2 - MtotalNu ν p F|
        ≤ C * (p.L * p.l * Real.log p.l * B ^ 2) := by
  obtain ⟨C, T₀, h⟩ := lem_ends_nu_W cϱ lam
  refine ⟨C, T₀, fun p F B ν hplam hT hF hνc hν hBl => h p F B ν hplam hT hF.toCoreW ?_ hνc hν hBl⟩
  -- L = λ l ≤ l ≤ 2l
  have h1 := hF.lam_le_one
  have h2 := hF.lam_pos
  have h3 : p.L = p.lam * p.l := rfl
  have hl : 0 ≤ p.l := by linarith [hF.one_le_l]
  rw [h3]; nlinarith

/-- [eq:Bdef] in the present packaging: `Zeta23.nuX_abs_le` gives
`NuBound p (Bconst p) (Zeta23.nuX p.X)` for `T ≥ T₀(λ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variant37e364198e3e4164041f2977a5c43fcf5a8409e4a402d2fde22192acdc66ce75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variant37e364198e3e4164041f2977a5c43fcf5a8409e4a402d2fde22192acdc66ce75.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a977344875dd88362ac57a0fde406bebbda2cd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
