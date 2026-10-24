# Verification target: GRWTSK.Algebra.Pointwise.Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3dec32742e9e032517245b53f2f6cf32481b0ef",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3dec32742e9e032517245b53f2f6cf32481b0ef`.

Source path: `GRWTSK/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Submonoid.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseMulAction](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/pointwisemulaction--5e602815461017ec7efc10ba.md) | 36 | `declaration-track:5e602815461017ec7efc10ba020e80e3846fb7c941602f96ece7aa5d03487865` |
| 2 | `theorem` | [pointwise_smul_def](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/pointwise-smul-def--11e3759a15792b9171f571e7.md) | 46 | `result-track:11e3759a15792b9171f571e7ea1948075fa1520bcb21fc869ad00826116dd831` |
| 3 | `theorem` | [coe_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/coe-pointwise-smul--59497742e6d3b846d04138d7.md) | 51 | `result-track:59497742e6d3b846d04138d7d4a1127c2d88c23742634dd75cd38b18826ce882` |
| 4 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/pointwise-smul-toaddsubmonoid--3e9ec014191c0bf8a29b9dc1.md) | 55 | `result-track:3e9ec014191c0bf8a29b9dc19910cfaea7db7e960ebddb70d08bc74a3bfd79dd` |
| 5 | `theorem` | [smul_mem_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/smul-mem-pointwise-smul--50c7c87d69a58092bbac0dde.md) | 59 | `result-track:50c7c87d69a58092bbac0ddeddcc699bcf73689bea6b83d4de68e7c18581cfb6` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/instance--c28ca0d1103d718fc65e77e4.md) | 62 | `declaration-track:c28ca0d1103d718fc65e77e4ab514810e33f3a94fc61a4b1bcb525932e07b193` |
| 7 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/mem-smul-pointwise-iff-exists--74f9d79683a0c00d924f2d4c.md) | 65 | `result-track:74f9d79683a0c00d924f2d4ceacec2972095acfbfe02220fe573c22eddfcee3d` |
| 8 | `theorem` | [smul_bot](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/smul-bot--fe8719c91bf209c57242cb02.md) | 70 | `result-track:fe8719c91bf209c57242cb0225333083a58345cbe5cb2f5bc6866d00cf25731f` |
| 9 | `theorem` | [smul_sup](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/smul-sup--1e3c97a9f5fc11b2c92f9f90.md) | 73 | `result-track:1e3c97a9f5fc11b2c92f9f90081dc2b4768f4c56be3b4fe8a5668cf4ab902dc1` |
| 10 | `theorem` | [smul_closure](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/smul-closure--354ece79473fef7d5633c2e9.md) | 76 | `result-track:354ece79473fef7d5633c2e969605a09563287d1f3a45233b597ab37ec365f8c` |
| 11 | `instance` | [pointwise_central_scalar](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/pointwise-central-scalar--9e0508c33ab056f8ff58c428.md) | 79 | `declaration-track:9e0508c33ab056f8ff58c42827637c6d4b6fd6c7daff467d701852b70e5d000f` |
| 12 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/smul-mem-pointwise-smul-iff--078316a9e82c4bbc1ab5b3aa.md) | 92 | `result-track:078316a9e82c4bbc1ab5b3aa9dd3ba7b08bf5f097c642c2c6fc95dad8feb0fa7` |
| 13 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--77965a20fe865f3c5e959fa3.md) | 95 | `result-track:77965a20fe865f3c5e959fa3564c440ae4f10fff59cadd1c385bc00d72ac144a` |
| 14 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/mem-inv-pointwise-smul-iff--d1170a2bace3dea734fa4c2e.md) | 99 | `result-track:d1170a2bace3dea734fa4c2e09f96addd77bdc8f198979f36cf99e2ba08777a8` |
| 15 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/pointwise-smul-le-pointwise-smul-iff--e74f86301d9bc257247e9db2.md) | 103 | `result-track:e74f86301d9bc257247e9db230d853e3de6c4903ef493317d1164dd2e97aa0d9` |
| 16 | `theorem` | [pointwise_smul_subset_iff](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/pointwise-smul-subset-iff--5d2340a14cee2bbd738894b6.md) | 107 | `result-track:5d2340a14cee2bbd738894b67816e9f59be60e0dd94679eef808922ea1dbe4a1` |
| 17 | `theorem` | [subset_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/subset-pointwise-smul-iff--61922b28a05d31bb5b92b3c2.md) | 110 | `result-track:61922b28a05d31bb5b92b3c2e1220ddf30189c6e7b3c11312a343abdfb58ddf5` |
| 18 | `theorem` | [smul_mem_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/smul-mem-pointwise-smul-iff--df08254fa3229990c73f3273.md) | 125 | `result-track:df08254fa3229990c73f32735e05da322a4f003968d052be71bd8b4cdbdfd8ba` |
| 19 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--64520737bff21e7db739042b.md) | 129 | `result-track:64520737bff21e7db739042bd4c24d9c2f70e2d01f3a4a29c77ec2ab955239c4` |
| 20 | `theorem` | [mem_inv_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/mem-inv-pointwise-smul-iff--a8738fa894d1a93e9375a007.md) | 133 | `result-track:a8738fa894d1a93e9375a0077182c28a36e74e477afd4f0dd090ffe1026e8aa5` |
| 21 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/pointwise-smul-le-pointwise-smul-iff--0bcb3e31f766ea1e6c5ff05e.md) | 138 | `result-track:0bcb3e31f766ea1e6c5ff05e525d2186ed92f1d3f93c6a3800b30ae28a4248e5` |
| 22 | `theorem` | [pointwise_smul_le_iff₀](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/pointwise-smul-le-iff--1fc00d940f0035894991c38d.md) | 142 | `result-track:1fc00d940f0035894991c38d7fc8cfb1264856b975a92231d446ae5c969fe3d7` |
| 23 | `theorem` | [le_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/declarations/le-pointwise-smul-iff--4dbbd8df55ad7e55c4249c92.md) | 146 | `result-track:4dbbd8df55ad7e55c4249c92768029d87dfeac94197072a2b5333732d5660541` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
