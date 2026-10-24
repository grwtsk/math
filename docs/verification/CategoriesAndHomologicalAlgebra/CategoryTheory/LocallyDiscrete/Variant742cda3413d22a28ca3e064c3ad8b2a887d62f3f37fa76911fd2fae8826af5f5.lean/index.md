# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyDiscrete.Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17e17f0c9bb8f7714a0aef9340b8ea5d6fc2e756",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17e17f0c9bb8f7714a0aef9340b8ea5d6fc2e756`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Pseudofunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.LocallyDiscrete` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pseudofunctorOfIsLocallyDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean/declarations/pseudofunctorofislocallydiscrete--c20dcee58c52e015eece77fc.md) | 36 | `declaration-track:c20dcee58c52e015eece77fc7d6af53c44f86988746edbab5f995c3dfcaabe23` |
| 2 | `def` | [oplaxFunctorOfIsLocallyDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean/declarations/oplaxfunctorofislocallydiscrete--4cb27efb7c9ef6535f626d3f.md) | 70 | `declaration-track:4cb27efb7c9ef6535f626d3fd0b92e3c37e890de3607bc5511e6b42e3b47a47c` |
| 3 | `def` | [Functor.toPseudoFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean/declarations/functor-topseudofunctor--3e1594137a5df3c4a6ebcf14.md) | 113 | `declaration-track:3e1594137a5df3c4a6ebcf14330ff86094fc68f3d84bda2aa948a9cc498fbbee` |
| 4 | `def` | [Functor.toOplaxFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean/declarations/functor-tooplaxfunctor--e3ce70e07e46014708987c32.md) | 123 | `declaration-track:e3ce70e07e46014708987c32c1943b30b7573b59a6acfada610fdf37438cacee` |
| 5 | `def` | [mkPseudofunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant742cda3413d22a28ca3e064c3ad8b2a887d62f3f37fa76911fd2fae8826af5f5.lean/declarations/mkpseudofunctor--d49c30515dda09ae9a666324.md) | 135 | `declaration-track:d49c30515dda09ae9a6663243f9b517977aa4cc89f036f89d203dca89fc0e593` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
