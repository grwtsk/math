# Verification target: GRWTSK.Algebra.AlgebraNorm.Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93ff994a1cb4e44c774e1307bec09c3627c9bb82",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93ff994a1cb4e44c774e1307bec09c3627c9bb82`.

Source path: `GRWTSK/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.RingSeminorm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgebraNorm](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/algebranorm--3a72a42bb43cbfd12d7eec54.md) | 35 | `declaration-track:3a72a42bb43cbfd12d7eec544b733e071181bbc960df9005973bd5dd33ffd0a9` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/instance--50a43976c9bbf5466e51cd2a.md) | 40 | `declaration-track:50a43976c9bbf5466e51cd2ad4f7535838519ab33dd8a35b59b6ae5ed5b2b4da` |
| 3 | `class` | [AlgebraNormClass](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/algebranormclass--abfdea09229008fd6aeba06f.md) | 51 | `declaration-track:abfdea09229008fd6aeba06f5514d98f7a244d50b11e56ace43f5bb7c3d71857` |
| 4 | `def` | [toRingSeminorm'](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/toringseminorm--c80c4342aced9a22d87cb897.md) | 60 | `declaration-track:c80c4342aced9a22d87cb8971ae9c68d90ecafaf3e790ef64e09d03fc03497c7` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/instance--668891d268f06e214f7e681d.md) | 63 | `declaration-track:668891d268f06e214f7e681d6bdd3b0221defd7f5d94297b14b5158d54cd6538` |
| 6 | `instance` | [algebraNormClass](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/algebranormclass--b9204fadfba1d9a276183f53.md) | 73 | `declaration-track:b9204fadfba1d9a276183f53b81d5790ecbed2ff32cf378980b7fc580d7f385d` |
| 7 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/tofun-eq-coe--38b46b0b2cf1e78c1d1ee9ae.md) | 81 | `result-track:38b46b0b2cf1e78c1d1ee9aef648a55227e8ba566762d11b0308ffa3e2429270` |
| 8 | `theorem` | [ext](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/ext--d1eda2ca2994022ab4f1672f.md) | 84 | `result-track:d1eda2ca2994022ab4f1672f4f525821b24d80fc7ed458a5ea9bf0b90ce574fb` |
| 9 | `theorem` | [extends_norm'](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/extends-norm--13e0d0e02de82f39d3655d05.md) | 88 | `result-track:13e0d0e02de82f39d3655d0553a3b625b3244817ee4e4a6bc8a20d33222d4139` |
| 10 | `theorem` | [extends_norm](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/extends-norm--a69b2e4bb8c11a3ad54d69c9.md) | 92 | `result-track:a69b2e4bb8c11a3ad54d69c967b30d8364b178bd43d7bb8dbf14372024bbe7a9` |
| 11 | `def` | [restriction](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/restriction--15956d24cc9742bafe3a378d.md) | 96 | `declaration-track:15956d24cc9742bafe3a378df2f3ba4133cd43108f9f5750bfacb485cc4121e1` |
| 12 | `def` | [isScalarTower_restriction](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/isscalartower-restriction--a394b52da6d180839b80fc38.md) | 107 | `declaration-track:a394b52da6d180839b80fc38f55805335223fccaeff552a7c865579cd89504a4` |
| 13 | `structure` | [MulAlgebraNorm](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/mulalgebranorm--2ff2ad825df3d0160b71342e.md) | 126 | `declaration-track:2ff2ad825df3d0160b71342ee74ac2b62826793db70129dc789d5df91f2c75f1` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/instance--bcc5845b911779644fd3d9f1.md) | 131 | `declaration-track:bcc5845b911779644fd3d9f114c59f859c37dcea8a05999435ff2a086659fad3` |
| 15 | `class` | [MulAlgebraNormClass](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/mulalgebranormclass--5841525538c991b0cc5088ab.md) | 143 | `declaration-track:5841525538c991b0cc5088ab20c76b6e82b9c095b7c952945b62c4c7379a91ae` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/instance--e4be634b3d23d0dcdc1d79b3.md) | 152 | `declaration-track:e4be634b3d23d0dcdc1d79b3263c49714e3f1173a8c7d79a038d3f688fa215e9` |
| 17 | `instance` | [mulAlgebraNormClass](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/mulalgebranormclass--abe33699e8c0621727711a0e.md) | 158 | `declaration-track:abe33699e8c0621727711a0eb761d42be78de682c50cd6da58ddee96a08d2bad` |
| 18 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/tofun-eq-coe--59d3d9f95fec0deff0b7da89.md) | 167 | `result-track:59d3d9f95fec0deff0b7da89913f6ec450639586c8ae0d30de8b4cd00aed93a7` |
| 19 | `theorem` | [ext](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/ext--4cd3a4f9c79532ae6825bda7.md) | 170 | `result-track:4cd3a4f9c79532ae6825bda75cb42e1b5091e768ce4365435495fad19eb5351b` |
| 20 | `theorem` | [extends_norm'](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/extends-norm--2227a18c980b5ccc1e771452.md) | 174 | `result-track:2227a18c980b5ccc1e7714526df0f8b74cb80dbb50b6d2ed3ba19872cf25dbf2` |
| 21 | `theorem` | [extends_norm](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/extends-norm--20573e39dcb334aa06686319.md) | 178 | `result-track:20573e39dcb334aa06686319e11473b18fd68748400911b3cc8843b8b5cf28f3` |
| 22 | `def` | [toRingNorm](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/toringnorm--cfa519bbf706446e608ed3bf.md) | 188 | `declaration-track:cfa519bbf706446e608ed3bf15438c0ed114168180ba45c74bf46ab075531748` |
| 23 | `theorem` | [isPowMul](../../../../mathematics/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/declarations/ispowmul--eefd0febd4f7d92eb84e7c6a.md) | 197 | `result-track:eefd0febd4f7d92eb84e7c6a71e6ae3345466e1e1cc076eb16e7ec432656883b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
