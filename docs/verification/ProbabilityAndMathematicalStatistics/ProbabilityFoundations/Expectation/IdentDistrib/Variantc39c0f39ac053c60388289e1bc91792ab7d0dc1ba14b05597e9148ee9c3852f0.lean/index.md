# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.IdentDistrib.Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f41181451b5ee29856accadce842ab60e1cf0f37",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f41181451b5ee29856accadce842ab60e1cf0f37`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.Variance` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IdentDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/identdistrib--cc4f696848511280696ceb7f.md) | 74 | `declaration-track:cc4f696848511280696ceb7f8b623e76e72cc9c1bf3cb1c19aa064fe0bfd37b4` |
| 2 | `theorem` | [refl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/refl--45c05ff0294f73ffd253eea4.md) | 87 | `result-track:45c05ff0294f73ffd253eea465e98f1174e9b44d6086aadf2b483d5331f1b612` |
| 3 | `theorem` | [symm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/symm--1120a3f25d2be2dec1652a4e.md) | 92 | `result-track:1120a3f25d2be2dec1652a4e12c1df17132a7fcaac1910b61c877921e74b65da` |
| 4 | `theorem` | [trans](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/trans--cf9b1c09d60270642e9ce8d1.md) | 97 | `result-track:cf9b1c09d60270642e9ce8d1d393b19f2d92b5775d69e3aa9df74d231ed5d943` |
| 5 | `theorem` | [comp_of_aemeasurable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/comp-of-aemeasurable--d46fdd11e79889223a004ad4.md) | 103 | `result-track:d46fdd11e79889223a004ad4392497263a13e1142060ffd2c8c1a915432288a1` |
| 6 | `theorem` | [comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/comp--cd6c99fd23d4b69d92a9e55f.md) | 112 | `result-track:cd6c99fd23d4b69d92a9e55f624e173fc8e3a9655f845299f0d5e0e163dbd0fa` |
| 7 | `theorem` | [of_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/of-ae-eq--7691c664ccd3b91d32f0a46a.md) | 116 | `result-track:7691c664ccd3b91d32f0a46a02e95b146d3ddf8f953a91dffa32d95f2cc1aa2c` |
| 8 | `lemma` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.IdentDistrib.Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.MeasureTheory.AEMeasurable.identDistrib_mk](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--19032d76c4e959a947bf5162.md) | 122 | `result-track:19032d76c4e959a947bf51625d4e1843f4db1ab7a12406338fc17c250e3c6345` |
| 9 | `lemma` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.IdentDistrib.Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.MeasureTheory.AEStronglyMeasurable.identDistrib_mk](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--1ec186f8e2ca7b3a1d729a3c.md) | 126 | `result-track:1ec186f8e2ca7b3a1d729a3c52019f700fa6afc108623ef0e3105145649fb603` |
| 10 | `theorem` | [measure_mem_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/measure-mem-eq--a6576b76ae1fdcbb154b73be.md) | 131 | `result-track:a6576b76ae1fdcbb154b73be8d8bc54fbec4ff32bcdc208f35a2c129d801a162` |
| 11 | `theorem` | [ae_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/ae-snd--d418e84f1778a042cd0deeeb.md) | 138 | `result-track:d418e84f1778a042cd0deeebce21fb56f724ff42e8ece242f016266eff3aa35c` |
| 12 | `theorem` | [ae_mem_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/ae-mem-snd--a7d497f5ba5ef606b31d7257.md) | 144 | `result-track:a7d497f5ba5ef606b31d725706dc4199bacc196eec07987af8bd65a2b6e3f146` |
| 13 | `theorem` | [aestronglyMeasurable_fst](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/aestronglymeasurable-fst--7c4fab8aabde25269af07b88.md) | 151 | `result-track:7c4fab8aabde25269af07b8804fed1f32176160fd055b3d6784af78f0c51018d` |
| 14 | `theorem` | [aestronglyMeasurable_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/aestronglymeasurable-snd--969df82da6d039d26e8073a2.md) | 157 | `result-track:969df82da6d039d26e8073a2a8fc5a83423a3785295687cac6917a1406d179d2` |
| 15 | `theorem` | [aestronglyMeasurable_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/aestronglymeasurable-iff--0114eed1e2b1bf4b89e3ace8.md) | 165 | `result-track:0114eed1e2b1bf4b89e3ace83fd417767b2d8ed0bb4c88dde8bbd1c28b683cb4` |
| 16 | `theorem` | [essSup_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/esssup-eq--87295c06b9193491caa3d9fc.md) | 169 | `result-track:87295c06b9193491caa3d9fc49983faaf3bc2ba93c943ebb270fe2dae795a099` |
| 17 | `theorem` | [lintegral_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/lintegral-eq--ee2bf5720952670f98a97e6f.md) | 175 | `result-track:ee2bf5720952670f98a97e6f658bcd3912c6843dd98930712125b8ff9aad43c5` |
| 18 | `theorem` | [integral_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/integral-eq--7c9ed4a317fae7ea1b31edcc.md) | 181 | `result-track:7c9ed4a317fae7ea1b31edccbff74fec180534dbac29886aa6e31a2f90ee4d2c` |
| 19 | `theorem` | [eLpNorm_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/elpnorm-eq--f9d461864dc53c36ffe310c9.md) | 199 | `result-track:f9d461864dc53c36ffe310c9894a9a9f0609f540b4c9be81ce095557f8b20f02` |
| 20 | `theorem` | [memLp_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/memlp-snd--e29c9d7a5db6369609c2765a.md) | 214 | `result-track:e29c9d7a5db6369609c2765ae7508cd570eacc5686332c55e968fe6a02ad4af9` |
| 21 | `theorem` | [memLp_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/memlp-iff--485f67d09d87622fc5f49f34.md) | 223 | `result-track:485f67d09d87622fc5f49f34e4ec04ace9fd472ecb2d60993b38daad1e77d018` |
| 22 | `theorem` | [integrable_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/integrable-snd--bbd5856aba4fcd5033c51272.md) | 230 | `result-track:bbd5856aba4fcd5033c51272486f4b5a20603df9b50921bc8e91207fd1cac63f` |
| 23 | `theorem` | [integrable_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/integrable-iff--ed414f32e7f9e18fb43a1110.md) | 235 | `result-track:ed414f32e7f9e18fb43a1110232b4639ceb90906664754b28b63939bb6430bf6` |
| 24 | `theorem` | [norm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/norm--2fe0da75c3b93b3dab8ceadc.md) | 239 | `result-track:2fe0da75c3b93b3dab8ceadcf56bc5406fe4b639cc59c4e6b5128b4327298759` |
| 25 | `theorem` | [nnnorm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/nnnorm--c869276f71b6c63ef405751c.md) | 243 | `result-track:c869276f71b6c63ef405751c14077e1496a49590b4e865234ef27214389d8b30` |
| 26 | `theorem` | [pow](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/pow--5c4c9575b7762a34de46b921.md) | 248 | `result-track:5c4c9575b7762a34de46b92111da066028fe939cd6c065f87662920e7ba2b2d0` |
| 27 | `theorem` | [sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/sq--3cafad4affe12925272be851.md) | 252 | `result-track:3cafad4affe12925272be85197c2d74c12e8225c57f7c0602de2f8c819bda895` |
| 28 | `theorem` | [coe_nnreal_ennreal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/coe-nnreal-ennreal--e36aac6a8e8e220987c76519.md) | 256 | `result-track:e36aac6a8e8e220987c765195f13a5696daaa9400c9ea0cfb66cae4a59939b31` |
| 29 | `theorem` | [mul_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/mul-const--68ac8b1b08d1cc6d4a31d9ed.md) | 261 | `result-track:68ac8b1b08d1cc6d4a31d9ed3e7813a0e35c30ade424cbea92462c8c79794f76` |
| 30 | `theorem` | [const_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/const-mul--83a12c7081777f520f491997.md) | 266 | `result-track:83a12c7081777f520f491997b6e49820ba4dad1833cc0540eb46516caa583e60` |
| 31 | `theorem` | [div_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/div-const--e6b2776edf96de2536451026.md) | 271 | `result-track:e6b2776edf96de253645102666d645c0e79fef0dc57a8477c39d956830988d02` |
| 32 | `theorem` | [const_div](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/const-div--5be22e2bb7a2e81cb2e22b04.md) | 276 | `result-track:5be22e2bb7a2e81cb2e22b046ccf226884749d7d9b9f4046622910c01b7c4696` |
| 33 | `lemma` | [inv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/inv--ae5c850e0b404db4db580578.md) | 281 | `result-track:ae5c850e0b404db4db58057893a8626973b58f4feb759ea02a9a30229d1057ae` |
| 34 | `theorem` | [evariance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/evariance-eq--23478061330631aa1bae9e2f.md) | 284 | `result-track:23478061330631aa1bae9e2ff35d5cce248ee41dbdbf4a7342a10b788b528a48` |
| 35 | `theorem` | [variance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/variance-eq--67331757477929d7a00beff3.md) | 290 | `result-track:67331757477929d7a00beff3de522f6e094be80ab66dc02eb3f3c3231e8d469d` |
| 36 | `theorem` | [MemLp.uniformIntegrable_of_identDistrib_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/memlp-uniformintegrable-of-identdistrib-aux--85d70df68fb6793129e27432.md) | 304 | `result-track:85d70df68fb6793129e27432cec7c3c04155e754fbd3bd4cbda0612c731ed5c1` |
| 37 | `theorem` | [MemLp.uniformIntegrable_of_identDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/memlp-uniformintegrable-of-identdistrib--bde9545a76952704ddd4274a.md) | 332 | `result-track:bde9545a76952704ddd4274a08825419a2d148a7a6362dfcf3f9d6070caee992` |
| 38 | `lemma` | [indepFun_of_identDistrib_pair](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/declarations/indepfun-of-identdistrib-pair--333727c089c29798e039b2dd.md) | 353 | `result-track:333727c089c29798e039b2ddf3bb0091587b89dedabf41bd44efb3a0d0a59da5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
