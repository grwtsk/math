# FreezeFactsW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d4c83548d83c2eff0b6688073597020f0160ae1f2893d38dd6bb58ab6e58e5b",
  "kind": "structure",
  "lexical_name": "FreezeFactsW",
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
  "slug": "freezefactsw--c15741e6b9ccaf777249fb95",
  "source": {
    "blob": "78e33bd9eac267eae7841a9776c68083ca01bf89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variant24f13dae62232535f53708c81d4c6d9430ee5a35b72dcbc8ec2a5e893df0e264.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c15741e6b9ccaf777249fb9550ea3f76cdbb7590fb5317f2a8fb490cfd3a85e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variant24f13dae62232535f53708c81d4c6d9430ee5a35b72dcbc8ec2a5e893df0e264.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d4c83548d83c2eff0b6688073597020f0160ae1f2893d38dd6bb58ab6e58e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FreezeFactsW (c : ℝ) : Prop where
  freeze : ∃ C T₀ : ℝ, 0 ≤ C ∧ 8 ≤ T₀ ∧ ∀ T : ℝ, T₀ ≤ T → ∀ τ t : ℝ, T ≤ τ → T / 4 ≤ t →
      ‖dE2 c t - DfroC c τ t‖ ≤ C * (|t - τ| + 1) / (T * Real.log T)
  unif : ∃ C T₀ : ℝ, 0 ≤ C ∧ 8 ≤ T₀ ∧ ∀ T : ℝ, T₀ ≤ T → ∀ τ t : ℝ, T ≤ τ →
      ‖DfroC c τ t‖ ≤ C / Real.log T
  conj_symm : ∀ t : ℝ, t ≠ 0 → conj (dE2 c (-t)) = dE2 c t

/-- **the W J-term estimate** — instance of JcorrG_estimate at (c, dE2 c, τ ↦ (L2star τ : ℂ)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variant24f13dae62232535f53708c81d4c6d9430ee5a35b72dcbc8ec2a5e893df0e264.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variant24f13dae62232535f53708c81d4c6d9430ee5a35b72dcbc8ec2a5e893df0e264.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e33bd9eac267eae7841a9776c68083ca01bf89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
