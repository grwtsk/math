# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec9ca8c28c422ae9f5faa471e3af51f9c0fe509c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec9ca8c28c422ae9f5faa471e3af51f9c0fe509c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean/declarations/tensordistrib--2a2a8d86716bfd2adb2cee39.md) | 40 | `declaration-track:2a2a8d86716bfd2adb2cee39a6bc23c446344b90d7b71e3e86775c5d601e4090` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean/declarations/tensordistrib-tmul--a630b9b4a754d34986c6388a.md) | 54 | `result-track:a630b9b4a754d34986c6388a2037bc3d511c19faecdd6d723034aa571ab370a6` |
| 3 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean/declarations/tmul--a9d94172e874eb5bba483f06.md) | 61 | `declaration-track:a9d94172e874eb5bba483f0648ca0677a679c0c7c56a0182d4ce12c5bf5e62dd` |
| 4 | `theorem` | [associated_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean/declarations/associated-tmul--3af0c54d91e8123cc1f1d1dd.md) | 65 | `result-track:3af0c54d91e8123cc1f1d1ddf23fcd4f67eb45beb6e518b264760e5b00ad95fd` |
| 5 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean/declarations/basechange--893826d469aed5f6dfeb8341.md) | 74 | `declaration-track:893826d469aed5f6dfeb8341c5130f94fcd0fd6d5528bda14630e3a49691a94f` |
| 6 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean/declarations/basechange-tmul--cc4f50f080e8dff5e9d28b1b.md) | 78 | `result-track:cc4f50f080e8dff5e9d28b1bed08624f8378ac8d96c279defa9e12f845b964c9` |
| 7 | `theorem` | [associated_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant598465b0f4f8e7c3fcc5f154056427d7ff84b07f3bd301e1949c5b5c7ba21549.lean/declarations/associated-basechange--a0203a0ec766b4cbba8d7357.md) | 83 | `result-track:a0203a0ec766b4cbba8d7357a830f5c08f5acddf72853c2334fff3cc8e630bd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
