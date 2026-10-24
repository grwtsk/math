# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt01.Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2241786c6924952735807df3ac48dae81e5521a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2241786c6924952735807df3ac48dae81e5521a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpointfirstpolynomial--d012b137046ae7fd96e554ae.md) | 26 | `declaration-track:d012b137046ae7fd96e554aedc6cf11a7391ea9b3d445cf1d7af60a4ddff999f` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpointsecondpolynomial--8a646a42ae353129335ad5cb.md) | 55 | `declaration-track:8a646a42ae353129335ad5cb6da5d6b6492b9088806d81dac2036873c95022c6` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpointfullslope--e5f0d9a5087c8f6553b4e58b.md) | 84 | `declaration-track:e5f0d9a5087c8f6553b4e58b793c57b7e816eced3e945dc947d701f2bbe1dc00` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpointfullcurvature--b543caf764d015e34496820a.md) | 87 | `declaration-track:b543caf764d015e34496820abae6798fb20b911e26507148db4752d81e983ecf` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpointfullpolynomial-contdiff--0c3579e45af542b9fcc37444.md) | 90 | `result-track:0c3579e45af542b9fcc37444d20cedb5251518e2f16b735bfbe3ba6e88e57c56` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpointfirstpolynomial-contdiff--73f2938bc93260321d0ec4b9.md) | 94 | `result-track:73f2938bc93260321d0ec4b9689fc20ac6ea30acf255c296292f871cb87bc243` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpoint-full-deriv--0e13896912feb9b19744ea73.md) | 98 | `result-track:0e13896912feb9b19744ea73efeb68c7144bfd23109fceb5c4a6f23aa4a82378` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpoint-first-deriv--22b62acb86ce02e5fae1494c.md) | 103 | `result-track:22b62acb86ce02e5fae1494c37891143e3771e51bcf40356c08aef45e741ad66` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpoint-full-hasderivat--e3772a75065b00c9a3ee86aa.md) | 108 | `result-track:e3772a75065b00c9a3ee86aa0fe9b798a783a54d353ab83eb45e6258c32754ee` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpoint-first-hasderivat--330bd034f5cbd04e4801b16e.md) | 113 | `result-track:330bd034f5cbd04e4801b16ebed90fad5a6d7ed2927fb75ae5339f1efd00c454` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpoint-slope-zero--64f7ed4423916bb6e6e84be0.md) | 118 | `result-track:64f7ed4423916bb6e6e84be0cc7dfcd397e19cecc89bc0e4d8b8177709d84725` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpoint-curvature-zero--41ce85156ec77f6c0493b2e7.md) | 122 | `result-track:41ce85156ec77f6c0493b2e7ead55054b7730d1e171664d8866bc7864ca9e48c` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpoint-slope-continuous--4b77d64810349d140b5dbd07.md) | 128 | `result-track:4b77d64810349d140b5dbd0705dc161e684467a7d2f95fe229fe8b67fcc8f0a8` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt01/Variant219cd641ce2de9b673528d4f67f0582d2f0a597ad4414c83f54036c4bef98b06.lean/declarations/endpoint-curvature-continuous--fd2fed17313991eecc1eee0b.md) | 132 | `result-track:fd2fed17313991eecc1eee0b06dccd31b993639d4f26cd64a263d1d6c128f502` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
