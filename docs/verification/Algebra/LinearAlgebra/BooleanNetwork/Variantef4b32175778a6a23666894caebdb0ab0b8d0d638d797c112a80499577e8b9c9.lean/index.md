# Verification target: GRWTSK.Algebra.LinearAlgebra.BooleanNetwork.Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "503fed42ca712cd5074ee5f6c5442ff321601738",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `503fed42ca712cd5074ee5f6c5442ff321601738`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.Hypercube` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanNetwork.Network](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean/declarations/booleannetwork-network--9ad472e13cea2488a802197b.md) | 14 | `declaration-track:9ad472e13cea2488a802197b91d3185830b9a4126875357f792d6fa254c2b70b` |
| 2 | `def` | [BooleanNetwork.iterate](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean/declarations/booleannetwork-iterate--deb81f35344bfbd4f9530e87.md) | 18 | `declaration-track:deb81f35344bfbd4f9530e8713fac9ab787fb877c4b584543cedb35e0d162950` |
| 3 | `def` | [BooleanNetwork.transitionMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean/declarations/booleannetwork-transitionmatrix--b147b84871b5e6b17ddc90e9.md) | 29 | `declaration-track:b147b84871b5e6b17ddc90e96b612a60fa9b41ef455d3b40b299be8dc609f440` |
| 4 | `def` | [BooleanNetwork.dependsOn](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean/declarations/booleannetwork-dependson--4ccc02793c516f53a68dcb28.md) | 42 | `declaration-track:4ccc02793c516f53a68dcb289715f4f44cb44266c521760e5a30692321f9608a` |
| 5 | `def` | [BooleanNetwork.dependencyMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean/declarations/booleannetwork-dependencymatrix--587ad4650529f27afca2e8a0.md) | 59 | `declaration-track:587ad4650529f27afca2e8a0f6c8d92fc9b68f7526fe2087a55d997002e7eb01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
