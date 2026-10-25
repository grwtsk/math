# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lists.Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e2705f143e8670707527e007224551da47ac3c2",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e2705f143e8670707527e007224551da47ac3c2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lists'.](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/lists--1264e5146a827ebb05cbe80b.md) | 51 | `declaration-track:1264e5146a827ebb05cbe80b76b1316bb83cb4e3c58c36106ae56fa99112e254` |
| 2 | `def` | [Lists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/lists--2a1cdfc2adf6f2a35af0379e.md) | 62 | `declaration-track:2a1cdfc2adf6f2a35af0379e4173065275d531f8fe658e4bcc9925bfd575652e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--eee997aab68de1af6f63f328.md) | 68 | `declaration-track:eee997aab68de1af6f63f32839a1236e1004cd424afff03bc6876ad55380ec13` |
| 4 | `def` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/cons--e2ea9651852076bc58385d72.md) | 73 | `declaration-track:e2ea9651852076bc58385d7286749d3d026f5497e9c1332746fee3999981373c` |
| 5 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/tolist--6eb2732d7422522f7d6fd119.md) | 79 | `declaration-track:6eb2732d7422522f7d6fd119dc7aed9e7b4a2b07e3d3b8aa17b4e3e3b156d3d5` |
| 6 | `theorem` | [toList_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/tolist-cons--1de37b0c775ae03f810616b8.md) | 87 | `result-track:1de37b0c775ae03f810616b8209beb43f11fa08774bd1c22a6278b1929d09dd2` |
| 7 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/oflist--f3a96883b6f7f747afe29057.md) | 92 | `declaration-track:f3a96883b6f7f747afe29057d6c02d89325e09e67af57e85b35e40e44df2d1ea` |
| 8 | `theorem` | [to_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/to-oflist--6adcb23bf410b5cd184fe0ff.md) | 98 | `result-track:6adcb23bf410b5cd184fe0ff2b88abf51dd9a206e966a7fdfc757367d0e1aa3f` |
| 9 | `theorem` | [of_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/of-tolist--665db6028e4bac9459d0a154.md) | 102 | `result-track:665db6028e4bac9459d0a1542fdf83341a11896fcc0a6d3ed8265b1c334dd151` |
| 10 | `inductive` | [Lists.Equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/lists-equiv--f78e0e965f9a773d344074c0.md) | 125 | `declaration-track:f78e0e965f9a773d344074c0debb11b53787c267762d9215844f6b7c0f1d564b` |
| 11 | `inductive` | [Lists'.Subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/lists-subset--5be37cd30746b40bc41f7003.md) | 129 | `declaration-track:5be37cd30746b40bc41f70030551a506e0a59f36b86ca22454617c74f8fdd2ba` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--60c978d528f5dd08888227c1.md) | 148 | `declaration-track:60c978d528f5dd08888227c160aed0be5f28343e65e5cb684eb39415c20d42a5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--76aeafc3a6376dd981192399.md) | 153 | `declaration-track:76aeafc3a6376dd98119239934ccd7916904b253afe67bc59992cd13aecb442f` |
| 14 | `theorem` | [mem_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/mem-def--c9e540800ac691b91f95539e.md) | 156 | `result-track:c9e540800ac691b91f95539e4d3980ff41a3db37a9224ab747acf62f079283b4` |
| 15 | `theorem` | [mem_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/mem-cons--3a9d51f3156641de4167fe75.md) | 161 | `result-track:3a9d51f3156641de4167fe75f05c7ebdaf45e10f61db10e2876a7ca5a9fc3326` |
| 16 | `theorem` | [cons_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/cons-subset--98b9bf7238c2f285b32eae7a.md) | 165 | `result-track:98b9bf7238c2f285b32eae7a11cc1e6b4072654d027ec6645ce468c61d301a4f` |
| 17 | `theorem` | [ofList_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/oflist-subset--25ba39963f7b71b1b0210771.md) | 174 | `result-track:25ba39963f7b71b1b0210771a285070a207e124b5ea4db18b627bfcb463c63ad` |
| 18 | `theorem` | [Subset.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/subset-refl--d886b303231af970a48cf514.md) | 182 | `result-track:d886b303231af970a48cf5145a581e75cb942a157f390e261912616f28bdff61` |
| 19 | `theorem` | [subset_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/subset-nil--cb4ad32caa5651af04dfe79a.md) | 186 | `result-track:cb4ad32caa5651af04dfe79aba28161a5d14fc7eac59306cb27bc8fc95430557` |
| 20 | `theorem` | [mem_of_subset'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/mem-of-subset--40cae573db1fba0d35b88e43.md) | 193 | `result-track:40cae573db1fba0d35b88e43250d72ec04172ecafc6290733ebe1bcb309479ec` |
| 21 | `theorem` | [subset_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/subset-def--5009a20d5b4c847bffdc5c01.md) | 203 | `result-track:5009a20d5b4c847bffdc5c01126f6b9cf9067e726c70c0662b44affd3f544d04` |
| 22 | `def` | [atom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/atom--f2a4948e223ce8577b66e812.md) | 218 | `declaration-track:f2a4948e223ce8577b66e81292691526d588d2117cb353150629679aa5f07aad` |
| 23 | `def` | [of'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/of--0a35bdb05487f34c4dbeac54.md) | 224 | `declaration-track:0a35bdb05487f34c4dbeac547319b262f101e5553261dc994e2c053bed69bfeb` |
| 24 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/tolist--6094f38ac36026d6c9ba1624.md) | 230 | `declaration-track:6094f38ac36026d6c9ba1624e84f927c345f846971f8e8e9f3d828046f95d911` |
| 25 | `def` | [IsList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/islist--0ba66ec2700101360899bbca.md) | 235 | `declaration-track:0ba66ec2700101360899bbca843f82b4301d0a76861fd8b48ba10347c49c78a0` |
| 26 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/oflist--b83faff4f9aa90e402662531.md) | 240 | `declaration-track:b83faff4f9aa90e40266253125f3ff58d3e694fbfeb9b724ef9ab4a8be5f8408` |
| 27 | `theorem` | [isList_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/islist-tolist--810cb2bf213460b47b6ec4af.md) | 244 | `result-track:810cb2bf213460b47b6ec4af9ef0cde83a2b7d8c686ba108bc0ccf4cd278c140` |
| 28 | `theorem` | [to_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/to-oflist--31799358a438288d5fc139de.md) | 248 | `result-track:31799358a438288d5fc139de2ddf3ef4898d819cbe58b390e6ca57bffaa7a1cb` |
| 29 | `theorem` | [of_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/of-tolist--e85a62a7a0b91a0f603be8e4.md) | 251 | `result-track:e85a62a7a0b91a0f603be8e4178dabd8f4f8ffdc3b4e1465e3f5f60515818210` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--dec8cf83a99f2e7620ff9a15.md) | 255 | `declaration-track:dec8cf83a99f2e7620ff9a158418ff5866bd5699abdac63dd541bba027b76dda` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--5f6a80e392951c2f39a6a14c.md) | 258 | `declaration-track:5f6a80e392951c2f39a6a14c9ea38857ffbace25db66b975cff37ce330a00087` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--48f4c4e831f1072f6d8d2b34.md) | 260 | `declaration-track:48f4c4e831f1072f6d8d2b3458ce0cd9cba736dcd10b20ca3d46292453d7f8a4` |
| 33 | `def` | [inductionMut](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/inductionmut--c20f3cecb6bb6c489479f081.md) | 263 | `declaration-track:c20f3cecb6bb6c489479f0816a8a28e4a21d3441970c96e2f5f7847ea497afc9` |
| 34 | `def` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/mem--63bcfa2bd848603f9839cd43.md) | 284 | `declaration-track:63bcfa2bd848603f9839cd434fdd5a2f45dae8b170226e9da755b57d745cdbd9` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--945889a0fd894bbee5677bb1.md) | 289 | `declaration-track:945889a0fd894bbee5677bb1dcab66bc1712790370713d530628ac91ab148426` |
| 36 | `theorem` | [isList_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/islist-of-mem--10e9688959fddf507fbe2d9c.md) | 292 | `result-track:10e9688959fddf507fbe2d9c3aaaccc49d87d2fa4269f604f4d6b2c11bde6212` |
| 37 | `theorem` | [Equiv.antisymm_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/equiv-antisymm-iff--3c98e465955feda41d65443c.md) | 297 | `result-track:3c98e465955feda41d65443c3f1f6d87bac5f9e66240ede8f7e17aefd69d7146` |
| 38 | `theorem` | [equiv_atom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/equiv-atom--169a9474260836dda372a342.md) | 306 | `result-track:169a9474260836dda372a342cc7019156645d927adc2f9e5f353aa197b896f23` |
| 39 | `theorem` | [Equiv.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/equiv-symm--c03699a906e4a8d18314312f.md) | 311 | `result-track:c03699a906e4a8d18314312f4f78133fc0b6ee176d5f4841b905be118e41bf34` |
| 40 | `theorem` | [Equiv.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/equiv-trans--861cdc9c67cd756a07b88e42.md) | 315 | `result-track:861cdc9c67cd756a07b88e42552c6479abe72da0634ba125f83ca166787ce54a` |
| 41 | `instance` | [instSetoidLists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instsetoidlists--6f74cc9c40e39ea13b12bbec.md) | 354 | `declaration-track:6f74cc9c40e39ea13b12bbec75ee182a640149066ba042872bd55f2023781a02` |
| 42 | `def` | [Equiv.decidableMeas](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/equiv-decidablemeas--5d7ff15e55862a9dd92e0a32.md) | 361 | `declaration-track:5d7ff15e55862a9dd92e0a327163e4768a8278ac7822e1197d51ad6604323900` |
| 43 | `theorem` | [sizeof_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/sizeof-pos--eaf789d95d49ff03fd4b0932.md) | 370 | `result-track:eaf789d95d49ff03fd4b0932ad98310f2bcfddd3fb4398896cc5c984619d562e` |
| 44 | `theorem` | [lt_sizeof_cons'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/lt-sizeof-cons--b30a3d0dc3a6a9c77c87f6b5.md) | 375 | `result-track:b30a3d0dc3a6a9c77c87f6b57f877baca5140b69f67a32aa19e85770da9be72b` |
| 45 | `instance` | [Equiv.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/equiv-decidable--ff223c4d8cca4b24543bed41.md) | 384 | `declaration-track:ff223c4d8cca4b24543bed413375ceea82350bb80c8f59803809f7400b8d983d` |
| 46 | `instance` | [Subset.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/subset-decidable--72ec12025b1b853d236762b0.md) | 405 | `declaration-track:72ec12025b1b853d236762b0446bf3f6d06cac22f11060fe8eece5834347f151` |
| 47 | `instance` | [mem.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/mem-decidable--a3e1452114b740c16e76058b.md) | 417 | `declaration-track:a3e1452114b740c16e76058b290f6264a59eef76ed11f08f08b81e1d417932ae` |
| 48 | `theorem` | [mem_equiv_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/mem-equiv-left--2b0fcb0b8c7d1ff2abd2f274.md) | 446 | `result-track:2b0fcb0b8c7d1ff2abd2f274f551c4c4b389b9906339f8fe4da9f23cc8032be7` |
| 49 | `theorem` | [mem_of_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/mem-of-subset--9eef9fa0dc55ab7c8dc9a5b3.md) | 451 | `result-track:9eef9fa0dc55ab7c8dc9a5b382d8002f3be0cee1bfc02da8199107d204772551` |
| 50 | `theorem` | [Subset.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/subset-trans--149665031df5f495b67266b1.md) | 455 | `result-track:149665031df5f495b67266b1a0c7e9b580493a98854e35da34ae91f8e1667ecd` |
| 51 | `def` | [Finsets](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/finsets--ebe50b9e8cdb113e0e0f47a4.md) | 462 | `declaration-track:ebe50b9e8cdb113e0e0f47a4acd081a6dc5d73f37e45d552de2341e5fd3140eb` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--3f4e44200cdba16965874b39.md) | 468 | `declaration-track:3f4e44200cdba16965874b39b023e66b24f2d9feaf77d7a18dbfa9ad215daec6` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--e7f4dcca2d40a527cf86d7d5.md) | 471 | `declaration-track:e7f4dcca2d40a527cf86d7d5bd09df3436346f344f5ec7613cf668452d58d7d7` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3606444b7e96f6a099767e5b405d1eab89d1062532ba2683929e70388ce54b99.lean/declarations/instance--88f134b856af712bdc9ecf76.md) | 474 | `declaration-track:88f134b856af712bdc9ecf7663ddd340c98912259066adf911d552e3b75d0636` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
