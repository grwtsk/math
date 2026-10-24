# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db1d98cbcf3acac8d487fba3fc653f7963b82d0f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db1d98cbcf3acac8d487fba3fc653f7963b82d0f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bracket'](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/bracket--b6a55155c95ec3838d207480.md) | 50 | `declaration-track:b6a55155c95ec3838d207480a17b099fe7b358c671492d9fbadde49336e5fe0d` |
| 2 | `theorem` | [bracket'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/bracket-tmul--4e28eb86cedec64c4d7d50d2.md) | 57 | `result-track:4e28eb86cedec64c4d7d50d21054761d5106cd75b7241401e81adb905c037914` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/instance--930e137d090f34d873ed9484.md) | 60 | `declaration-track:930e137d090f34d873ed948471c58460ec18b545ab38ff503de456778b6a0466` |
| 4 | `theorem` | [bracket_def](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/bracket-def--9696732e8b6b5b46d8fbc99e.md) | 62 | `result-track:9696732e8b6b5b46d8fbc99e2a00741afbd1864ce9aa7e0401167dd1ba654f12` |
| 5 | `theorem` | [bracket_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/bracket-tmul--ff20d0793284a7890b9bddf0.md) | 66 | `result-track:ff20d0793284a7890b9bddf0ab696b64718c4ae508eee847b86972c0d14b5d9a` |
| 6 | `theorem` | [bracket_lie_self](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/bracket-lie-self--1f94f87eca11a764330e4f17.md) | 68 | `result-track:1f94f87eca11a764330e4f1799e8156ffee31516ea8cae2ba0e6cb0c4d99ad4a` |
| 7 | `theorem` | [bracket_leibniz_lie](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/bracket-leibniz-lie--0f621f3a00b646b9df0141ca.md) | 90 | `result-track:0f621f3a00b646b9df0141ca09fc7ab6c79cd94f8ac36b8a01a2d145ffaf550c` |
| 8 | `instance` | [instLieRing](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/instliering--3f516434ff3aafb749bed653.md) | 112 | `declaration-track:3f516434ff3aafb749bed653440b7b09433a4538749773ad6096e8c7710c3d83` |
| 9 | `instance` | [instLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/instliealgebra--94cc6bd7f4a471cf2a0047e7.md) | 118 | `declaration-track:94cc6bd7f4a471cf2a0047e75ff271341cc5ee702f3f7ddd0caccba20fc571ab` |
| 10 | `instance` | [instLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/instlieringmodule--c1a49a09e5460459eee488bc.md) | 120 | `declaration-track:c1a49a09e5460459eee488bce40ca2fcc43943a7b5bce1532555da3f6835dbee` |
| 11 | `instance` | [instLieModule](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/instliemodule--3f664b1d71f932d144cf3bef.md) | 125 | `declaration-track:3f664b1d71f932d144cf3bef2a3167c5a83f8154553c17e6a77de32ce3f8d752` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/instance--3d53ff60e5995dbcf91f1ed9.md) | 137 | `declaration-track:3d53ff60e5995dbcf91f1ed9148a0ec8133b6e7ef124ec6bda8d883281067df1` |
| 13 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/liealgebra--2b822bbb591792501fb14ea4.md) | 142 | `declaration-track:2b822bbb591792501fb14ea4d90c1adda145b3a1939fadaae8a6b9f934243e82` |
| 14 | `lemma` | [LieModule.toEnd_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/liemodule-toend-basechange--461243f53d37743cb85d1978.md) | 157 | `result-track:461243f53d37743cb85d1978caf9e5b73d9117b8decc2909e44583b3709bb8cd` |
| 15 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/basechange--e645449f88897076174dea4c.md) | 172 | `declaration-track:e645449f88897076174dea4c554b1168275d967dece7343b7e669277d98e0db6` |
| 16 | `lemma` | [coe_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/coe-basechange--aeb101771d0067b1e0a5c4a9.md) | 191 | `result-track:aeb101771d0067b1e0a5c4a9f031a22bcc4bbbd71ae500df2603531389dcbbea` |
| 17 | `lemma` | [tmul_mem_baseChange_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/tmul-mem-basechange-of-mem--773288168b97d648ca5293e0.md) | 198 | `result-track:773288168b97d648ca5293e06846fc8ef72c84ad71fc60cb9e567fb91f1653bb` |
| 18 | `lemma` | [mem_baseChange_iff](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/mem-basechange-iff--c09d73a6d254b60fa7ab1cf7.md) | 202 | `result-track:c09d73a6d254b60fa7ab1cf7a54827a3e325a5b86ca9bb9709d3a03a85deb00d` |
| 19 | `lemma` | [baseChange_bot](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/basechange-bot--1b027cf94d30d5367ece6f8f.md) | 208 | `result-track:1b027cf94d30d5367ece6f8f2b22d8aa7291c606744c33cc2f29a5bd96379fee` |
| 20 | `lemma` | [baseChange_top](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/basechange-top--c457b1b6f4da87e84296886e.md) | 214 | `result-track:c457b1b6f4da87e84296886ea42b306b5384bffef5ebf76f800de69af377c1c8` |
| 21 | `lemma` | [lie_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant0e78bf8e54a931811ae56ddc279e79bfb9136c5ac8498396b08cec38213b7001.lean/declarations/lie-basechange--89e3a8076acc3cefb145a76f.md) | 219 | `result-track:89e3a8076acc3cefb145a76f1da4c9b8f16e4858f33e5f5e3f08c3500586b6dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
