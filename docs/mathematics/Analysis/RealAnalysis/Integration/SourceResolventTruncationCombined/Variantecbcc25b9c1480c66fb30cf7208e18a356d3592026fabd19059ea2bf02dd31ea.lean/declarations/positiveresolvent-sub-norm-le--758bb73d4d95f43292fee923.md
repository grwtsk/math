# positiveResolvent_sub_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9847d50850d33524f95f30f80caa69f0b510ea43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 571,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecbcc25b9c1480c66fb30cf7208e18a356d3592026fabd19059ea2bf02dd31ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb01ae28-90be-0b08-bcc7-80fc9b5e57b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57675e45-20c6-44d8-6b07-d61cde906e5d",
  "kind": "theorem",
  "lexical_name": "positiveResolvent_sub_norm_le",
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
  "slug": "positiveresolvent-sub-norm-le--758bb73d4d95f43292fee923",
  "source": {
    "blob": "9847d50850d33524f95f30f80caa69f0b510ea43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 571,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variantecbcc25b9c1480c66fb30cf7208e18a356d3592026fabd19059ea2bf02dd31ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758bb73d4d95f43292fee923b4151be4c13121cfe508f3399df7a2de7d91d918",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variantecbcc25b9c1480c66fb30cf7208e18a356d3592026fabd19059ea2bf02dd31ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57675e45-20c6-44d8-6b07-d61cde906e5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveResolvent_sub_norm_le (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    ‖positiveResolvent S α - positiveResolvent T α‖ ≤ ‖S - T‖ / α ^ 2 := by
  rw [positiveResolvent_sub S T hS hT α hα]
  calc
    _ ≤ ‖positiveResolvent S α‖ * ‖T - S‖ * ‖positiveResolvent T α‖ :=
      (norm_mul_le _ _).trans (mul_le_mul_of_nonneg_right (norm_mul_le _ _) (norm_nonneg _))
    _ ≤ (1 / α) * ‖T - S‖ * (1 / α) := by
      gcongr
      · exact positiveResolvent_norm_le S hS α hα
      · exact positiveResolvent_norm_le T hT α hα
    _ = ‖S - T‖ / α ^ 2 := by rw [norm_sub_rev]; ring

/-- The real directional regularized mass of the admitted resolvent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variantecbcc25b9c1480c66fb30cf7208e18a356d3592026fabd19059ea2bf02dd31ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variantecbcc25b9c1480c66fb30cf7208e18a356d3592026fabd19059ea2bf02dd31ea.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9847d50850d33524f95f30f80caa69f0b510ea43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
