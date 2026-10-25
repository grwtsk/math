# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Find.Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d0691ea38d3efcee716360991dc69f9be6f56c2",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d0691ea38d3efcee716360991dc69f9be6f56c2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean.json)

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
| 1 | `def` | [lbp](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/lbp--90214b7c9835ccc0fae21f3d.md) | 34 | `declaration-track:90214b7c9835ccc0fae21f3d80dc0fa78ad89c82f8c822c91edab4512e794dea` |
| 2 | `theorem` | [wf_lbp](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/wf-lbp--3f5a190c352ed9f021c8fc31.md) | 37 | `result-track:3f5a190c352ed9f021c8fc311267e76d2f8e7a124ceb3b3012799cbc892c8fbb` |
| 3 | `def` | [findX](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findx--961c516c34f4b10731fd1a74.md) | 54 | `declaration-track:961c516c34f4b10731fd1a74e692d040c5a82c9ace051f9003c412e8bc8cb6b1` |
| 4 | `def` | [find](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find--0f072a37f11e574998b4892e.md) | 75 | `declaration-track:0f072a37f11e574998b4892e551c5a3cf014bd0c5bda5aa7700cf1286f586568` |
| 5 | `theorem` | [find_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-spec--362617ddc5b59a187770d524.md) | 78 | `result-track:362617ddc5b59a187770d524bf8a3630b3c76e06f43e0bc5af7aa1cf0cde4099` |
| 6 | `theorem` | [find_min](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-min--27efa49a46e7666eb107da84.md) | 83 | `result-track:27efa49a46e7666eb107da84381ef71df4fabee67e01974cbec48a5513b803b5` |
| 7 | `theorem` | [find_min'](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-min--476410b9ee72ee29410ddd35.md) | 86 | `result-track:476410b9ee72ee29410ddd35af6846a8a0d58e64bf7bfbb1e91ff1b3d6b50be0` |
| 8 | `lemma` | [find_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-eq-iff--2d4d7377e0795f66acd93f2c.md) | 89 | `result-track:2d4d7377e0795f66acd93f2c15372b649ef87bdb524e7d5d01a9132f300cdb40` |
| 9 | `lemma` | [find_lt_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-lt-iff--6d02704431a0a1ed6740c2b3.md) | 96 | `result-track:6d02704431a0a1ed6740c2b3b40824a90043a5c149722b09f0ab8149840901e6` |
| 10 | `lemma` | [find_le_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-le-iff--11624081b336c6147b768f35.md) | 100 | `result-track:11624081b336c6147b768f35541deb2be92a02a79571bc740624e0f06252d284` |
| 11 | `lemma` | [le_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/le-find-iff--7d0e5cad1b2490b01325bca1.md) | 103 | `result-track:7d0e5cad1b2490b01325bca1486ec13e66c090049fc9c9cd89ee2fbd0b59e396` |
| 12 | `lemma` | [lt_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/lt-find-iff--7158dce5586388b4f11518cb.md) | 106 | `result-track:7158dce5586388b4f11518cbc8c457dde47d993c2ee0e15d89b7122701b0a8e3` |
| 13 | `lemma` | [find_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-eq-zero--a6d6929f6eff3ce085bc4cab.md) | 109 | `result-track:a6d6929f6eff3ce085bc4cab5242d99c03666f070e642126c8f0bd3ce13f5fdb` |
| 14 | `lemma` | [find_mono_of_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-mono-of-le--a18ef579e3dd1fdf2ffbe42f.md) | 115 | `result-track:a18ef579e3dd1fdf2ffbe42f487a974e6fd7646918c32f17d67f1bfbefd6e032` |
| 15 | `lemma` | [find_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-mono--674de2ba9c8dfb6469decb33.md) | 121 | `result-track:674de2ba9c8dfb6469decb3389d249359214a68e5ac0ef3ec82abbe4eb3fb3b6` |
| 16 | `lemma` | [find_congr](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-congr--1d3d68ef1a0e8d3f4365b2aa.md) | 131 | `result-track:1d3d68ef1a0e8d3f4365b2aac44b8e5548ae2852416fb29fd2dd365a8135e5f2` |
| 17 | `lemma` | [find_congr'](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-congr--813e07f90148de312ee6a057.md) | 137 | `result-track:813e07f90148de312ee6a05714292495c17fb13586a11601d985048c09a79af3` |
| 18 | `lemma` | [find_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-le--9f47c53b786f588ef19438ab.md) | 141 | `result-track:9f47c53b786f588ef19438ab928d5bb907d0d03946ecd37acd97b8a67cba2769` |
| 19 | `lemma` | [find_comp_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-comp-succ--b2c2511a32b61ad766c0b7a1.md) | 144 | `result-track:b2c2511a32b61ad766c0b7a16542ded1428e4188dd56850cf94da119cec652b6` |
| 20 | `lemma` | [find_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-pos--fb3854939f15bd0d4fb74f1c.md) | 150 | `result-track:fb3854939f15bd0d4fb74f1c1b8ac7ecb9be9147e3de493340ee1f8c5da173ba` |
| 21 | `lemma` | [find_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/find-add--19ea1f616c5c055c45a5a243.md) | 153 | `result-track:19ea1f616c5c055c45a5a2435250e54f3625c196eec2eb28cb1fdda64cb5d43b` |
| 22 | `def` | [findGreatest](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest--a49d6edbcafbe5b68bcca502.md) | 173 | `declaration-track:a49d6edbcafbe5b68bcca502299b43558b7c3c856f4dfc9fef7da0f0b9d6a3ac` |
| 23 | `lemma` | [findGreatest_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-zero--7c169d5ce7fd206896731019.md) | 179 | `result-track:7c169d5ce7fd2068967310198ba18aa6e19ecebbd43a8c92b7431f32b3799982` |
| 24 | `lemma` | [findGreatest_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-succ--5e1bdd013b6452058ca7102b.md) | 181 | `result-track:5e1bdd013b6452058ca7102b05c63a374c0adaad76117af03aff5d823887abf8` |
| 25 | `lemma` | [findGreatest_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-eq--582712675991a1b64be11dc6.md) | 184 | `result-track:582712675991a1b64be11dc676e05f692d3c33d17eb4a899391f52754ea0e305` |
| 26 | `lemma` | [findGreatest_of_not](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-of-not--2a9e20488887524c8f34edc8.md) | 189 | `result-track:2a9e20488887524c8f34edc821698fa6cc596aa8fdf50577b83685de3acf4f0a` |
| 27 | `lemma` | [findGreatest_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-eq-iff--ceadbacfbf76a47ed3d60176.md) | 192 | `result-track:ceadbacfbf76a47ed3d60176c8334e64a917bf2e65dd83db81e2b23301b97f5c` |
| 28 | `lemma` | [findGreatest_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-eq-zero-iff--49b497271a66a2d4b4ccc58e.md) | 212 | `result-track:49b497271a66a2d4b4ccc58e873c09dc6a7f487dbc7b740332021b2fd1e8987e` |
| 29 | `lemma` | [findGreatest_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-pos--0fcb02706257410f06925763.md) | 215 | `result-track:0fcb02706257410f0692576304e5090f83d6baafb010d2ff38f337e9d6362cde` |
| 30 | `lemma` | [findGreatest_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-spec--7c0abb7d31a884dc67452f7e.md) | 218 | `result-track:7c0abb7d31a884dc67452f7efd2b2f6f24b5b43afb6c4ce51d3ccd7116a8b22e` |
| 31 | `lemma` | [findGreatest_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-le--fbd0510cde3eb75bbd1172d9.md) | 225 | `result-track:fbd0510cde3eb75bbd1172d9796a32f4c68e7f7fc82a209b62620b42645274fc` |
| 32 | `lemma` | [le_findGreatest](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/le-findgreatest--6512aaa3971b835b01e80647.md) | 228 | `result-track:6512aaa3971b835b01e806474820033c712b9d77a8c03f27f232c2696f7d2e75` |
| 33 | `lemma` | [findGreatest_mono_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-mono-right--89ea63dcbbe3b26fabafe4cf.md) | 231 | `result-track:89ea63dcbbe3b26fabafe4cf7aa90ff7ed28ad5fda5947037f55b9525d0bede4` |
| 34 | `lemma` | [findGreatest_mono_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-mono-left--93068f61227b8b81bda1b601.md) | 241 | `result-track:93068f61227b8b81bda1b601f4c6c2a1e773d92c00d1c3e4d3645a96f99e7e34` |
| 35 | `lemma` | [findGreatest_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-mono--c1f85aec30df0e92e8639dda.md) | 251 | `result-track:c1f85aec30df0e92e8639ddabc1a59047b697a4015823381e9dc4147077c27f5` |
| 36 | `theorem` | [findGreatest_is_greatest](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-is-greatest--84f3bcef02fa033dfadd2e34.md) | 255 | `result-track:84f3bcef02fa033dfadd2e34e47182eb66d5f77bbacdefcc795345a8e5746007` |
| 37 | `theorem` | [findGreatest_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/declarations/findgreatest-of-ne-zero--75afc87e574b9210f603561e.md) | 258 | `result-track:75afc87e574b9210f603561e899f0d1e94a09646930b4b7b1f21281575da3cfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
