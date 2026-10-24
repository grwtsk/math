# continuous_fourierInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62ccff68-a2aa-f231-f179-7aec7b1a7148",
  "kind": "theorem",
  "lexical_name": "continuous_fourierInv",
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
  "slug": "continuous-fourierinv--13e70ee56346f74476ac54d4",
  "source": {
    "blob": "4bf1a3ccd39d38eb385ddeeb509572518b21067a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e70ee56346f74476ac54d4e70e44b38c7d90f772427d43c8aacc4e77c8d7c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62ccff68-a2aa-f231-f179-7aec7b1a7148`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_fourierInv (f : ℝ → ℂ) (hf : Integrable f) :
    Continuous (𝓕⁻ f) := by
  exact VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
    continuous_inner.neg hf

/-- For an L1 and L2 input, the L2 inverse transform is its actual inverse integral
almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant87d1183aaf83afbefd7f96c4dbbf0a38b0dffc8b95dfddd4d60690f493a7ec5d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf1a3ccd39d38eb385ddeeb509572518b21067a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
