# actualLogFourthKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9073a7572ef3dc4d260bf5cf709d0deeb276c5107229c9c152bf7112d92bd14d",
  "kind": "def",
  "lexical_name": "actualLogFourthKernel",
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
  "slug": "actuallogfourthkernel--782faf1a8d28c53f6db36b9d",
  "source": {
    "blob": "f715a7e4ec1ca75495d43ad56c6746630cc39ab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variantd8a71f9a46ec6151882f521d3bfd05b438da0bbe931b0787edf293d42651f9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:782faf1a8d28c53f6db36b9db5d97a238b3e8881949dcff37078aea87a94c9a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variantd8a71f9a46ec6151882f521d3bfd05b438da0bbe931b0787edf293d42651f9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9073a7572ef3dc4d260bf5cf709d0deeb276c5107229c9c152bf7112d92bd14d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualLogFourthKernel (A z : ℝ) : ℝ :=
  iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z -
    iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z / 2 +
      sourceCorrelation explicitSecondDerivative A z / 16

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variantd8a71f9a46ec6151882f521d3bfd05b438da0bbe931b0787edf293d42651f9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variantd8a71f9a46ec6151882f521d3bfd05b438da0bbe931b0787edf293d42651f9fb.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f715a7e4ec1ca75495d43ad56c6746630cc39ab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
