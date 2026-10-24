# Verification target: GRWTSK.Analysis.MeasureTheory.ContinuousFunctions.Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b70a0ad443b8a5b1211f5160cf0b461fd2088554",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b70a0ad443b8a5b1211f5160cf0b461fd2088554`.

Source path: `GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeasureTheory.Lp.boundedContinuousFunction](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/measuretheory-lp-boundedcontinuousfunction--6f58cb44af4e048e9a6754a6.md) | 29 | `declaration-track:6f58cb44af4e048e9a6754a65ffe00de64463f936f4a3ce59b73c29608243773` |
| 2 | `theorem` | [MeasureTheory.Lp.mem_boundedContinuousFunction_iff](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/measuretheory-lp-mem-boundedcontinuousfunction-iff--efb586b466b96953705a08ea.md) | 35 | `result-track:efb586b466b96953705a08ea3c65ef12580d1c3a0c9828a401ba4ec4c2588d29` |
| 3 | `theorem` | [mem_Lp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/mem-lp--1bb5edfd1cf16ec458bbb3b2.md) | 45 | `result-track:1bb5edfd1cf16ec458bbb3b2d02694f8d07fb938f4c4705b1dcbe1188a3fa65d` |
| 4 | `theorem` | [Lp_nnnorm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/lp-nnnorm-le--49bb8e3ac10622fe7a315dde.md) | 52 | `result-track:49bb8e3ac10622fe7a315dde2b0785a626b949614e7583b00841a987b0c8823d` |
| 5 | `theorem` | [Lp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/lp-norm-le--053071b87c91791d7c95f687.md) | 63 | `result-track:053071b87c91791d7c95f68740af9dd01d1b84e9dfd1edc373ccca131e5de601` |
| 6 | `def` | [toLpHom](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolphom--747f266cf6bc6fcc186d5762.md) | 72 | `declaration-track:747f266cf6bc6fcc186d5762d5989d4f8fd3092e3d05906e8794fc21a0a0cfd0` |
| 7 | `theorem` | [range_toLpHom](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/range-tolphom--ee209d397edfad270d308007.md) | 77 | `result-track:ee209d397edfad270d3080072bc3bc1c234076d8b7c51e5f3247e0d8aa14ddf6` |
| 8 | `def` | [toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp--b120e38d51a329656a9ae5e4.md) | 89 | `declaration-track:b120e38d51a329656a9ae5e47b98bfbd7e7341909066ec300211215b8a8f5487` |
| 9 | `theorem` | [coeFn_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/coefn-tolp--f0bb8282e1aed60140f5ee34.md) | 95 | `result-track:f0bb8282e1aed60140f5ee34da05b3f1f686adb987aa4cabbb260f6dc88c3dd8` |
| 10 | `theorem` | [range_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/range-tolp--46d73165d568713c9873cd6d.md) | 101 | `result-track:46d73165d568713c9873cd6da5f64364555994027d07571b0ba0eb7626b4d381` |
| 11 | `theorem` | [toLp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp-norm-le--5ad98b3f5c22d4b9dea98c0b.md) | 108 | `result-track:5ad98b3f5c22d4b9dea98c0ba99e072960190adbbb1a8bdc1f5266aa7abd86a9` |
| 12 | `theorem` | [toLp_inj](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp-inj--09f0d9453cb9328cc6b31bf8.md) | 112 | `result-track:09f0d9453cb9328cc6b31bf81195d376b5dd3b60e423d3b6733070f9ae047320` |
| 13 | `theorem` | [toLp_injective](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp-injective--12f907b46ae6d8132bed4979.md) | 119 | `result-track:12f907b46ae6d8132bed4979206ad8454dfce58d7503e29eb54a7bb9adfd983e` |
| 14 | `def` | [toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp--7dff88afbefce7fbfd3bd3d5.md) | 135 | `declaration-track:7dff88afbefce7fbfd3bd3d570a384b2ca10c93a57df9fe73a09be6baf896369` |
| 15 | `theorem` | [range_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/range-tolp--8d35cc4e819135760b8a5333.md) | 141 | `result-track:8d35cc4e819135760b8a5333bc8aa22f55f0bd37664fd3bde9dabe4273ab0d74` |
| 16 | `theorem` | [coeFn_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/coefn-tolp--7997b01bf95da8fd32b28ab9.md) | 152 | `result-track:7997b01bf95da8fd32b28ab9279cdf2150eb7c1acbfcb7b278a9ecd79404acd9` |
| 17 | `theorem` | [toLp_def](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp-def--6e52949464d48d0db40b652b.md) | 156 | `result-track:6e52949464d48d0db40b652b7008b797b0bc239574158d68edb0bf4ebdca33ec` |
| 18 | `theorem` | [toLp_comp_toContinuousMap](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp-comp-tocontinuousmap--249a9eb28f03cfa40f6d2612.md) | 162 | `result-track:249a9eb28f03cfa40f6d2612c4ce2a4ecaa26a325f60985ec89c9bd5e6706f0c` |
| 19 | `theorem` | [coe_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/coe-tolp--4e4a1812a310c03fdc3ecb82.md) | 167 | `result-track:4e4a1812a310c03fdc3ecb82ccebca24fd5af73b767b95c7ef2351f5c00032a2` |
| 20 | `theorem` | [toLp_injective](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp-injective--5d2ce1bd2e470f21022ebc93.md) | 171 | `result-track:5d2ce1bd2e470f21022ebc93181561f80336902a255ee41f601ae62b2babf0fc` |
| 21 | `theorem` | [toLp_inj](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp-inj--5dcf657e09272f382ec486a5.md) | 175 | `result-track:5dcf657e09272f382ec486a5e2ab341458224884f2e40e824f69e132313d866e` |
| 22 | `theorem` | [hasSum_of_hasSum_Lp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/hassum-of-hassum-lp--1f26b18c3d147972815b38ae.md) | 183 | `result-track:1f26b18c3d147972815b38aede8a6c64f2c240902dfbefa85173091ed47e0c26` |
| 23 | `theorem` | [toLp_norm_eq_toLp_norm_coe](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp-norm-eq-tolp-norm-coe--3b08b7f642e4174340c34606.md) | 191 | `result-track:3b08b7f642e4174340c346068e343a7162e9c1a710cc09211bb089f7e5feebff` |
| 24 | `theorem` | [toLp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7775731330d14b2d9e313549d3bf07db57b72b9af35f46d66d8f92a5e6453cd9.lean/declarations/tolp-norm-le--ab97190e22ee602fd5e52688.md) | 197 | `result-track:ab97190e22ee602fd5e52688f229b5f5c11d37ae8a85d3678fced6ae288f1959` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
