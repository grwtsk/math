# Verification target: GRWTSK.NumberTheory.Primes.TwinPrimePowerBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b2fac581ef0b3d2f816849aef39ff39d101994b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/TwinPrimePowerBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b2fac581ef0b3d2f816849aef39ff39d101994b`.

Source path: `GRWTSK/NumberTheory/Primes/TwinPrimePowerBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/TwinPrimePowerBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.TwinMangoldtExpansion`](../../../../mathematics/NumberTheory/Primes/TwinMangoldtExpansion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twinPrimePairLogWeight](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimepairlogweight--bc1baba7d658adcea3166cc1.md) | 34 | `declaration-track:bc1baba7d658adcea3166cc1529850fd54217d450329956dd70e596abab58f43` |
| 2 | `def` | [twinPrimeLogCorrelation](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimelogcorrelation--0ad7a01de583b6e14d64eefa.md) | 40 | `declaration-track:0ad7a01de583b6e14d64eeface65e102273dd67e32ef34ae5623adbd9dfc99dc` |
| 3 | `theorem` | [twinPrimePairLogWeight_nonneg](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimepairlogweight-nonneg--3f2f7c670e60fecacbcdc8fe.md) | 44 | `result-track:3f2f7c670e60fecacbcdc8fe6ff05596f44af7a470a024100ef23502e5a0ac3f` |
| 4 | `theorem` | [twinPrimePairLogWeight_pos](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimepairlogweight-pos--88a35224e3e655e308ef8ad6.md) | 55 | `result-track:88a35224e3e655e308ef8ad60e350bc42583aaa6cf1b299e76d295dc45c9ad7f` |
| 5 | `theorem` | [twinPrimeLogCorrelation_pos_iff](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimelogcorrelation-pos-iff--a8bee41fad379c78de82517f.md) | 66 | `result-track:a8bee41fad379c78de82517f178df131d08d6751c4806e4cb36e560d2eee7101` |
| 6 | `theorem` | [twinPrimePairLogWeight_le_mangoldt](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimepairlogweight-le-mangoldt--3fbc498b540b8ae8ce62a06d.md) | 105 | `result-track:3fbc498b540b8ae8ce62a06d9f4e3b77d92232ce18af70cd85e66ba128f5ba77` |
| 7 | `def` | [twinPrimePowerCorrectionSource](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimepowercorrectionsource--161b48e9b00f719abdd4cc4f.md) | 118 | `declaration-track:161b48e9b00f719abdd4cc4fe937f58d1b02638edb947d24ffc35b39bea16e0c` |
| 8 | `def` | [twinPrimePowerCorrection](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimepowercorrection--89877655592b3a16ced367a9.md) | 124 | `declaration-track:89877655592b3a16ced367a9741684998410ce265afaeb5ba82d64241b4cce7b` |
| 9 | `theorem` | [twinPrimePowerCorrection_eq_source](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimepowercorrection-eq-source--aad6d004e9b0ee8a2dd29ba0.md) | 129 | `result-track:aad6d004e9b0ee8a2dd29ba0c18f36d35befe6fb0c54f4da966a3dba8380618e` |
| 10 | `theorem` | [twinPrimePowerCorrection_nonneg](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinprimepowercorrection-nonneg--500cf02ef72d9f1ca33bf82b.md) | 139 | `result-track:500cf02ef72d9f1ca33bf82badc1729465abe57f7c541db68e3b2ddb97beedad` |
| 11 | `theorem` | [twinMangoldtCorrelation_eq_prime_add_correction](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twinmangoldtcorrelation-eq-prime-add-correction--6cfd30790e85f2b28e8d30b7.md) | 150 | `result-track:6cfd30790e85f2b28e8d30b7040a80cb16424324678fab6d98262d63f8535231` |
| 12 | `theorem` | [twinCount_pos_of_mangoldt_correction_bounds](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twincount-pos-of-mangoldt-correction-bounds--9a5cc57509f540a1d86559f6.md) | 161 | `result-track:9a5cc57509f540a1d86559f63b213f693d88d0f0528e68dc57e727ab888e3aa4` |
| 13 | `theorem` | [twinCount_pos_of_divisor_residual_bounds](../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/declarations/twincount-pos-of-divisor-residual-bounds--5df87a0c6a08e5df123d391b.md) | 174 | `result-track:5df87a0c6a08e5df123d391bbf509d93e42b528b9e2f88f68cb0e77b4b544df2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
