# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftExactFunctor.Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49d391ceac2bb93811e773a272fc66fb4297940e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49d391ceac2bb93811e773a272fc66fb4297940e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.CartesianMonoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.EquivalenceGroupAddGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Internal.Types.CommGrp_` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.CommGrp_` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/declarations/instance--72ac15516c69a837b810b8f8.md) | 45 | `declaration-track:72ac15516c69a837b810b8f8d5d8b74fc05505aedcbfc093af79a4eec84cafc9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/declarations/instance--b529e5482a48b1bec9aab910.md) | 47 | `declaration-track:b529e5482a48b1bec9aab910a33d81a19848905b04a6e6affac2bede3b2004c8` |
| 3 | `def` | [inverseAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/declarations/inverseaux--e080fa81b623fd3037bdbbeb.md) | 50 | `declaration-track:e080fa81b623fd3037bdbbeb2e4d435ac78aa08acbdaff940296b9b30555b430` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/declarations/instance--41158871bb450120863ab671.md) | 55 | `declaration-track:41158871bb450120863ab67147915c1ad4127de0302449fd3e6e1a799ceb44b9` |
| 5 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/declarations/inverse--eb976e7aa1f83579606fa30f.md) | 62 | `declaration-track:eb976e7aa1f83579606fa30f09830d03bca713a46f322fd8a3b62cdbf3e2f5f6` |
| 6 | `def` | [unitIsoAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/declarations/unitisoaux--6db794a1f44e5f749b0a27cf.md) | 69 | `declaration-track:6db794a1f44e5f749b0a27cf8da7926a0e53eb5494c4eb015c69b7beeeae9407` |
| 7 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/declarations/unitiso--405e2e2381e61b95de917769.md) | 84 | `declaration-track:405e2e2381e61b95de91776985d639386956ac7b91adfcf120190752ce3566cc` |
| 8 | `def` | [leftExactFunctorForgetEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/declarations/leftexactfunctorforgetequivalence--8fb8e68ac7468b495f0a11c2.md) | 98 | `declaration-track:8fb8e68ac7468b495f0a11c23012ae49144918add2877fa05f56bdee2398b5aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
