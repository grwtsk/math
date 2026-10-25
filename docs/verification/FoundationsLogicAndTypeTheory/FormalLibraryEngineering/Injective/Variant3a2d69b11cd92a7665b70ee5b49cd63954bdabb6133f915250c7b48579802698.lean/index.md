# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injective.Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "987cba36eb760d71ed21511bd294cf9bd188845b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `987cba36eb760d71ed21511bd294cf9bd188845b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Refl` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.SameCtorUtils` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Injection` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Attr` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkAnd?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkand--4a22ec7562fefaf949f19b49.md) | 26 | `declaration-track:4a22ec7562fefaf949f19b49714c64450ffea12609fac95006237134bfe81d35` |
| 2 | `def` | [elimOptParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/elimoptparam--3c2135a5b4a0be79c9aaeed6.md) | 35 | `declaration-track:3c2135a5b4a0be79c9aaeed620af7fd24286c637b756892e062bc00b759c98cc` |
| 3 | `def` | [mkEqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkeqs--f79c93388be335ad64943c29.md) | 42 | `declaration-track:f79c93388be335ad64943c2958f41ebec3b75b917f8937d8e28eb4be0764b4ee` |
| 4 | `def` | [mkInjectiveTheoremTypeCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectivetheoremtypecore--46328af77bd5d6ebea0ec6e7.md) | 52 | `declaration-track:46328af77bd5d6ebea0ec6e72e3a711b4fe0e64d6b03bbd9df9683927063ea3d` |
| 5 | `def` | [mkInjectiveTheoremType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectivetheoremtype--70b3cb1638521fff39b02588.md) | 87 | `declaration-track:70b3cb1638521fff39b025880fa99fc8beb12fa970bf566c43bf93cebeeb6dd0` |
| 6 | `def` | [injTheoremFailureHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/injtheoremfailureheader--9f28517f95f3f826e9309b3d.md) | 90 | `declaration-track:9f28517f95f3f826e9309b3df7ad6bb5f16c9bb30aaec30ebd2773cce71a7381` |
| 7 | `def` | [throwInjectiveTheoremFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/throwinjectivetheoremfailure--c0dbeadd319a2f1155e9c5b6.md) | 93 | `declaration-track:c0dbeadd319a2f1155e9c5b641f7a5051aaa3db4496a6cdab0c1fa959b8f5774` |
| 8 | `def` | [splitAndAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/splitandassumption--8a98e3f38ba889844a1441ca.md) | 96 | `declaration-track:8a98e3f38ba889844a1441ca58dd2ee8484e7e96373f7cc971ee3d5a33b95a17` |
| 9 | `def` | [solveEqOfCtorEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/solveeqofctoreq--9640734c35e343309f7cbedc.md) | 101 | `declaration-track:9640734c35e343309f7cbedcdaa6a46eced597a491f483cef725379d0fec466e` |
| 10 | `def` | [mkInjectiveTheoremValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectivetheoremvalue--d5c8697289c2a272c7c476a5.md) | 107 | `declaration-track:d5c8697289c2a272c7c476a515c4e50db357271420c2e90da88a203e755e8f26` |
| 11 | `def` | [mkInjectiveTheoremNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectivetheoremnamefor--71b248e3467b4b71e9c83f76.md) | 113 | `declaration-track:71b248e3467b4b71e9c83f76e282587f9e3203f73401278cf02fcf05e7839cf3` |
| 12 | `def` | [mkInjectiveTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectivetheorem--a2fb9e6f57a90f4cbb891fd1.md) | 116 | `declaration-track:a2fb9e6f57a90f4cbb891fd186b579ff63a82992d67729a275e944748a923431` |
| 13 | `def` | [mkInjectiveEqTheoremNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectiveeqtheoremnamefor--bd490042e68f955c5613cb48.md) | 130 | `declaration-track:bd490042e68f955c5613cb489ec8839f26ed1ca151bc098c335f99a8d0486bcf` |
| 14 | `def` | [mkInjectiveEqTheoremType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectiveeqtheoremtype--4b266f8f7a2ce87dc548632c.md) | 133 | `declaration-track:4b266f8f7a2ce87dc548632c3095b18383136c61b5226cd558db207560bfe761` |
| 15 | `def` | [andProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/andprojections--618aa23344406227702faa47.md) | 140 | `declaration-track:618aa23344406227702faa47d368fd31ebc2c41eebe54e71766abf2db1724b20` |
| 16 | `def` | [mkInjectiveEqTheoremValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectiveeqtheoremvalue--fa1c3be9f8967d3b10e8866f.md) | 151 | `declaration-track:fa1c3be9f8967d3b10e8866f8b7e62199d0ce8999f3199a4e018122f1be56e72` |
| 17 | `def` | [mkInjectiveEqTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectiveeqtheorem--fc0373afc876da69a0f6ab1e.md) | 173 | `declaration-track:fc0373afc876da69a0f6ab1ee609920e8724ee496fde5dbac092f8f3a20364a6` |
| 18 | `def` | [mkInjectiveTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkinjectivetheorems--d0de462d84164d5326f2d56c.md) | 195 | `declaration-track:d0de462d84164d5326f2d56c25b64a57e766e77dcb7f4f84796673a7d34d68ec` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/builtin-initialize--fd08c56414a21d7dcde5d584.md) | 213 | `declaration-track:fd08c56414a21d7dcde5d58443ba68df79f4d5ed33c87e1915973f5f98d074de` |
| 20 | `def` | [getCtorAppIndices?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/getctorappindices--ed38fa78e15f1b50905f0ac0.md) | 216 | `declaration-track:ed38fa78e15f1b50905f0ac01afa9ae33916415c8db74d7f1c44eb606213211a` |
| 21 | `structure` | [MkHInjTypeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkhinjtyperesult--fe3cd1b5aa25c9d3316d1d32.md) | 224 | `declaration-track:fe3cd1b5aa25c9d3316d1d3235f61b9d9c67e8d9c69480b7fed3b5754e8733d5` |
| 22 | `def` | [mkHInjType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkhinjtype--f9296b1dc363713d08bf4713.md) | 229 | `declaration-track:f9296b1dc363713d08bf4713c3469a4ab57b3a1a4c562f1f2806690a25070370` |
| 23 | `def` | [failedToGenHInj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/failedtogenhinj--2cb652439275bb8a1bf983db.md) | 262 | `declaration-track:2cb652439275bb8a1bf983dbcac180e1d383821768418d881f4791af32c9bc94` |
| 24 | `def` | [mkHInjectiveTheoremValue?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkhinjectivetheoremvalue--088459f00aee166a5dbfc921.md) | 265 | `declaration-track:088459f00aee166a5dbfc9211040f6777d84f96469fbc79d554d10bdffac758a` |
| 25 | `def` | [hinjSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/hinjsuffix--043fece376dc43f1729ebf76.md) | 288 | `declaration-track:043fece376dc43f1729ebf763c07f96e806d70823f41efe1dfca213659e17f8c` |
| 26 | `def` | [mkHInjectiveTheoremNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkhinjectivetheoremnamefor--5ac95ff61c7c8c6b72fafbf1.md) | 290 | `declaration-track:5ac95ff61c7c8c6b72fafbf1a44dee37a9eda3fd531ea9305f78e8c206e11168` |
| 27 | `def` | [mkHInjectiveTheorem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/mkhinjectivetheorem--fe6323f1e7a26a2d713fe9a4.md) | 293 | `declaration-track:fe6323f1e7a26a2d713fe9a4bd26c347a5af76f6d6a310948331f0aee24dd649` |
| 28 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/builtin-initialize--2339980eeeebe5b17fdc43c3.md) | 298 | `declaration-track:2339980eeeebe5b17fdc43c38e43fc130c39b2fbc980e6e2e640b5ad6df935b3` |
| 29 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant3a2d69b11cd92a7665b70ee5b49cd63954bdabb6133f915250c7b48579802698.lean/declarations/builtin-initialize--ec6291d55b5ca8366527bd27.md) | 303 | `declaration-track:ec6291d55b5ca8366527bd27b60fc31c9be701a4c45458f019a57607810200b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
