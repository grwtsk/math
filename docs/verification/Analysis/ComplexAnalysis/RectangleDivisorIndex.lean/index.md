# Verification target: GRWTSK.Analysis.Complex.RectangleDivisorIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "709a6b04451fb3a1ead9eb5287603cb7cdb104a6",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RectangleDivisorIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RectangleDivisorIndex.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RectangleDivisorIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `709a6b04451fb3a1ead9eb5287603cb7cdb104a6`.

Source path: `GRWTSK/Analysis/Complex/RectangleDivisorIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RectangleDivisorIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RectangleFactorIndex`](../../../../mathematics/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.FiniteLinearRemoval`](../../../../mathematics/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [index_of_factorization](../../../../mathematics/Analysis/ComplexAnalysis/RectangleDivisorIndex.lean/declarations/index-of-factorization--156449b4e1670c65d92372fc.md) | 29 | `result-track:156449b4e1670c65d92372fcb07d6ed805031bb030312bfdfce59c0f6da6dd02` |
| 2 | `theorem` | [index_eq_mass](../../../../mathematics/Analysis/ComplexAnalysis/RectangleDivisorIndex.lean/declarations/index-eq-mass--472f97637096c66e20b792f1.md) | 62 | `result-track:472f97637096c66e20b792f14b09a0184486bdf71fc9491712f5e1bb1a70a27d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
