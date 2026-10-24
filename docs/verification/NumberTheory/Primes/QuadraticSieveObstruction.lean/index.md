# Verification target: GRWTSK.NumberTheory.Primes.QuadraticSieveObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "272f99f579a203c9912264b5ef5edec75c3cc3f3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/QuadraticSieveObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `272f99f579a203c9912264b5ef5edec75c3cc3f3`.

Source path: `GRWTSK/NumberTheory/Primes/QuadraticSieveObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/QuadraticSieveObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticCompositeSurvivor](../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/declarations/quadraticcompositesurvivor--b26dfd6698c23dcdc1e3d4cc.md) | 23 | `declaration-track:b26dfd6698c23dcdc1e3d4cc1cf38a316efae443c8eb6e480319df6c4bf69b00` |
| 2 | `theorem` | [dvd_quadraticCompositeSurvivor](../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/declarations/dvd-quadraticcompositesurvivor--68660554e0d91b521f689d64.md) | 27 | `result-track:68660554e0d91b521f689d64e88f26603d137aacbee333784b9aeeab0bb6d440` |
| 3 | `theorem` | [not_dvd_quadraticValue_of_dvd_index](../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/declarations/not-dvd-quadraticvalue-of-dvd-index--1cd4f637e54536f6ffbff438.md) | 32 | `result-track:1cd4f637e54536f6ffbff438e3bd9952356955796c5a16306a45b00ed3c13ed1` |
| 4 | `theorem` | [quadraticCompositeSurvivor_gt](../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/declarations/quadraticcompositesurvivor-gt--25e26617579845e9abb4f2f0.md) | 42 | `result-track:25e26617579845e9abb4f2f0ec8829a3fd0d95260231b51845db6f60fdf5a29e` |
| 5 | `theorem` | [quadraticCompositeSurvivor_value_dvd](../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/declarations/quadraticcompositesurvivor-value-dvd--525da06be5e30b34d7595874.md) | 54 | `result-track:525da06be5e30b34d75958746904ad0a65eab32132c86e3a73ba6f0976677d3d` |
| 6 | `theorem` | [quadraticCompositeSurvivor_not_prime](../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/declarations/quadraticcompositesurvivor-not-prime--35eb5170eb1b4a603a6bc393.md) | 62 | `result-track:35eb5170eb1b4a603a6bc393f1192c2e8ff627e7a58481394d7443daa56a34cb` |
| 7 | `theorem` | [unbounded_composite_quadratic_survivors](../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/declarations/unbounded-composite-quadratic-survivors--191a577afef6ce6d79ee0205.md) | 79 | `result-track:191a577afef6ce6d79ee0205e7ed9aff17ef1d9d2a69e3fc0347f8f27e2f8fd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
