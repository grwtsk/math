# estimate_of_first_block_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2bdb86a-b322-613b-c283-3f9f0cc34d63",
  "kind": "theorem",
  "lexical_name": "estimate_of_first_block_and_tail",
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
  "slug": "estimate-of-first-block-and-tail--1d8da64818f093b046489795",
  "source": {
    "blob": "830cc440c74384e6dee11e348bbed4619b4a5e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 407,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d8da64818f093b046489795a229e8410915bed9d7ccb98a250f55e37e6020f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2bdb86a-b322-613b-c283-3f9f0cc34d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_first_block_and_tail
    (Rblock Rhead Rtail Rtrend H m epsilon : ℝ) (hRblock : 80 ≤ Rblock)
    (hell : ∀ A : ℝ, Rblock ≤ A →
      ∀ s ∈ Icc (Real.log 2) (Real.log 4), -(1 / 64 : ℝ) ≤ affineTrend A s)
    (hhead : ∀ A : ℝ, Rhead ≤ A → initialPhysicalBlock A ≤ -m)
    (htail : ∀ A : ℝ, Rtail ≤ A → remainingPhysicalTail A ≤ H)
    (hTrend : ∀ A : ℝ, Rtrend ≤ A → |trendValue A| ≤ epsilon) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_first_block_and_tail Rblock Rhead Rtail Rtrend H m epsilon
    hRblock hell hhead htail hTrend⟩

end FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock


set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 1000000

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.blockMajorant
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.blockMajorant
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.blockMajorant

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_kernel_lower
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_kernel_lower
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_kernel_lower

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.prefix_four_retains_prime_power
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.prefix_four_retains_prime_power
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.prefix_four_retains_prime_power

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_first_cell
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_first_cell
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_first_cell

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_second_cell
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_second_cell
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_second_cell

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_majorant_neg
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_majorant_neg
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_majorant_neg

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.physical_block_integrable
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.physical_block_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.physical_block_integrable

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_exact
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_exact
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_exact

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_rational_upper
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_rational_upper
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_rational_upper

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_lt_neg_quarter
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_lt_neg_quarter
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_lt_neg_quarter

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.affineTrend_abs_le_of_endpoint_samples
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.affineTrend_abs_le_of_endpoint_samples
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.affineTrend_abs_le_of_endpoint_samples

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper_of_endpoint_samples
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper_of_endpoint_samples
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper_of_endpoint_samples

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.initialPhysicalBlock
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.initialPhysicalBlock
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.initialPhysicalBlock

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.remainingPhysicalTail
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.remainingPhysicalTail
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.remainingPhysicalTail

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_eq_three_physical_blocks
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_eq_three_physical_blocks
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_eq_three_physical_blocks

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_upper_of_head_tail
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_upper_of_head_tail
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_upper_of_head_tail

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.original_lower_of_first_block_and_tail
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.original_lower_of_first_block_and_tail
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.original_lower_of_first_block_and_tail

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.estimate_of_first_block_and_tail
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.estimate_of_first_block_and_tail
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.estimate_of_first_block_and_tail

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830cc440c74384e6dee11e348bbed4619b4a5e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
