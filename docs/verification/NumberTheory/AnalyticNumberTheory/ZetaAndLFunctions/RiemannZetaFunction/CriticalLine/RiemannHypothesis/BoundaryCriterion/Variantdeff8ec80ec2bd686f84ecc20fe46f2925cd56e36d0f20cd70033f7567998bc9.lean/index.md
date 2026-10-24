# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BoundaryCriterion.Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad9aa7bb998fe843aa6b3accf9fd6a450818190a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad9aa7bb998fe843aa6b3accf9fd6a450818190a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.Positivity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundaryAlignmentData](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/declarations/boundaryalignmentdata--5b284e2c4f44dc541cc3ac9e.md) | 21 | `declaration-track:5b284e2c4f44dc541cc3ac9ef57776a222cb3e3a91237b947a17dd291da84198` |
| 2 | `def` | [BoundaryAlignmentCondition](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/declarations/boundaryalignmentcondition--94adb6d120b57c243a800944.md) | 33 | `declaration-track:94adb6d120b57c243a8009442e5a9e90e2154ec3b6de57a3d2cc38398b90926b` |
| 3 | `structure` | [BoundaryAlignment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/declarations/boundaryalignment--7180264e1f16909989284be3.md) | 37 | `declaration-track:7180264e1f16909989284be351756cb4061dd27be90a0d80202c56aa3909c31a` |
| 4 | `structure` | [ExactZeroData](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/declarations/exactzerodata--6a881216960ed6ced9fd8e78.md) | 42 | `declaration-track:6a881216960ed6ced9fd8e781dfbc6c9337befe2af71f67345a8071449fecb99` |
| 5 | `def` | [boundary_alignment_from_trace_and_positivity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/declarations/boundary-alignment-from-trace-and-positivity--6669fe08357b060378536914.md) | 46 | `declaration-track:6669fe08357b06037853691496c6419a05c2785f4832344efda3a8ececa6e708` |
| 6 | `theorem` | [h0_real_zeros_from_spectral_reality_and_zero_correspondence](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/declarations/h0-real-zeros-from-spectral-reality-and-zero-correspondence--6d5a257b7be5af3a6766999a.md) | 59 | `result-track:6d5a257b7be5af3a6766999acf6d11173ec6ac1a712da7e7528f3159c966b4b2` |
| 7 | `theorem` | [critical_line_from_boundary_alignment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/declarations/critical-line-from-boundary-alignment--2310bb95a937c793b0000ad2.md) | 74 | `result-track:2310bb95a937c793b0000ad2936683fb8a8f2fb8f50da61268fb750a91ef6ff1` |
| 8 | `theorem` | [critical_line_statement_from_h0_real_zeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/declarations/critical-line-statement-from-h0-real-zeros--1e12efcfbd0ca3adeea9f7f5.md) | 88 | `result-track:1e12efcfbd0ca3adeea9f7f5d3392a81de6bbae01e78e86420e22502ac2e019a` |
| 9 | `theorem` | [riemann_hypothesis_of_h0_equivalence_and_h0_real_zeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BoundaryCriterion/Variantdeff8ec80ec2bd686f84ecc20fe46f2925cd56e36d0f20cd70033f7567998bc9.lean/declarations/riemann-hypothesis-of-h0-equivalence-and-h0-real-zeros--44ec2a8fac2aa28989ee9a59.md) | 94 | `result-track:44ec2a8fac2aa28989ee9a5942dfe3edf9ec3804d1d53ce2e1c42a166d8da3af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
