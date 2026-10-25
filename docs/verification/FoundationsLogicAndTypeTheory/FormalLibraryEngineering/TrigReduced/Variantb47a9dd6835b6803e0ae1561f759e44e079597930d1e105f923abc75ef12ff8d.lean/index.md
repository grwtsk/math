# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TrigReduced.Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3785ac7b91052d3e1fdb970df5adb3380ea4d711",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3785ac7b91052d3e1fdb970df5adb3380ea4d711`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalRat.Taylor` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piRatLo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/piratlo--9185b3d5e152d1b44f2a1ed2.md) | 49 | `declaration-track:9185b3d5e152d1b44f2a1ed2dab465edd79cc14672d81cd9cf2a7bbba3a2cab5` |
| 2 | `def` | [piRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/pirathi--397cdd8adad0f8f934d2d5fa.md) | 52 | `declaration-track:397cdd8adad0f8f934d2d5fa3c02c91dffb6932f2d9c7b4090b98cf7971b2d7d` |
| 3 | `def` | [twoPiRatLo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/twopiratlo--2c236ccf54808fb83719c775.md) | 55 | `declaration-track:2c236ccf54808fb83719c775562599c0f382073ba366648fca98b9f47b5d0432` |
| 4 | `def` | [twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/twopirathi--af5176e66476f8e8b0f746ad.md) | 58 | `declaration-track:af5176e66476f8e8b0f746addee8ba8a63f59b56e33dcaf8b3d66339e52b4ac0` |
| 5 | `theorem` | [piRatLo_lt_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/piratlo-lt-pi--3bc79a0cd92510e81e7aac8c.md) | 61 | `result-track:3bc79a0cd92510e81e7aac8c579ff09f0f3adcd81adc7dc37997748197ab9af1` |
| 6 | `theorem` | [pi_lt_piRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/pi-lt-pirathi--8963ec6958194bed4cfb6966.md) | 67 | `result-track:8963ec6958194bed4cfb6966029c557693741b75426441d58ca9f8d2e21106cb` |
| 7 | `theorem` | [twoPiRatLo_lt_two_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/twopiratlo-lt-two-pi--1d605e68a30cab29332df677.md) | 73 | `result-track:1d605e68a30cab29332df677c20121d7b9a85226a612d42f095d54d02dc2c2b3` |
| 8 | `theorem` | [two_pi_lt_twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/two-pi-lt-twopirathi--7a3f786ed61fdaf001ed4bf8.md) | 80 | `result-track:7a3f786ed61fdaf001ed4bf83bdff7348d7fa996c0c8e70d414123ffc5feaa14` |
| 9 | `theorem` | [twoPiRatLo_le_twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/twopiratlo-le-twopirathi--af79306efbdb24f63ca63014.md) | 87 | `result-track:af79306efbdb24f63ca63014c2ea30b7e2eda3c8513d1eb797dfa17cbb428697` |
| 10 | `def` | [computeShiftK](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/computeshiftk--3420c279a31325d22052b056.md) | 94 | `declaration-track:3420c279a31325d22052b056050632a078c96113d2dfd9713fc205e3fd3ccf3a` |
| 11 | `def` | [shiftInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/shiftinterval--0805850397b92f328a809a80.md) | 103 | `declaration-track:0805850397b92f328a809a80689a0e47195488264168abf32314cd93be647cf7` |
| 12 | `def` | [reduceToMainPeriod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/reducetomainperiod--72b33d9cc60458674caea773.md) | 121 | `declaration-track:72b33d9cc60458674caea773d7d657de6c82a205f04691031f8c20530a846649` |
| 13 | `theorem` | [mem_shiftInterval_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/mem-shiftinterval-of-mem--ff168544f4efc8d9da2137eb.md) | 128 | `result-track:ff168544f4efc8d9da2137ebb1c1794dd76060fdd06a1b91cde4780ad38e2652` |
| 14 | `def` | [sinComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/sincomputablereduced--5ab691229546655eecdfa829.md) | 175 | `declaration-track:5ab691229546655eecdfa829ea5531c7cd7466f1fc73cbef0d087c49792b1b0c` |
| 15 | `def` | [cosComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/coscomputablereduced--6682b651bd6eb1c234eacbbc.md) | 183 | `declaration-track:6682b651bd6eb1c234eacbbc1ed11f096596bf97853a4291bdc6b8a6ba0d6b65` |
| 16 | `theorem` | [mem_sinComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/mem-sincomputablereduced--6e62654a8abf5b4a031947f8.md) | 191 | `result-track:6e62654a8abf5b4a031947f8c6a88986cfe4fae247cd8987b91d01a249048b1a` |
| 17 | `theorem` | [mem_cosComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/declarations/mem-coscomputablereduced--81b18b2b5c56a249cfcbe98d.md) | 213 | `result-track:81b18b2b5c56a249cfcbe98dd254643afa89ffbedd6f6670789e6d0f0229b827` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
