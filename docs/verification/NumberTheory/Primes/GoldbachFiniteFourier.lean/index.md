# Verification target: GRWTSK.NumberTheory.Primes.GoldbachFiniteFourier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bc123bc2043b04402d5331304aaff32aa5e9919",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteFourier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteFourier.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteFourier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bc123bc2043b04402d5331304aaff32aa5e9919`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachFiniteFourier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachFiniteFourier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector`](../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachWeighted`](../../../../mathematics/NumberTheory/Primes/GoldbachWeighted.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Data.Complex.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachProjectorMass](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteFourier.lean/declarations/goldbachprojectormass--6c2a32dcdf6945fb3bc0e070.md) | 32 | `declaration-track:6c2a32dcdf6945fb3bc0e07022b4d88a058007d7bf50a4ced9e8bc34a24fa2e7` |
| 2 | `theorem` | [goldbachProjectorMass_eq_fullFrequency](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteFourier.lean/declarations/goldbachprojectormass-eq-fullfrequency--401a2c1e9be0f30d30368875.md) | 39 | `result-track:401a2c1e9be0f30d30368875a625be1a079c921f080048cba03db55e167d7de3` |
| 3 | `theorem` | [goldbachProjectorMass_eq_logMass](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteFourier.lean/declarations/goldbachprojectormass-eq-logmass--ba388d09a6dd7fb41c11f609.md) | 53 | `result-track:ba388d09a6dd7fb41c11f6098b5d1a1a86eb08cc3431228f612710fd9efcd3f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
