# ChangeOfMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bd4dc2478b9341ec8e1d85192456fa87c5f9f5713ad295bf01b65084548d1c2",
  "kind": "structure",
  "lexical_name": "ChangeOfMeasure",
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
  "slug": "changeofmeasure--050fab72816dfbf89288fc09",
  "source": {
    "blob": "1fbdb1fee145a8837e7422afa9a2fe8c0464c20f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 735,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:050fab72816dfbf89288fc095eb0ddb5e78a081a2d728791618f4b432777f081",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bd4dc2478b9341ec8e1d85192456fa87c5f9f5713ad295bf01b65084548d1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ChangeOfMeasure [Fintype I] [Nonempty I]
    {source target : Parameters I}
    (sourceLaw : AnalyticLaw source) (targetLaw : AnalyticLaw target) where
  absolutelyContinuous : targetLaw.measure ≪ sourceLaw.measure
  kernel_eq_rnDeriv :
    (fun point => ENNReal.ofReal (transportKernel source target point))
      =ᵐ[sourceLaw.measure]
        targetLaw.measure.rnDeriv sourceLaw.measure
  integrableTransport : ∀ observable : InteriorSimplexPoint I → ℝ,
    Integrable observable targetLaw.measure →
      Integrable
        (fun point => transportKernel source target point * observable point)
        sourceLaw.measure
  integral_transport : ∀ observable : InteriorSimplexPoint I → ℝ,
    Integrable observable targetLaw.measure →
      (∫ point, observable point ∂targetLaw.measure) =
        ∫ point, transportKernel source target point * observable point
          ∂sourceLaw.measure

end

end BitMatrix.Probability.GammaDirichlet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fbdb1fee145a8837e7422afa9a2fe8c0464c20f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
