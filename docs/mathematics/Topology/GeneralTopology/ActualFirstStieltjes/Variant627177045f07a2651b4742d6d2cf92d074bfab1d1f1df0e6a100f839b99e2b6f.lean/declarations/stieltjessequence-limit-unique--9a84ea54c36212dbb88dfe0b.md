# stieltjesSequence_limit_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c19bd143-05cc-7cf5-81d9-c06ff999024c",
  "kind": "theorem",
  "lexical_name": "stieltjesSequence_limit_unique",
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
  "slug": "stieltjessequence-limit-unique--9a84ea54c36212dbb88dfe0b",
  "source": {
    "blob": "24ce213f9bbdbda90995cf76826da03e51ac5341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a84ea54c36212dbb88dfe0b0a959c2c6814c2d20c59dce036ce29136edb481e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c19bd143-05cc-7cf5-81d9-c06ff999024c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stieltjesSequence_limit_unique {L : ℝ}
    (hL : Tendsto stieltjesSequence atTop (𝓝 L)) : L = firstStieltjesConstant :=
  tendsto_nhds_unique hL tendsto_stieltjesSequence

end ContinuousResearch.ActualFirstStieltjes

#check ContinuousResearch.ActualFirstStieltjes.logQuotient
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient
#print ContinuousResearch.ActualFirstStieltjes.logQuotient

#check ContinuousResearch.ActualFirstStieltjes.stieltjesSequence
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjesSequence
#print ContinuousResearch.ActualFirstStieltjes.stieltjesSequence

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence

#check ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant
#print axioms ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant
#print ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_nonneg
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_nonneg
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_nonneg

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_antitone
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_antitone
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_antitone

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_continuousOn
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_continuousOn
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_continuousOn

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_intervalIntegrable
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_intervalIntegrable
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_intervalIntegrable

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_integral
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_integral
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_integral

#check ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ
#print ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_lower
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_lower
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_lower

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_upper
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_upper
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_upper

#check ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ_le
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ_le
#print ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ_le

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_succ
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_succ
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_succ

#check ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_antitone
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_antitone
#print ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_antitone

#check ContinuousResearch.ActualFirstStieltjes.lower_tail_monotone
#print axioms ContinuousResearch.ActualFirstStieltjes.lower_tail_monotone
#print ContinuousResearch.ActualFirstStieltjes.lower_tail_monotone

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence_four
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence_four
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence_four

#check ContinuousResearch.ActualFirstStieltjes.lower_four_le_stieltjes_tail
#print axioms ContinuousResearch.ActualFirstStieltjes.lower_four_le_stieltjes_tail
#print ContinuousResearch.ActualFirstStieltjes.lower_four_le_stieltjes_tail

#check ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_bddBelow
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_bddBelow
#print ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_bddBelow

#check ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjes_tail
#print axioms ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjes_tail
#print ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjes_tail

#check ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjesSequence
#print axioms ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjesSequence
#print ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjesSequence

#check ContinuousResearch.ActualFirstStieltjes.lower_four_le_firstStieltjesConstant
#print axioms ContinuousResearch.ActualFirstStieltjes.lower_four_le_firstStieltjesConstant
#print ContinuousResearch.ActualFirstStieltjes.lower_four_le_firstStieltjesConstant

#check ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_le_stieltjesSequence
#print axioms ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_le_stieltjesSequence
#print ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_le_stieltjesSequence

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_tendsto_zero
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_tendsto_zero
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_tendsto_zero

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence_tendsto
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence_tendsto
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence_tendsto

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_firstStieltjesConstant
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_firstStieltjesConstant
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_firstStieltjesConstant

#check ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_enclosure
#print axioms ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_enclosure
#print ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_enclosure

#check ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_gt_neg_249
#print axioms ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_gt_neg_249
#print ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_gt_neg_249

#check ContinuousResearch.ActualFirstStieltjes.intercept_gt_one_five_hundred
#print axioms ContinuousResearch.ActualFirstStieltjes.intercept_gt_one_five_hundred
#print ContinuousResearch.ActualFirstStieltjes.intercept_gt_one_five_hundred

#check ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_limit_unique
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_limit_unique
#print ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_limit_unique
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24ce213f9bbdbda90995cf76826da03e51ac5341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
