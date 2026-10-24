# covarianceOperator_half_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6dec0d2-f95c-856b-fa7a-789d2230a387",
  "kind": "theorem",
  "lexical_name": "covarianceOperator_half_hasDerivAt",
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
  "slug": "covarianceoperator-half-hasderivat--aff16e6663ac5d25be6a97bb",
  "source": {
    "blob": "755245a40fa91354a04c599db3f83f5d001eb354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 329,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantfe26a97a1b03d1169cede9c8e13ee30993c9f9a9d87a205a2d619d5aa3fc4bba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff16e6663ac5d25be6a97bb6d53a96bd8091f4dc2cfef2951d4c423fc0dc933",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantfe26a97a1b03d1169cede9c8e13ee30993c9f9a9d87a205a2d619d5aa3fc4bba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6dec0d2-f95c-856b-fa7a-789d2230a387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covarianceOperator_half_hasDerivAt {A : ℝ} (hA : RegularScale A) (h1 : 1 < A) :
    HasDerivAt (fun B => VaughanOperatorReview.covarianceOperatorValue B / 2)
      (covarianceHalfDerivative A) A := by
  apply (covarianceHalfState_hasDerivAt hA).congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds h1] with B hB
  exact (covarianceHalfState_actual B hB.le).symm

/-- The independent original main term remains in the compensated readout without modification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantfe26a97a1b03d1169cede9c8e13ee30993c9f9a9d87a205a2d619d5aa3fc4bba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantfe26a97a1b03d1169cede9c8e13ee30993c9f9a9d87a205a2d619d5aa3fc4bba.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `755245a40fa91354a04c599db3f83f5d001eb354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
