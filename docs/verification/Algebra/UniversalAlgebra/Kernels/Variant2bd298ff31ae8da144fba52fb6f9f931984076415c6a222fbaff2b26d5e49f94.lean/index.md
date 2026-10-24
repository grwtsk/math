# Verification target: GRWTSK.Algebra.UniversalAlgebra.Kernels.Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd4adcdc84139b943c0438ba46843c7885f445fb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd4adcdc84139b943c0438ba46843c7885f445fb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelCone](../../../../../mathematics/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean/declarations/kernelcone--b3101bf4074e36823c163358.md) | 31 | `declaration-track:b3101bf4074e36823c163358e197d7f080646ea569d9c71ba7c0724c83f1c67c` |
| 2 | `def` | [kernelIsLimit](../../../../../mathematics/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean/declarations/kernelislimit--cf63470b68e743c9dc5c6da7.md) | 36 | `declaration-track:cf63470b68e743c9dc5c6da761933543596e3b9f57f7c442d3643ec6f3522adb` |
| 3 | `def` | [cokernelCocone](../../../../../mathematics/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean/declarations/cokernelcocone--66b77aa6db6c0b35f038f668.md) | 44 | `declaration-track:66b77aa6db6c0b35f038f6688eaccd08dca2dd4da663bb12a85a385063cbcfc5` |
| 4 | `def` | [cokernelIsColimit](../../../../../mathematics/Algebra/UniversalAlgebra/Kernels/Variant2bd298ff31ae8da144fba52fb6f9f931984076415c6a222fbaff2b26d5e49f94.lean/declarations/cokerneliscolimit--4c75ab0ad48475a389bb1160.md) | 49 | `declaration-track:4c75ab0ad48475a389bb116031983e77dc948e4c186950d24a507ceac82b2d4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
