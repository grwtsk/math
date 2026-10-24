# actualCorrelationComplex_contDiff_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16f65d8b-9a8a-294f-81db-9137a94b3210",
  "kind": "theorem",
  "lexical_name": "actualCorrelationComplex_contDiff_four",
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
  "slug": "actualcorrelationcomplex-contdiff-four--afbda5fec7e73e10f9f52ddc",
  "source": {
    "blob": "c4f3db79ccd8cb6576def49f277055229888090f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant38c691dedc4f966f6aa06abd24ff978ad3e76f6c13ea71dde38cffce4bb59b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afbda5fec7e73e10f9f52ddca2ec6511103681515b8838b22b828c770e9b569d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant38c691dedc4f966f6aa06abd24ff978ad3e76f6c13ea71dde38cffce4bb59b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16f65d8b-9a8a-294f-81db-9137a94b3210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelationComplex_contDiff_four {A : ℝ} (hA : 1 ≤ A) :
    ContDiff ℝ 4 (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
  Complex.ofRealCLM.contDiff.comp (actual_correlation_contDiff_four A (by linarith))

/-- The twice differentiated actual correlation has a genuinely integrable Fourier transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant38c691dedc4f966f6aa06abd24ff978ad3e76f6c13ea71dde38cffce4bb59b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant38c691dedc4f966f6aa06abd24ff978ad3e76f6c13ea71dde38cffce4bb59b42.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f3db79ccd8cb6576def49f277055229888090f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
