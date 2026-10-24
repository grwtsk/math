# Wsummand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d76d02b3c477fabb56c2f895439139f833be71a7dcf5ad2d0beffd6b7d52b5b9",
  "kind": "def",
  "lexical_name": "Wsummand",
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
  "slug": "wsummand--fda6a2e89f272e3109890bfb",
  "source": {
    "blob": "5c408ed7c933be40d1e1f4bda840cad996fa9b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 172,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variantba65a254688c7569affcfaeb1dd1133fd88a54d10ee08fcd97b5eb70003785ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fda6a2e89f272e3109890bfb3614c1aee8953e0baf7abdeeff5dad6482956cdf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variantba65a254688c7569affcfaeb1dd1133fd88a54d10ee08fcd97b5eb70003785ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d76d02b3c477fabb56c2f895439139f833be71a7dcf5ad2d0beffd6b7d52b5b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Wsummand (f g : ℝ → ℂ) (ρ : ℂ) : ℂ :=
  (Z.mult ρ : ℂ) * paperFT f (gammaOf ρ) * (starRingEnd ℂ) (paperFT g ((starRingEnd ℂ) (gammaOf ρ)))

/-- W(f,g) := Σ_ρ m_ρ h_f(γ_ρ) conj(h_g(conj γ_ρ)), "Σ_ρ runs over the DISTINCT nontrivial zeros (of
either sign of γ) and the multiplicity is written explicitly"  [eq:Wdef]. As a tsum over the
subtype of carrier; absolute convergence is part of hypothesis H-EF. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variantba65a254688c7569affcfaeb1dd1133fd88a54d10ee08fcd97b5eb70003785ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variantba65a254688c7569affcfaeb1dd1133fd88a54d10ee08fcd97b5eb70003785ae.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c408ed7c933be40d1e1f4bda840cad996fa9b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
