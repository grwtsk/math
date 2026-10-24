# Verification target: GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23767c93a5de35658937b70b3deeb8538ec759b3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachCircleIntegral.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23767c93a5de35658937b70b3deeb8538ec759b3`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachCircleIntegral.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachCircleIntegral.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.UnitIntervalCharacters`](../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/UnitIntervalCharacters.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachWeighted`](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachExponentialSum](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/goldbachexponentialsum--b696de32789bede392e6deeb.md) | 34 | `declaration-track:b696de32789bede392e6deeb97d700ceb2e88a306266f2bef7a59c42a2cc8550` |
| 2 | `def` | [goldbachCircleIntegrand](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/goldbachcircleintegrand--cf408ef9d67474b0acc9f927.md) | 40 | `declaration-track:cf408ef9d67474b0acc9f92703d99ab4caface254caef1f7134012fa160aeec5` |
| 3 | `def` | [goldbachFrequencyTerm](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/goldbachfrequencyterm--45451bd40b60103bc16c901b.md) | 45 | `declaration-track:45451bd40b60103bc16c901bb76bc9b93fc727eee7120edabba5c2c4151318ac` |
| 4 | `def` | [goldbachFrequencySum](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/goldbachfrequencysum--303fd8247f7d8a383df4c8bd.md) | 50 | `declaration-track:303fd8247f7d8a383df4c8bd123ea2efe49a7141bdd63a1d4cdb6ea7abbf22e5` |
| 5 | `theorem` | [continuous_goldbachFrequencyTerm](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/continuous-goldbachfrequencyterm--1630b1d93d9197a26101c4d6.md) | 55 | `result-track:1630b1d93d9197a26101c4d62e577432ad88a16cc1f85d566ffb039c439abbad` |
| 6 | `theorem` | [continuous_goldbachFrequencySum](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/continuous-goldbachfrequencysum--2ca6f1b585348dca3a0f1d4e.md) | 61 | `result-track:2ca6f1b585348dca3a0f1d4e6d24be334a928803cb6cf0910d6d95e866e2170a` |
| 7 | `theorem` | [goldbachCircleIntegrand_eq_frequencySum](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/goldbachcircleintegrand-eq-frequencysum--5cde629448b5f6b2d2e75265.md) | 68 | `result-track:5cde629448b5f6b2d2e75265768dca893443312caa82698e8fb1757192ce9d98` |
| 8 | `theorem` | [integral_goldbachFrequencyTerm](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/integral-goldbachfrequencyterm--3d08f9a35e4147aca2c2be07.md) | 81 | `result-track:3d08f9a35e4147aca2c2be07e6acffa2a266dd58bc53b7c035aed9204dbc555a` |
| 9 | `theorem` | [goldbachCircleIntegral_eq_indicatorSum](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/goldbachcircleintegral-eq-indicatorsum--9a06dd010b269c4372133ddf.md) | 101 | `result-track:9a06dd010b269c4372133ddfb1263b71e6723c095f962f816ac577e8e034644d` |
| 10 | `theorem` | [goldbachIndicatorSum_eq_logMass](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/goldbachindicatorsum-eq-logmass--40b138b19fb882eb4be44865.md) | 137 | `result-track:40b138b19fb882eb4be4486532f8d07b085d2957a5e6ea746e665afb9a2941e8` |
| 11 | `theorem` | [goldbachCircleIntegral_eq_logMass](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/declarations/goldbachcircleintegral-eq-logmass--1d703a0ec774dae436cbbce1.md) | 155 | `result-track:1d703a0ec774dae436cbbce13f8c364d72b6fd60bc5a1340acdf454d3adcb7a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
