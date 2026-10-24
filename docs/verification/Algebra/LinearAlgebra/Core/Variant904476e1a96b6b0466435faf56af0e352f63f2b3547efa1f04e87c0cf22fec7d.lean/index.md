# Verification target: GRWTSK.Algebra.LinearAlgebra.Core.Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "246d4e14e0413b02d5f74bb7d84a5a9ce4b9c831",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `246d4e14e0413b02d5f74bb7d84a5a9ce4b9c831`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Matrix.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Application](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean/declarations/application--7019e3d49168f89c4fa6d535.md) | 14 | `declaration-track:7019e3d49168f89c4fa6d535deca41efbb76720847c10689294a679fe397f083` |
| 2 | `def` | [identity](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean/declarations/identity--b7a652d91d0c5aff08107fd5.md) | 19 | `declaration-track:b7a652d91d0c5aff08107fd5ec216d3e68470677df2c562047cce73af34f3f95` |
| 3 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean/declarations/comp--872e3b434d9c8beb597585c0.md) | 23 | `declaration-track:872e3b434d9c8beb597585c03958172147b88ba73ef2ac3d0c0b89e7c5e635f4` |
| 4 | `theorem` | [identity_apply](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean/declarations/identity-apply--1a2c610717bc3b635fcd4718.md) | 29 | `result-track:1a2c610717bc3b635fcd4718c0c0049293bcdbc777481f9cdc5c5f229b1120ad` |
| 5 | `theorem` | [comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean/declarations/comp-apply--234ffc91ec3bf1586e44269e.md) | 34 | `result-track:234ffc91ec3bf1586e44269eb5bcf1046a357df5809e5d012465bae8ddc5a565` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
