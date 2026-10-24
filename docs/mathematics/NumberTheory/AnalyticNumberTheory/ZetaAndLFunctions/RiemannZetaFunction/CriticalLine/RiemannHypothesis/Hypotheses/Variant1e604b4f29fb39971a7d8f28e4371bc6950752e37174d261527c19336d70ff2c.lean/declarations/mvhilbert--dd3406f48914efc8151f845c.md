# MVHilbert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a70d92dddab83291f524c070c313c50f817aa02f987172495c278637d8068b2b",
  "kind": "def",
  "lexical_name": "MVHilbert",
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
  "slug": "mvhilbert--dd3406f48914efc8151f845c",
  "source": {
    "blob": "d81d0ae15629e3345e6a1d9235fc21ac491425a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd3406f48914efc8151f845cf43bdadec8a03439e427761c72f2f35db99b0367",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a70d92dddab83291f524c070c313c50f817aa02f987172495c278637d8068b2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MVHilbert (C : ℝ) : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (freq δ : ι → ℝ) (x z : ι → ℂ),
    Function.Injective freq → (∀ r, 0 < δ r) → (∀ r s, r ≠ s → δ r ≤ |freq r - freq s|) →
    ‖∑ r, ∑ s, if r = s then (0 : ℂ) else x r * conj (z s) / ((freq r - freq s : ℝ) : ℂ)‖
      ≤ C * Real.sqrt (∑ r, ‖x r‖ ^ 2 / δ r) * Real.sqrt (∑ r, ‖z r‖ ^ 2 / δ r)

/-! ## H-Γ — Stirling-type facts for μ  [eq:mufacts], [eq:muints] -/

/-- **H-Γ** [eq:mufacts], verbatim: "μ is even, smooth, increasing in |τ|, μ ≥ μ(0) > −1,
  μ(τ) = (1/2π) log(|τ|/2π) + O(τ⁻²),  μ'(τ) ≪ |τ|⁻¹  (|τ| ≥ 1)"
("(eq:mufacts) is Stirling's formula and Re Γ'/Γ(σ+it) = −γ_E + Σ_{n≥0}(1/(n+1) − (n+σ)/((n+σ)²+t²))"),
and the pure-Γ halves of [eq:muints]:
  "∫_T^{2T} μ(τ) dτ = Tℓ₁/(2π) + O(1/T)",   "∫_T^{2T} μ(τ)² dτ = (Tℓ₁²/4π²)(1 + O(l⁻²))".
(The remaining clause of [eq:muints], "= N(T,2T) + O(l)", is [eq:RvM] and is NOT restated here.)
Source: Stirling for Γ'/Γ (e.g. [MV07, App. C]). This structure only STATES the facts; they are
proved in Zeta23/GammaFacts/Complete.lean (`gammaFacts : GammaFacts`, via the digamma series and a
vertical-line Stirling estimate in Zeta23/GammaFacts/*). "increasing" is rendered as MonotoneOn on [0,∞)
(nondecreasing), which is all prop:trace's Riemann-sum comparison uses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d81d0ae15629e3345e6a1d9235fc21ac491425a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
