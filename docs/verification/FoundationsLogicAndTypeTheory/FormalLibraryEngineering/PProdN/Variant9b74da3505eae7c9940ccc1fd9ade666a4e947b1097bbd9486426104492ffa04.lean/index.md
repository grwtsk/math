# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PProdN.Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fabbe560294a078a94d86fbb7d07f37f080aab9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fabbe560294a078a94d86fbb7d07f37f080aab9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkPProd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/mkpprod--19649b3d9e38790c1673b496.md) | 36 | `declaration-track:19649b3d9e38790c1673b496d0f316ec5396f63c091d6a57d1e4ffb777da0b29` |
| 2 | `def` | [mkPProdMk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/mkpprodmk--df6fb5c81e6cd2157faf9bd4.md) | 45 | `declaration-track:df6fb5c81e6cd2157faf9bd4e7313575e7f6011e37d16376cbf986e97c1b964e` |
| 3 | `def` | [mkPProdFst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/mkpprodfst--a65d3bbb7327effce705d5c0.md) | 56 | `declaration-track:a65d3bbb7327effce705d5c028f27251942defe62307b83533d5191337d71470` |
| 4 | `def` | [mkPProdFstM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/mkpprodfstm--f4c865b69feaca1dba0d55a3.md) | 63 | `declaration-track:f4c865b69feaca1dba0d55a3e5483a5e92dfa9311a71c7d0de50de3d1e05b3f2` |
| 5 | `def` | [mkTypeSnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/mktypesnd--f096a0a300eb56a2a638a890.md) | 66 | `declaration-track:f096a0a300eb56a2a638a890100f4a0c218c2344b062095e5ec3bebce4be9155` |
| 6 | `def` | [mkPProdSnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/mkpprodsnd--22375f5400c1adfafe97307f.md) | 73 | `declaration-track:22375f5400c1adfafe97307f64ddd0c320e67bd8877a6b85fc50bef8800ca32a` |
| 7 | `def` | [mkPProdSndM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/mkpprodsndm--94775ea6596ba405064ca307.md) | 80 | `declaration-track:94775ea6596ba405064ca3078e6b11af392c4e6216867e232b8d3c7b793426e0` |
| 8 | `def` | [genMk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/genmk--aa9f1e1f7501b00b06aea8f0.md) | 89 | `declaration-track:aa9f1e1f7501b00b06aea8f0949d10c5cbaa81ce1a26d48b19dc372a4dc0bb5d` |
| 9 | `def` | [pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/pack--3cc576baadf00a215ef17490.md) | 94 | `declaration-track:3cc576baadf00a215ef17490cd5faeb0bbff90e70274aad9ded359c1eb4591a2` |
| 10 | `def` | [unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/unpack--a172638eca51d3f30eebde4d.md) | 104 | `declaration-track:a172638eca51d3f30eebde4dd811139d324e87e4b5f42141094e7905b70198c3` |
| 11 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/mk--7361812d4b1cb0abccb2b6f6.md) | 116 | `declaration-track:7361812d4b1cb0abccb2b6f67984f0dc9a11466b728c5d54aadb2e2273f37e33` |
| 12 | `def` | [proj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/proj--e772d17ba8841ca94c4f28e9.md) | 123 | `declaration-track:e772d17ba8841ca94c4f28e99f9a75adedeb0ca35fbce86225f919852a82724f` |
| 13 | `def` | [projs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/projs--36a564e836643738d3a44a30.md) | 136 | `declaration-track:36a564e836643738d3a44a302cfa215af8ae6a43539571832f5d16bb15e5fb20` |
| 14 | `def` | [projM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/projm--f4d379123b002e5d0b0b6701.md) | 140 | `declaration-track:f4d379123b002e5d0b0b67015ef46e5c1ade2b33250e54597b4997cffb8ec70c` |
| 15 | `def` | [packLambdas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/packlambdas--9685a0f9d8a0538ea323f62a.md) | 171 | `declaration-track:9685a0f9d8a0538ea323f62a5a38a80231337a3558c313cc3137ee965b0c17ed` |
| 16 | `def` | [mkLambdas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/mklambdas--06f28328a789088c2da7631b.md) | 187 | `declaration-track:06f28328a789088c2da7631b850181b206c8d9cd6d3ec9efaeba54f7fefcfab8` |
| 17 | `def` | [stripProjs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/stripprojs--4f1dc258815cd02fa327a734.md) | 198 | `declaration-track:4f1dc258815cd02fa327a734e6a3dd00982fb839fc8ee3e187294d472cfebbed` |
| 18 | `def` | [reduceProjs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant9b74da3505eae7c9940ccc1fd9ade666a4e947b1097bbd9486426104492ffa04.lean/declarations/reduceprojs--1ac18ee01f17f2856889d6a3.md) | 207 | `declaration-track:1ac18ee01f17f2856889d6a3db734edcb2baf8a58276512bb6154c0c71064fc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
