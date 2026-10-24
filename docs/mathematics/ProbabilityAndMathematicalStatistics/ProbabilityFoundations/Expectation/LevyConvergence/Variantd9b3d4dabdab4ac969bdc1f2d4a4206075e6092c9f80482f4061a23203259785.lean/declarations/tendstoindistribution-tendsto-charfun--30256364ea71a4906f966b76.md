# TendstoInDistribution.tendsto_charFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42900f78-6158-0e8e-e67c-7fe10a9f7c25",
  "kind": "lemma",
  "lexical_name": "TendstoInDistribution.tendsto_charFun",
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
  "slug": "tendstoindistribution-tendsto-charfun--30256364ea71a4906f966b76",
  "source": {
    "blob": "f2366cf31c9f8f13bcedff96ebf62714c1826958",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 254,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30256364ea71a4906f966b76131236a4d7263defabc9355c27f189b4d57e177a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42900f78-6158-0e8e-e67c-7fe10a9f7c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TendstoInDistribution.tendsto_charFun (h : TendstoInDistribution X atTop X' P P') (t : E) :
    Tendsto (fun n ↦ charFun ((P n).map (X n)) t) atTop (𝓝 (charFun (P'.map X') t)) := by
  simpa only [ProbabilityMeasure.coe_mk] using
      ProbabilityMeasure.tendsto_iff_tendsto_charFun.mp h.tendsto t

/-- The convergence in distribution of random variables is equivalent to the pointwise convergence
of the characteristic functions of their pushforwards. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2366cf31c9f8f13bcedff96ebf62714c1826958` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
