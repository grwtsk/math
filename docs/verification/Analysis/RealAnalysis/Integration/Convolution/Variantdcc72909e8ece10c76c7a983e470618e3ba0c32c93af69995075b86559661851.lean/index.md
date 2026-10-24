# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Convolution.Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e793dab8cb6cf15f5d6a0e76d4928138e3aa5d0e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e793dab8cb6cf15f5d6a0e76d4928138e3aa5d0e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_prod_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/integrable-prod-sub--1d7e7b9e3638db87e0742d61.md) | 47 | `result-track:1d7e7b9e3638db87e0742d618e80a5e79e9dfda86b815b0c51fa0fcead5fdc18` |
| 2 | `theorem` | [fourier_bilin_convolution_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/fourier-bilin-convolution-eq-integral--22380dbb908607ea5bfe33c4.md) | 57 | `result-track:22380dbb908607ea5bfe33c439e6462c41ff02d6dd0b9f354dd392eaca331b0f` |
| 3 | `theorem` | [fourier_bilin_convolution_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/fourier-bilin-convolution-eq--126808c8ccf371c7d0cb80c6.md) | 89 | `result-track:126808c8ccf371c7d0cb80c66c0aaabc5b8f5fb1c295af2d2d429153dfbb57a7` |
| 4 | `theorem` | [fourier_smul_convolution_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/fourier-smul-convolution-eq--29a16df7554c3f0a8135fcee.md) | 109 | `result-track:29a16df7554c3f0a8135fceedcce089358cfe5778d5369ce8b12646c0b67083b` |
| 5 | `theorem` | [fourier_mul_convolution_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/fourier-mul-convolution-eq--5b0cd89990bc2aaca2a03143.md) | 121 | `result-track:5b0cd89990bc2aaca2a031435158ffb6bd80e2d4c1bb2e0a63c886096e7b566f` |
| 6 | `def` | [convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/convolution--89c36073d13765b2731ea529.md) | 145 | `declaration-track:89c36073d13765b2731ea5297a02a93d28e326f35a456881874a55b94a8a87b4` |
| 7 | `theorem` | [convolution_flip](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/convolution-flip--20a8e9a579c7e623650ee3f2.md) | 151 | `result-track:20a8e9a579c7e623650ee3f21ff30b98162591dfe6d95eb36c776730ecc35731` |
| 8 | `theorem` | [convolution_continuous_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/convolution-continuous-left--bb1db71ab5c81c21077f09b6.md) | 159 | `result-track:bb1db71ab5c81c21077f09b6520e2e0431472f135bb376c6be654aadd4463464` |
| 9 | `theorem` | [fourier_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/fourier-convolution--45cc8a72a0b8550d062a2adb.md) | 164 | `result-track:45cc8a72a0b8550d062a2adbed495fb739ed250d5f6321402ec27724f1e755f6` |
| 10 | `theorem` | [fourier_convolution_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/fourier-convolution-apply--9060f60a53a261e3f3e4d3c7.md) | 171 | `result-track:9060f60a53a261e3f3e4d3c7f447ef2541d27fdffb62e7a30a25f879ab10aa13` |
| 11 | `theorem` | [convolution_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/declarations/convolution-apply--e3182a3f7a0f46505a6e2793.md) | 177 | `result-track:e3182a3f7a0f46505a6e27939229c7c14bf67b0b8a4c7af7738c12d25fd092b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
