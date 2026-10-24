# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DeriveFintype.Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc95d440116676acf6442f993ed22218585ce7f3",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc95d440116676acf6442f993ed22218585ce7f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveFintype` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [A](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/a--e6d34d49cae4c5841d2ecaa4.md) | 12 | `declaration-track:e6d34d49cae4c5841d2ecaa44c4144db3125bc3990bcd55a99ca2c2ef61cc429` |
| 2 | `inductive` | [A'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/a--34dbbf94f7caa2ff8f5e98f1.md) | 17 | `declaration-track:34dbbf94f7caa2ff8f5e98f1a2312cdf50cc7b052b1415f5421d84a7a88c69d9` |
| 3 | `inductive` | [A''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/a--4305334ab0f5e2e17b3f369f.md) | 22 | `declaration-track:4305334ab0f5e2e17b3f369f2ef1417881ee6c09e7f5b617def83c7c2ee8413e` |
| 4 | `inductive` | [B](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/b--f68caddde45c347f27b2b68b.md) | 32 | `declaration-track:f68caddde45c347f27b2b68b0dfbda230e2919e38d1798b847c76be51eade7ea` |
| 5 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--17089f4a090f35ebdc870775.md) | 35 | `declaration-track:17089f4a090f35ebdc8707752dbd4f5be731e3a5c206d9c9226ebec379185f35` |
| 6 | `inductive` | [C](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/c--12fb82e170366e2eb276280b.md) | 37 | `declaration-track:12fb82e170366e2eb276280b07b3d42a17ea336eee4dae5cf202845478c7f79a` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--649853002842ef438b01ffb6.md) | 42 | `declaration-track:649853002842ef438b01ffb68f1f5fcc669ff70a1c52c9eb18865335d0f5f1ef` |
| 8 | `inductive` | [C'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/c--9e5d87154b52917f81b405d9.md) | 44 | `declaration-track:9e5d87154b52917f81b405d904c3fd740906e6aa4d131f3656c156f5b65eac39` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--6212c765d6eff4357607fddd.md) | 49 | `declaration-track:6212c765d6eff4357607fddd09c621066166537b91fa803fbc46e26ff8a8de50` |
| 10 | `inductive` | [C''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/c--144fa80cbac8b7b072789c5f.md) | 51 | `declaration-track:144fa80cbac8b7b072789c5f61e379e7df00d51c0bfaeef24dd823ffdf5f6be4` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--8a9a4d24cdaaaff282b540fe.md) | 54 | `declaration-track:8a9a4d24cdaaaff282b540fe0cd5a035ea9ea1124d89853ad470d8f7bcee6aff` |
| 12 | `inductive` | [D](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/d--5570cff8312afd80aa13ca7d.md) | 61 | `declaration-track:5570cff8312afd80aa13ca7d1afe09241ea347b4a0ec3a8a3465446d89306145` |
| 13 | `inductive` | [baz](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/baz--f1cf63ef6966618299c17edf.md) | 69 | `declaration-track:f1cf63ef6966618299c17edff1da07eae562b69c0dfebbd9eb639fc0878558c0` |
| 14 | `inductive` | [bar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/bar--62a549350026863fea1f5380.md) | 72 | `declaration-track:62a549350026863fea1f53805f4910004e69eec3e74b10016615b7c638f1116c` |
| 15 | `inductive` | [Y](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/y--af01a5d4787657555c36d14a.md) | 79 | `declaration-track:af01a5d4787657555c36d14a6f1278db42c8278df33c198b71c12b48354bfeea` |
| 16 | `structure` | [S](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/s--821e1070f9b6630aeced9670.md) | 83 | `declaration-track:821e1070f9b6630aeced967049d95d5a16c9f324c8a0782fa1db451c77d035ed` |
| 17 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--81de0d57e3aa3004f3bbea24.md) | 87 | `declaration-track:81de0d57e3aa3004f3bbea240e3392bd5989ff362468d19c02b5b996f9406815` |
| 18 | `inductive` | [MyOption](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/myoption--5e40fb27acc14c9b0aa9ccbd.md) | 89 | `declaration-track:5e40fb27acc14c9b0aa9ccbdfe0097df7708a2f522cfdd316a5f91c206b91a59` |
| 19 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--a44e5b6a44d3db519ce4923a.md) | 94 | `declaration-track:a44e5b6a44d3db519ce4923a5198a15aab1b91b5a18138db48026d5728c1cf67` |
| 20 | `inductive` | [I](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/i--ee5de65c07a262c8b0ff3cb5.md) | 97 | `declaration-track:ee5de65c07a262c8b0ff3cb5803ed24603e7fc8804d14caf18f99691b3176eff` |
| 21 | `inductive` | [I'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/i--e66ac4b9d177a83b3f7e2ac3.md) | 101 | `declaration-track:e66ac4b9d177a83b3f7e2ac38d332f5b2f4304a62263337b3f0df6a91914726f` |
| 22 | `def` | [myBoolInst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/myboolinst--76163f63aa676b0159477947.md) | 109 | `declaration-track:76163f63aa676b0159477947f7f7245dd431101f9409fd2d627701794820d8d1` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--54178e2a293540a45ededff4.md) | 111 | `declaration-track:54178e2a293540a45ededff471ddc10e3689d4f3d3a7873adc7c372ce2233ab7` |
| 24 | `def` | [myBoolInst'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/myboolinst--d4b5fdf75ba7ca9b9a64d09e.md) | 113 | `declaration-track:d4b5fdf75ba7ca9b9a64d09e5a20b823be2b346c9274b56f35d4bf6a18d761f6` |
| 25 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--33872d37db24cd44a9f71c88.md) | 115 | `declaration-track:33872d37db24cd44a9f71c887af73d0c441a121aedc54d9b35580b47898246f7` |
| 26 | `def` | [myProdInst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/myprodinst--519b1cab9d6ab366f29971b1.md) | 117 | `declaration-track:519b1cab9d6ab366f29971b1cc1bc2253e61bbd26400ef1900005ac219dff7ae` |
| 27 | `structure` | [MySubtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/mysubtype--62837f38677f17c2e7324c78.md) | 119 | `declaration-track:62837f38677f17c2e7324c7870afb3b02fe319d945dfb0423c70de39528fe1b9` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/instance--fcb1e5e51e925a85e9b9f9a6.md) | 124 | `declaration-track:fcb1e5e51e925a85e9b9f9a62777db9ed3667014f7db95c48a6790ecc6fb6fad` |
| 29 | `inductive` | [Alphabet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/alphabet--a5102e056acd97fc599a1010.md) | 131 | `declaration-track:a5102e056acd97fc599a1010805309bdc855d41c6a8c224fd36f999b02040550` |
| 30 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--5a24ea8cf58f50fa5a85a81b.md) | 138 | `declaration-track:5a24ea8cf58f50fa5a85a81bbb2b2e3ea7a71b9ad5a27f3ce145caf2c5a4d4bb` |
| 31 | `inductive` | [foo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/foo--398765c16430ced4657ce6c5.md) | 140 | `declaration-track:398765c16430ced4657ce6c5648865999e39781b52eaf0a87586b41464be9dc9` |
| 32 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/example--8e5fc7d32e8f93659fd372cd.md) | 146 | `declaration-track:8e5fc7d32e8f93659fd372cde1f911c300235c1fd3fcef00e34d2ca55faf3e2e` |
| 33 | `inductive` | [foo2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/foo2--d61000743dc9f48f277e59c4.md) | 148 | `declaration-track:d61000743dc9f48f277e59c464917a68e35ac41c60287d9f44fdc57c4b774066` |
| 34 | `inductive` | [foo3](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/foo3--e8987782ff52ad2c1c177beb.md) | 155 | `declaration-track:e8987782ff52ad2c1c177bebc1a9436ee043892e8cfbd0f92b0506f046d720e6` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/instance--5cd0e135507d89ef9b799321.md) | 160 | `declaration-track:5cd0e135507d89ef9b7993213eb8515b7b1e1ce4fc4aaa23cea9378b039cda23` |
| 36 | `structure` | [foo4](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/foo4--343527290a9a21a668ceeb3b.md) | 163 | `declaration-track:343527290a9a21a668ceeb3b05f381758c890932f49a0c14ef80d166f4977fad` |
| 37 | `class` | [MyClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/myclass--765c93e06a67a0f3ea93af18.md) | 169 | `declaration-track:765c93e06a67a0f3ea93af18c88b16841ea81ee01af6c1576f1533c29c644046` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant94e154010bd18e98acb46ba37c5501fbd09cba5816ca65039ecd43f33194d6a3.lean/declarations/instance--38bdb3798de580fb4d2eff30.md) | 173 | `declaration-track:38bdb3798de580fb4d2eff30484ebeeec117bf0adc2d9f1fbf47093a0bd94882` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
