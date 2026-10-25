# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Birthday.Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22058a51d76ae73bde1c9752169418661b1751f9",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22058a51d76ae73bde1c9752169418661b1751f9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Ordinal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.NaturalOps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday--7fe28411eb3872004f8c5877.md) | 53 | `declaration-track:7fe28411eb3872004f8c58771fbb668a4af0dfefe7b5fe1150bb208d583eb946` |
| 2 | `theorem` | [birthday_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-def--33fce2a50ceaf7a83017ea43.md) | 57 | `result-track:33fce2a50ceaf7a83017ea43edbaf2450482f71a9f3ad6f2ef4e7b6ecbc8233e` |
| 3 | `theorem` | [birthday_moveLeft_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-moveleft-lt--fa16c552d6705d57aa9e6b05.md) | 63 | `result-track:fa16c552d6705d57aa9e6b059e1ea1b22c1857eda3ddb267c8ed5390ab846697` |
| 4 | `theorem` | [birthday_moveRight_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-moveright-lt--b311daa36804d2762273442b.md) | 67 | `result-track:b311daa36804d2762273442b2374ecb789e05ca06b4779124920c43a8e4e2d82` |
| 5 | `theorem` | [lt_birthday_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/lt-birthday-iff--2241fa5379ee8c2db5342988.md) | 71 | `result-track:2241fa5379ee8c2db534298887f8d1589fe52ba6d975b44d18cc1cef91f00d5b` |
| 6 | `theorem` | [Relabelling.birthday_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/relabelling-birthday-congr--433fb84077b03e2f9c652edd.md) | 87 | `result-track:433fb84077b03e2f9c652eddbb7b0840e89e5f9cdb658a15781ada11451bd194` |
| 7 | `theorem` | [birthday_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-eq-zero--f8d91ebf3f7fdc57fc46e266.md) | 101 | `result-track:f8d91ebf3f7fdc57fc46e266ee6189d46b36f69d64dfd17e61c603dc36012f6c` |
| 8 | `theorem` | [birthday_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-zero--2deca348068d4f637076d25f.md) | 106 | `result-track:2deca348068d4f637076d25fd0cc4f7a2f5563f0d8cf4bb72954ff286be03216` |
| 9 | `theorem` | [birthday_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-one--5808680423b6206b03af8f75.md) | 109 | `result-track:5808680423b6206b03af8f750ee96663f2b95e5a3be2baf9f7f19c3dede96128` |
| 10 | `theorem` | [birthday_star](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-star--4b9caa612668a434e3e2a2d8.md) | 112 | `result-track:4b9caa612668a434e3e2a2d814394b63582f764c00a4452849d269360a580ac3` |
| 11 | `theorem` | [birthday_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-neg--1d079f4947e0aef5db415b03.md) | 115 | `result-track:1d079f4947e0aef5db415b034b43fac4e5d554c10464c42e46de6246ab2951e5` |
| 12 | `theorem` | [birthday_ordinalToPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-ordinaltopgame--1e408a0ac2f5329bb56efb23.md) | 121 | `result-track:1e408a0ac2f5329bb56efb23eb45eb9cf9e060b666f5b300524f6b201cfac980` |
| 13 | `theorem` | [le_birthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/le-birthday--9713cd80962f1400b75aae91.md) | 129 | `result-track:9713cd80962f1400b75aae91995a9f1905d60a524c45af2c0078c402ec9e11e2` |
| 14 | `theorem` | [neg_birthday_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/neg-birthday-le--aef89a30a0acde1642871937.md) | 138 | `result-track:aef89a30a0acde16428719374a2db1f4a51f6075f6cd34614f1fb78b26ea134b` |
| 15 | `theorem` | [birthday_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-add--afced43f2ecd58fa6e9a3873.md) | 142 | `result-track:afced43f2ecd58fa6e9a3873960b192b403d67c373ec0ac512da061a8efa9df1` |
| 16 | `theorem` | [birthday_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-sub--d9a6545dae151ebf7adddf33.md) | 171 | `result-track:d9a6545dae151ebf7adddf330bd6196fbed2b8cd7dbb3562f8fdee5559fa7489` |
| 17 | `theorem` | [birthday_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-natcast--0b14ee999c9d4b8c3b5cde6d.md) | 176 | `result-track:0b14ee999c9d4b8c3b5cde6d92a81f53f7547a43f58fbcaf2cef2f8c40783c9e` |
| 18 | `def` | [birthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday--e5fee56f2a77a2dc071b232c.md) | 185 | `declaration-track:e5fee56f2a77a2dc071b232c6b4cec8784f9ff27a3930afcfd4a870a0a14c163` |
| 19 | `theorem` | [birthday_eq_pGameBirthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-eq-pgamebirthday--13ade5497ad44e7ef1dae3cd.md) | 188 | `result-track:13ade5497ad44e7ef1dae3cda03aad31660c7eeda351b978b7e9a320d6cf2def` |
| 20 | `theorem` | [birthday_quot_le_pGameBirthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-quot-le-pgamebirthday--df90229ca569f6762da19116.md) | 193 | `result-track:df90229ca569f6762da191168bc7a9b99683c398300b456331fb1ff2e43d9785` |
| 21 | `theorem` | [birthday_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-zero--36d3e1fb6a89fb170502947f.md) | 197 | `result-track:36d3e1fb6a89fb170502947f3fcb95475cb0188c74c7e364e790cc568c80a3a5` |
| 22 | `theorem` | [birthday_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-eq-zero--4834183d165f2820c8a129c0.md) | 202 | `result-track:4834183d165f2820c8a129c0dcf725bb994753b1a309b4ba9ef280c4d9ce1650` |
| 23 | `theorem` | [birthday_ordinalToGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-ordinaltogame--c513d3e57c10c35f4a030d8a.md) | 213 | `result-track:c513d3e57c10c35f4a030d8ad48f3393a6dd84e29ddb9433bd48fb71e0c89f76` |
| 24 | `theorem` | [birthday_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-natcast--af223069b0c46b35769e17fc.md) | 223 | `result-track:af223069b0c46b35769e17fce714396bac34d35665a22c000aaa28671c471849` |
| 25 | `theorem` | [birthday_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-ofnat--9a03a990032cb1d46726db69.md) | 228 | `result-track:9a03a990032cb1d46726db69888cc670b13d7201981cb6d565df715248473f7f` |
| 26 | `theorem` | [birthday_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-one--95cf2e77a20481e6fcca2604.md) | 233 | `result-track:95cf2e77a20481e6fcca2604fe880218a2a32ade3284f948d6e48d88535436ec` |
| 27 | `theorem` | [birthday_star](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-star--f5e379030384d160a0d09ef1.md) | 237 | `result-track:f5e379030384d160a0d09ef1c74c2efd2871f0e174e5133dd0520cc4d3f60e78` |
| 28 | `theorem` | [birthday_neg'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-neg--fcb7f2971685ad453033fb04.md) | 245 | `result-track:fcb7f2971685ad453033fb048300c88ba25c15cd0f19bc7a9be5fce4af639b92` |
| 29 | `theorem` | [birthday_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-neg--c4cccf58785a7b1872ecdc3c.md) | 252 | `result-track:c4cccf58785a7b1872ecdc3c81f8283e968878994b55f56defc59896a6363bb7` |
| 30 | `theorem` | [le_birthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/le-birthday--7ef686e6a3b20cb87813e69d.md) | 257 | `result-track:7ef686e6a3b20cb87813e69d3cb0f846042f842968c5ebbadd0ed28fab99f1d8` |
| 31 | `theorem` | [neg_birthday_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/neg-birthday-le--b9377bf841c7255ac641b070.md) | 263 | `result-track:b9377bf841c7255ac641b070df39de87eae26b055b40df8d06ed2e185e37f13b` |
| 32 | `theorem` | [birthday_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-add-le--ca835e99aab6e460401f383b.md) | 267 | `result-track:ca835e99aab6e460401f383bdb7331b6c55019c8742fdfac4d604e5677ae8fd0` |
| 33 | `theorem` | [birthday_sub_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/birthday-sub-le--1e94acc0e16819ed8db4bcf9.md) | 273 | `result-track:1e94acc0e16819ed8db4bcf9a7a4434f9eae10ce465ff98acbda344ecdbf29fc` |
| 34 | `theorem` | [small_setOf_birthday_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/declarations/small-setof-birthday-lt--67f520fe924e7aa2f5316ca0.md) | 281 | `result-track:67f520fe924e7aa2f5316ca091555202c8f5041f23d602e25f7a51f916cde6bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
