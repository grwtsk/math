# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81f7595be8a7088602e4add030a8a7d55005af0f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81f7595be8a7088602e4add030a8a7d55005af0f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Invertible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/linear--66f0030ce6641b4953ace755.md) | 53 | `declaration-track:66f0030ce6641b4953ace7552e0d007b7f35695e2fc7939b2ecf7ff4c92ca77b` |
| 2 | `instance` | [preadditiveNatLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/preadditivenatlinear--39238f98218a11c703a2fc47.md) | 76 | `declaration-track:39238f98218a11c703a2fc4724425f7b687736041fe295c475ba59e885c716b8` |
| 3 | `instance` | [preadditiveIntLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/preadditiveintlinear--7b78e22ca962c89621eed24e.md) | 82 | `declaration-track:7b78e22ca962c89621eed24e0292487860bd8676cd443ded502391ace969b7af` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/instance--3b29810ed825994677331c3b.md) | 92 | `declaration-track:3b29810ed825994677331c3b4acae689aa0b2fc9c80cc9387282228842ce966d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/instance--9dfe35c8384e78d66155e1d9.md) | 96 | `declaration-track:9dfe35c8384e78d66155e1d9f8c391adb9e2afcead9e942a1f4c77740f9b840c` |
| 6 | `instance` | [inducedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/inducedcategory--6112d14933210dbf786360fe.md) | 111 | `declaration-track:6112d14933210dbf786360fe6d3011b812b0ee8e818f2624516c4afd99719067` |
| 7 | `instance` | [fullSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/fullsubcategory--d8aa9bb47960e0de6e8578fc.md) | 120 | `declaration-track:d8aa9bb47960e0de6e8578fcc454a39fc3dac50db636d367c3774d11f75368d4` |
| 8 | `def` | [leftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/leftcomp--634c8ec2eaa85eebd4c3eab6.md) | 131 | `declaration-track:634c8ec2eaa85eebd4c3eab640ead67dfc85c1ab487c20f0dfd1060d5a7622ee` |
| 9 | `def` | [rightComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/rightcomp--6055876ee874fb3fa631be64.md) | 140 | `declaration-track:6055876ee874fb3fa631be64fa4965432d8e26ae0c29312e44a55a2434d151df` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/instance--be9885dbed6927bdfac852d1.md) | 147 | `declaration-track:be9885dbed6927bdfac852d1c29f9036392aa362a878e1d4ea34bbadd7579c37` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/instance--4fa0e20a34182cf0cb2a1db7.md) | 152 | `declaration-track:4fa0e20a34182cf0cb2a1db7fa976c27427c9277a0031732e9c1c2ae91d8dfe6` |
| 12 | `def` | [homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/homcongr--7157754daa788d1c165fe729.md) | 159 | `declaration-track:7157754daa788d1c165fe729141aefdde9359e60165d9fb76be94f45699236a8` |
| 13 | `theorem` | [homCongr_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/homcongr-apply--13944150bd4ea1564afd9746.md) | 176 | `result-track:13944150bd4ea1564afd974668cd006984ff65d8c7770265de0a257469ca4ed5` |
| 14 | `theorem` | [homCongr_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/homcongr-symm-apply--860073567189081717599d2b.md) | 182 | `result-track:860073567189081717599d2bac312d48e20fe46282b15dd58a0b1d5774657556` |
| 15 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcf0463a334a6e805d011dbefacbdca880d77c17ab2879ce7bc96efb727da0242.lean/declarations/comp--1c859583a39ae90ce79f48f9.md) | 196 | `declaration-track:1c859583a39ae90ce79f48f991f960e8f2f977ddd5c0232ee41cccb0c4974d95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
