# Verification target: GRWTSK.Algebra.LinearAlgebra.Tensor.Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfd33c564834db77f979edab60f5babb0d03c88a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfd33c564834db77f979edab60f5babb0d03c88a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean/declarations/tensor--429d0dabadcb435675318267.md) | 31 | `declaration-track:429d0dabadcb435675318267e26346ccae16fb41b8087bd62e293701a7471629` |
| 2 | `def` | [tensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean/declarations/tensor--fed86023b928d2a14ec88d5b.md) | 49 | `declaration-track:fed86023b928d2a14ec88d5b941eb7e2f27b83f1f8dcc4d7e61c444fc4b13287` |
| 3 | `def` | [isPresentationCoreTensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean/declarations/ispresentationcoretensor--d2db60a72e9d0434a2a59b31.md) | 64 | `declaration-track:d2db60a72e9d0434a2a59b311f92e8f3e16d580dc3bf846800236f2563f18339` |
| 4 | `lemma` | [IsPresentation.tensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean/declarations/ispresentation-tensor--38910a5582affb4bb4d07f95.md) | 90 | `result-track:38910a5582affb4bb4d07f95bb3b81eae32654bcaf38282174874620be7db674` |
| 5 | `def` | [tensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean/declarations/tensor--4a413abd2eab2aa9610b0c34.md) | 104 | `declaration-track:4a413abd2eab2aa9610b0c34a5530453d59a394c84e4dbff48ff7a80521f5725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
