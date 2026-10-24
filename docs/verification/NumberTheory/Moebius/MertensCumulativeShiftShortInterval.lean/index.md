# Verification target: GRWTSK.NumberTheory.Moebius.MertensCumulativeShiftShortInterval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4650da8d695ef5e8515236b255dcbf38a62143b5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4650da8d695ef5e8515236b255dcbf38a62143b5`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensCumulativeShiftAbel`](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftAbel.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicShortMobiusSum](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/declarations/harmonicshortmobiussum--729e728a75fb8f8617a55d87.md) | 21 | `declaration-track:729e728a75fb8f8617a55d879c4c76847e237bd73ea237a8d269414d2ef3ac12` |
| 2 | `theorem` | [cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/declarations/cumulativeharmonicshiftcorrelation-eq-shortintervalaverage--eeeb9c8b345444288e0208fd.md) | 28 | `result-track:eeeb9c8b345444288e0208fd5da0f560bd02db67ff5f99dd3a29c9b9630fb922` |
| 3 | `theorem` | [abs_cumulativeHarmonicShiftCorrelation_le_shortIntervalL1](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/declarations/abs-cumulativeharmonicshiftcorrelation-le-shortintervall1--09bcded7bd8a4207e024d8d8.md) | 51 | `result-track:09bcded7bd8a4207e024d8d8144b5f99dbb46fa97d5b127eecc2591cf15d5438` |
| 4 | `def` | [HarmonicShortIntervalL1Bound](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/declarations/harmonicshortintervall1bound--3a4069ee8ad8af6c33d31d76.md) | 75 | `declaration-track:3a4069ee8ad8af6c33d31d768f15a7eb0efe3cd58b5b264e87e4804802412614` |
| 5 | `theorem` | [abs_cumulativeHarmonicShiftCorrelation_le_of_shortIntervalL1](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/declarations/abs-cumulativeharmonicshiftcorrelation-le-of-shortintervall1--a8f8acfd28576302cb1d4379.md) | 83 | `result-track:a8f8acfd28576302cb1d43790e36ac0c7dde51d1fe2f498a5ebdbc0bbb35a0b7` |
| 6 | `structure` | [QuantitativeShortIntervalMobiusSource](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/declarations/quantitativeshortintervalmobiussource--1ff60ae03e15b243a61a300f.md) | 94 | `declaration-track:1ff60ae03e15b243a61a300f9ba078958b8ed9007fb14a12d1fb06568518c9ca` |
| 7 | `structure` | [ShortIntervalToHarmonicPacketAdapter](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/declarations/shortintervaltoharmonicpacketadapter--7ffb2d1df49a49b5361402fb.md) | 103 | `declaration-track:7ffb2d1df49a49b5361402fb8f38ace4116f3ae409f7e30d10349b8069935f9c` |
| 8 | `theorem` | [riemannHypothesis_of_shortIntervalAdapter](../../../../mathematics/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/declarations/riemannhypothesis-of-shortintervaladapter--21180e4329b7a4067336d7e0.md) | 115 | `result-track:21180e4329b7a4067336d7e02f0cb445bc11c97e24b15bf27cbae9a7d107e6d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
