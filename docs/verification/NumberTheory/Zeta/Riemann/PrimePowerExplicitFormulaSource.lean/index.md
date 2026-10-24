# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerExplicitFormulaSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66a7514a998becd17be8ec4d99f66f046612bee4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66a7514a998becd17be8ec4d99f66f046612bee4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerVonMangoldt.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticFeature`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticFeature.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source--d5b148d8b705ee0305de31c6.md) | 35 | `declaration-track:d5b148d8b705ee0305de31c694853079881074ae6d26304c5f75fa7eda4e1c4f` |
| 2 | `def` | [Source.toArithmeticSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-toarithmeticsource--1360127ea9009b6deeba1265.md) | 49 | `declaration-track:1360127ea9009b6deeba1265446a54692ccbe1608843dfab7f27dc8f76c1635e` |
| 3 | `theorem` | [Source.toArithmeticSource_primePower](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-toarithmeticsource-primepower--f3db9b3c0963cb57cce3d008.md) | 62 | `result-track:f3db9b3c0963cb57cce3d008869e9c5bf5004a3c0e8b2e94e5c85cbd98204369` |
| 4 | `theorem` | [Source.extract_primePower](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-extract-primepower--505348f1145d1abbb22a4790.md) | 69 | `result-track:505348f1145d1abbb22a479079315a13039aa8eb86b24a18661256fe1c023bd3` |
| 5 | `theorem` | [Source.extract_archimedean](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-extract-archimedean--364e2046b243fc592c7329b7.md) | 76 | `result-track:364e2046b243fc592c7329b792c82d96525b906a8241f09b3de700ad932fa56e` |
| 6 | `theorem` | [Source.extract_pole](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-extract-pole--afa82a76f88e13f424723bda.md) | 83 | `result-track:afa82a76f88e13f424723bdaec0111981e9e3eb840f70143f2035f48ebdc2efd` |
| 7 | `theorem` | [Source.extract_trivialZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-extract-trivialzero--16043b755ac9f7af0ed51827.md) | 89 | `result-track:16043b755ac9f7af0ed518275fa90fea74e5d642cdfa59b102dd55b645ed99d5` |
| 8 | `theorem` | [Source.extract_nontrivialZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-extract-nontrivialzero--796fa99d2b75050dd3eae6a0.md) | 96 | `result-track:796fa99d2b75050dd3eae6a0b208b6747908225d73294023667e28155415a85a` |
| 9 | `theorem` | [Source.extract_endpoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-extract-endpoint--0c01744c88502014b92256f7.md) | 103 | `result-track:0c01744c88502014b92256f751f04fbdbb852f044b338c7764c617b0c258faf2` |
| 10 | `theorem` | [Source.extract_tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-extract-tail--5c1c92e2aff9c3df69649146.md) | 110 | `result-track:5c1c92e2aff9c3df69649146cc695cd149d0d5d19ebd2c56074f20080350c0dc` |
| 11 | `def` | [Source.completeChannelSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-completechannelsum--4477e4812466423b9cd0d26c.md) | 118 | `declaration-track:4477e4812466423b9cd0d26c74d1523bd933fa9ef4b8f43521dbcfd16b9fa272` |
| 12 | `def` | [Source.quadraticizationResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-quadraticizationresidual--cde0e7281de8b2a9538b621e.md) | 130 | `declaration-track:cde0e7281de8b2a9538b621ea914d8acdca9b94fc5462bc9d0326bd7aacc56e8` |
| 13 | `theorem` | [Source.primePower_eq_energy_add_quadraticizationResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/source-primepower-eq-energy-add-quadraticizationresidual--94956d6c406d172e18079479.md) | 135 | `result-track:94956d6c406d172e18079479ef3dd35b268d2980d5e1027360a7cb0680f64abc` |
| 14 | `def` | [CompleteTargetIdentity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/completetargetidentity--b30a840127c1eccaa08d7503.md) | 145 | `declaration-track:b30a840127c1eccaa08d75039069a9be10b0dc71f1534011020fbbb08306a378` |
| 15 | `theorem` | [completeTarget_sub_energy_decomposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/completetarget-sub-energy-decomposition--37b7b1c94ea6caa0ea60a246.md) | 151 | `result-track:37b7b1c94ea6caa0ea60a246de1e51727fc30819e5fab3673387f3cc1d445e41` |
| 16 | `structure` | [CompleteComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/completecomparison--3450cf360173dfcc106286b9.md) | 169 | `declaration-track:3450cf360173dfcc106286b97e32a21c64055c57d8bfcd8626a55b9ced108f25` |
| 17 | `theorem` | [residual_decomposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/residual-decomposition--f4492141a804b2f9dd16b65e.md) | 179 | `result-track:f4492141a804b2f9dd16b65ea5a373ec9ea90ebd070f84861fa5d32c5674a637` |
| 18 | `theorem` | [atom_linear_ne_quadratic_at_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/declarations/atom-linear-ne-quadratic-at-two--b28d7bddbeb015fc528ffc13.md) | 197 | `result-track:b28d7bddbeb015fc528ffc138d319a8a8c42b84931becc30dbe8d36561fe5b12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
