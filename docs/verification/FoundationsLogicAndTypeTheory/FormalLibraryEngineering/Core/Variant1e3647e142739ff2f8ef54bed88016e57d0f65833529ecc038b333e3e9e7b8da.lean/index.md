# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9a98c80b2c5637721bd7174c538e78b27d3d903",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9a98c80b2c5637721bd7174c538e78b27d3d903`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.Parser` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Invertible` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/syntax--d19c904a07570a96503b2550.md) | 30 | `declaration-track:d19c904a07570a96503b255045bd542937c80f137d97c4ad592445e175877be9` |
| 2 | `lemma` | [ne_of_ne_of_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/ne-of-ne-of-eq--675f2fbb8c8a11df283a9dfa.md) | 32 | `result-track:675f2fbb8c8a11df283a9dfa735d5f5bb0e52babd929ac0576ea6025c73918f7` |
| 3 | `inductive` | [Strictness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/strictness--dd32dbde38e2b3246021dbc8.md) | 39 | `declaration-track:dd32dbde38e2b3246021dbc882661a20890483fc628b7b37c027198779193ed9` |
| 4 | `def` | [Strictness.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/strictness-tostring--157a6b3c8432162b8cc9239c.md) | 47 | `declaration-track:157a6b3c8432162b8cc9239c5f9d8c6116cb6279d2209426f8c498a5a33450e1` |
| 5 | `structure` | [PositivityExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/positivityext--3713ecc140e886bcbf24b21c.md) | 54 | `declaration-track:3713ecc140e886bcbf24b21ccb5351b62a038422f70f29290b026199bdd45460` |
| 6 | `def` | [mkPositivityExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/mkpositivityext--b5816dd67465a2c26d19cf23.md) | 60 | `declaration-track:b5816dd67465a2c26d19cf237a2f468d73bc7ab00b3dc7adaa834ffee1b719de` |
| 7 | `abbrev` | [Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/entry--4ec692cdf855ebb494559f76.md) | 66 | `declaration-track:4ec692cdf855ebb494559f7680f92433648bb9afe49bc913130a7d4bf20bfad7` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/initialize--e4a5c13ac2d8d827bca5408f.md) | 69 | `declaration-track:e4a5c13ac2d8d827bca5408fc3a0335d76661fc3dd188ec01e7add1119bc8a06` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/initialize--eea9cc90f3d4deaea37de263.md) | 84 | `declaration-track:eea9cc90f3d4deaea37de2637716d2f2f055a8783947163311d215d1bd04a99a` |
| 10 | `lemma` | [lt_of_le_of_ne'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/lt-of-le-of-ne--4d3e00ab7bd55cb7070d392c.md) | 108 | `result-track:4d3e00ab7bd55cb7070d392ca7a8a175bb226ad48e2d14ee355afe609a88a11f` |
| 11 | `lemma` | [pos_of_isNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/pos-of-isnat--11f8824e562a0cddf4c07416.md) | 111 | `result-track:11f8824e562a0cddf4c07416f3dad62454ad3a686ec4f3684f96e3e0c5fe6e18` |
| 12 | `lemma` | [nonneg_of_isNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/nonneg-of-isnat--422afe36224d45db60716ad1.md) | 117 | `result-track:422afe36224d45db60716ad1108dc1aa76e63829921cacf30e057fd8dee9b12f` |
| 13 | `lemma` | [nz_of_isNegNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/nz-of-isnegnat--376bee754d07ad83222daffe.md) | 122 | `result-track:376bee754d07ad83222daffea12fe6edcd03dc6e27e791a25e3c55b04db8568a` |
| 14 | `lemma` | [pos_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/pos-of-israt--0a39ba80960e78fae395304b.md) | 129 | `result-track:0a39ba80960e78fae395304bd5f17b75425a7fc446099c157c1d01fbe2f9267f` |
| 15 | `lemma` | [nonneg_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/nonneg-of-israt--04b644a87b05954d6ab07376.md) | 137 | `result-track:04b644a87b05954d6ab07376869841a560e6ac799fcacbb2370586a9dbc9a08e` |
| 16 | `lemma` | [nz_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/nz-of-israt--6f4d56173c5f0cca8abd4b9d.md) | 141 | `result-track:6f4d56173c5f0cca8abd4b9de555b321bdbaed024501efd3b1b281cab2971ca4` |
| 17 | `def` | [catchNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/catchnone--c53f5421a1e4b6fca9fb2d7d.md) | 153 | `declaration-track:c53f5421a1e4b6fca9fb2d7d50a0d2041ec75d4313d07bfb6c2793c1738c18f5` |
| 18 | `def` | [throwNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/thrownone--e79c44e949029ab595ad58b0.md) | 161 | `declaration-track:e79c44e949029ab595ad58b00f4b0448818d7c0dbd9d8bca1bd2273c22be4ec4` |
| 19 | `def` | [normNumPositivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/normnumpositivity--e6812446327fc81ac53140ea.md) | 168 | `declaration-track:e6812446327fc81ac53140ea44a67c529755fb52d5a912018063716ccf6c5936` |
| 20 | `def` | [positivityCanon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/positivitycanon--82c872b81ce36e8528e1d1fb.md) | 204 | `declaration-track:82c872b81ce36e8528e1d1fb76dd76abc6727e003c4faa01c98bc38a21f79271` |
| 21 | `def` | [compareHypLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/comparehyple--509937f92168d877d482809d.md) | 210 | `declaration-track:509937f92168d877d482809ddb2ca4ebcd60f52007f7b117bc96d99c506a948a` |
| 22 | `def` | [compareHypLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/comparehyplt--60f0785ad9d86231ff1cfbab.md) | 217 | `declaration-track:60f0785ad9d86231ff1cfbab8922942efd87cf1131daa91bbf86ff0eb3b82601` |
| 23 | `def` | [compareHypEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/comparehypeq--789786dd1e9f68376aa2b75b.md) | 224 | `declaration-track:789786dd1e9f68376aa2b75b1360881938bae9755cda6140252a21a84c68664d` |
| 24 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/initialize--4e7a1a9b5ac85caa5e7762d1.md) | 232 | `declaration-track:4e7a1a9b5ac85caa5e7762d1e4cc72ea7666fae487d93227aa212df483c84ed7` |
| 25 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/initialize--2504ebdd003e7b4f68de4c5a.md) | 233 | `declaration-track:2504ebdd003e7b4f68de4c5a1b131a3fdee4e3e4619f51a9a74c310e931a18d7` |
| 26 | `def` | [compareHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/comparehyp--b194b87251e958a1f8195928.md) | 237 | `declaration-track:b194b87251e958a1f819592856726a91fd522cb9def333bf468f4df831af4d50` |
| 27 | `def` | [orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/orelse--c99bd9221ca6f54684f747dc.md) | 269 | `declaration-track:c99bd9221ca6f54684f747dc9620dd1531d9c3db511ce3180b00df91de219208` |
| 28 | `def` | [core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/core--66daf1841ff33adb0f9a7bfe.md) | 286 | `declaration-track:66daf1841ff33adb0f9a7bfef5ce6571fb7aae054d0a60e21012a787fc3a70d0` |
| 29 | `inductive` | [OrderRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/orderrel--5848abfe1c7eab2ab7b9e9d0.md) | 305 | `declaration-track:5848abfe1c7eab2ab7b9e9d088555d37a075749d0daf83925222f5aa4cf4a9bb` |
| 30 | `def` | [solve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/solve--6bd6a2589d6b25d79182a254.md) | 317 | `declaration-track:6bd6a2589d6b25d79182a25480549350b9120bfcb21d5b8c01e9e84523617943` |
| 31 | `def` | [positivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/positivity--79bdf7c710e2a7be16eb2d4d.md) | 357 | `declaration-track:79bdf7c710e2a7be16eb2d4d5c6816d06280577b2e13d0cf90c7ffd444767165` |
| 32 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1e3647e142739ff2f8ef54bed88016e57d0f65833529ecc038b333e3e9e7b8da.lean/declarations/elab--7bb6f574e76a51ccd44f8a15.md) | 382 | `declaration-track:7bb6f574e76a51ccd44f8a1553c619cda2ffe6b3864e14a3959afcbd0cbb81f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
