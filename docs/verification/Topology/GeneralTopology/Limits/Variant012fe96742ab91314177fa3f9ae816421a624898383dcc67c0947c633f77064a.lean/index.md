# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "050b3d42007f1bdeb141b39a511b31a13f48ec45",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `050b3d42007f1bdeb141b39a511b31a13f48ec45`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Extensive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasExplicitFiniteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/hasexplicitfinitecoproduct--b2255210f9dddbd101d34a54.md) | 59 | `declaration-track:b2255210f9dddbd101d34a5470a8a6b0de3a140fb3e7dad89b3fef881be8587d` |
| 2 | `def` | [finiteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct--0ddb27df1f94d78f38c8bbdd.md) | 67 | `declaration-track:0ddb27df1f94d78f38c8bbddedd775ff5519e6bc4706e81d231f274b2fb055f0` |
| 3 | `def` | [finiteCoproduct.ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct--b84a0cd0fd65d0856624611c.md) | 72 | `declaration-track:b84a0cd0fd65d0856624611c774870d94db9571fded4bd1d7e31f15a1d03ae2c` |
| 4 | `def` | [finiteCoproduct.desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct-desc--e77faab1e68e864adce564f5.md) | 82 | `declaration-track:e77faab1e68e864adce564f54c6fe0ed1508ed8bf6e6fc04a380cfde8b871592` |
| 5 | `lemma` | [finiteCoproduct.ι_desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct-desc--9fa12cf8b670f7d5084bf8e8.md) | 91 | `result-track:9fa12cf8b670f7d5084bf8e8d9f1ae2f5c99058c5fea4792166f293ecb054105` |
| 6 | `lemma` | [finiteCoproduct.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct-hom-ext--8fa8c76af380929a2762b4ff.md) | 94 | `result-track:8fa8c76af380929a2762b4ffbc5d9903c2808ed10b93aa8e36b8beecc15a124b` |
| 7 | `abbrev` | [finiteCoproduct.cofan](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct-cofan--181df02cea8b673819febfd9.md) | 102 | `declaration-track:181df02cea8b673819febfd9f92fbd8af74e82bc10e20ce138c08cef35966da3` |
| 8 | `def` | [finiteCoproduct.isColimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct-iscolimit--4300031e117c008d103af352.md) | 106 | `declaration-track:4300031e117c008d103af352cef247799298c075877f9cc0b07b1e88d1e6e285` |
| 9 | `lemma` | [finiteCoproduct.ι_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct-injective--9cac640716021575c153ae4f.md) | 113 | `result-track:9cac640716021575c153ae4f025e1c17d6c37d0bd118e4d3760ec17d69832de4` |
| 10 | `lemma` | [finiteCoproduct.ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct-jointly-surjective--f973789d02cc1447be4856f7.md) | 117 | `result-track:f973789d02cc1447be4856f7dea089083166c5fe1cb69451b74e12afcf6d78d6` |
| 11 | `lemma` | [finiteCoproduct.ι_desc_apply](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct-desc-apply--3b04ad006ef03d0d93e08c15.md) | 120 | `result-track:3b04ad006ef03d0d93e08c15f7a86238e662e36158d47a94687eb692336bdda2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--d286a1df7c18a6d182b667f0.md) | 126 | `declaration-track:d286a1df7c18a6d182b667f0109c4e83e6511dba169b693da18005bfce82934d` |
| 13 | `class` | [HasExplicitFiniteCoproducts](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/hasexplicitfinitecoproducts--921ad75b6e4e1a4320e3bee0.md) | 134 | `declaration-track:921ad75b6e4e1a4320e3bee0984b376f109f7aa3595280074ccf73ded299e0ad` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--7cfa9ee69bfdbd558a6fc4ee.md) | 146 | `declaration-track:7cfa9ee69bfdbd558a6fc4eef15f23c7087cb713c732050551fc8110b19f343e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--7b9cd9c14bf5c1d9d83bc048.md) | 150 | `declaration-track:7b9cd9c14bf5c1d9d83bc048eda345dcd2d894ff3044c03f161222aa1cbbb666` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/example--146702720ae6a82b3f159aa7.md) | 158 | `declaration-track:146702720ae6a82b3f159aa7636b3e8308245ccb832bc16a8351ff43fdf0f985` |
| 17 | `lemma` | [finiteCoproduct.isOpenEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitecoproduct-isopenembedding--6232d66d3ba472799c2c29f8.md) | 161 | `result-track:6232d66d3ba472799c2c29f8db448bfe422205563d442eb379b160289d536f38` |
| 18 | `lemma` | [Sigma.isOpenEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/sigma-isopenembedding--a3b6aafe3b40caf900d04389.md) | 166 | `result-track:a3b6aafe3b40caf900d043899e8dcfc1dac9fc8e014d946a0c7f8b5c8368b358` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--d05ad7a612b00b85c5dc33f2.md) | 176 | `declaration-track:d05ad7a612b00b85c5dc33f2d91905e68a2986ff9e6d31d0fb1bc36ea50829f9` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--1785507f267c32837cb3674b.md) | 185 | `declaration-track:1785507f267c32837cb3674b120122b97fd3839499abb162353f195220419d4b` |
| 21 | `abbrev` | [HasExplicitPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/hasexplicitpullback--54633967b1cff2860756a001.md) | 201 | `declaration-track:54633967b1cff2860756a001487b3ced4f65dccc0773a117c1c564eaf2370e17` |
| 22 | `def` | [pullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback--9a0836100a24bcfa6fa3cf06.md) | 209 | `declaration-track:9a0836100a24bcfa6fa3cf06b4c23c295425346b21a8553c74874dc6be7f4bc0` |
| 23 | `def` | [pullback.fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback-fst--3a6b3ce5a7214d02d36a8dd4.md) | 219 | `declaration-track:3a6b3ce5a7214d02d36a8dd412946a3943041e4a087d8f2522a95c4994dc6af2` |
| 24 | `def` | [pullback.snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback-snd--60920547533502379abf228c.md) | 227 | `declaration-track:60920547533502379abf228cd77806c34dde59e9c6e46f311056612c83b3ea9e` |
| 25 | `lemma` | [pullback.condition](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback-condition--ec68eaf4310a0173ac28100a.md) | 233 | `result-track:ec68eaf4310a0173ac28100a9c136fabb547f9dfa40ab45f3c27cec865306008` |
| 26 | `def` | [pullback.lift](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback-lift--2b0cd79e8d001dbeeb5bd79a.md) | 241 | `declaration-track:2b0cd79e8d001dbeeb5bd79ab1a75bbf04369d44db3ccb6532e888dd96af6784` |
| 27 | `lemma` | [pullback.lift_fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback-lift-fst--64362b0b1b969d2b993ace3a.md) | 248 | `result-track:64362b0b1b969d2b993ace3afa704d36a5762fc1cc074f2c3b28a4cf4ccf0070` |
| 28 | `lemma` | [pullback.lift_snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback-lift-snd--462a55710c81fe77cbfcbe19.md) | 252 | `result-track:462a55710c81fe77cbfcbe19d005f5786d37000b807b9e6b2c0f559b26891eda` |
| 29 | `lemma` | [pullback.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback-hom-ext--491116acf9bb46befc918443.md) | 255 | `result-track:491116acf9bb46befc9184435e7109c0bc98e633ff9b5339d73092e2bb5fb2c6` |
| 30 | `def` | [pullback.cone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback-cone--6eceaff35272ac6a61fe6f71.md) | 269 | `declaration-track:6eceaff35272ac6a61fe6f716951a382048246a544c400a10844c3afe75ec954` |
| 31 | `def` | [pullback.isLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/pullback-islimit--b5bcc305d17e003009ec847f.md) | 276 | `declaration-track:b5bcc305d17e003009ec847fba94e86207b95b839561294e56e2ea1f989ea328` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--f93471252b0f62e8d85a06d5.md) | 283 | `declaration-track:f93471252b0f62e8d85a06d52ef8f6ea8d1c8d3b4bdc350be792e6803c66769c` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--eb32986a0624178bb4bc316a.md) | 287 | `declaration-track:eb32986a0624178bb4bc316a06f51e837a733567d4faff71e9bb5e764267a150` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--6339c346ecbf743ac0273136.md) | 294 | `declaration-track:6339c346ecbf743ac02731366e89656917b11035b42584937547d63940a20188` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--30bc66948abe5e9756e53eb8.md) | 298 | `declaration-track:30bc66948abe5e9756e53eb89bde2381ec1b07d06859abc87e7eda2c5935f9b1` |
| 36 | `class` | [HasExplicitPullbacks](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/hasexplicitpullbacks--105b847a83b87a8c145ba381.md) | 310 | `declaration-track:105b847a83b87a8c145ba3813c9a6e11436ce5def48637e47eaf6d50e9456e35` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--579f49b68c674215357a99c2.md) | 315 | `declaration-track:579f49b68c674215357a99c2ca54c6588117f3e0a805610330b29996234cbd9d` |
| 38 | `class` | [HasExplicitPullbacksOfInclusions](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/hasexplicitpullbacksofinclusions--22606b406259fb6ca0e7213a.md) | 323 | `declaration-track:22606b406259fb6ca0e7213ade9cb0c398de9dc9a0de5fdd9ea75ea43176b480` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--69e508a980d9ff6c4b7edae6.md) | 328 | `declaration-track:69e508a980d9ff6c4b7edae67ad574bd5cd53e534a2602723a670cfd5da51c2d` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--59432f13502e2052f4a1696f.md) | 338 | `declaration-track:59432f13502e2052f4a1696fe470b68e8a86b8b5cea6cb017e4c6f207864a403` |
| 41 | `theorem` | [hasPullbacksOfInclusions](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/haspullbacksofinclusions--1b6193054b944bd79ce689a8.md) | 341 | `result-track:1b6193054b944bd79ce689a891fdac1a7beb9f374ed7ad7220a59f8e7751f3ef` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--5f022a678582aa03cb914159.md) | 351 | `declaration-track:5f022a678582aa03cb9141590dad6bd2e014d8fe7220e66aee3198fe8669772f` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/instance--30f5ef809625e8ebb6aa12d8.md) | 357 | `declaration-track:30f5ef809625e8ebb6aa12d8fdb200e375165b918692b67d5360adf00903addd` |
| 44 | `theorem` | [finitaryExtensive](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/finitaryextensive--001064f6e9c453d3acd6f006.md) | 360 | `result-track:001064f6e9c453d3acd6f0068c07199801a03b24b58aaf08fb3283cf197b8ea0` |
| 45 | `def` | [isTerminalPUnit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/declarations/isterminalpunit--bb0b7ed6b2828455dba01432.md) | 373 | `declaration-track:bb0b7ed6b2828455dba0143296b6ac301f597873c176de05acb6bfd8520b8b78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
