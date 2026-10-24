# Verification target: GRWTSK.Algebra.LinearAlgebra.BooleanNetwork.Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12bb7092a6341bc5c740d831dc567b15d62c7176",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12bb7092a6341bc5c740d831dc567b15d62c7176`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.Hypercube` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanNetwork.Network](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean/declarations/booleannetwork-network--f96bc8411677281f7888a1d6.md) | 6 | `declaration-track:f96bc8411677281f7888a1d6169504a19f2a73d705564b8acef9ec484b610cbe` |
| 2 | `def` | [BooleanNetwork.iterate](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean/declarations/booleannetwork-iterate--98298bc35cd095f6acb6558c.md) | 10 | `declaration-track:98298bc35cd095f6acb6558c2a542adc3d344939fad82d8173424205b38c88c8` |
| 3 | `def` | [BooleanNetwork.transitionMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean/declarations/booleannetwork-transitionmatrix--cc38f8f6c1679fcd84d579ec.md) | 21 | `declaration-track:cc38f8f6c1679fcd84d579eccd6be33f603f93bc501d88a9852f72224d2e4943` |
| 4 | `def` | [BooleanNetwork.dependsOn](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean/declarations/booleannetwork-dependson--227b812d286fc665b7c62a0f.md) | 34 | `declaration-track:227b812d286fc665b7c62a0fdd0445edf44ed637b55e70805159c7634304b41b` |
| 5 | `def` | [BooleanNetwork.dependencyMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean/declarations/booleannetwork-dependencymatrix--1ac6a3654368fb278e0efd9d.md) | 51 | `declaration-track:1ac6a3654368fb278e0efd9dc4955334cf941c461a25f9c81ac5eb76a08badb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
