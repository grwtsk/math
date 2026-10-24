# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventKernelAudit.Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a49898e110bb584e6d5d4e52760e9a658d6fa62",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a49898e110bb584e6d5d4e52760e9a658d6fa62`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveshift--d37f2fbf19e176c2dd767b7a.md) | 21 | `declaration-track:d37f2fbf19e176c2dd767b7ac5b4cc398c5909b60867c85170b924c62c706096` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveshift-ispositive--4267515ba963e39490a5338b.md) | 25 | `result-track:4267515ba963e39490a5338bd278763aa418f36651befa0781671470ba50dd0c` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveshift-coercive--dd8f4ecf068b8e2261a280d1.md) | 32 | `result-track:dd8f4ecf068b8e2261a280d1c5448436b660cbd6620597556372306da5d3efa5` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveshift-isunit--9b08d6eac7e826e4f1af231f.md) | 47 | `result-track:9b08d6eac7e826e4f1af231fab2e6ec4783e5ad90e6626f7dae7e31219ccbeda` |
| 5 | `def` | [positiveResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveresolvent--01ad65c408a70f38f6c8bca2.md) | 58 | `declaration-track:01ad65c408a70f38f6c8bca2c6d6ef406618e4b95d29a833f3e4195b905d2a0c` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveshift-mul-resolvent--f693e63f8a69d262ce79ab79.md) | 62 | `result-track:f693e63f8a69d262ce79ab7933affd1b1bf68d0f0082616e16700bfb92c249b6` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/resolvent-mul-positiveshift--51209c7c7415bd5065e3def6.md) | 67 | `result-track:51209c7c7415bd5065e3def68b00ad24c8856a0da77a31e162525cf97571d5ed` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveshift-resolvent-apply--322345e6d8d8f8155bedb8b2.md) | 72 | `result-track:322345e6d8d8f8155bedb8b28c10f22727bcaba0961d23ba6395b763df993acf` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveresolvent-norm-le--b5842fe255ee5428bd614b99.md) | 79 | `result-track:b5842fe255ee5428bd614b99009eb9040faa5ee49fcb70f2158f484f6514b771` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveresolvent-ispositive--2e3464e629536aa140b0dceb.md) | 95 | `result-track:2e3464e629536aa140b0dcebc1c5944c278b44bc0c146037aad34c5db424bc53` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveresolvent-sub--32a6c85453c1f8cc30295b41.md) | 106 | `result-track:32a6c85453c1f8cc30295b41870da78eb9efea99473bfbdeb5a635a079166cc7` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positiveresolvent-sub-norm-le--e30a7f7cc0840fa70016160b.md) | 118 | `result-track:e30a7f7cc0840fa70016160b6c480bf6493885c3a4c7955420806a162aa0f609` |
| 13 | `def` | [regularizedMass](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/regularizedmass--fe5f8a42862c13b6c36c9c16.md) | 132 | `declaration-track:fe5f8a42862c13b6c36c9c1687f4cee97bead96f3cea6418c9df2128b338443b` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/abs-re-inner-map-le--88fcefd203ed48a63cd24695.md) | 136 | `result-track:88fcefd203ed48a63cd246950c50a449f55c5e4e1e54aba4954e2d73dc771130` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/regularizedmass-sub-abs-le--b43561eb8f68e9d4a8bb2ef0.md) | 145 | `result-track:b43561eb8f68e9d4a8bb2ef088905b461f62af703bfe1a9c0b778a22853ad144` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/reference-regularizedmass-sub-abs-le--0055930547f241eb15f8d946.md) | 165 | `result-track:0055930547f241eb15f8d946f3eaa75bacd69e524557efcdddf4a30e8fc36813` |
| 17 | `theorem` | [positive_fixed_direction_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/positive-fixed-direction-le--7d652ed19716bd491e989562.md) | 190 | `result-track:7d652ed19716bd491e9895622fb0972a1593d8fb8146caba7b429c1d007e3f44` |
| 18 | `theorem` | [regularized_resolvent_kernel_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/regularized-resolvent-kernel-apply--cb72f74a39683ba8c12eedff.md) | 223 | `result-track:cb72f74a39683ba8c12eedffcc895f68b1cf949bf15239b005d4bca1320c26bf` |
| 19 | `theorem` | [kernel_witness_regularizedMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variantd3793cf9c60ab4c2e5e1b212c88dd6761161e510f25be6f566a11d47bdd9c695.lean/declarations/kernel-witness-regularizedmass-le--d3695b8bd8f98ed4f98f0fcf.md) | 231 | `result-track:d3695b8bd8f98ed4f98f0fcf8acbf5cc445747e35489fbe11de727d4d419d98e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
