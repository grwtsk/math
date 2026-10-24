# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:098e25506175e852951298ba7091c15559081bee02d704523f89d2a821bdc32d",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--42d98c30a26347e00bcb9fbd",
  "source": {
    "blob": "5b5f8c706e27bf87c977341f0d1c6962a24ff353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/451ce86d7d93d5c7f76f6ed3a6d349bca863f8df0fb72c2b68f0ade62cd7b68bProfileAudit/Variant6a180007426f4fb5f2df9aa93333d880b3364719f90d4d98a11bfdfd9bf3c37b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42d98c30a26347e00bcb9fbd440b344665db298a0aec187794347fd135db6a71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/451ce86d7d93d5c7f76f6ed3a6d349bca863f8df0fb72c2b68f0ade62cd7b68bProfileAudit/Variant6a180007426f4fb5f2df9aa93333d880b3364719f90d4d98a11bfdfd9bf3c37b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:098e25506175e852951298ba7091c15559081bee02d704523f89d2a821bdc32d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A y : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation Realization.explicitSecondDerivative A (A*y) =
      EstimateNormalizedSourceProfile.unitCorrelation A y ∧
    EstimateNormalizedSourceProfile.unitCorrelation A 0 = 1 := by
  exact ⟨EstimateNormalizedSourceProfile.sourceCorrelation_mul_eq_unitCorrelation A y
    (by linarith), EstimateNormalizedSourceProfile.unitCorrelation_zero A hA⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/451ce86d7d93d5c7f76f6ed3a6d349bca863f8df0fb72c2b68f0ade62cd7b68bProfileAudit/Variant6a180007426f4fb5f2df9aa93333d880b3364719f90d4d98a11bfdfd9bf3c37b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/451ce86d7d93d5c7f76f6ed3a6d349bca863f8df0fb72c2b68f0ade62cd7b68bProfileAudit/Variant6a180007426f4fb5f2df9aa93333d880b3364719f90d4d98a11bfdfd9bf3c37b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b5f8c706e27bf87c977341f0d1c6962a24ff353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
