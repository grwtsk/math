# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Short.Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd1d420166f8d98166edcd38041f6b6c8cd17f8e",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd1d420166f8d98166edcd38041f6b6c8cd17f8e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Short](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/short--85ae26503aee9d473bac31b5.md) | 45 | `declaration-track:85ae26503aee9d473bac31b53ff9583811591f99378e45f0515eb0f7e63ccaf9` |
| 2 | `instance` | [subsingleton_short](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/subsingleton-short--fd7a63270c12692542f92870.md) | 58 | `declaration-track:fd7a63270c12692542f92870bfff9e71a324d332121630bdae571750fea09d91` |
| 3 | `theorem` | [subsingleton_short_example](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/subsingleton-short-example--04a97202e6da38f5c268b848.md) | 70 | `result-track:04a97202e6da38f5c268b848e3ec3e76055183656149f4080881068d39421b29` |
| 4 | `def` | [Short.mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/short-mk--e689dedec8e463a26c5dd585.md) | 96 | `declaration-track:e689dedec8e463a26c5dd585ca88a6a2424cd635353be4627e41f8164a35af64` |
| 5 | `def` | [fintypeLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/fintypeleft--75c9ac901665e62f8aaf57ec.md) | 110 | `declaration-track:75c9ac901665e62f8aaf57ecd9fb02a1996b3405e5147d83558845adaab57cf7` |
| 6 | `instance` | [fintypeLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/fintypeleftmoves--eff662154cb8b312b7351fa3.md) | 116 | `declaration-track:eff662154cb8b312b7351fa3edd9e46e236c6611998bbe410922e25417ba7350` |
| 7 | `def` | [fintypeRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/fintyperight--0dbb8db198a9889aa5a6154b.md) | 123 | `declaration-track:0dbb8db198a9889aa5a6154b2c5f4c96bb5b032db3acec3e3456188a6d6c96a5` |
| 8 | `instance` | [fintypeRightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/fintyperightmoves--53979de8087bdeae1e0e5bea.md) | 129 | `declaration-track:53979de8087bdeae1e0e5bea30073e4f0e68ac329a93cb6919c95d25fac3a207` |
| 9 | `instance` | [moveLeftShort](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/moveleftshort--9b002233f5e926911456b6a1.md) | 133 | `declaration-track:9b002233f5e926911456b6a1c99e9f4ee7aaf70b8cdcc550fe263a56a6c9f351` |
| 10 | `def` | [moveLeftShort'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/moveleftshort--05bf48d3e77c9f4651ef4ecd.md) | 141 | `declaration-track:05bf48d3e77c9f4651ef4ecd463c6bf9a3d9a7d38e56a2e03f2bea160f19fccc` |
| 11 | `instance` | [moveRightShort](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/moverightshort--bd7fe284d9b95f69b2b6ffea.md) | 147 | `declaration-track:bd7fe284d9b95f69b2b6ffea3a075893d7e7ac03d26aeca05dc2bfc9d17e9500` |
| 12 | `def` | [moveRightShort'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/moverightshort--07a9bb4be39e95b4211bf1d1.md) | 155 | `declaration-track:07a9bb4be39e95b4211bf1d1b4c2da710429c200932f2390886e6740c3194abf` |
| 13 | `theorem` | [short_birthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/short-birthday--0e9dd48d1e85a37b2971a1cc.md) | 161 | `result-track:0e9dd48d1e85a37b2971a1cc6013a1dc78c594b68a957469ebe658b02f8c00db` |
| 14 | `def` | [Short.ofIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/short-ofisempty--9cbf988992661d0f5c76cade.md) | 180 | `declaration-track:9cbf988992661d0f5c76cadecde5c1538347718ac2368e06b498865cfe7901ae` |
| 15 | `instance` | [short0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/short0--9b8ba3daea8035b6812ab5c2.md) | 184 | `declaration-track:9b8ba3daea8035b6812ab5c2ed88fde6cc8a928a535f21a31c683614b3c39f6c` |
| 16 | `instance` | [short1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/short1--58984fa4d2c03783ed0f97ae.md) | 188 | `declaration-track:58984fa4d2c03783ed0f97ae1416b859209f4fcdc432a7d35c27a39f4c9276ab` |
| 17 | `class` | [inductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/inductive--b524bc611c03615975c82049.md) | 193 | `declaration-track:b524bc611c03615975c82049459ee990a9c421eb692326d4ef09a3bbe0f0892f` |
| 18 | `instance` | [ListShort.cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/listshort-cons--282b98171ebe2ba597195c9a.md) | 203 | `declaration-track:282b98171ebe2ba597195c9a39091f0b97f24a3d85b2c2166f37b3b4087cf84a` |
| 19 | `instance` | [listShortGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/listshortget--9eb2d878fbaf5fac2fb6a0f0.md) | 210 | `declaration-track:9eb2d878fbaf5fac2fb6a0f0f8c945f35914e1567461992e4baadaae99955457` |
| 20 | `instance` | [listShortNthLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/listshortnthle--09c173a01fdaffa67da8dad4.md) | 223 | `declaration-track:09c173a01fdaffa67da8dad4fff18aec0766dcb81a8d50ef0d75d57e26481919` |
| 21 | `instance` | [shortOfLists](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/shortoflists--7a3502c264b26d47c59ed68a.md) | 229 | `declaration-track:7a3502c264b26d47c59ed68a251cc97654645caea0defa408b1aff4a284b02bd` |
| 22 | `def` | [shortOfRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/shortofrelabelling--210d99e7bd7b3ddaf3098c61.md) | 237 | `declaration-track:210d99e7bd7b3ddaf3098c61c148f67526db1f51e927a190dfa0519ad35236eb` |
| 23 | `instance` | [shortNeg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/shortneg--1cb0eca584e6da02e3a8a8a5.md) | 247 | `declaration-track:1cb0eca584e6da02e3a8a8a5aad1bb92ecd5db322cf1df6e1d502ce5cb525ede` |
| 24 | `instance` | [shortAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/shortadd--22282727b1d32115c7bd1787.md) | 253 | `declaration-track:22282727b1d32115c7bd17873ac89bf40ddda5ea6728d1c9b2df20342e00c15b` |
| 25 | `instance` | [shortNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/shortnat--3c800f1e40ae8c4b4ffae5b2.md) | 265 | `declaration-track:3c800f1e40ae8c4b4ffae5b263d3f996a3f7c3b216aa72294f64d4da2a36d5e0` |
| 26 | `instance` | [shortOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/shortofnat--78b33e983b4e00bfce9a41a5.md) | 270 | `declaration-track:78b33e983b4e00bfce9a41a549a483233af07c6e7f8277736dc73ea47d265620` |
| 27 | `instance` | [shortBit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/shortbit0--1d49fc9e8cf37082c7492a1d.md) | 274 | `declaration-track:1d49fc9e8cf37082c7492a1dd261d7678ae8c1fe42dbc0bde4cfee3cf18f23d2` |
| 28 | `instance` | [shortBit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/shortbit1--c67771e9364f4505f70ef01d.md) | 278 | `declaration-track:c67771e9364f4505f70ef01df0dfbfea2effdccbf47cf0015af38d37f0197c89` |
| 29 | `def` | [leLfDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/lelfdecidable--33f6c61ba89b8332bded79de.md) | 285 | `declaration-track:33f6c61ba89b8332bded79def03ff91f3165ef95aa540f337b88f28daa82be5f` |
| 30 | `instance` | [leDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/ledecidable--ea1eb7b696492d82bfa2c4f4.md) | 309 | `declaration-track:ea1eb7b696492d82bfa2c4f4a1e51da8a42a0dceb3d3dec46a2b943c725ef474` |
| 31 | `instance` | [lfDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/lfdecidable--29657c2eb88d2eb5ad6542c1.md) | 313 | `declaration-track:29657c2eb88d2eb5ad6542c1b74707a48db779a0cf3805ca573d00090c634b76` |
| 32 | `instance` | [ltDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/ltdecidable--2b9526d89103bbe5715f56bc.md) | 317 | `declaration-track:2b9526d89103bbe5715f56bc0272273914e2f8bd43683f8946c792776c80d95b` |
| 33 | `instance` | [equivDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/equivdecidable--88c5ce44be4ffe8c9bf24989.md) | 321 | `declaration-track:88c5ce44be4ffe8c9bf24989057e90b2d9b740f6d61afe183727d19da79ab1d7` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/example--7c106dd4a9dae95994ff6e38.md) | 325 | `declaration-track:7c106dd4a9dae95994ff6e3891a78018cf6385fe0b52635891c96d9926d45362` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/example--9eef2396775b713b75a0537c.md) | 327 | `declaration-track:9eef2396775b713b75a0537c49aa8c87a5a5fe6efcaeb6b48fb31b345442dba7` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/example--94bf7c7372f663eeb5f2aa86.md) | 329 | `declaration-track:94bf7c7372f663eeb5f2aa86457fc6e0070ab037138bcdc601c1d105895ff228` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/example--e0bce94b90dc882a3d9158bc.md) | 331 | `declaration-track:e0bce94b90dc882a3d9158bc7421e248dec0d771eac96e4fa4b78f360f5cba3a` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/example--4b30b5a45a604898fa97236a.md) | 333 | `declaration-track:4b30b5a45a604898fa97236ab254140bce3d01885a89f91cfb54b42dd4cd05fd` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/example--a6031dc05a708cc333194c49.md) | 335 | `declaration-track:a6031dc05a708cc333194c498c950aadb5ae1b7d675d8dd795876edadf449579` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/example--d5fadbd79c64dc7f355ad905.md) | 337 | `declaration-track:d5fadbd79c64dc7f355ad9056735fcb8920d9477be3f9b044d25887314bbd46c` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/declarations/example--e32a5cc253a4710086048dbe.md) | 339 | `declaration-track:e32a5cc253a4710086048dbe2d9a542a837151aeb18529aaa860e356e410f555` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
