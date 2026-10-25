# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59b0beca59f2084d93e8e7e35fd75f23cab7561d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59b0beca59f2084d93e8e7e35fd75f23cab7561d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Nontrivial.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nonempty` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoPointing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/twopointing--ab0b1dc71ebb8ddf3aaf81b4.md) | 32 | `declaration-track:ab0b1dc71ebb8ddf3aaf81b4eb21fb1ec3f1531812a2693a4d30b453fd8ea4ca` |
| 2 | `theorem` | [snd_ne_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/snd-ne-fst--7397daa645bfe41e4374f2ad.md) | 43 | `result-track:7397daa645bfe41e4374f2ad290a44644948353d8968749fdde9660e022de015` |
| 3 | `def` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/swap--9f9965247279ce2f8f57a8e2.md) | 48 | `declaration-track:9f9965247279ce2f8f57a8e2bd89c84a2423bd14de3dcf6ee3ad81e07cef1bad` |
| 4 | `theorem` | [swap_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/swap-fst--b55b3745045d6bbfa80040bb.md) | 51 | `result-track:b55b3745045d6bbfa80040bbd84672de68efd5002772b3185bac5fb36f7dbd55` |
| 5 | `theorem` | [swap_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/swap-snd--1d43f0fa6b216766b158fe56.md) | 53 | `result-track:1d43f0fa6b216766b158fe567106d74152c216752c4a3a5067903bf9f4099e94` |
| 6 | `theorem` | [swap_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/swap-swap--ab0fd719c7e35ca2b883b73d.md) | 56 | `result-track:ab0fd719c7e35ca2b883b73d87e0003a88f90d8bb38b3bcf0294c48ac46ac375` |
| 7 | `theorem` | [to_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/to-nontrivial--274d15aaf21d9f27b5af760b.md) | 59 | `result-track:274d15aaf21d9f27b5af760b923a13f6089269c8aa9d69629212e70cec2e7ab5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/instance--3e36cef80235402e15535039.md) | 62 | `declaration-track:3e36cef80235402e155350396cd4f0bca0280a455acdbec7a1c3279443ec2eff` |
| 9 | `theorem` | [nonempty_two_pointing_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/nonempty-two-pointing-iff--60ddaaec0139890316e6b8d9.md) | 67 | `result-track:60ddaaec0139890316e6b8d9a5ddb4cd95b6b3cfb21fc45b6a41094e71a4e8bc` |
| 10 | `def` | [pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/pi--6da8104230bca10a54d6e2f1.md) | 75 | `declaration-track:6da8104230bca10a54d6e2f18e479d9be56d8d3a47bc2ee0b5fed1e2b9208319` |
| 11 | `theorem` | [pi_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/pi-fst--583a5c03b71da2ca03b7de4d.md) | 81 | `result-track:583a5c03b71da2ca03b7de4df69a64a4397b9bec047e4d7f46c97e4bdff7a408` |
| 12 | `theorem` | [pi_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/pi-snd--390fadcf48a057a42cda17ed.md) | 85 | `result-track:390fadcf48a057a42cda17edfa30fa56601f651d94b16c691d64b4784415ae94` |
| 13 | `def` | [prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/prod--b1f4e96457b8aa0d766e0625.md) | 91 | `declaration-track:b1f4e96457b8aa0d766e06259d6bd90a66dda36ba44fbd0339b927b48f4fb17c` |
| 14 | `theorem` | [prod_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/prod-fst--474a7cc28b123d4b36a4793b.md) | 97 | `result-track:474a7cc28b123d4b36a4793b96f7de128bbceb58df48e0b64143ff3b83fc194b` |
| 15 | `theorem` | [prod_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/prod-snd--21ddfe92bccc75ef772507af.md) | 101 | `result-track:21ddfe92bccc75ef772507afc11100326fbec4332361c03900ce1d80f4a037e9` |
| 16 | `def` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/sum--7647c62e0341223d60b8c805.md) | 106 | `declaration-track:7647c62e0341223d60b8c8054f085b4c854f084829bd7f3c55acc8d974eaa8a8` |
| 17 | `theorem` | [sum_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/sum-fst--0d3af4f7ff40061b933feca9.md) | 110 | `result-track:0d3af4f7ff40061b933feca9650954a16d76b6264e99353c98481003d4bdbe0d` |
| 18 | `theorem` | [sum_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/sum-snd--718df55af79dbd2dcd73b652.md) | 114 | `result-track:718df55af79dbd2dcd73b652d8662702cf7d92dec0faa6a5eb9ef7ab230f3502` |
| 19 | `def` | [bool](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/bool--dc0baeba76fe5baaa665f737.md) | 118 | `declaration-track:dc0baeba76fe5baaa665f7372f89597a06dbea9748e6cb9c8a0dade22e7e8ce6` |
| 20 | `theorem` | [bool_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/bool-fst--b062543305df352269f270bd.md) | 122 | `result-track:b062543305df352269f270bd4c083510380d792633fd6de0011e75a1efc24085` |
| 21 | `theorem` | [bool_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/bool-snd--ee25f05113f13fc05f9b1985.md) | 125 | `result-track:ee25f05113f13fc05f9b198548460f1a5406d455dab193a83010e0305f16efd5` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/instance--1c0541b30c2634a33146b442.md) | 127 | `declaration-track:1c0541b30c2634a33146b442f61dd3c7c512b3dcdf6c435af0ba8aa3bba6754f` |
| 23 | `def` | [prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/prop--191b24990640e453fa8431a4.md) | 131 | `declaration-track:191b24990640e453fa8431a49f718b642762d9da1b2d136c415cbb92b689b2a4` |
| 24 | `theorem` | [prop_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/prop-fst--1f52fb874f9255f89c225b45.md) | 135 | `result-track:1f52fb874f9255f89c225b45a0007a9ca912e25bdcdb0be3ffb5d6e2d8cb6e4f` |
| 25 | `theorem` | [prop_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6.lean/declarations/prop-snd--ae294a533529ae01618708de.md) | 139 | `result-track:ae294a533529ae01618708de6cceaf4b3c86ad9da119dc0ddef7d0f839f6fdfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
