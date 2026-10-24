# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHBootstrap.Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e714b51117003eb409e046078e51dc447c946125",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e714b51117003eb409e046078e51dc447c946125`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Real.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closingRoot](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/closingroot--671d2b0996a8371e5788407c.md) | 29 | `declaration-track:671d2b0996a8371e5788407cadce2c4620e9732d7ad92d0848b5647ce714201d` |
| 2 | `def` | [closingBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/closingbound--8f238365f5eea962100cb685.md) | 32 | `declaration-track:8f238365f5eea962100cb6856c77fdbfa026ad33837336ca15d849148ff728ad` |
| 3 | `theorem` | [closingRoot_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/closingroot-nonneg--5412a5eb3d7765665f32d8f7.md) | 34 | `result-track:5412a5eb3d7765665f32d8f7f4b2d0e0f2deaa9b2a95582bb85c223523afdec0` |
| 4 | `theorem` | [closingRoot_ge_coefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/closingroot-ge-coefficient--850cb714eefa85df3ddb623b.md) | 39 | `result-track:850cb714eefa85df3ddb623b84d87147c8e3f9dda10fa0de917189fc652dc7a7` |
| 5 | `theorem` | [closingRoot_equation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/closingroot-equation--1e0e4d9f1f07c222ac754c60.md) | 46 | `result-track:1e0e4d9f1f07c222ac754c6012f5658f44540f0951f941732e8e5923d2eeba59` |
| 6 | `theorem` | [le_closingBound_of_sqrt_inequality](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/le-closingbound-of-sqrt-inequality--f883cb363f1e66014e0ff621.md) | 53 | `result-track:f883cb363f1e66014e0ff621f9cae5b098461e99ae539c6bfd070be3cd5ea332` |
| 7 | `def` | [finiteHorizon](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/finitehorizon--7533ad40b29e75f2cc80ad6f.md) | 74 | `declaration-track:7533ad40b29e75f2cc80ad6f24e5f772966288ab8e4bbcc582f9b88c2243e2a2` |
| 8 | `theorem` | [finiteHorizon_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/finitehorizon-nonneg--ad2c023700bda92cd081b3e0.md) | 77 | `result-track:ad2c023700bda92cd081b3e096da8e1f0372a65485d1d75c88366e56dc9fc144` |
| 9 | `theorem` | [value_le_finiteHorizon](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/value-le-finitehorizon--a5b63a10cda96f4a41b508d4.md) | 81 | `result-track:a5b63a10cda96f4a41b508d4326b75a45867834ebfea143124d008e98d100ea4` |
| 10 | `theorem` | [image_bddAbove_of_upper_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/image-bddabove-of-upper-bound--faff9d5049bda9f6cbdcdfbd.md) | 88 | `result-track:faff9d5049bda9f6cbdcdfbd12ddce32b56c6232c5d2d0f98a019fb5f48a6af4` |
| 11 | `theorem` | [uniform_cap_of_finite_horizon_sqrt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/uniform-cap-of-finite-horizon-sqrt--2836490076c47cc7a983a015.md) | 96 | `result-track:2836490076c47cc7a983a015022d6907bce4b28cdc9869d41b834aa786683b63` |
| 12 | `theorem` | [le_of_affine_contraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/le-of-affine-contraction--41d863c6aa4edd324283e2e3.md) | 108 | `result-track:41d863c6aa4edd324283e2e397bd387dcfe6afa94cd09a90e5f12c6fb095c419` |
| 13 | `theorem` | [uniform_cap_of_finite_horizon_contraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variantc374539d2b4aeae00542271a1a7d03c295a3f48ede81ff5d9e989a65b27f2c12.lean/declarations/uniform-cap-of-finite-horizon-contraction--c41685e0a46605c588c4136f.md) | 113 | `result-track:c41685e0a46605c588c4136fc860f620e200dee5a29ccb3aa156a54682363076` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
