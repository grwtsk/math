# reference_regularizedMass_sub_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c1e38b2fb1c02fdd171cda451361a8df2febd5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce88e112-f2b6-53b8-9baa-d231bb8b663f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:254acfaa-1b66-f46c-df04-eb6fff45615f",
  "kind": "theorem",
  "lexical_name": "reference_regularizedMass_sub_abs_le",
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
  "slug": "reference-regularizedmass-sub-abs-le--09a9ff7626ff61b757fbd881",
  "source": {
    "blob": "3c1e38b2fb1c02fdd171cda451361a8df2febd5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 165,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09a9ff7626ff61b757fbd8810797492b7260fc08a12d67efecb086c24b83e262",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:254acfaa-1b66-f46c-df04-eb6fff45615f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_regularizedMass_sub_abs_le
    (S T : FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H →L[ℂ]
      FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    |regularizedMass S α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector -
      regularizedMass T α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector| ≤
      ‖S - T‖ / (2 * α) := by
  have h := regularizedMass_sub_abs_le S T hS hT α hα
    FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector
  rw [FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector_norm_sq] at h
  convert h using 1
  ring

end PositiveResolventScratch


set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @PositiveResolventScratch.positiveShift
#print PositiveResolventScratch.positiveShift
#print axioms PositiveResolventScratch.positiveShift
#check @PositiveResolventScratch.positiveShift_isPositive
#print PositiveResolventScratch.positiveShift_isPositive
#print axioms PositiveResolventScratch.positiveShift_isPositive
#check @PositiveResolventScratch.positiveShift_coercive
#print PositiveResolventScratch.positiveShift_coercive
#print axioms PositiveResolventScratch.positiveShift_coercive
#check @PositiveResolventScratch.positiveShift_isUnit
#print PositiveResolventScratch.positiveShift_isUnit
#print axioms PositiveResolventScratch.positiveShift_isUnit
#check @PositiveResolventScratch.positiveResolvent
#print PositiveResolventScratch.positiveResolvent
#print axioms PositiveResolventScratch.positiveResolvent
#check @PositiveResolventScratch.positiveShift_mul_resolvent
#print PositiveResolventScratch.positiveShift_mul_resolvent
#print axioms PositiveResolventScratch.positiveShift_mul_resolvent
#check @PositiveResolventScratch.resolvent_mul_positiveShift
#print PositiveResolventScratch.resolvent_mul_positiveShift
#print axioms PositiveResolventScratch.resolvent_mul_positiveShift
#check @PositiveResolventScratch.positiveShift_resolvent_apply
#print PositiveResolventScratch.positiveShift_resolvent_apply
#print axioms PositiveResolventScratch.positiveShift_resolvent_apply
#check @PositiveResolventScratch.positiveResolvent_norm_le
#print PositiveResolventScratch.positiveResolvent_norm_le
#print axioms PositiveResolventScratch.positiveResolvent_norm_le
#check @PositiveResolventScratch.positiveResolvent_isPositive
#print PositiveResolventScratch.positiveResolvent_isPositive
#print axioms PositiveResolventScratch.positiveResolvent_isPositive
#check @PositiveResolventScratch.positiveResolvent_sub
#print PositiveResolventScratch.positiveResolvent_sub
#print axioms PositiveResolventScratch.positiveResolvent_sub
#check @PositiveResolventScratch.positiveResolvent_sub_norm_le
#print PositiveResolventScratch.positiveResolvent_sub_norm_le
#print axioms PositiveResolventScratch.positiveResolvent_sub_norm_le
#check @PositiveResolventScratch.regularizedMass
#print PositiveResolventScratch.regularizedMass
#print axioms PositiveResolventScratch.regularizedMass
#check @PositiveResolventScratch.regularizedMass_sub_abs_le
#print PositiveResolventScratch.regularizedMass_sub_abs_le
#print axioms PositiveResolventScratch.regularizedMass_sub_abs_le
#check @PositiveResolventScratch.reference_regularizedMass_sub_abs_le
#print PositiveResolventScratch.reference_regularizedMass_sub_abs_le
#print axioms PositiveResolventScratch.reference_regularizedMass_sub_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1e38b2fb1c02fdd171cda451361a8df2febd5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
