# Verification target: GRWTSK.Algebra.Positivity.Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd25e4eb1d51fbd33e426778681953c7091e275a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd25e4eb1d51fbd33e426778681953c7091e275a`.

Source path: `GRWTSK/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Cofinal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticPositivityCriterion](../../../../mathematics/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean/declarations/arithmeticpositivitycriterion--e0126aa2d0a2c4405853c9a2.md) | 22 | `declaration-track:e0126aa2d0a2c4405853c9a2f94f9fdb70724f7381c0cfacc869731598a3631d` |
| 2 | `structure` | [PositiveTraceAlgebra](../../../../mathematics/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean/declarations/positivetracealgebra--dea3ed4e9519f3e36c72a72f.md) | 33 | `declaration-track:dea3ed4e9519f3e36c72a72f08ab1d4e0ab8701ef317e1ac273b81c40e6cf9f1` |
| 3 | `structure` | [TracePositivityFactorization](../../../../mathematics/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean/declarations/tracepositivityfactorization--8d1a6f2a06c72c2ae8b3499d.md) | 43 | `declaration-track:8d1a6f2a06c72c2ae8b3499d112e5d76f46b923cf2e47f4ceaf3904125858a8e` |
| 4 | `theorem` | [tracePositivityFactorization_implies_RH](../../../../mathematics/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean/declarations/tracepositivityfactorization-implies-rh--648d6003c1fbd26b8f770655.md) | 60 | `result-track:648d6003c1fbd26b8f770655a463e6ffe268501d6525fd1560750300d1ba0536` |
| 5 | `theorem` | [exact_trace_factorization_implies_RH](../../../../mathematics/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean/declarations/exact-trace-factorization-implies-rh--c1fd4422d91288cf253815f9.md) | 75 | `result-track:c1fd4422d91288cf253815f972bac7afb5b9f108668d8e309ec824c74e2d7e99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
