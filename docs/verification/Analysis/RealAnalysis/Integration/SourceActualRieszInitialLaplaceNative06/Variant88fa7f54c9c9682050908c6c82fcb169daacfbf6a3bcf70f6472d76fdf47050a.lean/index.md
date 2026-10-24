# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative06.Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edbfba0eb766f1bafb48cc8a779f4ee7505c3861",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edbfba0eb766f1bafb48cc8a779f4ee7505c3861`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/realrampantiderivative--a09097fbb96634568810f1c2.md) | 29 | `declaration-track:a09097fbb96634568810f1c2ceeefb576ef977e4fb8d03cc93f5d09df04b370e` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/realrampantiderivative-hasderivat--30c0b31f53d7060bbd669b2c.md) | 32 | `result-track:30c0b31f53d7060bbd669b2ceed745007dcd10291b3a1b937b0e1571edbcbe1e` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/realrampantiderivative-tendsto--67b25b82902bb9544ed4b251.md) | 42 | `result-track:67b25b82902bb9544ed4b25139f53a71911fc05d8902c3ae199148673c5f1dfa` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/realramp-tail-integrable--5599fb48da37303e30608d7e.md) | 56 | `result-track:5599fb48da37303e30608d7eaba34617ab65dc19ea9113c45dfb3b9493d5012b` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/realramp-tail-integral--b488474a4da42d64308a084f.md) | 64 | `result-track:b488474a4da42d64308a084f646e0f6465c2f8ac0d04e4773186c1ede78ed845` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/zeroon-lower-integrable--37875db917c358841d27fb80.md) | 71 | `result-track:37875db917c358841d27fb800ad42a416add42984742be2df6b0f3d1ab0c5ec9` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/realramp-integrable--6a49bbf1da95df6e52cf8eff.md) | 77 | `result-track:6a49bbf1da95df6e52cf8eff7db1475ec851f551997ffff0fd2edc9910650e48` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/realramp-integral--f4d2b84d6156ce010fe82da4.md) | 87 | `result-track:f4d2b84d6156ce010fe82da412203d8cec7aa3cc9c0d6602c777bc302604972b` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/complexramp-norm--2190c7b9fec1cbeaecac2bf3.md) | 105 | `result-track:2190c7b9fec1cbeaecac2bf310c3a7bc3435678f7645070f6e8d83030919d9d9` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualsinglerieszramp-integrable--754f8a833e3337ce38788955.md) | 114 | `result-track:754f8a833e3337ce3878895597b64df22b92fb151e6fa0cb4e8553313e135f34` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualsinglerieszramp-integral-norm--eef710956e2df4c894870a04.md) | 124 | `result-track:eef710956e2df4c894870a0461e1be9c786079b4a897eac65d6bb6af8ae8f0b7` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/complexrampantiderivative--76fb51a7cd9447ef85a8414c.md) | 130 | `declaration-track:76fb51a7cd9447ef85a8414cc397de1338c3b7f3d59c3a5bcc8d607616494ecf` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/complexrampantiderivative-hasderivat--b8822e9912e8759d4ed17fa4.md) | 133 | `result-track:b8822e9912e8759d4ed17fa4213c72fefc66b60aeef14b55c02679f5025d4309` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/complex-exp-monomial-zero--780957b39cb1ca2a4cdfc86d.md) | 149 | `result-track:780957b39cb1ca2a4cdfc86d274e29fdc97740b1ee55350ee85c83967860423e` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/complexrampantiderivative-tendsto--8fb352fac2006990231e97c3.md) | 163 | `result-track:8fb352fac2006990231e97c3ad94463d85c8e10f918df0d49106bddeb3101d1b` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualsinglerieszramp-integral--4d5f7bf0123ded28071a4192.md) | 177 | `result-track:4d5f7bf0123ded28071a4192dbd8d606fe153ed622ee2181ee80c5b1f3b559e4` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszlaplaceatom--7ccc93fa7fce2a736fc5b237.md) | 210 | `declaration-track:7ccc93fa7fce2a736fc5b237a4f4331abb7476227f28569871fc29e25236a526` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualmangoldtrieszlaplace--719b988f40fe6a82d9939ea2.md) | 215 | `declaration-track:719b988f40fe6a82d9939ea2ac604406a9a86eb33462397d2791612055db197d` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/atom-factor--eb4ea0b9177471f9f6dd26c4.md) | 219 | `result-track:eb4ea0b9177471f9f6dd26c46c40ca9f7993820ad59fcf467a3e5784b45f2461` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszlaplaceatom-integrable--a550f5273ea9c74cfa09bb1a.md) | 228 | `result-track:a550f5273ea9c74cfa09bb1ad0e613c166971f8663c93915cdfb0ff0f3570d5e` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszlaplaceatom-integral-norm--fb3ca6a22b47f604b629dc9d.md) | 246 | `result-track:fb3ca6a22b47f604b629dc9d4c710d5a4378128cc74a95635d2d8ada86cd2116` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--aff41e8fd3717730ab8e5c75.md) | 281 | `result-track:aff41e8fd3717730ab8e5c75f3af5b177d88cced4e6c66eb08d78e3c94a2c232` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszlaplaceatoms-tsum--e0570cb839c6d6d4c7190ad1.md) | 292 | `result-track:e0570cb839c6d6d4c7190ad19dd9b0d7606121368486d246937afb74d641e9f1` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszprimitive-continuous--93a0b2be0d1d9d2ee676c9b1.md) | 317 | `result-track:93a0b2be0d1d9d2ee676c9b1cc1b740df0b854932d75cb0554f0cdfa49400527` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--1290e8e318e813cf8c05680e.md) | 336 | `result-track:1290e8e318e813cf8c05680e5f5cba172e4fcc4d4cc5b892206dd278dd9b5c5d` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszlaplaceatoms-integral-tsum--cc16db15aab3259ded53477b.md) | 366 | `result-track:cc16db15aab3259ded53477bcd343c3bbc6cbc85b0a1dfe7eb8f1475f97f138a` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszlaplaceatom-integral--5571b73d5d07ab765be9dd23.md) | 374 | `result-track:5571b73d5d07ab765be9dd23ea33c0880e128826b804edc5743dc6db1ebce047` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/continuousramp-weight-eq--cc7a0287a2ff6a31972f57fe.md) | 399 | `result-track:cc7a0287a2ff6a31972f57fe90eba68a943ef5e3a2a4d87aa621d89c077b1baa` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszcontinuousramp-laplace-integrable--5ae545b8be0c88656b979339.md) | 412 | `result-track:5ae545b8be0c88656b9793392f86dd30a9e156cdce262c12e9c685f76846a95d` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/declarations/actualrieszcontinuousramp-laplace-integral--ebc24d88535783f8442a8ed4.md) | 428 | `result-track:ebc24d88535783f8442a8ed425b91e689c7f48cf302b51718d92219fcc14dc12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
