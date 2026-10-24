# differenceKernel_integral_add_rankOne_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "293bd2327d2bf0edb1dfd19454152eddd572eebf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06d20189d4afe3500273012ce0f3ed43f01071948be155525bbb4d2acd8d2e6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:039d055d-29ca-d7ea-fae9-40557b2e0933",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afbeb057-5b74-1ae5-e5ce-c3894b88c57a",
  "kind": "theorem",
  "lexical_name": "differenceKernel_integral_add_rankOne_abs_le",
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
  "slug": "differencekernel-integral-add-rankone-abs-le--97fb6f6f74617241b1773eb2",
  "source": {
    "blob": "293bd2327d2bf0edb1dfd19454152eddd572eebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 335,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant06d20189d4afe3500273012ce0f3ed43f01071948be155525bbb4d2acd8d2e6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97fb6f6f74617241b1773eb25ee3e6fa81a5ef5371ff5fb4c35be1001c21e683",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant06d20189d4afe3500273012ce0f3ed43f01071948be155525bbb4d2acd8d2e6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afbeb057-5b74-1ae5-e5ce-c3894b88c57a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differenceKernel_integral_add_rankOne_abs_le (A q : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |(∫ x in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * x)) +
      sourceRankOneCoefficient A / q| ≤
      (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt q := by
  rw [differenceKernel_integral_eq_primitive A q hA hq]
  exact differencePrimitiveSamplingKernel_add_rankOne_abs_le A q hA (by linarith)


open CorrelationSecondDerivative CorrelationThirdDerivative SamplingSecondDerivative
open Filter Topology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant06d20189d4afe3500273012ce0f3ed43f01071948be155525bbb4d2acd8d2e6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationStatements/Variant06d20189d4afe3500273012ce0f3ed43f01071948be155525bbb4d2acd8d2e6d.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `293bd2327d2bf0edb1dfd19454152eddd572eebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
