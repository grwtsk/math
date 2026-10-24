# riemannHypothesis_of_subpolynomialDyadicOrderedPairMertensCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c16a0529-a3f0-f971-5f4d-fc302b39f1d7",
  "kind": "theorem",
  "lexical_name": "riemannHypothesis_of_subpolynomialDyadicOrderedPairMertensCorrelation",
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
  "slug": "riemannhypothesis-of-subpolynomialdyadicorderedpairmertenscorrelation--856272a4144234c0f0d0e718",
  "source": {
    "blob": "00aa20b040a9182f002109f3c38484a941fb37e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 280,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:856272a4144234c0f0d0e7188ae471352f0c17691384ad2fe2edc4985aa6ccf1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c16a0529-a3f0-f971-5f4d-fc302b39f1d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannHypothesis_of_subpolynomialDyadicOrderedPairMertensCorrelation
    (hpair : SubpolynomialDyadicOrderedPairMertensCorrelation) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicBlockWeightedMertensSquare
    (subpolynomialDyadicBlock_of_orderedPair hpair)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.pickupMertensPrefix_sq_eq_diagonal_add_orderedPair
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicDiagonal_le_one
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicOrderedPair_iff_block
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicOrderedPairMertensCorrelation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00aa20b040a9182f002109f3c38484a941fb37e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
