# Verification target: GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0aadd1999fa478e25c0f2fa4d6366d8b8706cc15",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0aadd1999fa478e25c0f2fa4d6366d8b8706cc15`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel`](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion`](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Measure.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_unitCharacter](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-unitcharacter--24d2d35421121fcb1f683d4b.md) | 41 | `result-track:24d2d35421121fcb1f683d4bbcd858a70ada40e76f81252cdae4e5ae475507f6` |
| 2 | `theorem` | [norm_goldbachRationalPhase](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachrationalphase--a144e5d4ff88f6cba53bc0d3.md) | 48 | `result-track:a144e5d4ff88f6cba53bc0d39b691da00b728be9a508ca8ebe5425dc8267a439` |
| 3 | `def` | [goldbachCoprimeResidues](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/goldbachcoprimeresidues--df2591f604404ca3a72ae6ae.md) | 55 | `declaration-track:df2591f604404ca3a72ae6aeed839879f38cde9de56c49f0254b6ceffe9eb454` |
| 4 | `theorem` | [card_goldbachCoprimeResidues](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/card-goldbachcoprimeresidues--bc6fb91fbb8c683d1d32d356.md) | 59 | `result-track:bc6fb91fbb8c683d1d32d35663c3f61c7cf4b05b32cf9bbc5580ac33d28ab0eb` |
| 5 | `theorem` | [norm_goldbachCoprimePhaseSum_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachcoprimephasesum-le--b62adb32cb4e9e1c46ddc053.md) | 64 | `result-track:b62adb32cb4e9e1c46ddc053b9b3d9cd9ff81c64fab883681d926f38d559ea41` |
| 6 | `theorem` | [norm_goldbachNormalizedRamanujanCoefficient_le_one](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachnormalizedramanujancoefficient-le-one--cfee024708f61329412f9e4e.md) | 86 | `result-track:cfee024708f61329412f9e4e77c0377494019778773ba02a657a3f0dad57c350` |
| 7 | `theorem` | [norm_goldbachIntegerExponentialKernel_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachintegerexponentialkernel-le--f555aa039a270bf6603f171f.md) | 108 | `result-track:f555aa039a270bf6603f171f12ab53e3f7983d319064d1b044e9636765b67e95` |
| 8 | `theorem` | [goldbachPrimeLogTotal_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/goldbachprimelogtotal-nonneg--ea23fe5aac4d12a8fe48f99b.md) | 125 | `result-track:ea23fe5aac4d12a8fe48f99be96520920bfa43cc7621dd02dce465d8590218e0` |
| 9 | `theorem` | [norm_goldbachExponentialSum_le_primeLogTotal](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachexponentialsum-le-primelogtotal--e96b0c7049f11ec07346add2.md) | 133 | `result-track:e96b0c7049f11ec07346add29b9e5838ddf37a46b41d847ebfc9b24ca31c041a` |
| 10 | `theorem` | [norm_goldbachResidueClassExponentialKernel_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachresidueclassexponentialkernel-le--502b656b4b6d438751b632b1.md) | 153 | `result-track:502b656b4b6d438751b632b18afca31386007280cf239b8c4f7c8c10a6914331` |
| 11 | `theorem` | [norm_goldbachProgressionExponentialModel_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachprogressionexponentialmodel-le--0e05600c2c2cbb21e26bee5f.md) | 164 | `result-track:0e05600c2c2cbb21e26bee5f817fcf49a2fbcd74845cc20578231eedc3b0e346` |
| 12 | `theorem` | [norm_goldbachProgressionExponentialDiscrepancy_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachprogressionexponentialdiscrepancy-le--c061da7ce40d445ae5a2c2ee.md) | 185 | `result-track:c061da7ce40d445ae5a2c2eec0af464d464e82d59fd52490a5e4b5d385b70d3d` |
| 13 | `theorem` | [norm_goldbachCenteredProgressionCircleResidual_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachcenteredprogressioncircleresidual-le--134218509776c91bad6cea7e.md) | 212 | `result-track:134218509776c91bad6cea7e85fb4672ae1ef9e2cf34c4794168807e46391d65` |
| 14 | `theorem` | [norm_goldbachCenteredProgressionCircleResidual_le_of_residue](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/norm-goldbachcenteredprogressioncircleresidual-le-of-residue--d63a9b875c79ae00de6babba.md) | 228 | `result-track:d63a9b875c79ae00de6babbaba93667ce3e6695ee95f23462af6e101483d94ac` |
| 15 | `theorem` | [measureReal_goldbachPeriodizedRationalArc_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/measurereal-goldbachperiodizedrationalarc-le--58109f44c64ea6195cd6b1a1.md) | 260 | `result-track:58109f44c64ea6195cd6b1a13ff6b12bdd21908ffb5b78fb00a7e866cffa77c1` |
| 16 | `theorem` | [measureReal_goldbachClippedRationalArc_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/declarations/measurereal-goldbachclippedrationalarc-le--c3c6a4303cf717c77b641aab.md) | 310 | `result-track:c3c6a4303cf717c77b641aab223e3ad7724b797d20cf68bccd57b6b2035e6047` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
