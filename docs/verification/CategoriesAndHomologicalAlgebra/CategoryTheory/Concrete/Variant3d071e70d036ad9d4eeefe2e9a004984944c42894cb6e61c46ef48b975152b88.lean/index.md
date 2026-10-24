# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Concrete.Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "678329ab213a954589cc275dc2f16db66e3ebb41",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `678329ab213a954589cc275dc2f16db66e3ebb41`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Action.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FintypeCat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/ofmulaction--e8483f7a4b30dc060f896053.md) | 28 | `declaration-track:e8483f7a4b30dc060f89605330b0f5c168ef3e72e1a01da89c1eb7546f626104` |
| 2 | `theorem` | [ofMulAction_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/ofmulaction-apply--5b0b572ce0ba882e7b5d4bc8.md) | 33 | `result-track:5b0b572ce0ba882e7b5d4bc8f9cb594ff7afed1440ab27dd768d659b388a243c` |
| 3 | `def` | [ofMulActionLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/ofmulactionlimitcone--9dc9cb5fe0eb9715118c455b.md) | 39 | `declaration-track:9dc9cb5fe0eb9715118c455b9b5f38709419499e2de74624d00d127abcda3ee8` |
| 4 | `def` | [leftRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/leftregular--55e1eae5adde2fdf90cfdcd3.md) | 62 | `declaration-track:55e1eae5adde2fdf90cfdcd35412da4f793356089a1a5e2240dab29f5bdd3484` |
| 5 | `def` | [diagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/diagonal--2f9f74f02c9948ad51fa1642.md) | 67 | `declaration-track:2f9f74f02c9948ad51fa16423418f4e75a9391c593fc6614e054d1b3d59ef488` |
| 6 | `def` | [diagonalOneIsoLeftRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/diagonaloneisoleftregular--9d34ee8b25f128b6ace4922b.md) | 71 | `declaration-track:9d34ee8b25f128b6ace4922b9a61343caa1c64a771607d3ed170ed883e3d3160` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/instance--07527e78e918db5de9715d67.md) | 78 | `declaration-track:07527e78e918db5de9715d670295391b2c39182eef43081c82da0caffabdb6e1` |
| 8 | `def` | [ofMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/ofmulaction--0a7624a0cba5d21ea854e3b5.md) | 83 | `declaration-track:0a7624a0cba5d21ea854e3b544fe0ee22a1125c0d007c42d8abf79bb734e9a2d` |
| 9 | `theorem` | [ofMulAction_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/ofmulaction-apply--025896c2e3c5f73ee627db26.md) | 89 | `result-track:025896c2e3c5f73ee627db26dabe813b9d48de2e367b65c32b07e0f6667cba7f` |
| 10 | `def` | [toEndHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/toendhom--d81a1fd36daf742ded793e4f.md) | 103 | `declaration-track:d81a1fd36daf742ded793e4f46a4bfff5f2e5e9636f817a1f98b34b14276f53d` |
| 11 | `lemma` | [toEndHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/toendhom-apply--ea0f165e2d5050e4589aac05.md) | 131 | `result-track:ea0f165e2d5050e4589aac057c2a06b73a8558e5844194b388bf054b0ccb263a` |
| 12 | `lemma` | [toEndHom_trivial_of_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/toendhom-trivial-of-mem--1a50439626693a400aca1fee.md) | 134 | `result-track:1a50439626693a400aca1fee86fc39621824f885fa564e7f5103b437184f3b43` |
| 13 | `def` | [quotientToEndHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/quotienttoendhom--2051d273120879d5aefb9f2b.md) | 142 | `declaration-track:2051d273120879d5aefb9f2b3b238558372b49acce2f030a15b52070591e1301` |
| 14 | `lemma` | [quotientToEndHom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/quotienttoendhom-mk--cf68dfea0ebba2578c517c0a.md) | 147 | `result-track:cf68dfea0ebba2578c517c0af1ea4f7b443e2d76664b6b5492949f6ebfa1b2c3` |
| 15 | `def` | [quotientToQuotientOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/quotienttoquotientofle--c2cc13d52d8fb0a81a83724a.md) | 153 | `declaration-track:c2cc13d52d8fb0a81a83724aaf499dabd720a7d7b939b973416a9b48fc10624b` |
| 16 | `lemma` | [quotientToQuotientOfLE_hom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/quotienttoquotientofle-hom-mk--deee5aa1790d2b44020ab019.md) | 162 | `result-track:deee5aa1790d2b44020ab0195c386e893911b29c356606ceffe91a9584300b8d` |
| 17 | `instance` | [instMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/instmulaction--998919eb903e167371c36148.md) | 175 | `declaration-track:998919eb903e167371c36148cce840b967bf833c6bdde10c9281f26f6344369a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/declarations/instance--4af19434a4c671f29d94721b.md) | 187 | `declaration-track:4af19434a4c671f29d94721b4025e7382a4eeda4ea46581fe71b93a439396734` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
