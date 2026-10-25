# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classes.Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "571d41f762de0e22ca3f35ed1ba8f8446aa86f3c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `571d41f762de0e22ca3f35ed1ba8f8446aa86f3c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPreorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/ispreorder--b2490b84a96e3286892d23cd.md) | 54 | `declaration-track:b2490b84a96e3286892d23cd8f77a1308d1c10617da9ed8150a87d772880717c` |
| 2 | `class` | [IsPartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/ispartialorder--f6c476baad6e6c2cf6a510ae.md) | 63 | `declaration-track:f6c476baad6e6c2cf6a510ae29a94d9755c0fe7f804c8b94ae94b2146e997e90` |
| 3 | `class` | [IsLinearPreorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/islinearpreorder--f588b61f685bf593a3b652b4.md) | 71 | `declaration-track:f588b61f685bf593a3b652b4aa0176798219791afbb09d4806c7797a6631f4e9` |
| 4 | `class` | [IsLinearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/islinearorder--8d0f4c1c65f911c1e5c80543.md) | 79 | `declaration-track:8d0f4c1c65f911c1e5c80543919a09372492dad4ed7ef023d07402b10ed741f8` |
| 5 | `class` | [LawfulOrderLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/lawfulorderlt--eb5be16a560d4aebab2462b9.md) | 94 | `declaration-track:eb5be16a560d4aebab2462b93b247fb758269efa9cb15ee56b3d2844bc90fbd8` |
| 6 | `class` | [LawfulOrderBEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/lawfulorderbeq--93268b0fbcc0deb1275de019.md) | 101 | `declaration-track:93268b0fbcc0deb1275de01994e9922a586eaf6e63e3402c7fc59c71bceac7da` |
| 7 | `class` | [MinEqOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/mineqor--37bd934c51cdaa1057f9c739.md) | 111 | `declaration-track:37bd934c51cdaa1057f9c7393d47766d02af30bfc1898c027224dbd05927ed1b` |
| 8 | `theorem` | [MinEqOr.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/mineqor-elim--15d155bb5ddf20b4b09ebce2.md) | 118 | `result-track:15d155bb5ddf20b4b09ebce2e268a6e452f827bdacff9fcefaf7470ffe10115d` |
| 9 | `class` | [LawfulOrderInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/lawfulorderinf--26d2c87a19ff7fcea158d1dc.md) | 128 | `declaration-track:26d2c87a19ff7fcea158d1dca7350a23df801497957b94d5c5262edadddd17e6` |
| 10 | `class` | [LawfulOrderMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/lawfulordermin--a94dd482696f5097a7f620d0.md) | 139 | `declaration-track:a94dd482696f5097a7f620d0f89f7e52664463936c869f230fce88ab06f939e5` |
| 11 | `class` | [LawfulOrderLeftLeaningMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/lawfulorderleftleaningmin--4735a7cab41e8ba8e743593a.md) | 144 | `declaration-track:4735a7cab41e8ba8e743593a710eae54453d0f5b4aeeabbb6b852ff23db851a9` |
| 12 | `class` | [MaxEqOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/maxeqor--fb6087ac160ee9aa1168db8b.md) | 155 | `declaration-track:fb6087ac160ee9aa1168db8bf5fec4ece02444abb99c0594b4370bd300cb7d44` |
| 13 | `theorem` | [MaxEqOr.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/maxeqor-elim--326dc28aa5e360d36ab068e9.md) | 162 | `result-track:326dc28aa5e360d36ab068e9e32e5abbe492aa18e506def632a733c7758d0a20` |
| 14 | `class` | [LawfulOrderSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/lawfulordersup--af86440538c63c64ebd91577.md) | 172 | `declaration-track:af86440538c63c64ebd91577c395327f2b306679db470c0c850790445de151d5` |
| 15 | `class` | [LawfulOrderMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/lawfulordermax--02f0b696b358f8b35d9a1690.md) | 183 | `declaration-track:02f0b696b358f8b35d9a1690d263aaa2790b2722a1944f19cdff4eb1a787898d` |
| 16 | `class` | [LawfulOrderLeftLeaningMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9ac5d18a28594020211f78e2e12dd80a0ac6bde4cd654d35b9436f727eaff8c3.lean/declarations/lawfulorderleftleaningmax--db8c8b2f94af882ea24a92f8.md) | 188 | `declaration-track:db8c8b2f94af882ea24a92f860bc0db722ac2ed89c71f3b59bf55014eef951ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
