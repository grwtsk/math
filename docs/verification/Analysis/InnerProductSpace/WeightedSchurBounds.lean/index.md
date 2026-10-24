# Verification target: GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28e803e649a93dccf50e3d95711b88c7db126c1e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/WeightedSchurBounds.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/WeightedSchurBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28e803e649a93dccf50e3d95711b88c7db126c1e`.

Source path: `GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/WeightedSchurBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Real` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Module.Constructions` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [weighted_symmetric_schur](../../../../mathematics/Analysis/InnerProductSpace/WeightedSchurBounds.lean/declarations/weighted-symmetric-schur--6d85f668afa0d20f33051487.md) | 29 | `result-track:6d85f668afa0d20f3305148776d19c7546b8c8e83def2eadb06e9b5e501fbfa9` |
| 2 | `theorem` | [synthesis_of_weighted_gram_rows](../../../../mathematics/Analysis/InnerProductSpace/WeightedSchurBounds.lean/declarations/synthesis-of-weighted-gram-rows--389fc8c8a2256d1afc5c489a.md) | 77 | `result-track:389fc8c8a2256d1afc5c489aa5d35638c38038d9e4912c0ff0ed7513872de19d` |
| 3 | `theorem` | [bessel_of_weighted_gram_rows](../../../../mathematics/Analysis/InnerProductSpace/WeightedSchurBounds.lean/declarations/bessel-of-weighted-gram-rows--f808c734808d4567786159ed.md) | 129 | `result-track:f808c734808d4567786159ed731fe6a71a6867f11173cba27eb4e08add41f7b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
