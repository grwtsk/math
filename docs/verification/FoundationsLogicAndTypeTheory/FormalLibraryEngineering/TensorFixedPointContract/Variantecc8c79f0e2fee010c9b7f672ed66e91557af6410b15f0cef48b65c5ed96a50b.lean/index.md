# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorFixedPointContract.Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f45527dfe0f39c22b21085944fb6f9363b7543e4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorFixedPointContract/Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorFixedPointContract/Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorFixedPointContract/Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f45527dfe0f39c22b21085944fb6f9363b7543e4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorFixedPointContract/Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorFixedPointContract/Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CrystallineTensor.FixedTensor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TensorFixedPointContract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorFixedPointContract/Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b.lean/declarations/tensorfixedpointcontract--7783ebfc9d585ff40a483815.md) | 32 | `declaration-track:7783ebfc9d585ff40a483815d67f9bf0304b3436f6e662be9025fb827012ccaf` |
| 2 | `theorem` | [tensor_fixed_point_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorFixedPointContract/Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b.lean/declarations/tensor-fixed-point-exists--c5e7c48e7d8b4633dfc9b89c.md) | 47 | `result-track:c5e7c48e7d8b4633dfc9b89cffddd38835a3afd7f511b9a4accc79ce81d43844` |
| 3 | `theorem` | [tensor_fixed_point_horizontal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorFixedPointContract/Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b.lean/declarations/tensor-fixed-point-horizontal--5efcf42827c1b3502458cb8a.md) | 57 | `result-track:5efcf42827c1b3502458cb8a813c37c3563761f20296c4aa50d3e3f819c2ba6a` |
| 4 | `theorem` | [tensor_fixed_point_fixed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TensorFixedPointContract/Variantecc8c79f0e2fee010c9b7f672ed66e91557af6410b15f0cef48b65c5ed96a50b.lean/declarations/tensor-fixed-point-fixed--cac08ab6a90db603ba1a2287.md) | 69 | `result-track:cac08ab6a90db603ba1a2287d648a48b1628d926d530614a4b50ef0e99ea7bbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
