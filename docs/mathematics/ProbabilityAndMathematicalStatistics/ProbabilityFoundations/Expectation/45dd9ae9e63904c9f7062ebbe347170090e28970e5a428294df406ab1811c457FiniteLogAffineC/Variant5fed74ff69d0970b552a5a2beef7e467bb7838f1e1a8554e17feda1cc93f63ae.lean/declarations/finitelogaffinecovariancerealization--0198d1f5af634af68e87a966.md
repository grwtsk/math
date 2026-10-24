# FiniteLogAffineCovarianceRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df7bdceb20b76b7dd604aa5d66babb711c8f798b24c065d6559ecf2b90e95c95",
  "kind": "structure",
  "lexical_name": "FiniteLogAffineCovarianceRealization",
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
  "slug": "finitelogaffinecovariancerealization--0198d1f5af634af68e87a966",
  "source": {
    "blob": "e3603574d283ecf5050fe7e0e8cd83f642061c4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 224,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant5fed74ff69d0970b552a5a2beef7e467bb7838f1e1a8554e17feda1cc93f63ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0198d1f5af634af68e87a96654928aa4b107ca974a9e9eadaee70db0d9da28c9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant5fed74ff69d0970b552a5a2beef7e467bb7838f1e1a8554e17feda1cc93f63ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df7bdceb20b76b7dd604aa5d66babb711c8f798b24c065d6559ecf2b90e95c95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteLogAffineCovarianceRealization
    (F : FiniteLogAffineFamily I E)
    (D : AnalyticDispersionReconstruction E) where
  potential_eq_logPartition :
    ∀ theta, D.potential theta = F.logPartition theta
  gradient_eq_centroid :
    ∀ theta, D.gradient theta = F.centroid theta
  dispersion_eq_covariance :
    ∀ theta, D.dispersion theta = F.covarianceForm theta

namespace FiniteLogAffineCovarianceRealization

variable {F : FiniteLogAffineFamily I E}
variable {D : AnalyticDispersionReconstruction E}
variable (R : FiniteLogAffineCovarianceRealization F D)

include R

/-- The analytic Phase-I potential is the finite log-partition function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant5fed74ff69d0970b552a5a2beef7e467bb7838f1e1a8554e17feda1cc93f63ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant5fed74ff69d0970b552a5a2beef7e467bb7838f1e1a8554e17feda1cc93f63ae.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3603574d283ecf5050fe7e0e8cd83f642061c4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
