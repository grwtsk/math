# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TrigReduced.Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8236def4d1dc8de6064b30caac3bf5a91b01f21c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8236def4d1dc8de6064b30caac3bf5a91b01f21c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Trig` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Taylor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piRatLo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/piratlo--108c739d1765ea38c5894642.md) | 53 | `declaration-track:108c739d1765ea38c58946421971e32bebba6c608e6e40e53f878297de5cca54` |
| 2 | `def` | [piRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/pirathi--ca60f4d73acb2f5e8a591fd5.md) | 56 | `declaration-track:ca60f4d73acb2f5e8a591fd5a70769c44ae6511df0c2e0c194d0fa98c7a11dd7` |
| 3 | `def` | [twoPiRatLo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/twopiratlo--1792e82a7bfe474c24716ddf.md) | 59 | `declaration-track:1792e82a7bfe474c24716ddffbd9a0fe82e8f8d0c75a44f28521f587ab67661f` |
| 4 | `def` | [twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/twopirathi--f3134f8a484b6d92af84233a.md) | 62 | `declaration-track:f3134f8a484b6d92af84233a06db428b878ba502042cfc2a0c6bbdccad551818` |
| 5 | `theorem` | [piRatLo_lt_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/piratlo-lt-pi--d076e4ef8395de3e30de2ace.md) | 65 | `result-track:d076e4ef8395de3e30de2acea6655d63ef5b060af3d23d3645e8e652b844b6c1` |
| 6 | `theorem` | [pi_lt_piRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/pi-lt-pirathi--5202bfd2b5e8ef97e68e803d.md) | 71 | `result-track:5202bfd2b5e8ef97e68e803dd66849a4f2aabdc6a34f083c17a541885fd836cf` |
| 7 | `theorem` | [twoPiRatLo_lt_two_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/twopiratlo-lt-two-pi--faed4886d84fa3459730fa5f.md) | 77 | `result-track:faed4886d84fa3459730fa5f8a53a735c073b3571c1e5b3cf7aa913e5637330d` |
| 8 | `theorem` | [two_pi_lt_twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/two-pi-lt-twopirathi--0300793ef1135cd3e36546de.md) | 84 | `result-track:0300793ef1135cd3e36546de2e279fd334500ca501bee81fd2fbd7abcb673ae0` |
| 9 | `theorem` | [twoPiRatLo_le_twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/twopiratlo-le-twopirathi--a11fed1f734831b3903bbf36.md) | 91 | `result-track:a11fed1f734831b3903bbf361aa43e0bf90813c8a767b76d9ebb00e514b0eda1` |
| 10 | `def` | [computeShiftK](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/computeshiftk--10ee0b94c456ecd5571c4e88.md) | 98 | `declaration-track:10ee0b94c456ecd5571c4e88bc9facf68988bc9040cd63af9fc63b567801c635` |
| 11 | `def` | [shiftInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/shiftinterval--09a09b86e99aa20ab3323e16.md) | 107 | `declaration-track:09a09b86e99aa20ab3323e16f32658fc7bbbed4cb43b3e1417db913b1910a392` |
| 12 | `def` | [reduceToMainPeriod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/reducetomainperiod--7550671a4c6043a15bbcb586.md) | 125 | `declaration-track:7550671a4c6043a15bbcb586b49449a5b853e108ed0985e06e6102a7a5bdd2dc` |
| 13 | `theorem` | [mem_shiftInterval_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/mem-shiftinterval-of-mem--777159da76d1b9645fc21977.md) | 132 | `result-track:777159da76d1b9645fc21977a57b8f28e02c71a7c0572efa2776d7261c4dc469` |
| 14 | `theorem` | [mem_reduceToMainPeriod_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/mem-reducetomainperiod-of-mem--8709431f25d11793ba4d6807.md) | 177 | `result-track:8709431f25d11793ba4d680720d3a3339ae49016183919769988ac4ae96babfe` |
| 15 | `def` | [sinIntervalReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/sinintervalreduced--ed5061f6744f88d025fe3026.md) | 185 | `declaration-track:ed5061f6744f88d025fe3026961e850c2db7a6f9a48485a93533cb047e645437` |
| 16 | `def` | [cosIntervalReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/cosintervalreduced--a307d66b6f7ca73a40722de4.md) | 193 | `declaration-track:a307d66b6f7ca73a40722de42f3ff1f963dedbd8a3ecba44c813511f10db24ef` |
| 17 | `theorem` | [mem_sinIntervalReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/mem-sinintervalreduced--1428f5f47422136b7a9e7fee.md) | 203 | `result-track:1428f5f47422136b7a9e7feed70a770c85655d2ceff78b225b0dbf4e94fcbc34` |
| 18 | `theorem` | [mem_cosIntervalReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/mem-cosintervalreduced--663aa92bbe5fe4215d4f636e.md) | 226 | `result-track:663aa92bbe5fe4215d4f636ef2f3ea6bcbfdca1591653ef4b1643a04a50a5026` |
| 19 | `def` | [sinComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/sincomputablereduced--8a9fe7194fb09d72aa35ef34.md) | 257 | `declaration-track:8a9fe7194fb09d72aa35ef34bd1d7d71fd0cb3b63b5f92f1c9e52c9ee95f1213` |
| 20 | `def` | [cosComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/coscomputablereduced--972d205cbfefc5a58f0fd2e0.md) | 266 | `declaration-track:972d205cbfefc5a58f0fd2e0f30997a23b73054cd03b894a6063a63f3e849fb3` |
| 21 | `theorem` | [mem_sinComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/mem-sincomputablereduced--760683a3aec1a695c3208a27.md) | 274 | `result-track:760683a3aec1a695c3208a27fe42d119cbb22ad4721a9df96760abfc8a18dd16` |
| 22 | `theorem` | [mem_cosComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/declarations/mem-coscomputablereduced--4f0df8a2194477782d0838f7.md) | 296 | `result-track:4f0df8a2194477782d0838f76f633b6a5bf6dc981d681adb79d1b61a39c61a7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
