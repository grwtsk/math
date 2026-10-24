# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0661a678b3599d2db6f1e54b397b8e145b5607c0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0661a678b3599d2db6f1e54b397b8e145b5607c0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalRectangleMesh`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleIndex`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluateBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/evaluatebox--dd8c7ad8b0c41483bcf7d386.md) | 29 | `declaration-track:dd8c7ad8b0c41483bcf7d3866ad2326679506ead21e87f2e4994469305acd73c` |
| 2 | `theorem` | [evaluateBox_eq_some_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/evaluatebox-eq-some-iff--1b1cc5a681aad54f74493eda.md) | 35 | `result-track:1b1cc5a681aad54f74493eda5ac74a086383e19ab1b985efe678661af2d743cb` |
| 3 | `def` | [lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/lower--650330c29c3aaa0deeca89cd.md) | 43 | `declaration-track:650330c29c3aaa0deeca89cd0bce0c243e6ec7f3bc6e79ae32abed8aa524dc8f` |
| 4 | `def` | [upper](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/upper--fcc2ba9dcc9412a9ae9d194e.md) | 44 | `declaration-track:fcc2ba9dcc9412a9ae9d194efd9f7b23c53b43aef60b251627630e52e3a10085` |
| 5 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/evaluate--010797927eae0d066ab146e1.md) | 46 | `declaration-track:010797927eae0d066ab146e1361abf7167c9fa21a4dfc5a1848aa081eb0e69f3` |
| 6 | `theorem` | [boundary_of_tube](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/boundary-of-tube--013838c9903a633e49369d23.md) | 53 | `result-track:013838c9903a633e49369d2313d6142cc1e363289addc833a5eb263bfd5451fd` |
| 7 | `def` | [sourceHomotopy](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/sourcehomotopy--a216659330d36beb17612655.md) | 69 | `declaration-track:a216659330d36beb176126551a5a840af7d8929fe9faf8a78a7049637c59acca` |
| 8 | `theorem` | [sourceIndex_aligned](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/sourceindex-aligned--29fca33737c78ebbae3fa209.md) | 99 | `result-track:29fca33737c78ebbae3fa20921420e8509dbf62873786865152780800d46da5b` |
| 9 | `theorem` | [target_rectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/target-rectangle--d3db292499161b372687082f.md) | 120 | `result-track:d3db292499161b372687082fdb520315c5ef422a18600a07958ada6df3997e22` |
| 10 | `theorem` | [count_eq_of_evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/count-eq-of-evaluate--566c9b4773658dad89b0e03c.md) | 129 | `result-track:566c9b4773658dad89b0e03c4d5768b183eb8a575cb92e7cee9dc1445e1a0989` |
| 11 | `theorem` | [result_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/result-nonnegative--ff67b11fb5d608f9dc0c194e.md) | 156 | `result-track:ff67b11fb5d608f9dc0c194eb606f500d6a95d0f9bd7117c62ca06ea8e345b47` |
| 12 | `theorem` | [complete_pair_of_evaluate_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/declarations/complete-pair-of-evaluate-one--baf6e53e884f6539924481bb.md) | 163 | `result-track:baf6e53e884f6539924481bb4f4aece2deb97df02b0dd0414e56dccb8aae23e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
