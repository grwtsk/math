# ReexpansionGeom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44956c9196ae7bbffc1fdcc817c22f4dce85d5315f2baa08026bbbdd89f672ef",
  "kind": "structure",
  "lexical_name": "ReexpansionGeom",
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
  "slug": "reexpansiongeom--80d173cdf006f8896b9e6abf",
  "source": {
    "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 557,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80d173cdf006f8896b9e6abf17f3f73a25529ead0333059a5d81ea6bdcee8e45",
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

Occurrence: `declaration:44956c9196ae7bbffc1fdcc817c22f4dce85d5315f2baa08026bbbdd89f672ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReexpansionGeom (Pf : ℝ → Params) (Λ₀ : ℝ → ℂ) (c : ℝ → ℕ → ℂ) (e : ℝ → ℕ → ℕ → ℂ)
    (ρ₀ A T₀ : ℝ) : Prop where
  expand : ∀ T : ℝ, T₀ ≤ T → ∀ δ : ℝ, δ ∈ Set.Icc (0:ℝ) (1 / 2) →
    ∀ N ∈ Finset.Ioc 0 ⌊(Pf T).X T⌋₊,
    HasSum (fun r : ℕ => e T (r + 1) N * (δ : ℂ) ^ (r + 1)) (xiCoeff (Λ₀ T + δ) N - c T N)
  e_one : ∀ T : ℝ, ∀ r : ℕ, e T r 1 = 0
  S1_le : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r →
    S1 (e T r) ((Pf T).X T) ≤ A * (ρ₀ / l T) ^ r * (Real.sqrt ((Pf T).X T) * l T)
  sumSq_le : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r →
    (∑ k ∈ Finset.range ((Pf T).d T), ∑ l' ∈ Finset.range ((Pf T).d T),
      GentryNu (Pc ((Pf T).X T) (e T r)) ((Pf T).toSetting T) ((Pf T).localFun T) k l' ^ 2)
      ≤ A * (ρ₀ / l T) ^ (2 * r) * ((Pf T).L T ^ 4 * T * l T ^ 2)
        + A * ((Pf T).L T ^ 3 * l T ^ 4 * (1 + (Pf T).X T))

/-- the entries of D = M − Mᵀ are P-part entries of the coefficient DIFFERENCES (μ, Π_X cancel). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469a31ec055d6db903e9095cdca737f5b904f019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
