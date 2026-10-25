# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ULiftable.Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d040c11c6a91de15edab3e1d278be12ffaa2801",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d040c11c6a91de15edab3e1d278be12ffaa2801`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Monad.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Cont` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Writer` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Functor` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Lawful` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ULiftable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/uliftable--e317d569d78cbc0d99e596ea.md) | 57 | `declaration-track:e317d569d78cbc0d99e596ea8ca4988142a3eb2ba2ac38aa3c26769246408b92` |
| 2 | `abbrev` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/symm--d50cd2dc6f17a4925969cf08.md) | 64 | `declaration-track:d50cd2dc6f17a4925969cf0847af86e744f9483f64dbed78a0a4c1d18ace1316` |
| 3 | `instance` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/refl--8ae5ab7d7855e91a8f3dab8e.md) | 67 | `declaration-track:8ae5ab7d7855e91a8f3dab8e0a7311fe1516d933a776f695f3c29945891a82df` |
| 4 | `abbrev` | [up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/up--e9d52f752902094bc1efbaee.md) | 72 | `declaration-track:e9d52f752902094bc1efbaee60ab0429e9346549e5548c7e213bdc681a893240` |
| 5 | `abbrev` | [down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/down--7415ce72442b5cf8d5735990.md) | 78 | `declaration-track:7415ce72442b5cf8d573599079b3a181bd898b8e2bad77ad4cebd31fcfac550e` |
| 6 | `def` | [adaptUp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/adaptup--2f60122c7b430c5b57c3a389.md) | 83 | `declaration-track:2f60122c7b430c5b57c3a38910c046ec47a9cf5f8b21cecd1b5cc3967a396a8b` |
| 7 | `def` | [adaptDown](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/adaptdown--31f3db5f123df32d32e89fd2.md) | 88 | `declaration-track:31f3db5f123df32d32e89fd22901741aeab82974851269faa425096c99c7e80c` |
| 8 | `def` | [upMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/upmap--a7666173b9cabc23701d785c.md) | 93 | `declaration-track:a7666173b9cabc23701d785c4399a74fdae755aaec867ce6d4cb5469520b2d9d` |
| 9 | `def` | [downMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/downmap--9bd39a754c26c4a8e5b9c888.md) | 98 | `declaration-track:9bd39a754c26c4a8e5b9c888c194a843f4a933c18a63ba728db9db8ea8bc58c0` |
| 10 | `abbrev` | [up'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/up--6d8dcf1f8684ee6e2aeaa79f.md) | 103 | `declaration-track:6d8dcf1f8684ee6e2aeaa79f20fd411462d24c2492a3ca78bc562b462e948997` |
| 11 | `abbrev` | [down'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/down--e729f08a714372f39bc3b311.md) | 108 | `declaration-track:e729f08a714372f39bc3b3118680e6a8324fc5219c73db94d9821a647180309f` |
| 12 | `theorem` | [up_down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/up-down--f05ac65c105baffcfe589937.md) | 112 | `result-track:f05ac65c105baffcfe58993756055b88164dee31dc837df7a1c65cca37d35ec5` |
| 13 | `theorem` | [down_up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/down-up--b73f9f3b9eaa00cd64eb311c.md) | 116 | `result-track:b73f9f3b9eaa00cd64eb311cfa7f171c3af7b4359ee281c1541f525f586bda46` |
| 14 | `instance` | [instULiftableId](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/instuliftableid--5b178439f765e38145035d4c.md) | 124 | `declaration-track:5b178439f765e38145035d4c571014bdb51589c2c572a52ee0a89b66d5a16e6d` |
| 15 | `def` | [StateT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/statet-uliftable--cff3037258a232175b5eda82.md) | 128 | `declaration-track:cff3037258a232175b5eda82fa753b4e996f0fe5db68d7174a9eb5d90e6715d2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/instance--3be59877f296cccff6f0ae22.md) | 133 | `declaration-track:3be59877f296cccff6f0ae22f0d970161240af5413166bed2fb5ae7dbb43776d` |
| 17 | `instance` | [StateT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/statet-instuliftableuliftulift--7c345d8620cf9a653a6ae087.md) | 136 | `declaration-track:7c345d8620cf9a653a6ae087d3ce8b0ecdb725c6fc80c56c01dc85b3cb9927d2` |
| 18 | `def` | [ReaderT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/readert-uliftable--05acb40bc86903afb5c306a1.md) | 141 | `declaration-track:05acb40bc86903afb5c306a163b19eaa5095d942c7a07fbfa4ae106bbcba718b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/instance--eb624738b4057fab7d8898cc.md) | 145 | `declaration-track:eb624738b4057fab7d8898cc63d2579e9a75bde29213bba980652122d0e797ed` |
| 20 | `instance` | [ReaderT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/readert-instuliftableuliftulift--05e3971c635994e4dcc77a2c.md) | 148 | `declaration-track:05e3971c635994e4dcc77a2cdbacf2150931857cde948515a8fd900163c882bd` |
| 21 | `def` | [ContT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/contt-uliftable--94b0f497858edcd000da1f44.md) | 153 | `declaration-track:94b0f497858edcd000da1f44e6e2a498b6e3f23f1860df9af2707d5c9029e0dc` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/instance--f077b10f9a95ad03fc2617d2.md) | 157 | `declaration-track:f077b10f9a95ad03fc2617d293e566976ea9d2d96b20396bd39c50db908e4730` |
| 23 | `instance` | [ContT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/contt-instuliftableuliftulift--4acdd15db59c3ea6a5d59a36.md) | 160 | `declaration-track:4acdd15db59c3ea6a5d59a363e78a311f50b9c7b8e30933ccafb5f2d7993e2e7` |
| 24 | `def` | [WriterT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/writert-uliftable--3f68911650a4acb709694f31.md) | 165 | `declaration-track:3f68911650a4acb709694f317bae6ad264d81223d55e4ea57e54a877ce3c5654` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/instance--eacdbbb09df0ad079749eb1a.md) | 169 | `declaration-track:eacdbbb09df0ad079749eb1a3926d0c2c8849a8a6507b4dc949d3987a37cf188` |
| 26 | `instance` | [WriterT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/writert-instuliftableuliftulift--206d003ad1aac822acdec09a.md) | 172 | `declaration-track:206d003ad1aac822acdec09a59b2e996269a9c1d058e3a980eca534474dcaed8` |
| 27 | `instance` | [Except.instULiftable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/except-instuliftable--b388840e132d75cfc1a6753f.md) | 176 | `declaration-track:b388840e132d75cfc1a6753f39a8d4db0af7a59a540f5fffb0f65ef1ef1ae706` |
| 28 | `instance` | [Option.instULiftable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/declarations/option-instuliftable--e12545726c9b29a9048a9906.md) | 183 | `declaration-track:e12545726c9b29a9048a9906bab913c6ec48e102fa890b00c433006084af4d51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
