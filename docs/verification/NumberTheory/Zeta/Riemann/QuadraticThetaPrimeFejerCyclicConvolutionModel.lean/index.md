# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvolutionModel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ca8385b1ba899f58555faaeb5ef7a5ce03c51ae",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ca8385b1ba899f58555faaeb5ef7a5ce03c51ae`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicStepCorrection`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octaveRepresentative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/octaverepresentative--85a9f548c31d1864b5039dd7.md) | 14 | `declaration-track:85a9f548c31d1864b5039dd7c4dcabaacb66a62ec760836de2bdf9671f5386dc` |
| 2 | `theorem` | [octaveRepresentative_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/octaverepresentative-mem--75d0c2e0a1e70268cc8c898a.md) | 20 | `result-track:75d0c2e0a1e70268cc8c898a0cf37177c358fdc9758aedf545b85c9c1393dcd7` |
| 3 | `def` | [cyclicSharpPrefixIndicator](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/cyclicsharpprefixindicator--4e7eb3f7297812ed43b2d843.md) | 38 | `declaration-track:4e7eb3f7297812ed43b2d84363703579a23d0a974697de19061da9f98098a0b8` |
| 4 | `def` | [cyclicFejerKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/cyclicfejerkernel--eeb41d02e13c18fb5264dc2f.md) | 47 | `declaration-track:eeb41d02e13c18fb5264dc2f8487c7d812eaf8f083ed37b715a5c0675ca1ce18` |
| 5 | `def` | [cyclicFejerSmoothedPrefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/cyclicfejersmoothedprefix--157155cec536a55f8490048c.md) | 54 | `declaration-track:157155cec536a55f8490048c2202f71e7364aed6e26a082fcafc16c4ab8449a8` |
| 6 | `def` | [cyclicFejerSharpStepL1Error](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/cyclicfejersharpstepl1error--1b51dd14784797aac870a050.md) | 62 | `declaration-track:1b51dd14784797aac870a050f105017aa87201640a0a94dec778eb3ce79a9a18` |
| 7 | `def` | [ArithmeticPrefixWeightEqualsCyclicConvolutionClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/arithmeticprefixweightequalscyclicconvolutionclaim--3e477dd30b8f6d1e902bdddd.md) | 70 | `declaration-track:3e477dd30b8f6d1e902bddddd1481a82c8f973c8bdbb57f9d687a3ddc8bab30f` |
| 8 | `def` | [OctaveL1LeCyclicL1Claim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/octavel1lecyclicl1claim--1a8f1c67f3d4e49d1159d36f.md) | 82 | `declaration-track:1a8f1c67f3d4e49d1159d36fc8c2fba19534b7a69a84e9db0e15fc5ed90a74dc` |
| 9 | `def` | [cyclicSharpTranslationL1](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/cyclicsharptranslationl1--4accbaf8496954c757fbf7d4.md) | 91 | `declaration-track:4accbaf8496954c757fbf7d487ca256ab3a30d50a301a1c116b1c55451734d51` |
| 10 | `def` | [CyclicConvolutionL1ByTranslationClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/cyclicconvolutionl1bytranslationclaim--c83a64eee09dcc0d7457a628.md) | 100 | `declaration-track:c83a64eee09dcc0d7457a628e609324c8d3f0d6cd734821780b295367284c3b2` |
| 11 | `def` | [CyclicSharpTranslationCardinalityClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/cyclicsharptranslationcardinalityclaim--75849ff32c9962a3aa8ccbf3.md) | 110 | `declaration-track:75849ff32c9962a3aa8ccbf30c8a42547caac13b918ac81a2d21c22b7f556175` |
| 12 | `structure` | [CyclicSharpStepContractionData](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvolutionModel.lean/declarations/cyclicsharpstepcontractiondata--a2ba6780382137b344e78dad.md) | 120 | `declaration-track:a2ba6780382137b344e78dad3aef5c241efdc75e7c494dab496650b0cfc74019` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
