# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f34e1148ee2148dd0a20e11ed66b8c49689952bb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f34e1148ee2148dd0a20e11ed66b8c49689952bb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsum--61ce8a3ede77c1ceb068bc9c.md) | 55 | `declaration-track:61ce8a3ede77c1ceb068bc9c9742f01213eae938a9e76f872015d585138c4290` |
| 2 | `def` | [directSumLeft](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsumleft--61105f5ea692135dc9a44dbc.md) | 72 | `declaration-track:61105f5ea692135dc9a44dbc4dc36897dd1a8cca796af1ffa3f656084a930903` |
| 3 | `def` | [directSumRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsumright--69ec1180ebaa857c17e96327.md) | 92 | `declaration-track:69ec1180ebaa857c17e96327b6734a6c63b5f29dcce1c76e671afe77e61735dc` |
| 4 | `theorem` | [directSum_lof_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsum-lof-tmul-lof--a0563ee1459dee8ceabcea62.md) | 99 | `result-track:a0563ee1459dee8ceabcea622c0333a109a368a66e45a0a10d54bdb29515a8a6` |
| 5 | `theorem` | [directSum_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsum-symm-lof-tmul--c52ae72c294930606e9bf120.md) | 105 | `result-track:c52ae72c294930606e9bf12094d9cf2aa9f0cd7990ba1198a43c993f631810a8` |
| 6 | `theorem` | [directSumLeft_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsumleft-tmul-lof--c9d4a63957958372427892c7.md) | 112 | `result-track:c9d4a63957958372427892c7726c15d7a53126591982171132911465d7d44909` |
| 7 | `theorem` | [directSumLeft_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsumleft-symm-lof-tmul--b872f5cc77353ef5fcaad759.md) | 120 | `result-track:b872f5cc77353ef5fcaad7593f00fb27af995c41fa260f0e9ecb3cc8c3a7834f` |
| 8 | `theorem` | [directSumRight_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsumright-tmul-lof--3924281d42fbfa01b266f1d7.md) | 126 | `result-track:3924281d42fbfa01b266f1d7b5da6687471e42f07851af6d80dfda021217306f` |
| 9 | `theorem` | [directSumRight_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsumright-symm-lof-tmul--a4cc55d9b4742ea9e90b0ac2.md) | 134 | `result-track:a4cc55d9b4742ea9e90b0ac20e93118a4e733cf4287117613ba4bb19bb6e97b9` |
| 10 | `lemma` | [directSumRight_comp_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant737c1d20255084eb9a152a591c9d1c2c4527ad2b3c052b09e26614af201989fe.lean/declarations/directsumright-comp-rtensor--2a624b14ea6197680ac776c1.md) | 139 | `result-track:2a624b14ea6197680ac776c14e4073a820aa8dbffaa4dfdc0066b7b15335e99d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
