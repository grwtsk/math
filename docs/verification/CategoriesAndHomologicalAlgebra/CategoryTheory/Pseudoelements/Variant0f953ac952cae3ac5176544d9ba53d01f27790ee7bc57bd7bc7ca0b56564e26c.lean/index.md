# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudoelements.Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db26f92b1ed238d7fda4e2f40ef91cddb7e363d3",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db26f92b1ed238d7fda4e2f40ef91cddb7e363d3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/app--823759f62a8086277ecf455e.md) | 94 | `declaration-track:823759f62a8086277ecf455e16e64d8535f0e7ae13b424c9117a908d82627e0d` |
| 2 | `theorem` | [app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/app-hom--048b35ec5c95466513c2d001.md) | 98 | `result-track:048b35ec5c95466513c2d00139738301ff04be34ad7b65362f8f13117dc74573` |
| 3 | `def` | [PseudoEqual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudoequal--15aec2c255053409f0735c44.md) | 102 | `declaration-track:15aec2c255053409f0735c44ce7b84912fa061827c1b024356ba6ecebee94966` |
| 4 | `theorem` | [pseudoEqual_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudoequal-refl--c7e3c81a7ba4b98e58a6fb01.md) | 105 | `result-track:c7e3c81a7ba4b98e58a6fb01cfc52df9bbf1f8c690006bbd1e4782cff5d12889` |
| 5 | `theorem` | [pseudoEqual_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudoequal-symm--721f265d6bde8727b51c2934.md) | 108 | `result-track:721f265d6bde8727b51c2934864ca1ef8634d76b0a492747ed94663043bde6f7` |
| 6 | `theorem` | [pseudoEqual_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudoequal-trans--42be3dc033567b491e1c0d27.md) | 117 | `result-track:42be3dc033567b491e1c0d27832fe7dca07fd4d5f517759c8c1d65a5ead162ca` |
| 7 | `def` | [Pseudoelement.setoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudoelement-setoid--d69705299cc74111e2556b55.md) | 127 | `declaration-track:d69705299cc74111e2556b55f8c1bb87097ee555994261f2459642cb539cd3d9` |
| 8 | `def` | [Pseudoelement](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudoelement--18b6d972a6e8ec613facbc24.md) | 134 | `declaration-track:18b6d972a6e8ec613facbc2422e27363536f4b4b2ef68f585e0a62e07c4cda32` |
| 9 | `def` | [objectToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/objecttosort--0dabb569e4ac27cee5544958.md) | 140 | `declaration-track:0dabb569e4ac27cee55449581df6069163a69ba9aad218607795780cafb63142` |
| 10 | `def` | [overToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/overtosort--106a7679ce9aba8f2896dded.md) | 148 | `declaration-track:106a7679ce9aba8f2896ddedcc9e4e79387c53099680c59ad0f1f5407e45576a` |
| 11 | `theorem` | [over_coe_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/over-coe-def--fbf454d8dcb3a0393b3f4aab.md) | 153 | `result-track:fbf454d8dcb3a0393b3f4aab8d01a48e593369b9ca4614fe040348f2723aac01` |
| 12 | `theorem` | [pseudoApply_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudoapply-aux--bab7a1286496c9df3052c344.md) | 156 | `result-track:bab7a1286496c9df3052c3445ea841062c4625c5ce1770c24b5eb4d4a3336cf2` |
| 13 | `def` | [pseudoApply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudoapply--bc486b1847a65a03c0ec20b0.md) | 161 | `declaration-track:bc486b1847a65a03c0ec20b0f0d1499457673b6c2090a72e4fba8f45811c1ebf` |
| 14 | `def` | [homToFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/homtofun--b2b38f43baad9e138e9680a0.md) | 165 | `declaration-track:b2b38f43baad9e138e9680a0fa3336b77e6e9eaac400f9c8bd8712be4b43d2bd` |
| 15 | `theorem` | [pseudoApply_mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudoapply-mk--6c9b99729defd92e5ce02a86.md) | 172 | `result-track:6c9b99729defd92e5ce02a866adff6d428385d347bcf1f487166d10f77f71378` |
| 16 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/comp-apply--9f6665827a7340c00f4dd302.md) | 177 | `result-track:9f6665827a7340c00f4dd30210e50e2daa87602f944811c916898c87c95f47e9` |
| 17 | `theorem` | [comp_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/comp-comp--e4efa1b4d89b93125e06de62.md) | 184 | `result-track:e4efa1b4d89b93125e06de62e9305b34df0012d25ab2c97dc6915ee96a20a701` |
| 18 | `theorem` | [pseudoZero_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudozero-aux--7e3dbb343230d76933d8a105.md) | 201 | `result-track:7e3dbb343230d76933d8a105f89194e762311677c1d7151d09c05867c036c61a` |
| 19 | `theorem` | [zero_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/zero-eq-zero--7bdff9cf0b74a419e7e3e6cc.md) | 208 | `result-track:7bdff9cf0b74a419e7e3e6cc4ac3fea091cff8e8a1e0f8313015ad946c1e3acb` |
| 20 | `def` | [pseudoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudozero--a497d872589cc47bae1fd10d.md) | 213 | `declaration-track:a497d872589cc47bae1fd10dc68020ce8ba5cefb97454b5fd448cc5f00c0dafb` |
| 21 | `instance` | [hasZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/haszero--1f9083377a74a6aff907937e.md) | 220 | `declaration-track:1f9083377a74a6aff907937e4b86513ebb0ee1e345e74b056be814c736f31c49` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/instance--9dd2d27990353a1c5e8b7443.md) | 223 | `declaration-track:9dd2d27990353a1c5e8b74433d74be13c5cb9c5f75b10e8944a2045cd92f4a2d` |
| 23 | `theorem` | [pseudoZero_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudozero-def--9eaee7154973ef61854a03ae.md) | 226 | `result-track:9eaee7154973ef61854a03aed96b83b9f86fcdd14499b0f0b7d5baa88806881d` |
| 24 | `theorem` | [zero_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/zero-eq-zero--a4bd50c1bad30c8ddb7f71aa.md) | 229 | `result-track:a4bd50c1bad30c8ddb7f71aaa40be2f6355f74bbf134c2f68f0ad3aa419eb690` |
| 25 | `theorem` | [pseudoZero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudozero-iff--5b74f55cbb4ef0b28f3e1e3e.md) | 233 | `result-track:5b74f55cbb4ef0b28f3e1e3ed31b73bd32a740c4cb1fee2408babdb99fabf914` |
| 26 | `theorem` | [apply_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/apply-zero--9d056aad26b598a22a57f1f7.md) | 243 | `result-track:9d056aad26b598a22a57f1f7d4c8fde1165853655dee6c0ff02012ef262ddcef` |
| 27 | `theorem` | [zero_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/zero-apply--4d5514ef73d9d2c6aad70f96.md) | 249 | `result-track:4d5514ef73d9d2c6aad70f968c336bf9b2d7342bea895724ea16b9593b70522e` |
| 28 | `theorem` | [zero_morphism_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/zero-morphism-ext--933c8993fe19fce18096c1bd.md) | 255 | `result-track:933c8993fe19fce18096c1bd08bc268c0b4a7157792de40311a425d14ef7250e` |
| 29 | `theorem` | [zero_morphism_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/zero-morphism-ext--5c14e4cdfdc49ad553e63cb7.md) | 259 | `result-track:5c14e4cdfdc49ad553e63cb744e01068e3856218893f2f0de5e73d7dd835e2ad` |
| 30 | `theorem` | [eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/eq-zero-iff--fba8fcba8a03a6139cf8a8af.md) | 262 | `result-track:fba8fcba8a03a6139cf8a8af511c50d327232cedf8e736f8fcfe0d36f42bb2e1` |
| 31 | `theorem` | [pseudo_injective_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudo-injective-of-mono--c46e1c7bf3b13e1cd67f0d44.md) | 266 | `result-track:c46e1c7bf3b13e1cd67f0d448fdb9428f726910768eb183bc96fb74a8e3130e8` |
| 32 | `theorem` | [zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/zero-of-map-zero--d045836861e8ed625f8f6c95.md) | 277 | `result-track:d045836861e8ed625f8f6c9548739b7b7ec35fe208e58c5f63160a4b633ce29c` |
| 33 | `theorem` | [mono_of_zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/mono-of-zero-of-map-zero--471037cf5373375550b17d37.md) | 283 | `result-track:471037cf5373375550b17d37fb3096334de76ba930c9f128801deddceaefb3b0` |
| 34 | `theorem` | [pseudo_surjective_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudo-surjective-of-epi--36c6847f2c50e99ef19d6b6c.md) | 291 | `result-track:36c6847f2c50e99ef19d6b6ca9ba29e3b83f954b34973468fb6960ecdf26b012` |
| 35 | `theorem` | [epi_of_pseudo_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/epi-of-pseudo-surjective--901be215273d1389fcab6a2a.md) | 302 | `result-track:901be215273d1389fcab6a2a00d592acc3fbfa1c76598bf98e70f42821548a8c` |
| 36 | `theorem` | [pseudo_exact_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudo-exact-of-exact--c2a7a329b3c18b043cf246ae.md) | 318 | `result-track:c2a7a329b3c18b043cf246ae6d2f8c8d5aaf5582e6a1d153896569d1fa98e4ce` |
| 37 | `theorem` | [apply_eq_zero_of_comp_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/apply-eq-zero-of-comp-eq-zero--8c02564c2c5577d1069942c7.md) | 347 | `result-track:8c02564c2c5577d1069942c7032bc4dfdffbdffb239d1d25660b1141ba2f8ef2` |
| 38 | `theorem` | [exact_of_pseudo_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/exact-of-pseudo-exact--862550333155b5bf3b8123b3.md) | 353 | `result-track:862550333155b5bf3b8123b3892c7230293e787c67fbbb214e156882bec44595` |
| 39 | `theorem` | [sub_of_eq_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/sub-of-eq-image--af6ab218db053cdb6556023c.md) | 388 | `result-track:af6ab218db053cdb6556023cf01cb3f9f4678c6d368b37d01c6c1892bd972318` |
| 40 | `theorem` | [pseudo_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/pseudo-pullback--a953c238b397e6d05fae8ce8.md) | 415 | `result-track:a953c238b397e6d05fae8ce8ae88011caee2ea5529269bc351fea1a466fbc77b` |
| 41 | `theorem` | [ModuleCat.eq_range_of_pseudoequal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant0f953ac952cae3ac5176544d9ba53d01f27790ee7bc57bd7bc7ca0b56564e26c.lean/declarations/modulecat-eq-range-of-pseudoequal--c66d5a3aa241a29c8949583c.md) | 430 | `result-track:c66d5a3aa241a29c8949583c24ac0aaa38eff69c925e6adcdb424f197e297ae6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
