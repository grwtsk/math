# FreezeFactsW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:790cd9926357423568fb6a383a995cc72d4aea6417fb6324a27ce19ce1705178",
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
  "slug": "freezefactsw--3d645429fab505f1ca738599",
  "source": {
    "blob": "b3c55345eecb947b9430d91f270e59dfe61ff038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variantbf7c170d0ddcdb87bcc81e13b92fc193aae9c7aaef516632603fef2efa629976.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d645429fab505f1ca738599f69b7b56266696d840823cf228aaa98f2f9f2169",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variantbf7c170d0ddcdb87bcc81e13b92fc193aae9c7aaef516632603fef2efa629976.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:790cd9926357423568fb6a383a995cc72d4aea6417fb6324a27ce19ce1705178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–49.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variantbf7c170d0ddcdb87bcc81e13b92fc193aae9c7aaef516632603fef2efa629976.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFJTermW/Variantbf7c170d0ddcdb87bcc81e13b92fc193aae9c7aaef516632603fef2efa629976.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3c55345eecb947b9430d91f270e59dfe61ff038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
