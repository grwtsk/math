# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DiagonalRemainderBudget.Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b76dfa556e615ff6f6d4249b52cef147b007df6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b76dfa556e615ff6f6d4249b52cef147b007df6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [moebius_square_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean/declarations/moebius-square-le-one--e0bed163ef25c5d48f50f908.md) | 20 | `result-track:e0bed163ef25c5d48f50f90849ed8201a48062eaf9b3ce2daedb72eacf8442df` |
| 2 | `theorem` | [source_harmonic_sum_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean/declarations/source-harmonic-sum-le--d501b68b0a86fe80dff6d492.md) | 28 | `result-track:d501b68b0a86fe80dff6d49238f7ffa319be483d5acb259b035c3dcde3d8d1ab` |
| 3 | `theorem` | [diagonal_remainder_abs_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DiagonalRemainderBudget/Variantcdb3ac120515e1eb63c852c0474175331d20065d822c2f0045a941040b6ff781.lean/declarations/diagonal-remainder-abs-le--b1e32f3ef186e40e746157e8.md) | 36 | `result-track:b1e32f3ef186e40e746157e8b3f442cd2b559959466b86bd7c550883507390a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
