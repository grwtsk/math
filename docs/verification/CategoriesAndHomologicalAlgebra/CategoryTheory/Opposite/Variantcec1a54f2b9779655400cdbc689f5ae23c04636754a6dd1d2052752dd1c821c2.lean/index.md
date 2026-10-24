# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0a0419df792334399119f6189da8cac7623a083",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0a0419df792334399119f6189da8cac7623a083`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2.lean/declarations/instance--a7b768f75125c311683be796.md) | 19 | `declaration-track:a7b768f75125c311683be7964bb74557f8cd3e57a478cd1b34d70cc039c4d182` |
| 2 | `lemma` | [unop_tensorμ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2.lean/declarations/unop-tensor--6aca51b76cc17d60fe8c6c21.md) | 24 | `result-track:6aca51b76cc17d60fe8c6c215b99d482dbef94dd16b42b8887c6dee1c6ddb466` |
| 3 | `lemma` | [op_tensorμ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2.lean/declarations/op-tensor--d76a0820cdf35b8e9e89c987.md) | 30 | `result-track:d76a0820cdf35b8e9e89c987db9471442bd66bc1b8a8a68d94818fce2066d841` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
