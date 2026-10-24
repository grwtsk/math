# Verification target: GRWTSK.NumberTheory.Moebius.ParitySignedResidueConvolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f56b38828b56c175bda30b140ad74d6a9f4e29a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ParitySignedResidueConvolution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f56b38828b56c175bda30b140ad74d6a9f4e29a`.

Source path: `GRWTSK/NumberTheory/Moebius/ParitySignedResidueConvolution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ParitySignedResidueConvolution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ParityResidueVarianceLargeModulusObstruction`](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityResidueCoordinate](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/parityresiduecoordinate--9e722835ada61fa5d43d9837.md) | 44 | `declaration-track:9e722835ada61fa5d43d98378d7e27e78cec6dc89514f823444dcd1c3314cac7` |
| 2 | `def` | [paritySignedResidueConvolutionBucket](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionbucket--37c4a0e873e8a964b8b45c26.md) | 52 | `declaration-track:37c4a0e873e8a964b8b45c26c896142a6214ba30155b2f163083ca2c719c3ef8` |
| 3 | `theorem` | [sum_paritySignedResidueConvolutionBucket](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/sum-paritysignedresidueconvolutionbucket--80c27d13a2f8af0391ceec25.md) | 63 | `result-track:80c27d13a2f8af0391ceec25ea53663e2ba39f841e5a84f49fdd0a51a3ce56c0` |
| 4 | `def` | [paritySignedResidueConvolutionFourier](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionfourier--16ac9909d677e39a070fc27d.md) | 94 | `declaration-track:16ac9909d677e39a070fc27d913a5d4ff69eb6997371039d1cffa229ea6dcf7d` |
| 5 | `theorem` | [paritySignedResidueConvolutionFourier_eq_twice_pairSum](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionfourier-eq-twice-pairsum--9fb6df35b1015c105716bf52.md) | 102 | `result-track:9fb6df35b1015c105716bf52a73f11a6f48bad9b2acaa0cd6aa46d0f9008aa21` |
| 6 | `theorem` | [paritySignedResidueConvolutionFourier_eq_square_sub_diagonal](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionfourier-eq-square-sub-diagonal--1e67a4586b2213edb2eeb876.md) | 157 | `result-track:1e67a4586b2213edb2eeb87618fa633b438e6490600ca69c3cc887247bf741ac` |
| 7 | `def` | [paritySignedResidueConvolutionFrequencyMajorant](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionfrequencymajorant--3e9b4175f9c7c93dfe9c2e56.md) | 167 | `declaration-track:3e9b4175f9c7c93dfe9c2e56abb0e8466335a7cea6fec8ee18167ce6a7ab7a1f` |
| 8 | `theorem` | [paritySignedResidueConvolutionFrequencyMajorant_eq_parityFourier](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionfrequencymajorant-eq-parityfourier--a557d7b9f21959689c2518ba.md) | 175 | `result-track:a557d7b9f21959689c2518ba59b564753aa7348428191f7b5db32ca213870ddf` |
| 9 | `def` | [paritySignedResidueConvolutionNonzeroModulusMajorant](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionnonzeromodulusmajorant--eec6f404b2192c5068eb737c.md) | 187 | `declaration-track:eec6f404b2192c5068eb737c4b5d9fb673d0fc5b5de43dd4963e40d22c6934de` |
| 10 | `theorem` | [paritySignedResidueConvolutionNonzeroModulusMajorant_eq_parityFourier](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionnonzeromodulusmajorant-eq-parityfourier--1a96a82861c98ea264e76eb0.md) | 194 | `result-track:1a96a82861c98ea264e76eb09572a470ee8b20938ea233e3b5431035cfff2ca4` |
| 11 | `def` | [paritySignedResidueConvolutionEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionendpointmajorant--9c59bd90d96305cbdf50730a.md) | 207 | `declaration-track:9c59bd90d96305cbdf50730a7e6f98fdd134cf7b41796cb57391b4157fe6b60f` |
| 12 | `theorem` | [paritySignedResidueConvolutionEndpointMajorant_eq_parityFourier](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/paritysignedresidueconvolutionendpointmajorant-eq-parityfourier--30dc5abd7e16f1c72190d2b1.md) | 216 | `result-track:30dc5abd7e16f1c72190d2b1e5022626fb0e1f98cde3998ed06a00ab812b5181` |
| 13 | `def` | [DyadicNaturalScaleSignedResidueConvolutionBudget](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/dyadicnaturalscalesignedresidueconvolutionbudget--a104c9b93f23969547e4ff02.md) | 233 | `declaration-track:a104c9b93f23969547e4ff029200c2fa679e0d0133a4e91afdfa22a6646fddd8` |
| 14 | `theorem` | [dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/dyadicnaturalscalesignedresidueconvolutionbudget-iff-nonzeroparityfourie--9bac24e1ab578eb105599b85.md) | 243 | `result-track:9bac24e1ab578eb105599b85fef624a6a4bb9a9c7bf8706bd11ed44e93504f97` |
| 15 | `def` | [signedResidueConvolutionCancellationRepair](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/signedresidueconvolutioncancellationrepair--98fe673a9294262cd81e98c2.md) | 262 | `declaration-track:98fe673a9294262cd81e98c250ba5b46becf89e75f3ec2641c9a3339e16270d4` |
| 16 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_signedResidueConvolution](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-and-signedresidueconvolutio--c7d223e0b1d444805299a141.md) | 271 | `result-track:c7d223e0b1d444805299a141b70122f374eda48ac162b91397fb36b617faec3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
