# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "652f7bd57e5f060b3e464e3851449e115c161d99",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `652f7bd57e5f060b3e464e3851449e115c161d99`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/preadditiveyonedaobj--40e1b520087c130c633e24bd.md) | 43 | `declaration-track:40e1b520087c130c633e24bdb309dbefefc961b48aba4c515f0b9f12c8c58d2f` |
| 2 | `def` | [preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/preadditiveyoneda--f40a7f3f0615dd35ca73f46f.md) | 56 | `declaration-track:f40a7f3f0615dd35ca73f46f1716e859c0e86f23c70ee3205077e6cededf587c` |
| 3 | `def` | [preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/preadditivecoyonedaobj--0ffc7bea08ab5bbe5d4b49ca.md) | 72 | `declaration-track:0ffc7bea08ab5bbe5d4b49caf5a46ccd8330c328b5bb361c179de20b147b4276` |
| 4 | `def` | [preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/preadditivecoyoneda--26d45d2f4d8bed8a5addbf8d.md) | 85 | `declaration-track:26d45d2f4d8bed8a5addbf8d0fadc0bde7e8f54da69399b584a6d5db4b902710` |
| 5 | `instance` | [additive_yonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/additive-yonedaobj--a3119a4408076a519c6ac4e7.md) | 98 | `declaration-track:a3119a4408076a519c6ac4e7ba236ccd352fd5857aee7d6783e1a868508fd5ab` |
| 6 | `instance` | [additive_yonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/additive-yonedaobj--1fa81aa437615efa2ab32aeb.md) | 101 | `declaration-track:1fa81aa437615efa2ab32aeb3d6e632bee461d60e2566e70646e5bb52004b838` |
| 7 | `instance` | [additive_coyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/additive-coyonedaobj--6c7c9b8637ceef50b188be6b.md) | 104 | `declaration-track:6c7c9b8637ceef50b188be6b246bd8db53b5a53bcd554426159621abfadbaaa2` |
| 8 | `instance` | [additive_coyonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/additive-coyonedaobj--4a2f9bc624ad5171ed9b3121.md) | 107 | `declaration-track:4a2f9bc624ad5171ed9b3121e45099351969a8928f6cbf9186725a18d7df4cd9` |
| 9 | `theorem` | [whiskering_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/whiskering-preadditiveyoneda--26efe1e1e374776cadda5343.md) | 114 | `result-track:26efe1e1e374776cadda53439ed0e01086c479d04da8e793a9e8ac496b56dd58` |
| 10 | `theorem` | [whiskering_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/whiskering-preadditivecoyoneda--4c809906af2e4c365990f529.md) | 125 | `result-track:4c809906af2e4c365990f52960b2d49cc11af0727a9ce140b4245d6ad727c567` |
| 11 | `instance` | [full_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/full-preadditiveyoneda--97e6d72f685ed7fd8aa8018b.md) | 132 | `declaration-track:97e6d72f685ed7fd8aa8018b60d4e648e4358e92831bfda4f0329c78b25debf7` |
| 12 | `instance` | [full_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/full-preadditivecoyoneda--16432c29c4298030519e4ab6.md) | 140 | `declaration-track:16432c29c4298030519e4ab624836655b1959dc975ee9117a411a09fb179de97` |
| 13 | `instance` | [faithful_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/faithful-preadditiveyoneda--7db7313d12ae82d55852e9ee.md) | 148 | `declaration-track:7db7313d12ae82d55852e9ee1e890517d78dfd5b409c3ea8d5180d72d9252ee1` |
| 14 | `instance` | [faithful_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d.lean/declarations/faithful-preadditivecoyoneda--5ad47384acead26cd746cd41.md) | 152 | `declaration-track:5ad47384acead26cd746cd410573d0ad53c170206d50770918f228e168d29e28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
