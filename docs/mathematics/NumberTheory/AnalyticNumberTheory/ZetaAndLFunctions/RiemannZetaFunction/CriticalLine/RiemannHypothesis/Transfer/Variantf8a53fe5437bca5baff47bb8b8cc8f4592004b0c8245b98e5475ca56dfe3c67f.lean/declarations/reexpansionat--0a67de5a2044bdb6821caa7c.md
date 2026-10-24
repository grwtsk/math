# ReexpansionAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c367a27704ea3a8f6ab10a646fac8ffe723df65405eb023dc139e08b384ee8bd",
  "kind": "structure",
  "lexical_name": "ReexpansionAt",
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
  "slug": "reexpansionat--0a67de5a2044bdb6821caa7c",
  "source": {
    "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 536,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a67de5a2044bdb6821caa7c3249f6b1f55ccda94c6a02485942cb301c8d1271",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c367a27704ea3a8f6ab10a646fac8ffe723df65405eb023dc139e08b384ee8bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReexpansionAt (Λ₀ : ℝ → ℂ) (c : ℝ → ℕ → ℂ) (e : ℝ → ℕ → ℕ → ℂ) (ρ₀ A T₀ : ℝ) : Prop where
  expand : ∀ T : ℝ, T₀ ≤ T → ∀ δ : ℝ, δ ∈ Set.Icc (0:ℝ) (1 / 2) → ∀ N : ℕ,
    HasSum (fun r : ℕ => e T (r + 1) N * (δ : ℂ) ^ (r + 1)) (xiCoeff (Λ₀ T + δ) N - c T N)
  e_one : ∀ T : ℝ, ∀ r : ℕ, e T r 1 = 0
  H1 : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖e T r N‖ / Real.sqrt N) ≤ A * (ρ₀ / l T) ^ r * Real.sqrt x * l T
  H2 : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖e T r N‖ ^ 2) ≤ A * (ρ₀ / l T) ^ (2 * r) * x * l T ^ 2
  H3 : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖e T r N‖ ^ 2 / N) ≤ A * (ρ₀ / l T) ^ (2 * r) * l T ^ 2 * (1 + Real.log x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469a31ec055d6db903e9095cdca737f5b904f019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
