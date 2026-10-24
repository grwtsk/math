# Verification target: GRWTSK.NumberTheory.Chebyshev.CountedTentTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d88857b73639a91306112dabb40c491756fbe47c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CountedTentTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CountedTentTail.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CountedTentTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d88857b73639a91306112dabb40c491756fbe47c`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CountedTentTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CountedTentTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentKernelTail`](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelTail.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentSource`](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.Positivity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [square_tent_domain](../../../../mathematics/NumberTheory/Chebyshev/CountedTentTail.lean/declarations/square-tent-domain--cb84a09714a84aa7484b4f76.md) | 34 | `result-track:cb84a09714a84aa7484b4f76475aa7bd4f52607d9d998c275d6048d42c06d943` |
| 2 | `theorem` | [square_tent_tail_budget](../../../../mathematics/NumberTheory/Chebyshev/CountedTentTail.lean/declarations/square-tent-tail-budget--a4212841e7af4da82a337169.md) | 42 | `result-track:a4212841e7af4da82a3371694f2d176feed7e06dda5fd1413b379ba653058c76` |
| 3 | `theorem` | [prime_in_square_of_counted_tent](../../../../mathematics/NumberTheory/Chebyshev/CountedTentTail.lean/declarations/prime-in-square-of-counted-tent--92f8aca27c799faf74867d81.md) | 52 | `result-track:92f8aca27c799faf74867d81ebffaf83538720ef7a7a9dae395dcd3bf812085f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
