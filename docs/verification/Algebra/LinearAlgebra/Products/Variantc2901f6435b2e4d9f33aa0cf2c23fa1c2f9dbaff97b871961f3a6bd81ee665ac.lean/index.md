# Verification target: GRWTSK.Algebra.LinearAlgebra.Products.Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37787cb7139b63b26cd5a5251c6e12b5e429a3d4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37787cb7139b63b26cd5a5251c6e12b5e429a3d4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productCone](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean/declarations/productcone--236973afb3c4ff65b1d5f0ab.md) | 31 | `declaration-track:236973afb3c4ff65b1d5f0abe2709b3925184b6153a89c6fd3c277a1915bf640` |
| 2 | `def` | [productConeIsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean/declarations/productconeislimit--351eb60e245e10cc95a6ae15.md) | 36 | `declaration-track:351eb60e245e10cc95a6ae151306af28775411ef85d6ecf1dff9000bf2da49fa` |
| 3 | `def` | [piIsoPi](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean/declarations/piisopi--34e76b228ab0d07d4785717c.md) | 54 | `declaration-track:34e76b228ab0d07d4785717cac75d2dd1582a54457e175f0787089ec1b17e4ef` |
| 4 | `theorem` | [piIsoPi_inv_kernel_ι](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean/declarations/piisopi-inv-kernel--449e431c3027ad61f2d52672.md) | 60 | `result-track:449e431c3027ad61f2d52672e9e8a4bdb51a1f6850da1b24b165d741bf538c31` |
| 5 | `theorem` | [piIsoPi_hom_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantc2901f6435b2e4d9f33aa0cf2c23fa1c2f9dbaff97b871961f3a6bd81ee665ac.lean/declarations/piisopi-hom-ker-subtype--54140042c53982c35423572b.md) | 66 | `result-track:54140042c53982c35423572b1b0100f0cb126c4f3876f73c28ecb60d94ce6db3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
