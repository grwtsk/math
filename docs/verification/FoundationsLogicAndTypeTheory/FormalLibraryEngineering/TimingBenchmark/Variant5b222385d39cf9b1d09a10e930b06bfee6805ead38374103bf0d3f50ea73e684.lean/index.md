# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimingBenchmark.Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a868bf49dcba2fb1a2e870afedc58965a4c2af6a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a868bf49dcba2fb1a2e870afedc58965a4c2af6a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkPowerExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/mkpowerexpr--1156cdb1a285a69b05d0c35f.md) | 32 | `declaration-track:1156cdb1a285a69b05d0c35f547f91a570fe24a908188148409ceff45b447ab6` |
| 2 | `def` | [mkPolynomialExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/mkpolynomialexpr--7fc819c215bdbb07cb32e9a7.md) | 37 | `declaration-track:7fc819c215bdbb07cb32e9a71d196ad552e731b00b9ddca47dbcb093fe284c18` |
| 3 | `def` | [mkDeepMulExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/mkdeepmulexpr--9211bb0e3e0b6085424a7b0d.md) | 42 | `declaration-track:9211bb0e3e0b6085424a7b0d72aa622e72d45bd4e43af50886d01a7e838ba3b4` |
| 4 | `def` | [mkNestedSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/mknestedsin--1d129ee924bf8a95ac44ee14.md) | 47 | `declaration-track:1d129ee924bf8a95ac44ee14f9fbd36e4473452efb5333515448c4d4a1c0b9f5` |
| 5 | `def` | [mkExpandedBinomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/mkexpandedbinomial--10f434232cf2e8a89d0d25f7.md) | 52 | `declaration-track:10f434232cf2e8a89d0d25f70e263505241db409841bdd5bbe1a68bb7864b803` |
| 6 | `def` | [mkHornerPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/mkhornerpoly--b9c46805733a6b4739ccb9eb.md) | 59 | `declaration-track:b9c46805733a6b4739ccb9eb4eb7e4de878ab8cd8cbebdf2cb5c3610d474cc54` |
| 7 | `def` | [testIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/testintervalrat--3183bbe1a4dc6eb3c5c53eda.md) | 67 | `declaration-track:3183bbe1a4dc6eb3c5c53eda888e0d76e17a64bbda22b5dd5c2c54e1b3383943` |
| 8 | `def` | [smallIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/smallintervalrat--8bbbd93ce9f7be51ee0df827.md) | 68 | `declaration-track:8bbbd93ce9f7be51ee0df8271fbfb500f47e2de3d2cce9c12e2e045eab17b13e` |
| 9 | `def` | [testIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/testintervaldyadic--832fe8a44be2e4c713bf1ef4.md) | 69 | `declaration-track:832fe8a44be2e4c713bf1ef4acec3f5a15d246a6477b7b6130e35fddaa183030` |
| 10 | `def` | [smallIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/smallintervaldyadic--2f1c983932eec25f2e0942c7.md) | 70 | `declaration-track:2f1c983932eec25f2e0942c73477fcece58eda724a1748e1d33dc9c03ba8699d` |
| 11 | `def` | [evalRational](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/evalrational--62a581bf3eb820aa457c6264.md) | 74 | `declaration-track:62a581bf3eb820aa457c626432c87e17917babae2bdf0feff95d8fd62a9ea80a` |
| 12 | `def` | [evalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/evaldyadic--61e0fcfac33236d0add14da0.md) | 77 | `declaration-track:61e0fcfac33236d0add14da0816446a8496b457692f1e14924d193f0143f77c6` |
| 13 | `def` | [timeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/timeaction--197bff0e827674bba35b0779.md) | 83 | `declaration-track:197bff0e827674bba35b077993700f57337d1146fe8bfd4989834cac43521667` |
| 14 | `def` | [formatNanos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/formatnanos--eba5594aa0ff8c0afe2ac955.md) | 91 | `declaration-track:eba5594aa0ff8c0afe2ac95579a8fb79031e3cb197b2dc2c6e5e09e5f0be61fe` |
| 15 | `def` | [benchmarkExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/benchmarkexpr--c17b12f617fef93bad4ebc71.md) | 97 | `declaration-track:c17b12f617fef93bad4ebc71599f1c527b7728db664f890b6a9435fde6f1c054` |
| 16 | `def` | [benchmarkDyadicOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/benchmarkdyadiconly--0ecb6f5d623b64154b2691a4.md) | 116 | `declaration-track:0ecb6f5d623b64154b2691a4fe54acd5d796276e426c19954431b0b091161efe` |
| 17 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/main--6771b48757edada5c78f321d.md) | 127 | `declaration-track:6771b48757edada5c78f321daef675de92af965b43bd6ad1061cc002c1ca6528` |
| 18 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684.lean/declarations/main--ebb28d808126bafdefbbc0b2.md) | 211 | `declaration-track:ebb28d808126bafdefbbc0b2e5d7134c73a1fce001efa16f5da0eb7b2f0ea369` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
