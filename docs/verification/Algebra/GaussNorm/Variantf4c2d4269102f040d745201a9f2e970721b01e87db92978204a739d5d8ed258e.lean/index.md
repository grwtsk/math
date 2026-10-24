# Verification target: GRWTSK.Algebra.GaussNorm.Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fca2a40f2f6ffb41ab5a5e69bc3f4ff30df0a6aa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fca2a40f2f6ffb41ab5a5e69bc3f4ff30df0a6aa`.

Source path: `GRWTSK/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [gaussNorm](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/declarations/gaussnorm--5f7e600e6ddc71ed0a5e010f.md) | 53 | `declaration-track:5f7e600e6ddc71ed0a5e010f865b00917a79fa499fc6f5360fa073d9d989ee70` |
| 2 | `lemma` | [gaussNorm_eq](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/declarations/gaussnorm-eq--662adda486dbdd3ea8e330f3.md) | 55 | `result-track:662adda486dbdd3ea8e330f38d7e8803387fd42defe2c93d349034e8945e563b` |
| 3 | `abbrev` | [HasGaussNorm](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/declarations/hasgaussnorm--525e69b6e284ba4dee5d4a7f.md) | 63 | `declaration-track:525e69b6e284ba4dee5d4a7f638f21242608cf21157889a82f9b0ab70272eb45` |
| 4 | `lemma` | [HasGaussNorm.hasMvGaussNorm](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/declarations/hasgaussnorm-hasmvgaussnorm--1f6816420b680063da0c9b87.md) | 65 | `result-track:1f6816420b680063da0c9b878c5c9aa34e00b0873104a6308d8f03110688400a` |
| 5 | `theorem` | [gaussNorm_zero](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/declarations/gaussnorm-zero--cd799da8d432ad8d1e8b2dc7.md) | 86 | `result-track:cd799da8d432ad8d1e8b2dc7c7598da49f78b0e74ad8a5216e475a0c99d51ff2` |
| 6 | `lemma` | [le_gaussNorm](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/declarations/le-gaussnorm--3becc562dd3e5a51af5ead29.md) | 89 | `result-track:3becc562dd3e5a51af5ead29ff652d7d8f2b54c23a12d08f619bbfbe5cbbd5ac` |
| 7 | `lemma` | [gaussNorm_nonneg](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/declarations/gaussnorm-nonneg--04bcd70ecbb615cfe0f59808.md) | 94 | `result-track:04bcd70ecbb615cfe0f59808a36b660305086bb4baabd08a1b940614132c2b46` |
| 8 | `lemma` | [gaussNorm_eq_zero_iff](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/declarations/gaussnorm-eq-zero-iff--a6be672e3d475197000188cd.md) | 97 | `result-track:a6be672e3d475197000188cdb1338f2a1ef54ff0ee5e0dbc931daa5a0566e7dd` |
| 9 | `lemma` | [gaussNorm_add_le_max](../../../../mathematics/Algebra/GaussNorm/Variantf4c2d4269102f040d745201a9f2e970721b01e87db92978204a739d5d8ed258e.lean/declarations/gaussnorm-add-le-max--b36f32a1a1d1c8abfffb4f31.md) | 103 | `result-track:b36f32a1a1d1c8abfffb4f318f498a10acf96cd34dc4aa67db0b31326514ec80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
