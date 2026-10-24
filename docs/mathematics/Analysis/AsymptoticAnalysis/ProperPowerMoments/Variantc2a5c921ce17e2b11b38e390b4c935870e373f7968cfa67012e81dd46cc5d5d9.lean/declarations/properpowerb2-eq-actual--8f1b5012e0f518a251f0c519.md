# properPowerB2_eq_actual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73ee040e-a87a-5c77-c502-814a17eadb0f",
  "kind": "theorem",
  "lexical_name": "properPowerB2_eq_actual",
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
  "slug": "properpowerb2-eq-actual--8f1b5012e0f518a251f0c519",
  "source": {
    "blob": "90ee1399b0164395e1a08331a349847d977fa1c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 239,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1b5012e0f518a251f0c5198b34334c3b1534be88f27113f2ba844b45eb4184",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ee040e-a87a-5c77-c502-814a17eadb0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properPowerB2_eq_actual : properPowerB2 =
    ∑' p : Nat.Primes, ∑' k : ℕ,
      ((k+2:ℕ):ℝ)^2*(Real.log (p.val:ℝ))^3/(p.val:ℝ)^(k+2) := rfl

end ContinuousResearch.ProperPowerMoments


#check ContinuousResearch.ProperPowerMoments.outerWeight
#print axioms ContinuousResearch.ProperPowerMoments.outerWeight
#print ContinuousResearch.ProperPowerMoments.outerWeight

#check ContinuousResearch.ProperPowerMoments.exponentWeight
#print axioms ContinuousResearch.ProperPowerMoments.exponentWeight
#print ContinuousResearch.ProperPowerMoments.exponentWeight

#check ContinuousResearch.ProperPowerMoments.momentAtom
#print axioms ContinuousResearch.ProperPowerMoments.momentAtom
#print ContinuousResearch.ProperPowerMoments.momentAtom

#check ContinuousResearch.ProperPowerMoments.primeMomentAtom
#print axioms ContinuousResearch.ProperPowerMoments.primeMomentAtom
#print ContinuousResearch.ProperPowerMoments.primeMomentAtom

#check ContinuousResearch.ProperPowerMoments.properPowerMoment
#print axioms ContinuousResearch.ProperPowerMoments.properPowerMoment
#print ContinuousResearch.ProperPowerMoments.properPowerMoment

#check ContinuousResearch.ProperPowerMoments.properPowerB1
#print axioms ContinuousResearch.ProperPowerMoments.properPowerB1
#print ContinuousResearch.ProperPowerMoments.properPowerB1

#check ContinuousResearch.ProperPowerMoments.properPowerB2
#print axioms ContinuousResearch.ProperPowerMoments.properPowerB2
#print ContinuousResearch.ProperPowerMoments.properPowerB2

#check ContinuousResearch.ProperPowerMoments.outerWeight_nonneg
#print axioms ContinuousResearch.ProperPowerMoments.outerWeight_nonneg
#print ContinuousResearch.ProperPowerMoments.outerWeight_nonneg

#check ContinuousResearch.ProperPowerMoments.exponentWeight_nonneg
#print axioms ContinuousResearch.ProperPowerMoments.exponentWeight_nonneg
#print ContinuousResearch.ProperPowerMoments.exponentWeight_nonneg

#check ContinuousResearch.ProperPowerMoments.momentAtom_nonneg
#print axioms ContinuousResearch.ProperPowerMoments.momentAtom_nonneg
#print ContinuousResearch.ProperPowerMoments.momentAtom_nonneg

#check ContinuousResearch.ProperPowerMoments.outerWeight_summable
#print axioms ContinuousResearch.ProperPowerMoments.outerWeight_summable
#print ContinuousResearch.ProperPowerMoments.outerWeight_summable

#check ContinuousResearch.ProperPowerMoments.exponentWeight_summable
#print axioms ContinuousResearch.ProperPowerMoments.exponentWeight_summable
#print ContinuousResearch.ProperPowerMoments.exponentWeight_summable

#check ContinuousResearch.ProperPowerMoments.momentAtom_le_product
#print axioms ContinuousResearch.ProperPowerMoments.momentAtom_le_product
#print ContinuousResearch.ProperPowerMoments.momentAtom_le_product

#check ContinuousResearch.ProperPowerMoments.prime_outerWeight_summable
#print axioms ContinuousResearch.ProperPowerMoments.prime_outerWeight_summable
#print ContinuousResearch.ProperPowerMoments.prime_outerWeight_summable

#check ContinuousResearch.ProperPowerMoments.primeMomentAtom_summable
#print axioms ContinuousResearch.ProperPowerMoments.primeMomentAtom_summable
#print ContinuousResearch.ProperPowerMoments.primeMomentAtom_summable

#check ContinuousResearch.ProperPowerMoments.primeMomentAtom_inner_summable
#print axioms ContinuousResearch.ProperPowerMoments.primeMomentAtom_inner_summable
#print ContinuousResearch.ProperPowerMoments.primeMomentAtom_inner_summable

#check ContinuousResearch.ProperPowerMoments.primeMomentAtom_outer_summable
#print axioms ContinuousResearch.ProperPowerMoments.primeMomentAtom_outer_summable
#print ContinuousResearch.ProperPowerMoments.primeMomentAtom_outer_summable

#check ContinuousResearch.ProperPowerMoments.properPowerMoment_nonneg
#print axioms ContinuousResearch.ProperPowerMoments.properPowerMoment_nonneg
#print ContinuousResearch.ProperPowerMoments.properPowerMoment_nonneg

#check ContinuousResearch.ProperPowerMoments.finiteProperPowerMoment_le_B1
#print axioms ContinuousResearch.ProperPowerMoments.finiteProperPowerMoment_le_B1
#print ContinuousResearch.ProperPowerMoments.finiteProperPowerMoment_le_B1

#check ContinuousResearch.ProperPowerMoments.properPowerB1_gt_nine_quarters
#print axioms ContinuousResearch.ProperPowerMoments.properPowerB1_gt_nine_quarters
#print ContinuousResearch.ProperPowerMoments.properPowerB1_gt_nine_quarters

#check ContinuousResearch.ProperPowerMoments.arithmeticConstant_gt_one_five_hundred
#print axioms ContinuousResearch.ProperPowerMoments.arithmeticConstant_gt_one_five_hundred
#print ContinuousResearch.ProperPowerMoments.arithmeticConstant_gt_one_five_hundred

#check ContinuousResearch.ProperPowerMoments.omittedOnsetAtom
#print axioms ContinuousResearch.ProperPowerMoments.omittedOnsetAtom
#print ContinuousResearch.ProperPowerMoments.omittedOnsetAtom

#check ContinuousResearch.ProperPowerMoments.omittedOnsetTail
#print axioms ContinuousResearch.ProperPowerMoments.omittedOnsetTail
#print ContinuousResearch.ProperPowerMoments.omittedOnsetTail

#check ContinuousResearch.ProperPowerMoments.properPowerMoment_eq_joint_sum
#print axioms ContinuousResearch.ProperPowerMoments.properPowerMoment_eq_joint_sum
#print ContinuousResearch.ProperPowerMoments.properPowerMoment_eq_joint_sum

#check ContinuousResearch.ProperPowerMoments.omittedOnsetAtom_nonneg
#print axioms ContinuousResearch.ProperPowerMoments.omittedOnsetAtom_nonneg
#print ContinuousResearch.ProperPowerMoments.omittedOnsetAtom_nonneg

#check ContinuousResearch.ProperPowerMoments.omittedOnsetAtom_le_zeroMoment
#print axioms ContinuousResearch.ProperPowerMoments.omittedOnsetAtom_le_zeroMoment
#print ContinuousResearch.ProperPowerMoments.omittedOnsetAtom_le_zeroMoment

#check ContinuousResearch.ProperPowerMoments.omittedOnsetTail_summable
#print axioms ContinuousResearch.ProperPowerMoments.omittedOnsetTail_summable
#print ContinuousResearch.ProperPowerMoments.omittedOnsetTail_summable

#check ContinuousResearch.ProperPowerMoments.omittedOnsetTail_nonneg
#print axioms ContinuousResearch.ProperPowerMoments.omittedOnsetTail_nonneg
#print ContinuousResearch.ProperPowerMoments.omittedOnsetTail_nonneg

#check ContinuousResearch.ProperPowerMoments.omittedOnsetTail_eq_iterated
#print axioms ContinuousResearch.ProperPowerMoments.omittedOnsetTail_eq_iterated
#print ContinuousResearch.ProperPowerMoments.omittedOnsetTail_eq_iterated

#check ContinuousResearch.ProperPowerMoments.omittedOnsetAtom_secondMoment
#print axioms ContinuousResearch.ProperPowerMoments.omittedOnsetAtom_secondMoment
#print ContinuousResearch.ProperPowerMoments.omittedOnsetAtom_secondMoment

#check ContinuousResearch.ProperPowerMoments.omittedOnsetTail_le_B2_div_square
#print axioms ContinuousResearch.ProperPowerMoments.omittedOnsetTail_le_B2_div_square
#print ContinuousResearch.ProperPowerMoments.omittedOnsetTail_le_B2_div_square

#check ContinuousResearch.ProperPowerMoments.properPowerB1_eq_actual
#print axioms ContinuousResearch.ProperPowerMoments.properPowerB1_eq_actual
#print ContinuousResearch.ProperPowerMoments.properPowerB1_eq_actual

#check ContinuousResearch.ProperPowerMoments.properPowerB2_eq_actual
#print axioms ContinuousResearch.ProperPowerMoments.properPowerB2_eq_actual
#print ContinuousResearch.ProperPowerMoments.properPowerB2_eq_actual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90ee1399b0164395e1a08331a349847d977fa1c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
