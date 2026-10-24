# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.JetRectangleCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abdffa9d3ec64e1072c1d01603352aa0f0ac7377",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/JetRectangleCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abdffa9d3ec64e1072c1d01603352aa0f0ac7377`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/JetRectangleCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/JetRectangleCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.JetPoleContour`](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluateBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/declarations/evaluatebox--8936dd90a424f094b217ea03.md) | 27 | `declaration-track:8936dd90a424f094b217ea03672f77e729a084a134edfb4c0ad61559cf817ed5` |
| 2 | `theorem` | [evaluateBox_eq_some_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/declarations/evaluatebox-eq-some-iff--393cbdefec86298768f99b07.md) | 33 | `result-track:393cbdefec86298768f99b0765dbfb642bb054c2c7cb9f1cd68263f80f850beb` |
| 3 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/declarations/evaluate--ed11c475f7c4b277a655ebe2.md) | 41 | `declaration-track:ed11c475f7c4b277a655ebe27b404a33fa00cb7f5cc89a481b0505b9613a31a4` |
| 4 | `theorem` | [boundary_of_tube](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/declarations/boundary-of-tube--c65395f7359ca28e075fa0cc.md) | 47 | `result-track:c65395f7359ca28e075fa0cc24604513424ccf9e5af4f2a9bf2da1d1fb531a53` |
| 5 | `def` | [sourceHomotopy](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/declarations/sourcehomotopy--07bc71cefd088d8e34547a18.md) | 61 | `declaration-track:07bc71cefd088d8e34547a1866dfdb424d58b9e5d324fea0a1c20ffaf757d79a` |
| 6 | `theorem` | [sourceIndex_aligned](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/declarations/sourceindex-aligned--dfbf3894ec2be9609282a948.md) | 90 | `result-track:dfbf3894ec2be9609282a9486c2b8dee2cf2191588d584bfd02bd250e397e09a` |
| 7 | `theorem` | [count_eq_of_evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/declarations/count-eq-of-evaluate--ef86876a7ccc4d26b22074b3.md) | 105 | `result-track:ef86876a7ccc4d26b22074b3edeb1f1e32215123c363e9433d849e4efacb36dd` |
| 8 | `theorem` | [result_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/declarations/result-nonnegative--6c62dbebd1f971bffbffb14c.md) | 131 | `result-track:6c62dbebd1f971bffbffb14c3d0f2bd7b754d99da719fb004ea153ff5e940884` |
| 9 | `theorem` | [complete_pair_of_evaluate_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/declarations/complete-pair-of-evaluate-one--d755ea8ed6d4685ea06bc624.md) | 138 | `result-track:d755ea8ed6d4685ea06bc624738bac0f4df5827cc9be4d02f0595445b0d4bfd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
