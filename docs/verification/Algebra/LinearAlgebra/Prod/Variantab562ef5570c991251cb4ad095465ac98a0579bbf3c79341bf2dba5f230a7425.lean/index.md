# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "733b8cdc00748b4f62c4bebb74487fae943c7fb4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `733b8cdc00748b4f62c4bebb74487fae943c7fb4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prodRight](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/declarations/prodright--b78047288ed13e4b962aa4da.md) | 38 | `declaration-track:b78047288ed13e4b962aa4da0488bea319d4a9bc0d823d58b4762d5b0eb4fadd` |
| 2 | `theorem` | [prodRight_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/declarations/prodright-tmul--a70a3c7ada135399a2d50f88.md) | 49 | `result-track:a70a3c7ada135399a2d50f88d923b67a4bdd6572bf27998e944f59c7021f92cc` |
| 3 | `theorem` | [prodRight_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/declarations/prodright-symm-tmul--095890042aa290f457f757f6.md) | 53 | `result-track:095890042aa290f457f757f652dfc23d1549675624b90e04032a7d2db51b8831` |
| 4 | `def` | [prodLeft](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/declarations/prodleft--17f34462d108b6c6a9d8c203.md) | 60 | `declaration-track:17f34462d108b6c6a9d8c2037135b8b6d33a3b507c53be5ba611cce97a253239` |
| 5 | `theorem` | [prodLeft_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/declarations/prodleft-tmul--053a549cf2d2b570a321523c.md) | 66 | `result-track:053a549cf2d2b570a321523ca2842a8dd54f94bf9fc3f25205321bebf38e454d` |
| 6 | `theorem` | [prodLeft_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantab562ef5570c991251cb4ad095465ac98a0579bbf3c79341bf2dba5f230a7425.lean/declarations/prodleft-symm-tmul--e6372d97742bddd9b2639c13.md) | 70 | `result-track:e6372d97742bddd9b2639c1361e00e64f6f5281091dcc1fd3848cfc1a5ca2c8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
