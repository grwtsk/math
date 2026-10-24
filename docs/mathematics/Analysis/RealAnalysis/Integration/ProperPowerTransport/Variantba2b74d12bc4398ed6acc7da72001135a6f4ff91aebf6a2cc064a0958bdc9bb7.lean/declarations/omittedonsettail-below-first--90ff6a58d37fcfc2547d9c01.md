# omittedOnsetTail_below_first

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14b43f80-ce4e-8c93-7b70-d45092e472c6",
  "kind": "theorem",
  "lexical_name": "omittedOnsetTail_below_first",
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
  "slug": "omittedonsettail-below-first--90ff6a58d37fcfc2547d9c01",
  "source": {
    "blob": "3ccd9fea83c925c437de1f6720a7b6b8661d930c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 216,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90ff6a58d37fcfc2547d9c01bd31ed73d97203b0d37dca2c317dec682c334f6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14b43f80-ce4e-8c93-7b70-d45092e472c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omittedOnsetTail_below_first {t : ℝ} (ht : t < 2*Real.log 2) :
    omittedOnsetTail t = properPowerMoment 0 := by
  have h := closedOnsetPrefix_add_tail t
  rw [closedOnsetPrefix_below_first ht,zero_add] at h
  exact h

end ContinuousResearch.ProperPowerTransport


#check ContinuousResearch.ProperPowerTransport.powerOnset
#print axioms ContinuousResearch.ProperPowerTransport.powerOnset
#print ContinuousResearch.ProperPowerTransport.powerOnset

#check ContinuousResearch.ProperPowerTransport.powerWeight
#print axioms ContinuousResearch.ProperPowerTransport.powerWeight
#print ContinuousResearch.ProperPowerTransport.powerWeight

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail

#check ContinuousResearch.ProperPowerTransport.powerOnset_pos
#print axioms ContinuousResearch.ProperPowerTransport.powerOnset_pos
#print ContinuousResearch.ProperPowerTransport.powerOnset_pos

#check ContinuousResearch.ProperPowerTransport.powerWeight_nonneg
#print axioms ContinuousResearch.ProperPowerTransport.powerWeight_nonneg
#print ContinuousResearch.ProperPowerTransport.powerWeight_nonneg

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_nonneg
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_nonneg
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_nonneg

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_measurable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_measurable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_measurable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integrable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integrable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integrable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integral
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integral
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_integral

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_eq_omitted
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_eq_omitted
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_eq_omitted

#check ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_le_zeroMoment
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_le_zeroMoment
#print ContinuousResearch.ProperPowerTransport.positiveOnsetAtom_le_zeroMoment

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_summable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_summable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_summable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_nonneg
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_nonneg
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_nonneg

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_measurable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_measurable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_measurable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_eq_indicator
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_eq_indicator
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_eq_indicator

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_lintegral
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_lintegral
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_lintegral

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integrable
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integrable
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integrable

#check ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integral
#print axioms ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integral
#print ContinuousResearch.ProperPowerTransport.positiveOnsetTail_integral

#check ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integrable_positive
#print axioms ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integrable_positive
#print ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integrable_positive

#check ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integral_eq_B1
#print axioms ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integral_eq_B1
#print ContinuousResearch.ProperPowerTransport.omittedOnsetTail_integral_eq_B1

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom

#check ContinuousResearch.ProperPowerTransport.closedOnsetPrefix
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetPrefix
#print ContinuousResearch.ProperPowerTransport.closedOnsetPrefix

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom_nonneg
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom_nonneg
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom_nonneg

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom_le_zeroMoment
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom_le_zeroMoment
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom_le_zeroMoment

#check ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_summable
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_summable
#print ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_summable

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom_add_omitted
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom_add_omitted
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom_add_omitted

#check ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_add_tail
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_add_tail
#print ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_add_tail

#check ContinuousResearch.ProperPowerTransport.properPowerMoment_sub_closedPrefix
#print axioms ContinuousResearch.ProperPowerTransport.properPowerMoment_sub_closedPrefix
#print ContinuousResearch.ProperPowerTransport.properPowerMoment_sub_closedPrefix

#check ContinuousResearch.ProperPowerTransport.closedOnsetAtom_touching
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetAtom_touching
#print ContinuousResearch.ProperPowerTransport.closedOnsetAtom_touching

#check ContinuousResearch.ProperPowerTransport.powerOnset_ge_first
#print axioms ContinuousResearch.ProperPowerTransport.powerOnset_ge_first
#print ContinuousResearch.ProperPowerTransport.powerOnset_ge_first

#check ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_below_first
#print axioms ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_below_first
#print ContinuousResearch.ProperPowerTransport.closedOnsetPrefix_below_first

#check ContinuousResearch.ProperPowerTransport.omittedOnsetTail_below_first
#print axioms ContinuousResearch.ProperPowerTransport.omittedOnsetTail_below_first
#print ContinuousResearch.ProperPowerTransport.omittedOnsetTail_below_first
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ccd9fea83c925c437de1f6720a7b6b8661d930c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
