# actual_leading_upper_of_exact_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0ef4235-5117-c1e0-d28f-98750bb4d74a",
  "kind": "theorem",
  "lexical_name": "actual_leading_upper_of_exact_mean",
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
  "slug": "actual-leading-upper-of-exact-mean--03ea13012fff45b53a16ebf6",
  "source": {
    "blob": "3633851f59df6b56bbdf5d9fd93c9b00954f702a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01Source/Variant65958279e8bed887e0091e168b73a6e6b6f115277407be7eed5a08c5ec00aeb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03ea13012fff45b53a16ebf6aa913a7acdf2d17256aee98b15a2034e605c6771",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01Source/Variant65958279e8bed887e0091e168b73a6e6b6f115277407be7eed5a08c5ec00aeb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0ef4235-5117-c1e0-d28f-98750bb4d74a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_leading_upper_of_exact_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : max 25600 (calibratedRadius R) ≤ A)
    (hmean : actualF7MeanBound M1 R) :
    actualLeadingRenormalizedTail A ≤ exactMeanResidualBudget M1 R -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  have h := actual_leading_upper_of_complete_tail (exactMeanTailBudget M1 R)
    (calibratedRadius R) A (by simpa only [calibratedRadius_idempotent] using hA)
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean A ((le_max_right _ _).trans hA))
  simpa only [calibratedRadius_idempotent, exactMeanResidualBudget, exactMeanAtomBudget] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01Source/Variant65958279e8bed887e0091e168b73a6e6b6f115277407be7eed5a08c5ec00aeb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01Source/Variant65958279e8bed887e0091e168b73a6e6b6f115277407be7eed5a08c5ec00aeb9.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3633851f59df6b56bbdf5d9fd93c9b00954f702a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
