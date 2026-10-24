# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DSlope.Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b579611f3db59b32f37e39029d5bc6052ee61aeb",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b579611f3db59b32f37e39029d5bc6052ee61aeb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/dslope--e96533fa74dabf0ebd2390c9.md) | 31 | `declaration-track:e96533fa74dabf0ebd2390c93e2134e9a2c2916d810c41929331a11a1a34a7b6` |
| 2 | `theorem` | [dslope_same](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/dslope-same--538fe9386b096ec789df29fb.md) | 35 | `result-track:538fe9386b096ec789df29fbef645076b37f2ec3ddcdfceb2a546fed4f5c3d25` |
| 3 | `theorem` | [dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/dslope-of-ne--b792ef1d49557410401213c6.md) | 41 | `result-track:b792ef1d49557410401213c6e241c30b4a110138694180f2ed45a743f9318868` |
| 4 | `theorem` | [ContinuousLinearMap.dslope_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/continuouslinearmap-dslope-comp--171eaf9370f018098ceea9eb.md) | 45 | `result-track:171eaf9370f018098ceea9ebbe90ea1b61c7f6691dea2fe72c0e76559912f01d` |
| 5 | `theorem` | [eqOn_dslope_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/eqon-dslope-slope--8af79a43d757d09467c7c2ac.md) | 53 | `result-track:8af79a43d757d09467c7c2ac7da8ada8a891ad4a36cc7926404a2a569d12ff39` |
| 6 | `theorem` | [dslope_eventuallyEq_slope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/dslope-eventuallyeq-slope-of-ne--7d17a231f289d3ef7bbe6bcd.md) | 56 | `result-track:7d17a231f289d3ef7bbe6bcd810486e33ee58b22bd19cb330806876adfd3958a` |
| 7 | `theorem` | [dslope_eventuallyEq_slope_nhdsNE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/dslope-eventuallyeq-slope-nhdsne--a527d1d48f202cb14c0af378.md) | 59 | `result-track:a527d1d48f202cb14c0af378b26f7491f752cf6583caae8d9196e791362a19ec` |
| 8 | `theorem` | [sub_smul_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/sub-smul-dslope--d315e005f474181361f50e99.md) | 66 | `result-track:d315e005f474181361f50e996cd4143111725783b867b31eec4aff3b981cf9ca` |
| 9 | `theorem` | [dslope_sub_smul_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/dslope-sub-smul-of-ne--8186484a98f40edd23ade631.md) | 69 | `result-track:8186484a98f40edd23ade631f800b5649f971bef9101979a4b621d01b4e19c55` |
| 10 | `theorem` | [eqOn_dslope_sub_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/eqon-dslope-sub-smul--f37068ed86dcbf84f11db6d6.md) | 73 | `result-track:f37068ed86dcbf84f11db6d657dd1c6682becc2ed7a44a96edb3401907de6e85` |
| 11 | `theorem` | [dslope_sub_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/dslope-sub-smul--615aa6e09dfc7a6faf425760.md) | 76 | `result-track:615aa6e09dfc7a6faf425760e956524119fd7675c35f35a0e97263f93e741d5d` |
| 12 | `theorem` | [continuousAt_dslope_same](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/continuousat-dslope-same--4fed75b902789a5a7e01ff66.md) | 81 | `result-track:4fed75b902789a5a7e01ff66b2482727bb78bbea0c548ede84d9360d5ead442d` |
| 13 | `theorem` | [ContinuousWithinAt.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/continuouswithinat-of-dslope--74418a7377f77bab80beb32f.md) | 84 | `result-track:74418a7377f77bab80beb32fe20552f6fb8d0afa12b117f7f2211484c46b641d` |
| 14 | `theorem` | [ContinuousAt.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/continuousat-of-dslope--ed0b47432a8e27e1fb47450d.md) | 90 | `result-track:ed0b47432a8e27e1fb47450d63d5d36b1262761c0ea3d7565bcf303cde1557ae` |
| 15 | `theorem` | [ContinuousOn.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/continuouson-of-dslope--2ff591e9bd85ead46cf80c27.md) | 93 | `result-track:2ff591e9bd85ead46cf80c27219cc70158b16b5d55021abb20efd9dbb0f48541` |
| 16 | `theorem` | [continuousWithinAt_dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/continuouswithinat-dslope-of-ne--188cd1e0f8be22ea92fa6f97.md) | 96 | `result-track:188cd1e0f8be22ea92fa6f9717845457d302a730af5ebc9cef04f7a00042d004` |
| 17 | `theorem` | [continuousAt_dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/continuousat-dslope-of-ne--a000bb90c5d1ce45e58269f0.md) | 104 | `result-track:a000bb90c5d1ce45e58269f0f5d51db996f0e54c8040a55d0aa014436514dd6d` |
| 18 | `theorem` | [continuousOn_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/continuouson-dslope--533230627b692112a0d002da.md) | 107 | `result-track:533230627b692112a0d002da0fe66901c9e67bd2d9a47bbaee684ee06a4c2766` |
| 19 | `theorem` | [DifferentiableWithinAt.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/differentiablewithinat-of-dslope--001790895c4a9f6b978ab419.md) | 115 | `result-track:001790895c4a9f6b978ab419373b7bcb3d2478b84cdfa69d6ccfad7919de6978` |
| 20 | `theorem` | [DifferentiableAt.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/differentiableat-of-dslope--66953fe96d14c9584f3fce2b.md) | 120 | `result-track:66953fe96d14c9584f3fce2bedc21197ef18b70fabfa933d764065cbbdaa5728` |
| 21 | `theorem` | [DifferentiableOn.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/differentiableon-of-dslope--a3da3a42aa6ce6da6b0e3208.md) | 124 | `result-track:a3da3a42aa6ce6da6b0e32080b89a37973ebc4f957fdda78f2c812df92316570` |
| 22 | `theorem` | [differentiableWithinAt_dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/differentiablewithinat-dslope-of-ne--c868b3f0c678439246444509.md) | 127 | `result-track:c868b3f0c6784392464445096eab6da49fc403abed319007dfd542984547ff55` |
| 23 | `theorem` | [differentiableOn_dslope_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/differentiableon-dslope-of-notmem--d434323dfe85fe96c1c69e36.md) | 135 | `result-track:d434323dfe85fe96c1c69e36aed6f91ab02c26a6d26ddc0410c0105ab668a28a` |
| 24 | `theorem` | [differentiableAt_dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean/declarations/differentiableat-dslope-of-ne--04bb05865aafdc00a9162cd0.md) | 143 | `result-track:04bb05865aafdc00a9162cd0c2461cf6a50552d424b9312cec24ca481cb06641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
