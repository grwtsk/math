# Verification target: GRWTSK.Algebra.EssentialFiniteness.Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "250e6f0a65f5ab54aabf6fa58a813c3242777f0d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/index.md) · [Full source](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `250e6f0a65f5ab54aabf6fa58a813c3242777f0d`.

Source path: `GRWTSK/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean.json)

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
| 1 | `class` | [EssFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype--ca2a3c8b4c0b708075aaa9d6.md) | 48 | `declaration-track:ca2a3c8b4c0b708075aaa9d6f04ac79f92775bec7ab916e510e27d70a1d99cd6` |
| 2 | `def` | [EssFiniteType.finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-finset--4c05dbb6d5bd4dc277776dca.md) | 55 | `declaration-track:4c05dbb6d5bd4dc277776dcac94bd96a6836971f259f1cae1f117954c26c5533` |
| 3 | `abbrev` | [EssFiniteType.subalgebra](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-subalgebra--44051a3ec09486612d03be24.md) | 60 | `declaration-track:44051a3ec09486612d03be24fdd4cbe4d21116d6b4568cd3569028473736e9cf` |
| 4 | `lemma` | [EssFiniteType.adjoin_mem_finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-adjoin-mem-finset--c2d6006e32eaf77e6f5a8395.md) | 63 | `result-track:c2d6006e32eaf77e6f5a8395934cc1dff3a64e4ade10ce0bbc2cee6647c3a58f` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/instance--f0a55ecda40b48d504c49e10.md) | 66 | `declaration-track:f0a55ecda40b48d504c49e108642fc587ebc2d120719fc1ed5ea811093ca13d8` |
| 6 | `def` | [EssFiniteType.submonoid](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-submonoid--7e59a8cb35c3099fa1a537db.md) | 73 | `declaration-track:7e59a8cb35c3099fa1a537dba923b1a653ccde9ee38205c0ab4ad5c08eda11d1` |
| 7 | `instance` | [EssFiniteType.isLocalization](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-islocalization--7ab7bf06fa4a0c84d780221a.md) | 76 | `declaration-track:7ab7bf06fa4a0c84d780221a35b4bdf51190bd1e8d38c7ef5e031a22e0f6219a` |
| 8 | `lemma` | [essFiniteType_cond_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-cond-iff--2f673d6674e75f610c90b064.md) | 80 | `result-track:2f673d6674e75f610c90b0649dfea6c9b734ba3e0ecc54b92623bc6f7672da6c` |
| 9 | `lemma` | [essFiniteType_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-iff--e9a1201ab8cf6cbaf1c798a8.md) | 96 | `result-track:e9a1201ab8cf6cbaf1c798a816fef2122feb254f25703df4fc2846f6ff914a85` |
| 10 | `instance` | [EssFiniteType.of_finiteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-of-finitetype--9ceb9da13a48a5820cb7852f.md) | 103 | `declaration-track:9ceb9da13a48a5820cb7852f59b97c67ced9370307b33ad69d5461374887595d` |
| 11 | `lemma` | [EssFiniteType.of_isLocalization](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-of-islocalization--32b4ccb37b31d19cfe951b80.md) | 109 | `result-track:32b4ccb37b31d19cfe951b8052d1e520eb6fa61ab978d1d9d9aee488173ebedf` |
| 12 | `lemma` | [EssFiniteType.of_id](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-of-id--71a209e8071a151655813e2b.md) | 119 | `result-track:71a209e8071a151655813e2bc7c3e4efad8b95715ac750f477db61afc159e7c8` |
| 13 | `lemma` | [EssFiniteType.aux](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-aux--40767df2e7cd09f53b156030.md) | 124 | `result-track:40767df2e7cd09f53b156030089fe7bef9dab19e310512bf423330e37b4de935` |
| 14 | `lemma` | [EssFiniteType.comp](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-comp--e7113f06763851e89316a3e5.md) | 148 | `result-track:e7113f06763851e89316a3e5082bd58d348db82b10a5ff97982a669c7bc3d811` |
| 15 | `lemma` | [essFiniteType_iff_exists_subalgebra](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-iff-exists-subalgebra--e51d279d1e4cbe63679b7ffe.md) | 169 | `result-track:e51d279d1e4cbe63679b7ffe25dd13c39dae2c00367d0c04d1df6fbf4002036e` |
| 16 | `instance` | [EssFiniteType.baseChange](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-basechange--a22bbcb3ec9045a368f6146f.md) | 176 | `declaration-track:a22bbcb3ec9045a368f6146f24ddb4024c5343d15fcb3d904651e0ef9b015f27` |
| 17 | `lemma` | [EssFiniteType.of_comp](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-of-comp--39d03a66aed33fcda93cfea4.md) | 207 | `result-track:39d03a66aed33fcda93cfea47ec56cfa50c82c987e787920a76f355360dfe325` |
| 18 | `lemma` | [EssFiniteType.comp_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-comp-iff--25c09d9cc06b47d39f55811a.md) | 216 | `result-track:25c09d9cc06b47d39f55811ae59151561762b93f9895548ef41eb3d946654936` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/instance--4a8e620d103fd672ca3d7201.md) | 220 | `declaration-track:4a8e620d103fd672ca3d72015f45a4a9db63d13348c4004db0df4598e23e3f86` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/instance--72698c7cfd6cb6ef96864a61.md) | 223 | `declaration-track:72698c7cfd6cb6ef96864a615e0cd44fcb03e6c58160a566ff3bb633fcfe758a` |
| 21 | `lemma` | [EssFiniteType.of_surjective](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-of-surjective--d137336ee2b12d2ff9d15b76.md) | 230 | `result-track:d137336ee2b12d2ff9d15b76e9c0ebe7d07e6bd41d8c0ef36bc28596aa2852d7` |
| 22 | `lemma` | [EssFiniteType.iff_of_algEquiv](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-iff-of-algequiv--1c38625ec17671582ffa8dce.md) | 238 | `result-track:1c38625ec17671582ffa8dced463b9bcd90e398c795c00f50c7276a394528dea` |
| 23 | `lemma` | [EssFiniteType.algHom_ext](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-alghom-ext--e1282e27feaff7c347173521.md) | 244 | `result-track:e1282e27feaff7c3471735210847c55bbd01b22085b57fc71bf458d98d36c708` |
| 24 | `instance` | [EssFiniteType.quotient_map](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-quotient-map--4c286e580c9c4e1760c45c99.md) | 254 | `declaration-track:4c286e580c9c4e1760c45c99c7fb2dcb7d9c6914e554dcea6628c5130827e55c` |
| 25 | `def` | [EssFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype--d39d416cb82d51fd8a352e88.md) | 268 | `declaration-track:d39d416cb82d51fd8a352e8882d1aa8473c70237c4157c4396797dacff5e4356` |
| 26 | `lemma` | [essFiniteType_algebraMap](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-algebramap--3f9551270f79f1e7ab5ea07f.md) | 272 | `result-track:3f9551270f79f1e7ab5ea07f0460fb4623ad4d359846f89a8e747ebd1d4caf62` |
| 27 | `def` | [EssFiniteType.finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-finset--cd49ee02a34f1d288c75f8db.md) | 279 | `declaration-track:cd49ee02a34f1d288c75f8dbd56c79db1a4107f3e56288cbcd7791b89eef46d1` |
| 28 | `lemma` | [FiniteType.essFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/finitetype-essfinitetype--e68433661d2216bad690eb7d.md) | 284 | `result-track:e68433661d2216bad690eb7deba72c8c044cb8eeb0e25379afed07a3f944ee7a` |
| 29 | `lemma` | [EssFiniteType.ext](../../../../mathematics/Algebra/EssentialFiniteness/Variant92ea9ecd0474f0013df29094d85f2c14aa28fa6fa72290df642b9534fdc13c0a.lean/declarations/essfinitetype-ext--2b221a42f99f617124ebb4b6.md) | 289 | `result-track:2b221a42f99f617124ebb4b6e21dc7a4d925244afaf30b77cc5edf8ee83b2073` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
