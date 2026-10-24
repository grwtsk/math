# Reexpansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27c7bb6756cdff8012eba5151b7911b212f8caf2a5609ca0a29bff17aebf6052",
  "kind": "structure",
  "lexical_name": "Reexpansion",
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
  "slug": "reexpansion--fe2a479eb8453d3947f1b3fa",
  "source": {
    "blob": "8b65cddb229f721bfeeb2eb721a35e01eaf4dca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe2a479eb8453d3947f1b3faa5af297f18e14c582d54bbf199a44fbec1e79574",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27c7bb6756cdff8012eba5151b7911b212f8caf2a5609ca0a29bff17aebf6052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Reexpansion (F : CoeffFamily) (e : ℝ → ℕ → ℕ → ℂ) (ρ₀ A T₀ : ℝ) : Prop where
  /-- C(N; L_T + δ) − c^{(T)}_N = Σ_{r≥1} e_r(N) δ^r  (absolutely convergent: |δ/L_T| < 1). -/
  expand : ∀ T : ℝ, T₀ ≤ T → ∀ δ : ℝ, δ ∈ Set.Icc (0:ℝ) (1 / 2) → ∀ N : ℕ,
    HasSum (fun r : ℕ => e T (r + 1) N * (δ : ℂ) ^ (r + 1)) (xiCoeff (LT T + δ) N - F.c T N)
  /-- e_r(1) = 0 (the N = 1 frequency does not oscillate; C(1; ·) ≡ 0). -/
  e_one : ∀ T : ℝ, ∀ r : ℕ, e T r 1 = 0
  /-- (H1)_r: Σ_{N≤x} |e_r(N)| N^{−1/2} ≤ A (ρ₀/l)^r √x · l. -/
  H1 : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖e T r N‖ / Real.sqrt N) ≤ A * (ρ₀ / l T) ^ r * Real.sqrt x * l T
  /-- (H2)_r: Σ_{N≤x} |e_r(N)|² ≤ A (ρ₀/l)^{2r} x l². -/
  H2 : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖e T r N‖ ^ 2) ≤ A * (ρ₀ / l T) ^ (2 * r) * x * l T ^ 2
  /-- (H3)_r: Σ_{N≤x} |e_r(N)|²/N ≤ A (ρ₀/l)^{2r} l² (1 + log x)   ([XF′ §6]: "≤ (c/l)^{2r} c l² L"). -/
  H3 : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖e T r N‖ ^ 2 / N) ≤ A * (ρ₀ / l T) ^ (2 * r) * l T ^ 2 * (1 + Real.log x)

/-- **The prop:PP upper bound for general coefficients** (frobSq_Ppart_le; [XF′ Lemma 6.1]):
"Σ_{kl} (Q_{kl})² is bounded by the paper's Prop. PP in its upper-bound form (diagonal +
Montgomery–Vaughan)", through lem_ends_nu for ν = P_e: main T·L·Σ|e|²/N (g ≤ L), then L·Σ|e|²,
the 𝒪₂ term L·S₁², and the r-INDEPENDENT end-effect term L·l·log l·(l + S₁)².  Over abstract taper
data; k,l-sums over Fin p.d (shape of PrimeSide.trGt2A); N-sums over Finset.Ioc 0 ⌊X⌋₊, literally
sumSqDivW / sumSqW / S1 (defeq).  The theorem:
frobSq_Ppart_le (hPP : PPInput) (hMV : MVHilbert C) (hC : 0 < C) (cϱ lam) (hlam : 0 < lam ∧ lam ≤ 1) : PPUpper cϱ lam
(Zeta23/XiPrime/PrimeSide/PPUpper.lean). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b65cddb229f721bfeeb2eb721a35e01eaf4dca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
