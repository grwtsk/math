# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc87bd062a8c34df442dfb47e9d94ab145f50cdfdbd2ace8a86bfb72c041d8c6",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f87ddc54ee592c24e7368fa8",
  "source": {
    "blob": "20488969545424643d3e5f7240b8e74358ba5653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantc4d84f58682c6288d1ba4b8077cb863862ee5e321d7e3db5c03a6acbee401d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f87ddc54ee592c24e7368fa835ad97f609fd53351d8aa0a6c033e5be8a651066",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantc4d84f58682c6288d1ba4b8077cb863862ee5e321d7e3db5c03a6acbee401d8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc87bd062a8c34df442dfb47e9d94ab145f50cdfdbd2ace8a86bfb72c041d8c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (z : ℂ) (n : ℕ) :
    Surface.Core.ComplexAnalysis.HasResidueCoefficientAt
      (logDeriv (fun w : ℂ ↦ (w - z) ^ n)) z (n : ℂ) := by
  apply Surface.Core.ComplexAnalysis.logDeriv_hasResidueCoefficientAt_order
    (by fun_prop)
  exact analyticOrderAt_sub_pow z n

/-- Multiplication by the nonvanishing analytic unit `exp` preserves the
small-circle logarithmic-derivative multiplicity integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantc4d84f58682c6288d1ba4b8077cb863862ee5e321d7e3db5c03a6acbee401d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantc4d84f58682c6288d1ba4b8077cb863862ee5e321d7e3db5c03a6acbee401d8c.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20488969545424643d3e5f7240b8e74358ba5653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
