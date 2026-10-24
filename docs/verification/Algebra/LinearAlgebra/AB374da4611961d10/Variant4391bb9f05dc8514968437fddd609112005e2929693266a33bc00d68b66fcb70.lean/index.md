# Verification target: GRWTSK.Algebra.LinearAlgebra.AB374da4611961d10.Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65e2c03e4500e5286243364d227eb1a2258a109f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65e2c03e4500e5286243364d227eb1a2258a109f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `MathDiscovery.Kernel.Channel` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityRegularizer](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/declarations/identityregularizer--87ddbe7571a955a39681e584.md) | 30 | `declaration-track:87ddbe7571a955a39681e5842fe6ee8fbcad73dd9f978b0895c11ef9b6bfc04b` |
| 2 | `theorem` | [identityRegularizer_posDef](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/declarations/identityregularizer-posdef--d610e9d2374c4e565081432f.md) | 34 | `result-track:d610e9d2374c4e565081432f708d7f9c398547857be94812586f91c67f8fa6b3` |
| 3 | `def` | [regularizedKernel](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/declarations/regularizedkernel--dc7bb32c96332f504e69c28a.md) | 40 | `declaration-track:dc7bb32c96332f504e69c28ac94868cf5de386f498e5614be42280236ac6c59c` |
| 4 | `theorem` | [regularizedKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/declarations/regularizedkernel-apply--70e338e524b40e563a03c4ce.md) | 50 | `result-track:70e338e524b40e563a03c4ce2a7f32dc05c9b19a6d2125a31b9e21297c2dce35` |
| 5 | `theorem` | [regularizedKernel_posDef](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/declarations/regularizedkernel-posdef--d0e4340324bb57ed77f59b8a.md) | 64 | `result-track:d0e4340324bb57ed77f59b8aaa7d5af47cc02a42b4ae36371cb9f0856f8e50c7` |
| 6 | `theorem` | [regularizedKernel_strictOnDistinct](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/declarations/regularizedkernel-strictondistinct--b1fac3111195830f917aa326.md) | 73 | `result-track:b1fac3111195830f917aa326fcb4049fe67515ffc1cdfaa572bf26f180a5aa48` |
| 7 | `def` | [zeroSemanticKernel](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/declarations/zerosemantickernel--3b65cc8d0e3ea565ad6f0fc5.md) | 85 | `declaration-track:3b65cc8d0e3ea565ad6f0fc5671b73d86f13de3b10a29e66b06fe0f76cdf0811` |
| 8 | `theorem` | [zeroSemanticKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/AB374da4611961d10/Variant4391bb9f05dc8514968437fddd609112005e2929693266a33bc00d68b66fcb70.lean/declarations/zerosemantickernel-apply--bac7ebf853b33be24f833d92.md) | 91 | `result-track:bac7ebf853b33be24f833d92709d713c2324951c94918b468f553a5a1a301282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
