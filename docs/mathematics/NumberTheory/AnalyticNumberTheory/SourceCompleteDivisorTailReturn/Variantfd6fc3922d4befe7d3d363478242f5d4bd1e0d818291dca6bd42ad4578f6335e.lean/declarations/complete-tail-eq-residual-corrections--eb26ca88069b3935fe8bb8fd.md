# complete_tail_eq_residual_corrections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cc95b29-ad97-f843-9989-dd40dc0b0c63",
  "kind": "theorem",
  "lexical_name": "complete_tail_eq_residual_corrections",
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
  "slug": "complete-tail-eq-residual-corrections--eb26ca88069b3935fe8bb8fd",
  "source": {
    "blob": "4684291dab85bb7fc8b967c0c7ac8dbdebb4aa5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantfd6fc3922d4befe7d3d363478242f5d4bd1e0d818291dca6bd42ad4578f6335e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb26ca88069b3935fe8bb8fda208db8759fe30ab4c230cbfbc337464ebd69447",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantfd6fc3922d4befe7d3d363478242f5d4bd1e0d818291dca6bd42ad4578f6335e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cc95b29-ad97-f843-9989-dd40dc0b0c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_eq_residual_corrections (A : ℝ) (hA : 40 ≤ A) :
    completeXiTail A = criticalContinuousMoment A - mertensResidual A -
      firstAtomHeadWork A -
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) - completeXiHead A := by
  have hA1 : 1 ≤ A := by linarith
  have hm := mertensResidual_eq_continuous_sub_Mangoldt_work A hA1
  have hh := criticalMangoldtWork_eq_head_add_remaining A hA1
  have hx := remaining_work_eq_gamma_head_tail A hA
  linarith only [hm, hh, hx]

/-- Only the whole-head upper cost and PLUS gamma cost are charged in the reverse direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantfd6fc3922d4befe7d3d363478242f5d4bd1e0d818291dca6bd42ad4578f6335e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantfd6fc3922d4befe7d3d363478242f5d4bd1e0d818291dca6bd42ad4578f6335e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4684291dab85bb7fc8b967c0c7ac8dbdebb4aa5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
