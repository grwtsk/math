# Verification target: GRWTSK.Analysis.Complex.ConjugateAnalyticOrder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "023d2834d08a3d9ee6e8bd68b3f75c75332dfec6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/ConjugateAnalyticOrder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/ConjugateAnalyticOrder.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/ConjugateAnalyticOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `023d2834d08a3d9ee6e8bd68b3f75c75332dfec6`.

Source path: `GRWTSK/Analysis/Complex/ConjugateAnalyticOrder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/ConjugateAnalyticOrder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_conjugation](../../../../mathematics/Analysis/ComplexAnalysis/ConjugateAnalyticOrder.lean/declarations/deriv-conjugation--ba6b4489b46b1a35ddec2bd9.md) | 24 | `result-track:ba6b4489b46b1a35ddec2bd9bbf4e4c9b5e04fdba6c474950870ec93d6140dd2` |
| 2 | `theorem` | [iteratedDeriv_conjugation](../../../../mathematics/Analysis/ComplexAnalysis/ConjugateAnalyticOrder.lean/declarations/iteratedderiv-conjugation--b773a60ccb6072b757ca4e9e.md) | 37 | `result-track:b773a60ccb6072b757ca4e9e293cfa2c6e836812fad3a59fa79060f4d5c4fce4` |
| 3 | `theorem` | [finite_order_conjugation](../../../../mathematics/Analysis/ComplexAnalysis/ConjugateAnalyticOrder.lean/declarations/finite-order-conjugation--d8a6fc3ce9e5b7a4b94987ae.md) | 47 | `result-track:d8a6fc3ce9e5b7a4b94987ae2b46cd2cf8ab9f5f2cfff1ccb93252480cd4b7bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
