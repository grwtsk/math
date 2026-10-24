# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58b8ff192f338351ce369dad7b215893901fb435",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58b8ff192f338351ce369dad7b215893901fb435`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CommMon_` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [monMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/monmonoid--a72b8651e7694d0dde3833c8.md) | 27 | `declaration-track:a72b8651e7694d0dde3833c8c453fd8f7e2489a274b623bedc945dcdfecefbcd` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/functor--ca261057af186f4edcaaff1a.md) | 36 | `declaration-track:ca261057af186f4edcaaff1a583e13ce73aa2373d26fd22532bc2800baaaff42` |
| 3 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/inverse--5fc84c2017700ebaa1520218.md) | 45 | `declaration-track:5fc84c2017700ebaa152021848448549c2ea7b407b26389a584204d1474e4a72` |
| 4 | `def` | [monTypeEquivalenceMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/montypeequivalencemon--a7fdf9299682eb65c630b6db.md) | 62 | `declaration-track:a7fdf9299682eb65c630b6db13f4516505de426e00e0d04163995cb7ac94b269` |
| 5 | `def` | [monTypeEquivalenceMonForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/montypeequivalencemonforget--ee25542b03c6cc4320ca6260.md) | 73 | `declaration-track:ee25542b03c6cc4320ca6260915ab8343e290c36b76b642678504ab1f23f04f6` |
| 6 | `instance` | [monTypeInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/montypeinhabited--2ea8f7e77ce18d4f59e080df.md) | 77 | `declaration-track:2ea8f7e77ce18d4f59e080df37f28b029f66d20f3cf49ce200054d7069d08975` |
| 7 | `instance` | [commMonCommMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/commmoncommmonoid--34a0b0da78abd3fc3ab4dc78.md) | 82 | `declaration-track:34a0b0da78abd3fc3ab4dc782872e95f1302eb83dec3673bf75ed24dec064dbf` |
| 8 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/functor--fa1f91f26f4deaf11fc1645b.md) | 88 | `declaration-track:fa1f91f26f4deaf11fc1645bd9b2d32194f55e04ac626d25a849dfb44e156cab` |
| 9 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/inverse--d0bb659b2a453744ca6fe2b5.md) | 94 | `declaration-track:d0bb659b2a453744ca6fe2b5c3a2c8fc1c9cb6c7d67cf2210865110cb7c053d8` |
| 10 | `def` | [commMonTypeEquivalenceCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/commmontypeequivalencecommmon--3a74f7bc858ecd228e803119.md) | 109 | `declaration-track:3a74f7bc858ecd228e803119c9a1e160923f3f6ba6c925c96a99a54af54eb942` |
| 11 | `def` | [commMonTypeEquivalenceCommMonForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0.lean/declarations/commmontypeequivalencecommmonforget--dc46ed42a5290397d0d783d7.md) | 120 | `declaration-track:dc46ed42a5290397d0d783d7358cf1513f8ca2f802a23076579c4ed2a0c29026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
