# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.FiveModeZeroTailInputs.Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "713a2b0119e58df42625a3ab77bd4b0ded863b06",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `713a2b0119e58df42625a3ab77bd4b0ded863b06`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_20261004.FiveModeZeroHead` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.Statement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPositiveZeroCount](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/actualpositivezerocount--6442e1f0e8d837421fc614ce.md) | 32 | `declaration-track:6442e1f0e8d837421fc614ce5be689c4cc1baddcd5fdb69a97488dcf2bda2a9a` |
| 2 | `def` | [zeroCountMain](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/zerocountmain--28a8c7d3e59e59945c26cb42.md) | 34 | `declaration-track:28a8c7d3e59e59945c26cb42e67fdd9806d796015b757571afdaf522b9be1f43` |
| 3 | `def` | [correctedBellottiWongError](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/correctedbellottiwongerror--87d559118a780f2f59da9e7a.md) | 38 | `declaration-track:87d559118a780f2f59da9e7adc354bd162623234f18d1000497671553c9780df` |
| 4 | `def` | [CorrectedBellottiWongCount](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/correctedbellottiwongcount--af81de2476d7cba12c1e7d87.md) | 43 | `declaration-track:af81de2476d7cba12c1e7d87626af35d41a55b08c3343d291e14d22bd4551c6a` |
| 5 | `theorem` | [positive_count_carrier_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/positive-count-carrier-eq--0f9d7bd275f642210e3aebcc.md) | 48 | `result-track:0f9d7bd275f642210e3aebccbbb416b92ead48456cc3a3fcadb9e48064c88a2e` |
| 6 | `theorem` | [positive_count_multiplicity_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/positive-count-multiplicity-eq--848434c368355530e30fe4da.md) | 56 | `result-track:848434c368355530e30fe4dae39f29b9bb7326c3a98cf6fb79d66669ddd225f4` |
| 7 | `def` | [positiveSixthPowerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/positivesixthpowerweight--8ff2a687b74b912e03741503.md) | 59 | `declaration-track:8ff2a687b74b912e037415033feadf04a7eb35b818906b98bf0c6d4c19eccc8d` |
| 8 | `def` | [actualPositiveSixthPowerTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/actualpositivesixthpowertail--4d89c797ca04e28bf7166c59.md) | 62 | `declaration-track:4d89c797ca04e28bf7166c592af9d5aac82f970e515ea1940b367ac50b07e9e4` |
| 9 | `def` | [PositiveSixthPowerStieltjes](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/positivesixthpowerstieltjes--1d6c79c6d3e122dfeaa982c4.md) | 68 | `declaration-track:1d6c79c6d3e122dfeaa982c4355b4c1cd750e61d64d0250ed4d7b0574fac52f9` |
| 10 | `def` | [positiveSixthPowerCountEnvelope](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/positivesixthpowercountenvelope--49c04a41829c70515dfc6ebb.md) | 76 | `declaration-track:49c04a41829c70515dfc6ebbb0ca12553960674c23a77575db3b8f6e041e10d2` |
| 11 | `def` | [sourceTransformPolynomialBudget](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/sourcetransformpolynomialbudget--e700ae7d9dcdd4f10dcc9af5.md) | 83 | `declaration-track:e700ae7d9dcdd4f10dcc9af58b5ad7b1ec1b983b9133c7a37bae3a54ae0adb14` |
| 12 | `def` | [sourceAbsoluteTailConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/sourceabsolutetailconstant--4d2467674545599732091daf.md) | 88 | `declaration-track:4d2467674545599732091daf166c14747f233081249a9a281e108d0f76f0c878` |
| 13 | `def` | [SourceAbsoluteTailMajorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/sourceabsolutetailmajorant--348649d832c050435c36b140.md) | 93 | `declaration-track:348649d832c050435c36b140b585ae960f6af3a119b8cbc95c65d34252bd173a` |
| 14 | `theorem` | [source_absolute_tail_constant_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/source-absolute-tail-constant-nonnegative--f80c5d870f1b61d0cfecdf74.md) | 98 | `result-track:f80c5d870f1b61d0cfecdf742d241e6fbb854db94c113f841459a91501d8e62e` |
| 15 | `theorem` | [actual_positive_absolute_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/actual-positive-absolute-tail-le--447244b61cb1488e90e37d87.md) | 107 | `result-track:447244b61cb1488e90e37d875143ca6d796e2babfbdb01c01c3fc130dbac9d33` |
| 16 | `theorem` | [actual_absolute_tail_le_sixth_power](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/actual-absolute-tail-le-sixth-power--7826b9efa2e55069a1ac5e62.md) | 125 | `result-track:7826b9efa2e55069a1ac5e62c953857a5956f7c23678d721b5f6411c4b7b29df` |
| 17 | `theorem` | [actual_strict_tail_norm_le_of_count_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/declarations/actual-strict-tail-norm-le-of-count-bound--ed1caaf81c33aac235096a35.md) | 137 | `result-track:ed1caaf81c33aac235096a35f49403d4376484a75bffd5182e0b8588e9e7c09e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
