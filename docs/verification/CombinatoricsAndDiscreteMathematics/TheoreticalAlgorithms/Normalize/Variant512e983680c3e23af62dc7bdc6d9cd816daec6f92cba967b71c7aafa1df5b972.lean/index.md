# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Normalize.Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dd368fc7228119fdd7451fcd23f48e1777b6ac7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dd368fc7228119fdd7451fcd23f48e1777b6ac7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Eval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tree.nnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean/declarations/tree-nnf--a436d3a329802ad01a891ba2.md) | 25 | `declaration-track:a436d3a329802ad01a891ba2c9a2d3d6bfdc70f525baa87bac43409fb59d2a12` |
| 2 | `def` | [Tree.negNnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean/declarations/tree-negnnf--72229b0e47c52f57c9774895.md) | 39 | `declaration-track:72229b0e47c52f57c97748956cbd1b7e789bbdf94d59c08b2287481f21054407` |
| 3 | `theorem` | [Tree.eval_nnf_and_negNnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean/declarations/tree-eval-nnf-and-negnnf--5a8890ba782ad3dcd0aee5a1.md) | 55 | `result-track:5a8890ba782ad3dcd0aee5a1fe6a87d6f61fdee5f3d8fc168279a0bd22379524` |
| 4 | `theorem` | [Tree.eval_nnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean/declarations/tree-eval-nnf--46222c37ba3f3d23310d6ee4.md) | 105 | `result-track:46222c37ba3f3d23310d6ee42ebb10d6a1b32738601c3c4b75a939109696e142` |
| 5 | `theorem` | [Tree.eval_negNnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Normalize/Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972.lean/declarations/tree-eval-negnnf--6b7da7a6cee5280a0a2b11b9.md) | 111 | `result-track:6b7da7a6cee5280a0a2b11b909a7ec4a95b4837c6d6398dadda1f9f1ab172219` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
