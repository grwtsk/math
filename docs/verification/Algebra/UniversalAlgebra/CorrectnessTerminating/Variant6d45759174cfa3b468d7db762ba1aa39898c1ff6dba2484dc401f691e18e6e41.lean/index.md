# Verification target: GRWTSK.Algebra.UniversalAlgebra.CorrectnessTerminating.Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b136d0c4ca3f6086d201133b7a868ac962f0c0f0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b136d0c4ca3f6086d201133b7a868ac962f0c0f0`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Translations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compExactValue](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/declarations/compexactvalue--ec8d77a887e9dabfa17950fb.md) | 65 | `declaration-track:ec8d77a887e9dabfa17950fb2f964ecb6c60bc99d62e36f2b62fe2bc008d7a87` |
| 2 | `theorem` | [compExactValue_correctness_of_stream_eq_some_aux_comp](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/declarations/compexactvalue-correctness-of-stream-eq-some-aux-comp--1b8e6a1a6316e9042985c3e8.md) | 77 | `result-track:1b8e6a1a6316e9042985c3e8ed7e4bab33c05f88b89db26868dea1bcc5079dd1` |
| 3 | `theorem` | [compExactValue_correctness_of_stream_eq_some](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/declarations/compexactvalue-correctness-of-stream-eq-some--9bb3112370a07d7aaa2906f9.md) | 103 | `result-track:9bb3112370a07d7aaa2906f9bca31f7642cc3a7a2536f9de0a8f2b8832f68a0d` |
| 4 | `theorem` | [of_correctness_of_nth_stream_eq_none](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/declarations/of-correctness-of-nth-stream-eq-none--a80438f76d82c551bf20565f.md) | 217 | `result-track:a80438f76d82c551bf20565f6c539af0b89cde3dcf27ce7277413fab6ea22ac9` |
| 5 | `theorem` | [of_correctness_of_terminatedAt](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/declarations/of-correctness-of-terminatedat--c8d77bdf01cd550eecc6d6b2.md) | 246 | `result-track:c8d77bdf01cd550eecc6d6b2e79957eea5fc0315aac467fedbdb501289847e0a` |
| 6 | `theorem` | [of_correctness_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/declarations/of-correctness-of-terminates--ad92a8ab19a354f3700e7b4b.md) | 256 | `result-track:ad92a8ab19a354f3700e7b4b21c54cac376315d6da576f2d7925fa52809a42c3` |
| 7 | `theorem` | [of_correctness_atTop_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/declarations/of-correctness-attop-of-terminates--b4f057c73b1f283cdba48759.md) | 267 | `result-track:b4f057c73b1f283cdba48759edcfa5c8ceaa524d78cd6a8043bcf6dedd6cb941` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
