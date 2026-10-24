# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unit.Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f353e5fcd891157b430a941364e6c8c9af3bae2e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f353e5fcd891157b430a941364e6c8c9af3bae2e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.PUnit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [punitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean/declarations/punitcone--041765bd8fb946ee4420f3b1.md) | 35 | `declaration-track:041765bd8fb946ee4420f3b169ed33e13687b714d83b9b576463d522aed844bc` |
| 2 | `def` | [punitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean/declarations/punitcocone--a1060ec0b15e36055b30b7fa.md) | 39 | `declaration-track:a1060ec0b15e36055b30b7faf7db95c6062089658ad5e08f89c520f55d42289f` |
| 3 | `def` | [punitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean/declarations/punitconeislimit--f42bea761960d9a30ff027f0.md) | 44 | `declaration-track:f42bea761960d9a30ff027f04c3fd45ddb353cddf7bb87ed1ea6a1d547d360fa` |
| 4 | `def` | [punitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean/declarations/punitcoconeiscolimit--1c325f2a696097d2da442f98.md) | 49 | `declaration-track:1c325f2a696097d2da442f982469b66e5f5fbc78e91efcb13c9ff3dda569181b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean/declarations/instance--ff8289609f5da3c3e68a0cde.md) | 52 | `declaration-track:ff8289609f5da3c3e68a0cdef5a3716b787118af7bf9b9120a167a4e555dfef2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantf0688202e771e26dd4ec3136799c5f398b6a1892899fe129a5a3a8b26de0839c.lean/declarations/instance--5f1ac48a1cbd23a77ba78e59.md) | 55 | `declaration-track:5f1ac48a1cbd23a77ba78e59345480a20de3c12fb81d57511e7689eb6b28b881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
