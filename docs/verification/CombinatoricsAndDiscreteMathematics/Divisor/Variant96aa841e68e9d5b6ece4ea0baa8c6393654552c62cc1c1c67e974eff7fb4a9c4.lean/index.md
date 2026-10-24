# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Divisor.Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f28c1862d5a36249817c628ab143e872b51e4cf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f28c1862d5a36249817c628ab143e872b51e4cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Cell` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticZeroDivisor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean/declarations/analyticzerodivisor--4cbe1078127da2116f3c261b.md) | 24 | `declaration-track:4cbe1078127da2116f3c261b54acb5fa982069b90059c5541d8e0ac358a526d8` |
| 2 | `def` | [AnalyticZeroDivisor.count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean/declarations/analyticzerodivisor-count--35b133e9bde5ecc20c7aab7b.md) | 37 | `declaration-track:35b133e9bde5ecc20c7aab7bb521ce39f875f8dd18129221a81fbf2c3ce67cb6` |
| 3 | `theorem` | [AnalyticZeroDivisor.card_le_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean/declarations/analyticzerodivisor-card-le-count--fcc25c447fb3c99eef0dbbdb.md) | 44 | `result-track:fcc25c447fb3c99eef0dbbdbedf4169e1709d5f39e16b6e76fd65e52efe2c800` |
| 4 | `theorem` | [AnalyticZeroDivisor.nonempty_of_count_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean/declarations/analyticzerodivisor-nonempty-of-count-pos--3550bd1fbd22d754aa1d00cb.md) | 54 | `result-track:3550bd1fbd22d754aa1d00cb9eee02138d9353cc6770a37c2a5858a62e766fcc` |
| 5 | `theorem` | [AnalyticZeroDivisor.exists_zero_of_count_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean/declarations/analyticzerodivisor-exists-zero-of-count-pos--474e1078b27e9ba60477834d.md) | 65 | `result-track:474e1078b27e9ba60477834dc868a64955b2c175ea01a1a16b80072bb9ee40a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
