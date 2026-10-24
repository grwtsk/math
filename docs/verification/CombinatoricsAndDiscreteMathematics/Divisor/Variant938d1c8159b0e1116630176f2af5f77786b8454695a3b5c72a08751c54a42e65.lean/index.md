# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Divisor.Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "209cb48bf0079193f302419520da6ed2dd93e830",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `209cb48bf0079193f302419520da6ed2dd93e830`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Cell` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticZeroDivisor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean/declarations/analyticzerodivisor--5644c719eda16a5365545ce9.md) | 16 | `declaration-track:5644c719eda16a5365545ce9ed64be09cd51d401732da3955b8222da1a49af10` |
| 2 | `def` | [AnalyticZeroDivisor.count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean/declarations/analyticzerodivisor-count--c325af7171fa202005d301f2.md) | 29 | `declaration-track:c325af7171fa202005d301f269f471eacf4e9b5d06887ebbc716e3bc1cdf4f10` |
| 3 | `theorem` | [AnalyticZeroDivisor.card_le_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean/declarations/analyticzerodivisor-card-le-count--56d0eac53efef553cf43554b.md) | 36 | `result-track:56d0eac53efef553cf43554bc67c26ab2114697b6119d414136a6add8c44b974` |
| 4 | `theorem` | [AnalyticZeroDivisor.nonempty_of_count_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean/declarations/analyticzerodivisor-nonempty-of-count-pos--0b5c69d7867e9f2b8793faff.md) | 46 | `result-track:0b5c69d7867e9f2b8793faff51887d30ab9c42f9a6dd1b3ee0104d60d96f8afa` |
| 5 | `theorem` | [AnalyticZeroDivisor.exists_zero_of_count_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean/declarations/analyticzerodivisor-exists-zero-of-count-pos--f885e084ee83822f32c1389a.md) | 57 | `result-track:f885e084ee83822f32c1389a3c766235e63da51ba0b508858f46df03f9cea460` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
