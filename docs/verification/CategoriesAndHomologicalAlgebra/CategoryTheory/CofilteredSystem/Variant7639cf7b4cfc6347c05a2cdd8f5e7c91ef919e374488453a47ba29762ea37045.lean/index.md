# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CofilteredSystem.Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "281e98a448da2854a30d7c5bf3cd1ff1ae1e99a5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `281e98a448da2854a30d7c5bf3cd1ff1ae1e99a5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Konig` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonempty_sections_of_finite_cofiltered_system.init](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/nonempty-sections-of-finite-cofiltered-system-init--876044d4304dde6a14520eda.md) | 74 | `result-track:876044d4304dde6a14520eda884b99bd46a3449927fff8fa8255c9d635734f8e` |
| 2 | `theorem` | [nonempty_sections_of_finite_cofiltered_system](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/nonempty-sections-of-finite-cofiltered-system--cdd91df1892d2afae694f05c.md) | 88 | `result-track:cdd91df1892d2afae694f05cb43a6b79bb597b35749605c79576160ac1b50566` |
| 3 | `theorem` | [nonempty_sections_of_finite_inverse_system](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/nonempty-sections-of-finite-inverse-system--e72bea793605fedadcef5691.md) | 120 | `result-track:e72bea793605fedadcef569176f1289a1f6df166ffba8636c26473fb6d0a2cb0` |
| 4 | `def` | [eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/eventualrange--4772bff1918a4e1943fb770b.md) | 139 | `declaration-track:4772bff1918a4e1943fb770b122e7f429e65fa4a3a3e86ca6f55b91397496e91` |
| 5 | `theorem` | [mem_eventualRange_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/mem-eventualrange-iff--3d1dd6d9e8ae1fb5283225f3.md) | 143 | `result-track:3d1dd6d9e8ae1fb5283225f3b632303f6c4b674a16a5b31c892eb814fe3b37c8` |
| 6 | `def` | [IsMittagLeffler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/ismittagleffler--8cd5f8e1c8f19cef84338081.md) | 153 | `declaration-track:8cd5f8e1c8f19cef843380813e679d11c55a8d8316ff9875258b0e706c9c0089` |
| 7 | `theorem` | [isMittagLeffler_iff_eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/ismittagleffler-iff-eventualrange--cc6cb25e9c58ee9142f9d550.md) | 157 | `result-track:cc6cb25e9c58ee9142f9d550d3c262b7fba53153f4f40a7c7699e80631646471` |
| 8 | `theorem` | [IsMittagLeffler.subset_image_eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/ismittagleffler-subset-image-eventualrange--807d17b7844b94aab817719b.md) | 164 | `result-track:807d17b7844b94aab817719b4199537bcb8a5e09b97948f76ad53126ae927911` |
| 9 | `theorem` | [eventualRange_eq_range_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/eventualrange-eq-range-precomp--5cc12b8a54a7759be3dfdfa6.md) | 172 | `result-track:5cc12b8a54a7759be3dfdfa63a78b13f69b6479d522d7c62b2d6945544dc981f` |
| 10 | `theorem` | [isMittagLeffler_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/ismittagleffler-of-surjective--900f3b472991e29fb382ce01.md) | 180 | `result-track:900f3b472991e29fb382ce01c8abdf001c025a24f4f77c848374e4157d770182` |
| 11 | `def` | [toPreimages](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/topreimages--b654b006372487ab260d1d91.md) | 187 | `declaration-track:b654b006372487ab260d1d917d2d0c0cc6fcf4a406b25904861f5a2ba0d9a9ed` |
| 12 | `instance` | [toPreimages_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/topreimages-finite--86dc94a018812820f9806c8a.md) | 203 | `declaration-track:86dc94a018812820f9806c8ad61851d870ec7834ad77aa2b7f056619083a3691` |
| 13 | `theorem` | [eventualRange_mapsTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/eventualrange-mapsto--69bb2a864cc06d2dd7b58350.md) | 209 | `result-track:69bb2a864cc06d2dd7b58350674fe2614cd2ffb3e0de8797d76acef0b57b2c5c` |
| 14 | `theorem` | [IsMittagLeffler.eq_image_eventualRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/ismittagleffler-eq-image-eventualrange--5aa20c67888d6edff77457e6.md) | 219 | `result-track:5aa20c67888d6edff77457e6119af97278110986b6e0166ea26b8898c2ada5b5` |
| 15 | `theorem` | [eventualRange_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/eventualrange-eq-iff--34d04dd7a696006fd7a127b8.md) | 224 | `result-track:34d04dd7a696006fd7a127b833ccf75840a62338f02baa33a6b04967e8349cf1` |
| 16 | `theorem` | [isMittagLeffler_iff_subset_range_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/ismittagleffler-iff-subset-range-comp--0fb6868c7ed4087d35c3a3a4.md) | 235 | `result-track:0fb6868c7ed4087d35c3a3a467500d6ea9b97b6868ce14e0255e6c8a47af7cf0` |
| 17 | `theorem` | [IsMittagLeffler.toPreimages](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/ismittagleffler-topreimages--4359a6ed1d53061996434238.md) | 240 | `result-track:4359a6ed1d530619964342382235d2b4279a2f2c38b6dca4b3b23083d8b9a07a` |
| 18 | `theorem` | [isMittagLeffler_of_exists_finite_range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/ismittagleffler-of-exists-finite-range--c4c729d290bff7bca398925f.md) | 261 | `result-track:c4c729d290bff7bca398925f78e6ca5dfb8d8ed9c5bd03b1ca0d70e933b60a6c` |
| 19 | `def` | [toEventualRanges](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/toeventualranges--5f972d958b19e8a8b75c2bf0.md) | 278 | `declaration-track:5f972d958b19e8a8b75c2bf0f8d17f5793a7cafea424259c5a7a878e75bd204b` |
| 20 | `instance` | [toEventualRanges_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/toeventualranges-finite--152c5fbe929b3478cd7e7178.md) | 290 | `declaration-track:152c5fbe929b3478cd7e71781b959591a318c401ab8a07c2320f3096d48df920` |
| 21 | `def` | [toEventualRangesSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/toeventualrangessectionsequiv--c5295bec57f633ecdc191a04.md) | 296 | `declaration-track:c5295bec57f633ecdc191a043a88c14724fb4730f8a2acea969b77e9e930d97d` |
| 22 | `theorem` | [surjective_toEventualRanges](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/surjective-toeventualranges--5c1607ad15a85698f128c02d.md) | 310 | `result-track:5c1607ad15a85698f128c02df9171aa36e7a0bbbf306ffa8ca51f31d21faec91` |
| 23 | `theorem` | [toEventualRanges_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/toeventualranges-nonempty--d50e79187dcb0537a54eee1c.md) | 317 | `result-track:d50e79187dcb0537a54eee1cfdce24ed46b5dcfe758cb11c97ad81b1cb9ff2b8` |
| 24 | `theorem` | [thin_diagram_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/thin-diagram-of-surjective--99aa8c275a47b8bd43382137.md) | 325 | `result-track:99aa8c275a47b8bd43382137fe0e4fec59bd10bea250c59adbeaa564c5d7d0a4` |
| 25 | `theorem` | [toPreimages_nonempty_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/topreimages-nonempty-of-surjective--4c68e967538203f53fe84d58.md) | 331 | `result-track:4c68e967538203f53fe84d58e56f1904bd0481373b3032d32d950805db99ddcd` |
| 26 | `theorem` | [eval_section_injective_of_eventually_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/eval-section-injective-of-eventually-injective--e2cf3055bdba381f12e38efe.md) | 342 | `result-track:e2cf3055bdba381f12e38efe285a64d3cbc91982ee0d119e21419fe5b907fd0c` |
| 27 | `theorem` | [eval_section_surjective_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/eval-section-surjective-of-surjective--dd171a972ebd4ebec5a2b364.md) | 358 | `result-track:dd171a972ebd4ebec5a2b36441c1b6182ec9bde13391a3b53022563e84624109` |
| 28 | `theorem` | [eventually_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/declarations/eventually-injective--a21a0b439058d14273d0ac76.md) | 370 | `result-track:a21a0b439058d14273d0ac766f8648f5280ce6ceb933bfab440f7b99f72123c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
