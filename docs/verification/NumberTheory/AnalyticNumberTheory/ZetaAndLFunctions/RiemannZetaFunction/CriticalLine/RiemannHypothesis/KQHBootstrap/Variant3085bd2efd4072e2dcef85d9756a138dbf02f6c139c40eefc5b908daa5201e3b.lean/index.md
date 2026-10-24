# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHBootstrap.Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5c2548cdd66e09bcb4632267ab1d9bbdb10f7fd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5c2548cdd66e09bcb4632267ab1d9bbdb10f7fd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Real.Sqrt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closingRoot](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/closingroot--3aa09ededf8b2d4368f2ae18.md) | 21 | `declaration-track:3aa09ededf8b2d4368f2ae18da5e0fbf1122a77718e628e77716ccb5acb417ee` |
| 2 | `def` | [closingBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/closingbound--5c6b3a50adf8aa336cc47cc0.md) | 24 | `declaration-track:5c6b3a50adf8aa336cc47cc0433ac09cbeac08d3807d5cac1429879d0031e5b7` |
| 3 | `theorem` | [closingRoot_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/closingroot-nonneg--32239c08eabd35e158068a5d.md) | 26 | `result-track:32239c08eabd35e158068a5dc00371b5f9f98d65cd8caf2921cd756fe7786f72` |
| 4 | `theorem` | [closingRoot_ge_coefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/closingroot-ge-coefficient--f4782a0359725a0c903b796e.md) | 31 | `result-track:f4782a0359725a0c903b796ea036a2e7702991e513d81566820146387d3c62c8` |
| 5 | `theorem` | [closingRoot_equation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/closingroot-equation--cdabea6c7e18b17f1c7862b9.md) | 38 | `result-track:cdabea6c7e18b17f1c7862b950c578d5898d81cc27dee85bfce517129e99755b` |
| 6 | `theorem` | [le_closingBound_of_sqrt_inequality](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/le-closingbound-of-sqrt-inequality--eaf42a1fbb5103ee3fd96867.md) | 45 | `result-track:eaf42a1fbb5103ee3fd96867f6504073f515ad5f2c5891b08fba4442627cd6c5` |
| 7 | `def` | [finiteHorizon](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/finitehorizon--a72a579cd6809427927acdcd.md) | 66 | `declaration-track:a72a579cd6809427927acdcd6d692f8063337a46aaef587b23b7fb4aa2f5a88e` |
| 8 | `theorem` | [finiteHorizon_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/finitehorizon-nonneg--97d1ff1288c65bc246440cb0.md) | 69 | `result-track:97d1ff1288c65bc246440cb00cc6755d52016db263a11668280bf100dc0e6199` |
| 9 | `theorem` | [value_le_finiteHorizon](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/value-le-finitehorizon--d285168bf4b5a6322efe69bc.md) | 73 | `result-track:d285168bf4b5a6322efe69bccd76bbc3c61d77be02008cb97b41aaaf2c465b4f` |
| 10 | `theorem` | [image_bddAbove_of_upper_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/image-bddabove-of-upper-bound--d072176de76ff163b142a8b2.md) | 80 | `result-track:d072176de76ff163b142a8b20c04913cc1cc8da6d38afe5dbbe79440d378be4c` |
| 11 | `theorem` | [uniform_cap_of_finite_horizon_sqrt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/uniform-cap-of-finite-horizon-sqrt--bc38efcabee869eded8d6d29.md) | 88 | `result-track:bc38efcabee869eded8d6d29b1a13c1b0dff15448103f35bf366efbdcae98ece` |
| 12 | `theorem` | [le_of_affine_contraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/le-of-affine-contraction--67edf705636ba66e3aa6ccb2.md) | 100 | `result-track:67edf705636ba66e3aa6ccb23bf88326bf7bdb23684f205affc237c6d5c0b378` |
| 13 | `theorem` | [uniform_cap_of_finite_horizon_contraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant3085bd2efd4072e2dcef85d9756a138dbf02f6c139c40eefc5b908daa5201e3b.lean/declarations/uniform-cap-of-finite-horizon-contraction--1efeab3dda19a3fe1b110ac4.md) | 105 | `result-track:1efeab3dda19a3fe1b110ac4cf13c97bb7ee0ad991eeea4a17d0071ae17e8876` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
