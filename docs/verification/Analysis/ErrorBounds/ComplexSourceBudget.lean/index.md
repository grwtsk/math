# Verification target: GRWTSK.Analysis.ErrorBounds.ComplexSourceBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "228182e2b723a3207715c6a489a6fd1ed9c5c55a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/ComplexSourceBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/ComplexSourceBudget.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/ComplexSourceBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `228182e2b723a3207715c6a489a6fd1ed9c5c55a`.

Source path: `GRWTSK/Analysis/ErrorBounds/ComplexSourceBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/ComplexSourceBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Norm` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_lower_bound](../../../../mathematics/Analysis/ErrorBounds/ComplexSourceBudget.lean/declarations/source-lower-bound--916ee0cc23a1fb42a09b2d10.md) | 24 | `result-track:916ee0cc23a1fb42a09b2d10311e3e6988c5f2a8a7a8a342b03fde707da03832` |
| 2 | `theorem` | [source_complex_error](../../../../mathematics/Analysis/ErrorBounds/ComplexSourceBudget.lean/declarations/source-complex-error--6ccb3bb90998d6b8c96cf4d9.md) | 41 | `result-track:6ccb3bb90998d6b8c96cf4d9227e9dcfc0544e8eabc802649ea095fc4f99233b` |
| 3 | `theorem` | [source_real_error](../../../../mathematics/Analysis/ErrorBounds/ComplexSourceBudget.lean/declarations/source-real-error--cecbdf0ced94f3e84da60bc7.md) | 63 | `result-track:cecbdf0ced94f3e84da60bc7f699cd387a2dff2c3742818305598fe0c41318d9` |
| 4 | `theorem` | [source_imaginary_error](../../../../mathematics/Analysis/ErrorBounds/ComplexSourceBudget.lean/declarations/source-imaginary-error--f60131fde91806b2a7c77ca4.md) | 78 | `result-track:f60131fde91806b2a7c77ca42943e6678be40fbf5e760ea5d1a6e991d2b0a398` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
