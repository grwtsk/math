# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingSymmetricCorrelation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "278d3e340294bd6fbf24780b1782e1b6325a0ffc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `278d3e340294bd6fbf24780b1782e1b6325a0ffc`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingShiftFibers`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [solvedHalfIndex_lower_eq_symmetricLeft](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/solvedhalfindex-lower-eq-symmetricleft--98639b132248119e9d2a6f7f.md) | 37 | `result-track:98639b132248119e9d2a6f7f308c12da6964a1819b8866056f099587d363a05f` |
| 2 | `theorem` | [solvedHalfIndex_upper_eq_symmetricRight](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/solvedhalfindex-upper-eq-symmetricright--f4e64caa673d390faafbbb58.md) | 47 | `result-track:f4e64caa673d390faafbbb58eb03b6196afd67355d4fa364949dc0adcd588487` |
| 3 | `theorem` | [halfIndexBinaryMobiusCoefficient_solved](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/halfindexbinarymobiuscoefficient-solved--05198008072bef537692c2d6.md) | 58 | `result-track:05198008072bef537692c2d6d55afbae077ac548812cfbe431af440cbe0314cf` |
| 4 | `def` | [parityZeroWindingSymmetricMobiusCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/parityzerowindingsymmetricmobiuscorrelation--719992f9c4f614609f3550a1.md) | 71 | `declaration-track:719992f9c4f614609f3550a1458181d1cad2cf17571d8a0a0134b3b06c0e5d41` |
| 5 | `theorem` | [parityZeroWindingShiftFiberCorrelation_eq_symmetric](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/parityzerowindingshiftfibercorrelation-eq-symmetric--a16c0b41c2c17c3acabd2409.md) | 80 | `result-track:a16c0b41c2c17c3acabd24093ed3daf58b238da9ca2e98ede843fc89a48205bb` |
| 6 | `theorem` | [parityHalfIndexZeroWindingFiberEnergy_eq_symmetric](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/parityhalfindexzerowindingfiberenergy-eq-symmetric--f8cb2dd0ef0d33b8054adb5e.md) | 96 | `result-track:f8cb2dd0ef0d33b8054adb5e61ee06f5448f34698685b0ff4a8c4f6cef1d1dea` |
| 7 | `def` | [parityEvenZeroWindingSymmetricSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/parityevenzerowindingsymmetricsecondmoment--d2f95bb2afc0cc2c48b0d692.md) | 109 | `declaration-track:d2f95bb2afc0cc2c48b0d6920495652a0840b9d53f12c5ebf4fee27adfdd3040` |
| 8 | `def` | [parityOddZeroWindingSymmetricSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/parityoddzerowindingsymmetricsecondmoment--993971ebf54bf684dae24beb.md) | 116 | `declaration-track:993971ebf54bf684dae24bebaf7425c8bdb8fe0fc9edbce5185259b69ab09c5a` |
| 9 | `theorem` | [evenZeroWindingFiberEnergy_eq_symmetricSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/evenzerowindingfiberenergy-eq-symmetricsecondmoment--c90617adcd5daae225bb4125.md) | 123 | `result-track:c90617adcd5daae225bb4125ed4e1ac23b8b09af9e6bb9bc26d3baf42944abdf` |
| 10 | `theorem` | [oddZeroWindingFiberEnergy_eq_symmetricSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/oddzerowindingfiberenergy-eq-symmetricsecondmoment--b3f1c325e1d662962cc65f74.md) | 133 | `result-track:b3f1c325e1d662962cc65f7465a35aebc0d9dc70f4470ee9526473aa6ffa64b4` |
| 11 | `def` | [twoNonunitRegularZeroWindingSymmetricSecondMomentMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/twononunitregularzerowindingsymmetricsecondmomentmajorant--5feb8ecf6443cb3890c1e06a.md) | 144 | `declaration-track:5feb8ecf6443cb3890c1e06a0cd1b1699b7b37a4bd475a6e02d36f21fb6abd15` |
| 12 | `theorem` | [zeroWindingFiberEnergyMajorant_eq_symmetricSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/zerowindingfiberenergymajorant-eq-symmetricsecondmoment--39f156ab899231ff2307fdb4.md) | 153 | `result-track:39f156ab899231ff2307fdb4a23d928c2ec446d63d2304e3bd957a342eec908b` |
| 13 | `structure` | [RegularZeroWindingSymmetricCorrelationSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/regularzerowindingsymmetriccorrelationsourcedata--cf8fd6191ccfafb6ef7b4836.md) | 166 | `declaration-track:cf8fd6191ccfafb6ef7b4836489404ff6080d91672427da46dbbebcea09ae07e` |
| 14 | `def` | [RegularZeroWindingSymmetricCorrelationSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/declarations/regularzerowindingsymmetriccorrelationsource--55e06d677c02589e0174948a.md) | 177 | `declaration-track:55e06d677c02589e0174948a5aa027a12ec4132c214eede519de516727469615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
