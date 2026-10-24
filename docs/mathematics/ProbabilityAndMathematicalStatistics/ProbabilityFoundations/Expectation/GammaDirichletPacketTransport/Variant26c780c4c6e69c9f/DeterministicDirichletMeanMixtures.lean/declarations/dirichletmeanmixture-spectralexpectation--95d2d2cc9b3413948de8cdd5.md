# dirichletMeanMixture_spectralExpectation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e700290-45af-358f-7d0c-4b7b1655e3d9",
  "kind": "theorem",
  "lexical_name": "dirichletMeanMixture_spectralExpectation",
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
  "slug": "dirichletmeanmixture-spectralexpectation--95d2d2cc9b3413948de8cdd5",
  "source": {
    "blob": "10c43da4f201f16352d27757d863a25988bf710b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 87,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95d2d2cc9b3413948de8cdd5d56c09b69518083c44dfdab73a35b6b8fc9fb712",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e700290-45af-358f-7d0c-4b7b1655e3d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletMeanMixture_spectralExpectation
    (parameters : DirichletParameters I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) :
    (dirichletMeanMixture parameters packets).spectralExpectation observable =
      ∑ i, (parameters.shape i / parameters.total) *
        (packets i).spectralExpectation observable := by
  exact FinitePacket.spectralExpectation_mix
    (dirichletMeanPoint parameters) packets observable

/-- Packet turn covariance and Dirichlet-parameter permutation commute at the
level of every finite spectral observable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c43da4f201f16352d27757d863a25988bf710b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
