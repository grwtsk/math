# Verification target: GRWTSK.Algebra.LinearAlgebra.Reflection.Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad5d6f2c333f1b45c06678df2933e39b188e4056",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad5d6f2c333f1b45c06678df2933e39b188e4056`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Invariant` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Torsion` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteSpan` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Chebyshev` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preReflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/prereflection--ca0ee208c3b972472ec99118.md) | 67 | `declaration-track:ca0ee208c3b972472ec9911857e456b0acc1b97a48e840f836a481a6c28efa81` |
| 2 | `lemma` | [preReflection_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/prereflection-apply--19bd5591435a0d5cc8019c9f.md) | 70 | `result-track:19bd5591435a0d5cc8019c9f429fe8098030c7caa23454072f7a0f74cbbaf376` |
| 3 | `lemma` | [preReflection_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/prereflection-apply-self--10dcb18193145dec6e6c41a6.md) | 76 | `result-track:10dcb18193145dec6e6c41a61a4ff4c83f023a8f011f3e8715defd8b82be449a` |
| 4 | `lemma` | [involutive_preReflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/involutive-prereflection--125f7d96eacec0abfb011fda.md) | 80 | `result-track:125f7d96eacec0abfb011fda0c958390def5dc0ba2c7ddff1e2bf733928b2b4f` |
| 5 | `lemma` | [preReflection_preReflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/prereflection-prereflection--26b5058ddcc1d6165602bb22.md) | 84 | `result-track:26b5058ddcc1d6165602bb22ebfab8fd96fbc717aadce8f86bc7a13e4a5c9ab6` |
| 6 | `def` | [reflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection--5bb6c3853c3523d5a79ecf3b.md) | 97 | `declaration-track:5bb6c3853c3523d5a79ecf3b655537132e28a65f2919a6af875bded5cd0d7338` |
| 7 | `lemma` | [reflection_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-apply--3d6b8a8fb7551c3b45c1fd1b.md) | 100 | `result-track:3d6b8a8fb7551c3b45c1fd1b9e8f3f2dd8d9c6be79964f4c41e8317961356c3e` |
| 8 | `lemma` | [reflection_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-apply-self--050306f9ad0fc6946318b6c2.md) | 105 | `result-track:050306f9ad0fc6946318b6c27b11cb6b38292c0d7a99fb0e9387a1d9edfaa6d7` |
| 9 | `lemma` | [involutive_reflection](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/involutive-reflection--b1b875168319810ed59749b6.md) | 109 | `result-track:b1b875168319810ed59749b6b500b98774d22231b80bd0c2fe65c2713342d8e3` |
| 10 | `lemma` | [reflection_inv](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-inv--2a9507db642acd91dcfc9012.md) | 114 | `result-track:2a9507db642acd91dcfc90126f3a9cb05a7d0f3f60b2aa062648b60094ff5b5a` |
| 11 | `lemma` | [reflection_symm](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-symm--290bdd55add12dfb490059e0.md) | 117 | `result-track:290bdd55add12dfb490059e0a401e928d766fb7bee42095753f244640729ebeb` |
| 12 | `lemma` | [invOn_reflection_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/invon-reflection-of-mapsto--36b8b760795224f5d14c2944.md) | 121 | `result-track:36b8b760795224f5d14c2944551822c9d5b3e97373ac0068f1735aab18807a95` |
| 13 | `lemma` | [bijOn_reflection_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/bijon-reflection-of-mapsto--99ade3a8ceebee2ef01f4057.md) | 125 | `result-track:99ade3a8ceebee2ef01f4057634c28561c701e3674e0d028e54b81e31cf8e132` |
| 14 | `lemma` | [_root_.Submodule.mem_invtSubmodule_reflection_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/root-submodule-mem-invtsubmodule-reflection-of-mem--752bfafca105f974df34bdbd.md) | 129 | `result-track:752bfafca105f974df34bdbd66ba792bcea99faf25049236124b64b23971b28f` |
| 15 | `lemma` | [_root_.Submodule.mem_invtSubmodule_reflection_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/root-submodule-mem-invtsubmodule-reflection-iff--b9d5476367bd68a77550b709.md) | 137 | `result-track:b9d5476367bd68a77550b70977cae62fcb31e27e42390e40d2ca7bbbb30f2148` |
| 16 | `lemma` | [reflection_mul_reflection_pow_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-mul-reflection-pow-apply--c9b7ae684b0731ce8dd124e5.md) | 179 | `result-track:c9b7ae684b0731ce8dd124e5702f931ae37687534a5849679456ea9f03761f8b` |
| 17 | `lemma` | [reflection_mul_reflection_pow](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-mul-reflection-pow--039b63d23aeb06bffc0c4f86.md) | 228 | `result-track:039b63d23aeb06bffc0c4f8697f2aa71ffa7f444aec17efc98f694fe5547ae73` |
| 18 | `lemma` | [reflection_mul_reflection_zpow_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-mul-reflection-zpow-apply--a15cc4cc0a4a1edabe1bff14.md) | 240 | `result-track:a15cc4cc0a4a1edabe1bff1478acd4fe8724f1485081d5d11fe0c926f8b9c20b` |
| 19 | `lemma` | [reflection_mul_reflection_zpow](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-mul-reflection-zpow--a762a3f5bbc295f8c3a098d5.md) | 260 | `result-track:a762a3f5bbc295f8c3a098d5de7b1c2be038faa70c743ddbca308086ade02eee` |
| 20 | `lemma` | [reflection_mul_reflection_zpow_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-mul-reflection-zpow-apply-self--c0a825067545131e7aab71dc.md) | 273 | `result-track:c0a825067545131e7aab71dc8a333a66859dff9499afdd53672594a961a8d174` |
| 21 | `lemma` | [reflection_mul_reflection_pow_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-mul-reflection-pow-apply-self--ef129a3741d374a924505ae9.md) | 306 | `result-track:ef129a3741d374a924505ae9fb1c280d5c84ae02c8e075c9df57314b5161c060` |
| 22 | `lemma` | [reflection_mul_reflection_mul_reflection_zpow_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-mul-reflection-mul-reflection-zpow-apply-self--672a291a344e897a2f4c6f41.md) | 313 | `result-track:672a291a344e897a2f4c6f41b4a15a8894978f810f904f1e1610d596bd246b01` |
| 23 | `lemma` | [reflection_mul_reflection_mul_reflection_pow_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-mul-reflection-mul-reflection-pow-apply-self--777cbb47e48aee9d17468661.md) | 324 | `result-track:777cbb47e48aee9d17468661bab14d67e9a16aca5c4c773d85d092d6325c7315` |
| 24 | `lemma` | [Dual.eq_of_preReflection_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/dual-eq-of-prereflection-mapsto--019811f433910a5119939944.md) | 340 | `result-track:019811f433910a511993994446481f034f256dffc6fa6e6bd5a0385644bbac51` |
| 25 | `lemma` | [Dual.eq_of_preReflection_mapsTo'](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/dual-eq-of-prereflection-mapsto--004e84db4a9d829f82c60e2c.md) | 374 | `result-track:004e84db4a9d829f82c60e2cd48065f40e65342e844c2a5b46dba8860d5acca3` |
| 26 | `lemma` | [reflection_reflection_iterate](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/reflection-reflection-iterate--6e54e5d55fcfeb872f69342c.md) | 401 | `result-track:6e54e5d55fcfeb872f69342c32c146aafd2b63a74c071500d0fc90e9fa72d6b4` |
| 27 | `lemma` | [infinite_range_reflection_reflection_iterate_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/infinite-range-reflection-reflection-iterate-iff--3a4d31dfd01f8aa78c93f5e2.md) | 416 | `result-track:3a4d31dfd01f8aa78c93f5e20b5333709030fa7c74b158c0138ba78c0b111677` |
| 28 | `lemma` | [eq_of_mapsTo_reflection_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/eq-of-mapsto-reflection-of-mem--ce7b23765b70c84725540228.md) | 422 | `result-track:ce7b23765b70c84725540228fbf71ef8de68e84f5365aa8ae61456621d615546` |
| 29 | `lemma` | [injOn_dualMap_subtype_span_range_range](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/declarations/injon-dualmap-subtype-span-range-range--1b513b1da4cdbf6746f252d1.md) | 441 | `result-track:1b513b1da4cdbf6746f252d14fea531c50b6780d2d01728999621ef177612205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
