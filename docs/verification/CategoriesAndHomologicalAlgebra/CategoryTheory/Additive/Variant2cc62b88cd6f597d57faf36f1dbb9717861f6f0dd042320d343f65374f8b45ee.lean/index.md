# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Additive.Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4313636324d0a2fab5311e3b923471507f6cbfc8",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4313636324d0a2fab5311e3b923471507f6cbfc8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Single` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/instance--6703d2ea3b1aff9fd762cb38.md) | 39 | `declaration-track:6703d2ea3b1aff9fd762cb384717ae17af3a61db2881e0d2233712636060bc1a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/instance--e0da7b65877d95d362a80756.md) | 42 | `declaration-track:e0da7b65877d95d362a8075612366deb7c5f7a5f3af165750eba7e09d07d9ba1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/instance--c0bcfbc7a6e1a8955eedceca.md) | 45 | `declaration-track:c0bcfbc7a6e1a8955eedceca8bea10feb92b9160b5677caabf94beba6a046b2a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/instance--c4df90c3e7980494ad1d508c.md) | 48 | `declaration-track:c4df90c3e7980494ad1d508c9c0d931af83d0d959a4257b6cafcfefb07cb6b29` |
| 5 | `instance` | [hasNatScalar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/hasnatscalar--2684a4049cb808ace2d7308e.md) | 51 | `declaration-track:2684a4049cb808ace2d7308e903f5fdd084629c7d365e1d727813efcbc569ca4` |
| 6 | `instance` | [hasIntScalar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/hasintscalar--83a9b4dc18ff19278b633e6b.md) | 56 | `declaration-track:83a9b4dc18ff19278b633e6b2a1f4a90e81b1372829036c30f0256a592db88f6` |
| 7 | `theorem` | [zero_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/zero-f-apply--cef943e07332d8a8260892ac.md) | 62 | `result-track:cef943e07332d8a8260892ac90bb02de0023a311e5ee2a8293f2ad1a377f5015` |
| 8 | `theorem` | [add_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/add-f-apply--b1cfee4b6fb0857381201a74.md) | 66 | `result-track:b1cfee4b6fb0857381201a74a1c1de369fb84fd36bfb0cd4bf2a96dcf05e9223` |
| 9 | `theorem` | [neg_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/neg-f-apply--edbc4d4c73dc09183b2a1bbe.md) | 70 | `result-track:edbc4d4c73dc09183b2a1bbef17bae742682f7a3561512653c01ac1dbcecb96b` |
| 10 | `theorem` | [sub_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/sub-f-apply--ed116eaa41705ec88e01b4df.md) | 74 | `result-track:ed116eaa41705ec88e01b4dffbce346a45408fba2d285991367a8c95f4cbfe0a` |
| 11 | `theorem` | [nsmul_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/nsmul-f-apply--5a6445f794604c45f656c128.md) | 78 | `result-track:5a6445f794604c45f656c128bd26204f6141eb1dcc4706255bb23d37017acf9d` |
| 12 | `theorem` | [zsmul_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/zsmul-f-apply--df97e2340bd3a6c3982d865a.md) | 82 | `result-track:df97e2340bd3a6c3982d865add1b8377f67f4494fc2ccddcf410cba21a162209` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/instance--8fb27f7138dacf361451f86e.md) | 85 | `declaration-track:8fb27f7138dacf361451f86e492e471980a4b2fdd19e002662fd5a12183f92d9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/instance--72b08d1db2c803963c9af858.md) | 91 | `declaration-track:72b08d1db2c803963c9af85869be9c74780fcd792d80cb977b65c507b6860a61` |
| 15 | `def` | [Hom.fAddMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/hom-faddmonoidhom--c1a26cea7b0bb89a869aca6b.md) | 103 | `declaration-track:c1a26cea7b0bb89a869aca6bc58ef4301da7abc802a6a92a846ac5285f5f203a` |
| 16 | `instance` | [eval_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/eval-additive--6a0f85b07cf97a58dea433d3.md) | 106 | `declaration-track:6a0f85b07cf97a58dea433d3453ec7f9ef479bb2fb568279b0d61373bf17df8c` |
| 17 | `def` | [Functor.mapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/functor-maphomologicalcomplex--baa79d12ccc753535b5856a2.md) | 116 | `declaration-track:baa79d12ccc753535b5856a2909c8106cf754535a030612f102716b9f88a4916` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/instance--3725fbf11762e35d6c14c8a1.md) | 130 | `declaration-track:3725fbf11762e35d6c14c8a18b64c8740b515e5bb86eeccaa13c3ce0924ee57c` |
| 19 | `instance` | [Functor.map_homogical_complex_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/functor-map-homogical-complex-additive--b484d469edcbb60daa2a9459.md) | 133 | `declaration-track:b484d469edcbb60daa2a9459b96ca8c02b19900c2bb78ddb2ae2135040433b76` |
| 20 | `def` | [Functor.mapHomologicalComplexIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/functor-maphomologicalcomplexidiso--0d034fee8802c7047caec545.md) | 141 | `declaration-track:0d034fee8802c7047caec54545bc92be54ac50f247d7343f866b77f2e6e9abf8` |
| 21 | `instance` | [Functor.mapHomologicalComplex_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/functor-maphomologicalcomplex-reflects-iso--ce50c6a1b5143d47e85552cf.md) | 145 | `declaration-track:ce50c6a1b5143d47e85552cfac92266775c8c769ae35f24aeee0b5e72864a132` |
| 22 | `def` | [NatTrans.mapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/nattrans-maphomologicalcomplex--a0db701162c2b3e07de81e00.md) | 162 | `declaration-track:a0db701162c2b3e07de81e00f64664c711ebab6c50d032c2e07c889de1044caa` |
| 23 | `theorem` | [NatTrans.mapHomologicalComplex_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/nattrans-maphomologicalcomplex-id--43c625a73b687448811eadc0.md) | 168 | `result-track:43c625a73b687448811eadc04bad3032d03bcaff09122a02defe9b74e3925a8e` |
| 24 | `theorem` | [NatTrans.mapHomologicalComplex_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/nattrans-maphomologicalcomplex-comp--2c911bebb4eb9affdc6b20c8.md) | 173 | `result-track:2c911bebb4eb9affdc6b20c849ee06b384c3b6156364764d131451f2fe441e3e` |
| 25 | `theorem` | [NatTrans.mapHomologicalComplex_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/nattrans-maphomologicalcomplex-naturality--36ae0cc990a6364ebcfba948.md) | 181 | `result-track:36ae0cc990a6364ebcfba94832267a11d63b8be26289e8dfd7202c209b025d98` |
| 26 | `def` | [NatIso.mapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/natiso-maphomologicalcomplex--dc1ba2be5d6efa0e2d7bf013.md) | 192 | `declaration-track:dc1ba2be5d6efa0e2d7bf013639abd2be72fd8463c15cdedbe42af3d8e38cf9a` |
| 27 | `def` | [Equivalence.mapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/equivalence-maphomologicalcomplex--cbbb55dd2912e84e93b89fce.md) | 206 | `declaration-track:cbbb55dd2912e84e93b89fcef2193a35f042720b0a9a7233bd808fa2a157767d` |
| 28 | `theorem` | [map_chain_complex_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/map-chain-complex-of--f2f0734169ca0becba4d2b9a.md) | 222 | `result-track:f2f0734169ca0becba4d2b9ad48c3f41c2f4457cfb2da18e44d5bbc70a03aeac` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/instance--5fc613a626ec59f7a281ae68.md) | 238 | `declaration-track:5fc613a626ec59f7a281ae68a7259cf88bda1399e3904b26b43987b41f7ace6f` |
| 30 | `def` | [singleMapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/singlemaphomologicalcomplex--ad5b87e6abb9fffc9bd675a8.md) | 248 | `declaration-track:ad5b87e6abb9fffc9bd675a850a59ed33f673a5f81893453160bff0e47e7a6a4` |
| 31 | `theorem` | [singleMapHomologicalComplex_hom_app_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/singlemaphomologicalcomplex-hom-app-self--d05b51cf0c9af1a09a9c953e.md) | 276 | `result-track:d05b51cf0c9af1a09a9c953e7193b9d0587e5366a55bf5d2e882338ac8b70a8a` |
| 32 | `theorem` | [singleMapHomologicalComplex_hom_app_ne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/singlemaphomologicalcomplex-hom-app-ne--079a45bf7c0988b505c41181.md) | 282 | `result-track:079a45bf7c0988b505c4118183e4efcc578ed74d828604682d742131ff9fce1e` |
| 33 | `theorem` | [singleMapHomologicalComplex_inv_app_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/singlemaphomologicalcomplex-inv-app-self--48a4b4f4992710332775c07a.md) | 287 | `result-track:48a4b4f4992710332775c07a4d1a13191c228737cb64b34bb1fb959d01ab49f8` |
| 34 | `theorem` | [singleMapHomologicalComplex_inv_app_ne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant2cc62b88cd6f597d57faf36f1dbb9717861f6f0dd042320d343f65374f8b45ee.lean/declarations/singlemaphomologicalcomplex-inv-app-ne--1a8f28a89115729684d28e58.md) | 293 | `result-track:1a8f28a89115729684d28e5818e629ea7d8114dfe3469b4513baf0b970acfc95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
