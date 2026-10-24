# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuasiIso.Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f2f969fb54d5adea4c1cc92bec6a68072b435c0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f2f969fb54d5adea4c1cc92bec6a68072b435c0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Homology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/quasiiso--ff7f4a76c4f5825a27b5bb77.md) | 38 | `declaration-track:ff7f4a76c4f5825a27b5bb77fa62603da3df305f85e0d0b617400f4be14f163d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/instance--e1a2c3ad46c21eb7c24fac7e.md) | 44 | `declaration-track:e1a2c3ad46c21eb7c24fac7ece513db2fd9a7c05f26991be4ac29d2df6bea4da` |
| 3 | `instance` | [quasiIso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/quasiiso-comp--e731948ac9efaf389b31d4a3.md) | 50 | `declaration-track:e731948ac9efaf389b31d4a3af134cbca55c4eaaef9131d889544f23b83ad22e` |
| 4 | `theorem` | [quasiIso_of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/quasiiso-of-comp-left--3767f8e85133cc5774fa90ea.md) | 56 | `result-track:3767f8e85133cc5774fa90ea58017d4fa707ed771344b8830abbcc8b083ac957` |
| 5 | `theorem` | [quasiIso_of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/quasiiso-of-comp-right--6a4d5fc4c27bb2f6b6fc8fa4.md) | 61 | `result-track:6a4d5fc4c27bb2f6b6fc8fa4921bfa8669842e93c923484e49669d53ced4482f` |
| 6 | `theorem` | [toQuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/toquasiiso--73f04c31100d4f6a22ce2770.md) | 74 | `result-track:73f04c31100d4f6a22ce2770effaaff7f3175fa579ff24a030d68aeb37695cd4` |
| 7 | `theorem` | [toQuasiIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/toquasiiso-inv--f1753a170ce2523e550b8e97.md) | 82 | `result-track:f1753a170ce2523e550b8e97793f890133eb4011c7ce2a1f0a3224190bcf4d61` |
| 8 | `def` | [toSingle₀CokernelAtZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/tosingle-cokernelatzeroiso--0711e803d4c6fc7ad38043e3.md) | 106 | `declaration-track:0711e803d4c6fc7ad38043e3074861ab1e09d1fa06d96f66d80cf624c2e44259` |
| 9 | `theorem` | [toSingle₀CokernelAtZeroIso_hom_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/tosingle-cokernelatzeroiso-hom-eq--ffbb494f35e35a35769bb2eb.md) | 111 | `result-track:ffbb494f35e35a35769bb2eba802fed6cf2e49e239102be5eeb870080c90928e` |
| 10 | `theorem` | [to_single₀_epi_at_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/to-single-epi-at-zero--97e8d058fd94c261a32dfda1.md) | 122 | `result-track:97e8d058fd94c261a32dfda1c6c0a6e73e5884f558d74670bcc2687a824dc715` |
| 11 | `theorem` | [to_single₀_exact_d_f_at_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/to-single-exact-d-f-at-zero--6f645c312dc930998c3289ca.md) | 130 | `result-track:6f645c312dc930998c3289ca3cffa62fac79c5d2807c42c6cc1a8bd48893e345` |
| 12 | `theorem` | [to_single₀_exact_at_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/to-single-exact-at-succ--8f7de6f91fcc831ac1a37446.md) | 140 | `result-track:8f7de6f91fcc831ac1a374465c418181631303f2e3d91129605879ba99a467ab` |
| 13 | `def` | [fromSingle₀KernelAtZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/fromsingle-kernelatzeroiso--2457b785275a53abed599588.md) | 156 | `declaration-track:2457b785275a53abed59958889e92e3bfc40da4c43f5678f0c2296967f775e77` |
| 14 | `theorem` | [fromSingle₀KernelAtZeroIso_inv_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/fromsingle-kernelatzeroiso-inv-eq--d58b3b76686980141b40bc17.md) | 161 | `result-track:d58b3b76686980141b40bc17c8bb03c77acd7ecbeb9b55b6594459991584e3f6` |
| 15 | `theorem` | [from_single₀_mono_at_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/from-single-mono-at-zero--5961c614ae66d9137eb321d8.md) | 175 | `result-track:5961c614ae66d9137eb321d82c37687c4f6d7608aa7f1796c83920db4bd7a186` |
| 16 | `theorem` | [from_single₀_exact_f_d_at_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/from-single-exact-f-d-at-zero--29da396f97d2479094067645.md) | 183 | `result-track:29da396f97d2479094067645edb6e24f3ed25a71ee0524a42a684ec13556da40` |
| 17 | `theorem` | [from_single₀_exact_at_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/from-single-exact-at-succ--c869814a3c7e0d9c392c7a64.md) | 193 | `result-track:c869814a3c7e0d9c392c7a64e27bc25c356c75dc1ad20f19e57e081729ef4786` |
| 18 | `theorem` | [CategoryTheory.Functor.quasiIso_of_map_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6b3da895c2c6a76b44b759000608eb93db3512a097c73e6fa197700e7262fe1c.lean/declarations/categorytheory-functor-quasiiso-of-map-quasiiso--8381296892d5d1fd7dae3454.md) | 210 | `result-track:8381296892d5d1fd7dae345468aa2b18abb003dfc80e23e783129634b914bfd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
