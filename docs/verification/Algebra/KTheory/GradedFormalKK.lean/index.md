# Verification target: GRWTSK.Algebra.KTheory.GradedFormalKK

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1124cdb0f3009c8bdde62bf8eae9b82036dbe808",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KTheory/GradedFormalKK.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/index.md) · [Full source](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1124cdb0f3009c8bdde62bf8eae9b82036dbe808`.

Source path: `GRWTSK/Algebra/KTheory/GradedFormalKK.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KTheory/GradedFormalKK.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.KTheory.FormalKK`](../../../../mathematics/Algebra/KTheory/FormalKK.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Theory](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/theory--5f3434fda2d25c95863cdd95.md) | 11 | `declaration-track:5f3434fda2d25c95863cdd958952cec35af17b88f90ea0cb89c1aea24125a921` |
| 2 | `structure` | [Equivalence](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/equivalence--f8809a22a142db831e120e1e.md) | 29 | `declaration-track:f8809a22a142db831e120e1ed900c6f0d775fc510977d019533f6c3a65396810` |
| 3 | `theorem` | [forward_backward_even](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/forward-backward-even--e79c4a454c549346b773fbce.md) | 40 | `result-track:e79c4a454c549346b773fbcecf58837243d6bdd37f6d6a98c47f45da3a94fa3a` |
| 4 | `theorem` | [backward_forward_even](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/backward-forward-even--a45d805752fedca838624dd0.md) | 50 | `result-track:a45d805752fedca838624dd066e3a6947967ddb892041ab54784cc1f051f58c0` |
| 5 | `inductive` | [ProductPath](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/productpath--cc285c2bb94b4a6bcdc8fdce.md) | 62 | `declaration-track:cc285c2bb94b4a6bcdc8fdcefd3ce8aaabbc3342f0c9d4e45e81e18e6e40f097` |
| 6 | `def` | [evaluate](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/evaluate--34b117add683e69f21f132f0.md) | 73 | `declaration-track:34b117add683e69f21f132f0eaa55a237e40cade7db5753390756786a030b8f9` |
| 7 | `def` | [totalDegree](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/totaldegree--629e58dd2c1537a51afdeb8d.md) | 78 | `declaration-track:629e58dd2c1537a51afdeb8d0422c402b25eb30ceaac66245e3cf6e5c240ad72` |
| 8 | `theorem` | [degree_evaluate](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/degree-evaluate--566e3b88763fdfdc99590311.md) | 83 | `result-track:566e3b88763fdfdc9959031110be723167b13c439b1e21bf4bb7cabbb378ab0f` |
| 9 | `structure` | [TaggedFunction](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/taggedfunction--99c2eab71a21bce9f95cc379.md) | 102 | `declaration-track:99c2eab71a21bce9f95cc379bd66d4298e2af734577e3bc76f8359bf84b90cea` |
| 10 | `def` | [theory](../../../../mathematics/Algebra/KTheory/GradedFormalKK.lean/declarations/theory--484435b3748d1573689b15fb.md) | 107 | `declaration-track:484435b3748d1573689b15fb5869395f66fa3e0b5d7b4762c89680cb30c70335` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
