# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuadraticSwapInvolution.Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e4bc6253eb9182ed93b72470e20fb1c2cd7c3b4",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e4bc6253eb9182ed93b72470e20fb1c2cd7c3b4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [swapInvolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapinvolution--41b6f59ba97da0514f2dd5e3.md) | 48 | `declaration-track:41b6f59ba97da0514f2dd5e359f1974d26b325ad133aff563bcd097e45540d94` |
| 2 | `theorem` | [swapInvolution_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapinvolution-apply--d6c671e88d17b782239db3fc.md) | 56 | `result-track:d6c671e88d17b782239db3fc4d537d51f95647846e5f6f5ee9f77fb3db68875f` |
| 3 | `theorem` | [swapInvolution_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapinvolution-sq--f4dc6bf1955d016802daf660.md) | 61 | `result-track:f4dc6bf1955d016802daf660a575ca7149360cdcb166c21b44e431d19564a134` |
| 4 | `theorem` | [swapInvolution_comp_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapinvolution-comp-self--5a8e1d2bf392f1b1caa8ef77.md) | 66 | `result-track:5a8e1d2bf392f1b1caa8ef778bec215d0ebfa6a14a1db94871454f777eceae0b` |
| 5 | `def` | [swapSymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapsymmetricprojection--113f84dab74ff1942703492b.md) | 72 | `declaration-track:113f84dab74ff1942703492b8679535e398f43ff6c25b7a721211a62009c2f16` |
| 6 | `def` | [swapAntisymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapantisymmetricprojection--bbfd563d34638798090bb238.md) | 76 | `declaration-track:bbfd563d34638798090bb238eb93553627aa492ff560cd16f9eb4b065a539272` |
| 7 | `theorem` | [swapSymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapsymmetricprojection-apply--5ffbe2aa2b8075fbbcc28d54.md) | 80 | `result-track:5ffbe2aa2b8075fbbcc28d5458fff060584be8ec1eb1c3ad6994c90942488d13` |
| 8 | `theorem` | [swapAntisymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapantisymmetricprojection-apply--1768c1b501da2c891dc6565a.md) | 87 | `result-track:1768c1b501da2c891dc6565ac2edb3c22031e53095f9f07f1a0b30190ac17001` |
| 9 | `theorem` | [swap_projection_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swap-projection-decomposition--12f67527ff5d2f551f753653.md) | 94 | `result-track:12f67527ff5d2f551f75365306a9ff7fe67d035ef2c3a77e92553177fe12a072` |
| 10 | `theorem` | [swapSymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapsymmetricprojection-idempotent--4de58a133fc6d413c1afc665.md) | 99 | `result-track:4de58a133fc6d413c1afc665d09acc99f1a699d6f0e142a996e9f26f9eefd753` |
| 11 | `theorem` | [swapAntisymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapantisymmetricprojection-idempotent--e829adb314e0e174260c7ec6.md) | 106 | `result-track:e829adb314e0e174260c7ec652d8c9c301136284687bfc94786a166a74749285` |
| 12 | `theorem` | [swapSymmetric_after_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapsymmetric-after-antisymmetric--39af23855a75289f1c61a7c5.md) | 114 | `result-track:39af23855a75289f1c61a7c569fa8b813bfe95a742e4cfc8e9699defdb952642` |
| 13 | `theorem` | [swapAntisymmetric_after_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapantisymmetric-after-symmetric--0dffe8277368d886c43ef859.md) | 119 | `result-track:0dffe8277368d886c43ef859c0143bfc31f9c335bc42ad0deacc48ecddde5d4d` |
| 14 | `theorem` | [swap_on_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swap-on-symmetric--d956f3823e87f5c64003a857.md) | 124 | `result-track:d956f3823e87f5c64003a85700d1359ede26f3dcda0629e8b44061e557877959` |
| 15 | `theorem` | [swap_on_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swap-on-antisymmetric--cefb5293eddcd9cd7ca8645b.md) | 130 | `result-track:cefb5293eddcd9cd7ca8645b82d8873e20929d786814c1daf72f8934b22bc5ba` |
| 16 | `theorem` | [swap_sector_reconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swap-sector-reconstruction--e66b743476ba31d8578b6bdd.md) | 136 | `result-track:e66b743476ba31d8578b6bdd85454c4ccb233aca8a69870f76105865165e2098` |
| 17 | `def` | [doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/doublednormsq--2076fbf6dd7907d936fac80c.md) | 148 | `declaration-track:2076fbf6dd7907d936fac80c38c8a55466281ead95a7026b507fe6b079258fec` |
| 18 | `theorem` | [swapAntisymmetricProjection_doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapantisymmetricprojection-doublednormsq--b138c8792eb8b7e95090d849.md) | 152 | `result-track:b138c8792eb8b7e95090d849234767441f2474362f36f92c2144ce3c8a24c3c1` |
| 19 | `def` | [swapDefect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapdefect--f151a93cec812916db77600b.md) | 165 | `declaration-track:f151a93cec812916db77600b4d0b1ff94c0a134b403980f38dd89cd6e3aaac43` |
| 20 | `theorem` | [swapDefect_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapdefect-eq--4f5eb6a905a8a504d8b50ae0.md) | 169 | `result-track:4f5eb6a905a8a504d8b50ae0a1d5be6781a7560833e59ff4fad05c7cad40124b` |
| 21 | `theorem` | [swapDefect_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapdefect-nonnegative--1888b5ec54b6cea63bb67595.md) | 175 | `result-track:1888b5ec54b6cea63bb6759550cb3fc3d39039f7f528cd23f3df4319af363fa0` |
| 22 | `theorem` | [swapDefect_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant9406af38693f4a2bb3b9fb0d509c0564878d8f88ea24bada656efdadf900ede7.lean/declarations/swapdefect-eq-zero-iff--f600d8ef0399f8e512111b32.md) | 182 | `result-track:f600d8ef0399f8e512111b32b6f0c5e37147c7fe6fcdd057cf8fbf709d668b85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
