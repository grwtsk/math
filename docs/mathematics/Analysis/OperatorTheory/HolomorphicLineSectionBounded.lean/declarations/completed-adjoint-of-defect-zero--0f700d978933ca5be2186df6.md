# completed_adjoint_of_defect_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9e9d9aaf827604a95bcba5a21e39975157ff101",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71a11014-1496-ccad-26cd-40a78c194d75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18ae8515-eab2-75f5-1a54-8232a7b2c043",
  "kind": "theorem",
  "lexical_name": "completed_adjoint_of_defect_zero",
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
  "slug": "completed-adjoint-of-defect-zero--0f700d978933ca5be2186df6",
  "source": {
    "blob": "d9e9d9aaf827604a95bcba5a21e39975157ff101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 280,
    "path": "GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f700d978933ca5be2186df6bc810e4d5494084edc5f56b65c2ac1ac04a19910",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18ae8515-eab2-75f5-1a54-8232a7b2c043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completed_adjoint_of_defect_zero (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
    (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
      SectionQuotient (transportMetric G M) μ hOpen)
    (h : gaugeDefect G M μ hOpen A B = 0) :
    ContinuousLinearMap.adjoint
        (completeMap (transportMetric G M) (transportMetric G M) μ hOpen B) =
      gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint (completeMap M M μ hOpen A)) := by
  rw [completed_conjugacy_of_defect_zero G M μ hOpen A B h, gaugeConjugate_adjoint]

namespace Fixtures

open GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion.Fixtures

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9e9d9aaf827604a95bcba5a21e39975157ff101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
