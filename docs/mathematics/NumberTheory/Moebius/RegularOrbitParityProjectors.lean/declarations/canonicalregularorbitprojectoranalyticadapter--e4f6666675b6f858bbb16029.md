# CanonicalRegularOrbitProjectorAnalyticAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c67706336b6b879110ed4e85039df9de15586e7c10f27194f22e94f8a57827a",
  "kind": "abbrev",
  "lexical_name": "CanonicalRegularOrbitProjectorAnalyticAdapter",
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
  "slug": "canonicalregularorbitprojectoranalyticadapter--e4f6666675b6f858bbb16029",
  "source": {
    "blob": "a9a15e1021f4c46f86154eeffa69fb74cc277925",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 303,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitParityProjectors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4f6666675b6f858bbb160298910697fd9b33ba92e37a8a53dc91e033687e433",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c67706336b6b879110ed4e85039df9de15586e7c10f27194f22e94f8a57827a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev CanonicalRegularOrbitProjectorAnalyticAdapter
    (d : CanonicalRegularOrbitProjectorSourceData) :=
  ToCanonicalRegularOrbitProjectorBudgetAdapter
    (CanonicalRegularOrbitProjectorSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelPairMinusAggregate_eq_two_mul_oddShiftProjector
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoNonunitRegularOrbitEndpointMajorant_eq_canonicalParityProjectors
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalRegularOrbitProjectorBudget_iff_regularOrbitBudget
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_canonicalRegular
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitParityProjectors.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9a15e1021f4c46f86154eeffa69fb74cc277925` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
