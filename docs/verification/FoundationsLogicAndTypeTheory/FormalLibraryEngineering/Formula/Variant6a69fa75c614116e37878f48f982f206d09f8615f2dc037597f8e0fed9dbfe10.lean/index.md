# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3672be107f50e2274f9827216f20f53c2db555cd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3672be107f50e2274f9827216f20f53c2db555cd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Algebra` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Formula.Semantics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [join](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/join--1cfb8f4f13f61a293b83c3f5.md) | 10 | `declaration-track:1cfb8f4f13f61a293b83c3f53500f88296601369c39418343021f8708a4bd3b5` |
| 2 | `abbrev` | [meet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/meet--1ff3568c67beefcbead25875.md) | 13 | `declaration-track:1ff3568c67beefcbead25875180973fcd2cfb0c386f05bf01e2ff4756508b86d` |
| 3 | `abbrev` | [compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/compl--374db0f6bcd5576b26895780.md) | 16 | `declaration-track:374db0f6bcd5576b26895780493513e00a329cb60e3472200cf3b44afb0f1b35` |
| 4 | `abbrev` | [bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/bot--5ef1c6e3159a1ead5ad32d5c.md) | 19 | `declaration-track:5ef1c6e3159a1ead5ad32d5cb9e8d8abfe8b53914732f1482ab54f3003ece2ea` |
| 5 | `abbrev` | [top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/top--710e24004b7dfcca15592e0c.md) | 22 | `declaration-track:710e24004b7dfcca15592e0c0d1ba2f0f2379b68bbb3aa07634cc4c0f2ce06f0` |
| 6 | `theorem` | [join_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/join-bot--aa13661e4498e21e5f2da917.md) | 25 | `result-track:aa13661e4498e21e5f2da9176e5ffdfdc605956b6cc2826174a04f2e7bd64d43` |
| 7 | `theorem` | [meet_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/meet-top--7836725373aa3d2bbdaaca0d.md) | 30 | `result-track:7836725373aa3d2bbdaaca0de6490e702522905470e0e6457fea1e1194ef9abf` |
| 8 | `theorem` | [join_idem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/join-idem--abdb29b4fd031689d5c0f5eb.md) | 35 | `result-track:abdb29b4fd031689d5c0f5ebbf99ed1cc0230454ca0e2173968539e7cfacc0ab` |
| 9 | `theorem` | [meet_idem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/meet-idem--713fa0e2477a4f2ed9bd9c93.md) | 40 | `result-track:713fa0e2477a4f2ed9bd9c936c6da6ecd213ff8ac179fe393e6ac3a7528f4c6d` |
| 10 | `theorem` | [join_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/join-top--a8bc960e4ab9774fc9a7167b.md) | 45 | `result-track:a8bc960e4ab9774fc9a7167bf553409bfdc06fb2a5586a32ef7e856704e626da` |
| 11 | `theorem` | [meet_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/meet-bot--cb5de231999c9fb07ea8303b.md) | 50 | `result-track:cb5de231999c9fb07ea8303b1aed83af195c56d2d207a66b2c3f5beda23cc40a` |
| 12 | `theorem` | [join_absorb](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/join-absorb--c1d4e6cb2d87a2e2d57d562c.md) | 55 | `result-track:c1d4e6cb2d87a2e2d57d562c73244cfddef15a8aa5e23a9b2e6ce0da45167f40` |
| 13 | `theorem` | [meet_absorb](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/meet-absorb--f233e4cdca38d501ef7342d6.md) | 60 | `result-track:f233e4cdca38d501ef7342d677d5c5b3de44fd8d8b0126526878ce55e56f78f0` |
| 14 | `theorem` | [join_meet_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/join-meet-distrib--1a5831840ab8708078ca070d.md) | 65 | `result-track:1a5831840ab8708078ca070d1e7c6c9dd7226b44b390ec43d1aaea9b6ce1ea41` |
| 15 | `theorem` | [meet_join_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/meet-join-distrib--a6905fdcda403ee5c0c1da00.md) | 72 | `result-track:a6905fdcda403ee5c0c1da00119be2a09bebed684d77aee5b31cc3b7ef7d908b` |
| 16 | `theorem` | [join_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/join-compl--8431423edc64216d405248b5.md) | 79 | `result-track:8431423edc64216d405248b55cc36e22d257596f0795f6eb01a08b63e6ef5f83` |
| 17 | `theorem` | [meet_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/meet-compl--4b6b530e2b166d080c28a6ea.md) | 84 | `result-track:4b6b530e2b166d080c28a6eaa5c359760a0db110c8e1f3135603f01c7f42f3aa` |
| 18 | `theorem` | [compl_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/compl-unique--6ed299ed4063243f71d759dd.md) | 89 | `result-track:6ed299ed4063243f71d759ddf729e38c978492e59099f7b864ed9876a530ffca` |
| 19 | `theorem` | [bot_ne_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formula/Variant6a69fa75c614116e37878f48f982f206d09f8615f2dc037597f8e0fed9dbfe10.lean/declarations/bot-ne-top--0356a2d9b1df8b1daa1e240c.md) | 99 | `result-track:0356a2d9b1df8b1daa1e240ce76e9224b7fac3bdc4ecb6148674ef99b551125b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
