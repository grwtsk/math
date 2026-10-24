# nuBound_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e555736-f703-8dc1-1c29-a0672add49df",
  "kind": "theorem",
  "lexical_name": "nuBound_eventually",
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
  "slug": "nubound-eventually--e57920e210f2a5bad7283fd5",
  "source": {
    "blob": "1a977344875dd88362ac57a0fde406bebbda2cd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variant37e364198e3e4164041f2977a5c43fcf5a8409e4a402d2fde22192acdc66ce75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e57920e210f2a5bad7283fd569d09b67a31b5e9aea992cb7d812f2c12cff6a22",
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

Occurrence: `result:1e555736-f703-8dc1-1c29-a0672add49df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nuBound_eventually (hΓ : Zeta23.GammaFacts) (hlam : 0 < lam) :
    ∃ T₀ : ℝ, ∀ p : Setting, p.lam = lam → T₀ ≤ p.T → NuBound p (Bconst p) (Zeta23.nuX p.X) := by
  obtain ⟨T₀, _, h⟩ := Zeta23.nuX_abs_le hΓ hlam
  refine ⟨T₀, fun p hplam hT τ => ?_⟩
  have := h p.T hT τ
  rw [← hplam] at this
  exact this

/-- **[lem:ends] (End effects)** (§5.3, verbatim): for `T ≥ T₀`,
`tr G̃² = 𝓜 + O(L · l · log l · (l² + X))`,  `𝓜 := ∬_{I×I} Φ(τ−τ')² ν_X(τ)ν_X(τ') dτdτ'`.
ζ-instantiation of `lem_ends_nu` with
`ν := ν_X`, `B := l + 4√X` ([eq:Bdef] via `Zeta23.nuX_abs_le`, continuity of μ from H-Γ);
`hcheb` is carried for interface uniformity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variant37e364198e3e4164041f2977a5c43fcf5a8409e4a402d2fde22192acdc66ce75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variant37e364198e3e4164041f2977a5c43fcf5a8409e4a402d2fde22192acdc66ce75.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a977344875dd88362ac57a0fde406bebbda2cd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
