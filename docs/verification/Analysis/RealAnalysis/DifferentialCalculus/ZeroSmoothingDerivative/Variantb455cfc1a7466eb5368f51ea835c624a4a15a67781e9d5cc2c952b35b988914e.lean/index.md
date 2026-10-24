# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZeroSmoothingDerivative.Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8922fade289a1869216e49813bce0bd876d8fde7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8922fade289a1869216e49813bce0bd876d8fde7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothing` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualTest_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/actualtest-hasderivat--78cf8450f5a52a8efcaa31ba.md) | 32 | `result-track:78cf8450f5a52a8efcaa31bac827149fb6d84690e13fd5072e39f343cfc6dd41` |
| 2 | `theorem` | [actualTest_deriv_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/actualtest-deriv-eq-indicator--b4f6abfacb723ade9e77d2db.md) | 40 | `result-track:b4f6abfacb723ade9e77d2db376f0e58a6791a585b3d44df39acefb5a8d30714` |
| 3 | `theorem` | [actualTest_deriv_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/actualtest-deriv-continuous--83563b2ed535a7edf5f2a5fc.md) | 45 | `result-track:83563b2ed535a7edf5f2a5fce888b87b78da650d4b640d8a771d6774608f530e` |
| 4 | `theorem` | [actualTest_deriv_zero_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/actualtest-deriv-zero-of-notmem--946a098db03a970d0adc1e32.md) | 50 | `result-track:946a098db03a970d0adc1e323b7f378fec8d5a821d57fd2a86414610a36d53e8` |
| 5 | `theorem` | [actualTest_deriv_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/actualtest-deriv-support-subset--94e4f948ea8867ad575a730e.md) | 56 | `result-track:94e4f948ea8867ad575a730e20f73394700dd43bdbbbbd2d7467427c5c41b261` |
| 6 | `theorem` | [actualTest_deriv_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/actualtest-deriv-tsupport-subset--ebe6470204b23750b4619ba0.md) | 63 | `result-track:ebe6470204b23750b4619ba0ec383f90f2bb8b20344e94b76f3f3cb7b7e46b68` |
| 7 | `theorem` | [actualTest_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/actualtest-deriv-hascompactsupport--7f36eb3764bfac2fb1e69684.md) | 68 | `result-track:7f36eb3764bfac2fb1e6968426e6e1fdd5f24daeb2375cdafa76aa9239bd4197` |
| 8 | `theorem` | [actualTest_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/actualtest-deriv-integrable--b7a65783ffaf630c8436d818.md) | 73 | `result-track:b7a65783ffaf630c8436d8180a9935d744f8c951c0b43542bf8384a17b860f86` |
| 9 | `theorem` | [smoothing_derivative_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/smoothing-derivative-integrand-integrable--2c452f612efd6c7267a0cb19.md) | 79 | `result-track:2c452f612efd6c7267a0cb192af2664411b6222a7b46d66a69b2d1692dfb3a1f` |
| 10 | `theorem` | [smoothedTest_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/smoothedtest-hasderivat--f437078480f2fc028d550992.md) | 87 | `result-track:f437078480f2fc028d5509924e8ba6f5307b727dbbc0493bb1a3920df0c96790` |
| 11 | `theorem` | [smoothedTest_deriv_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/smoothedtest-deriv-eq-convolution--bd57575aea12d981108075d9.md) | 95 | `result-track:bd57575aea12d981108075d97031b262d8155d40b2cd19b35b33b37e97c26570` |
| 12 | `theorem` | [smoothedTest_deriv_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/smoothedtest-deriv-continuous--789b0062f17d31fcc5e07ab9.md) | 101 | `result-track:789b0062f17d31fcc5e07ab95fbd5fdbe01aa922bcb6530f4602658539e54bdb` |
| 13 | `theorem` | [smoothedTest_deriv_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/smoothedtest-deriv-tsupport-subset--122b42c4c6892a6649a3a57d.md) | 106 | `result-track:122b42c4c6892a6649a3a57d59cc242a60dd7cba69e78a7332cb790e3e22e4af` |
| 14 | `theorem` | [smoothedTest_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/smoothedtest-deriv-hascompactsupport--8a21588ef7f24dec0bf1dbdd.md) | 111 | `result-track:8a21588ef7f24dec0bf1dbdda3d93ee2522112c9a87b921f212dcc0bada62674` |
| 15 | `theorem` | [smoothedTest_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/smoothedtest-deriv-integrable--47abd534e5816127b8ff0b04.md) | 116 | `result-track:47abd534e5816127b8ff0b041a97c35c56dcdeff24ed686f61cf922cfb59a52b` |
| 16 | `theorem` | [smoothedTest_deriv_tsupport_subset_common](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/smoothedtest-deriv-tsupport-subset-common--605ce7937b0a82788b7427fa.md) | 122 | `result-track:605ce7937b0a82788b7427faff0f7815ecec038af744f0d782b6c3eb5ee24283` |
| 17 | `theorem` | [smoothedTest_deriv_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variantb455cfc1a7466eb5368f51ea835c624a4a15a67781e9d5cc2c952b35b988914e.lean/declarations/smoothedtest-deriv-tendsto--a10cf0e27f59944dbc3c36cc.md) | 129 | `result-track:a10cf0e27f59944dbc3c36cca5c83e8eabd704f1e096b22a5a02b1ec3b198e62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
