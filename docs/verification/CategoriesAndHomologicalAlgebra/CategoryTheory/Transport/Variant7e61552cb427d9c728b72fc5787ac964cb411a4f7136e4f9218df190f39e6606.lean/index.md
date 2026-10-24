# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transport.Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e3c43309625d6e9bdb45eea9528ef64e7b00058",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e3c43309625d6e9bdb45eea9528ef64e7b00058`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.NaturalTransformation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InducingFunctorData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/inducingfunctordata--db6d2f35b51731f3c664991f.md) | 43 | `declaration-track:db6d2f35b51731f3c664991f4b7bbdf5642f84708c8ff8cb2644ad4940893e14` |
| 2 | `def` | [induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/induced--0bb6fc64c60431094240f87c.md) | 80 | `declaration-track:0bb6fc64c60431094240f87c8f39208bea48ca4937eff305724ec88aaba08fcc` |
| 3 | `def` | [fromInducedCoreMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/frominducedcoremonoidal--8a1c0ac57dbdfa387c6ea291.md) | 109 | `declaration-track:8a1c0ac57dbdfa387c6ea291d97a1c69e6f18587bb6262e695f87be03bffb425` |
| 4 | `instance` | [fromInducedMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/frominducedmonoidal--d283f0557588e0a1cd5128ab.md) | 123 | `declaration-track:d283f0557588e0a1cd5128ab378a88a7e2a11a71f181514a120297634c5dc536` |
| 5 | `def` | [transportStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/transportstruct--d4556ddee3650f1a51c9b21b.md) | 133 | `declaration-track:d4556ddee3650f1a51c9b21b86060f7f5d0f7e06cdd3abd39c475a1bcea91d7f` |
| 6 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/transport--b74adbcbe3d8e60b6b1d99d1.md) | 154 | `declaration-track:b74adbcbe3d8e60b6b1d99d14e51e620388cea16b4bc1c846912423efa942648` |
| 7 | `def` | [Transported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/transported--4b24d80acf30e9abbf9c7ffa.md) | 162 | `declaration-track:4b24d80acf30e9abbf9c7ffaa24ff9635f9f12b1afc532e49539c9383bc82ab5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/instance--5e7c2d7aa2aa27a664b8cc70.md) | 164 | `declaration-track:5e7c2d7aa2aa27a664b8cc7004ebf34ea85d49997c772e74c1e91ec06b841d0e` |
| 9 | `instance` | [Transported.instMonoidalCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/transported-instmonoidalcategorystruct--b059fdb7ad3b69935f4d2ef1.md) | 166 | `declaration-track:b059fdb7ad3b69935f4d2ef111655b3d3a72a4e585c260a0a1bc6766abe2c960` |
| 10 | `instance` | [Transported.instMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/transported-instmonoidalcategory--f97ff8f1c7a5beb65f922994.md) | 170 | `declaration-track:f97ff8f1c7a5beb65f922994cb686d96565266e0dc723ca6c2d4265a80736999` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/instance--aece81383c8cc26be913efaa.md) | 173 | `declaration-track:aece81383c8cc26be913efaa13375604132a6d9e165aff8d7127f95836e1b858` |
| 12 | `abbrev` | [equivalenceTransported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/equivalencetransported--ddb95546cd7e512e88c0f0d8.md) | 182 | `declaration-track:ddb95546cd7e512e88c0f0d875c84a4550a5edb5688abc13daaa08f6ed612c23` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/instance--a702cbb14954bf9eccbf8631.md) | 184 | `declaration-track:a702cbb14954bf9eccbf86316f2128bfe7774d598177211f36cc17ee50c9f99d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/instance--c4ace851fbd1416436ce7e82.md) | 188 | `declaration-track:c4ace851fbd1416436ce7e8232d0e3f8eb42a91a312b0013623f8504fc354a80` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/instance--c4713e885f3fff9536fdf27f.md) | 191 | `declaration-track:c4713e885f3fff9536fdf27face8c362c07f61a0062f285be7503011d33f228a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/instance--0ca781a131a3fca4e4cc5ceb.md) | 194 | `declaration-track:0ca781a131a3fca4e4cc5ceb75e0c7d5ecdd06fba8dc39a16078b2c2eda8d7e2` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/instance--f0adb791a50067fb0309038d.md) | 197 | `declaration-track:f0adb791a50067fb0309038df172b7524e16b006c11cba681c48a4fb8bb805a2` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/instance--0920733c68137706dfa345f9.md) | 201 | `declaration-track:0920733c68137706dfa345f99f015c801614f02f9ef1a3b7ad84f32f75f03cd2` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/declarations/instance--31d987108f3997948640a14b.md) | 205 | `declaration-track:31d987108f3997948640a14b9e72b36622bad8f0912594f9440a945a8d86755c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
