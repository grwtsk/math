# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventKernel.Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f6ecf49fe4715612ffb5fe2c38206c15a376190",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f6ecf49fe4715612ffb5fe2c38206c15a376190`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean.json)

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
| 1 | `def` | [positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveshift--e03ddfbbc61167d66941f6b5.md) | 21 | `declaration-track:e03ddfbbc61167d66941f6b51a9cfd085b952fb526e6091f8be63cd3b229e608` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveshift-ispositive--e91315ba27d7a5da1822434e.md) | 25 | `result-track:e91315ba27d7a5da1822434ec8422d094fc9a238ca379aab794dccd2ee156155` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveshift-coercive--a0f0e90cd07aeac6714042f4.md) | 32 | `result-track:a0f0e90cd07aeac6714042f4e1968658f6b422b9138a94a02efa0d3567400781` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveshift-isunit--875df5d9bb22bbe2dfa6e1e2.md) | 47 | `result-track:875df5d9bb22bbe2dfa6e1e2d45103aaa3b35e61c75d5b08b98b99e149bc539e` |
| 5 | `def` | [positiveResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveresolvent--c2f138e02db46284621f7c0f.md) | 58 | `declaration-track:c2f138e02db46284621f7c0f5042b834a55116499bbb7c124188363a31dd4ec2` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveshift-mul-resolvent--3b3db11cc11907ef70dbcb0d.md) | 62 | `result-track:3b3db11cc11907ef70dbcb0d33dc410f8e6dc06bbb63986a85b3fe7e0859980a` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/resolvent-mul-positiveshift--b75bb74c8add7988b7cbb1eb.md) | 67 | `result-track:b75bb74c8add7988b7cbb1eb3d454420f7079ef843ce2b099b98cd45cdd5fe8f` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveshift-resolvent-apply--4c81e48ca13c13b230225fc5.md) | 72 | `result-track:4c81e48ca13c13b230225fc5f70f414599c0135468ba625ea32c859a7bb4c621` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveresolvent-norm-le--b73214dd527f2352ece05fbd.md) | 79 | `result-track:b73214dd527f2352ece05fbdd88df05e193f270b628263320a5b0072e5e8a520` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveresolvent-ispositive--f17d6f3f506928e854bac588.md) | 95 | `result-track:f17d6f3f506928e854bac58808b3275f1e2f5008f2c669a17aaed21fe9d1b9c9` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveresolvent-sub--bd8bd1642da2762215d5d09d.md) | 106 | `result-track:bd8bd1642da2762215d5d09d218c3beece2d06f4ea84069ab10ead3554fe08b6` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positiveresolvent-sub-norm-le--f0735929d63305d2d27bfd22.md) | 118 | `result-track:f0735929d63305d2d27bfd226229c9367a2b19696218122f08161b93e12c680b` |
| 13 | `def` | [regularizedMass](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/regularizedmass--f6f4e9b07ac692d6c4ea86d7.md) | 132 | `declaration-track:f6f4e9b07ac692d6c4ea86d7bf28aa6a1ac429da94d19ebaf7ef3811f3240558` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/abs-re-inner-map-le--def096f49a300e54dc8d20fa.md) | 136 | `result-track:def096f49a300e54dc8d20fa88f634c6255f6d3dfef8e18e7a3856cc95751432` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/regularizedmass-sub-abs-le--98754b7c52b1cbff41763646.md) | 145 | `result-track:98754b7c52b1cbff41763646ba0713e4330621e455dff6f70dd64a2acb3bbf6c` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/reference-regularizedmass-sub-abs-le--385526ab6ee3aabfe7634f24.md) | 165 | `result-track:385526ab6ee3aabfe7634f242cd138725698e4a5a1adada99345a618c888de66` |
| 17 | `theorem` | [positive_fixed_direction_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/positive-fixed-direction-le--f54ffa66700126bcca566094.md) | 190 | `result-track:f54ffa66700126bcca56609425b7ff07cd537438f41558fcfe97dcb9e5c2d0aa` |
| 18 | `theorem` | [regularized_resolvent_kernel_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/regularized-resolvent-kernel-apply--77142f08b576cf7922247829.md) | 223 | `result-track:77142f08b576cf7922247829b1b4ac4b35403ddf1e98f7bb0cf12c73748f11a2` |
| 19 | `theorem` | [kernel_witness_regularizedMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variant5a30b0f73f7d89ba082f0e5223ffe96b81a7586741d75903e69bdc8fd688f3b3.lean/declarations/kernel-witness-regularizedmass-le--de74535deaef3fe8a7d76d11.md) | 231 | `result-track:de74535deaef3fe8a7d76d11dea767272cce74f32baa7ede6b2b97dc8f3e4cd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
