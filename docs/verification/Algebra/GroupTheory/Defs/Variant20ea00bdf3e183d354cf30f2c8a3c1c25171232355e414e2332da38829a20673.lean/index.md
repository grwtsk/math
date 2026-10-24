# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "010ab38334a64ca5e383732796b55edce1d2a7ab",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `010ab38334a64ca5e383732796b55edce1d2a7ab`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [con](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/con--68b5b96fd0c3508651606a1d.md) | 50 | `declaration-track:68b5b96fd0c3508651606a1da8d15a81f5385ee4fa27f4db06738f3ad7a590c3` |
| 2 | `instance` | [Quotient.group](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/quotient-group--7be574d9098e3167a0de569f.md) | 61 | `declaration-track:7be574d9098e3167a0de569f7a9192773e2a887769b5e9ff10a95212dd5319df` |
| 3 | `theorem` | [con_ker_eq_conKer](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/con-ker-eq-conker--496f9ed968ee02391f22699e.md) | 71 | `result-track:496f9ed968ee02391f22699e577205373d57013848e86534f32a1cc09fa1405c` |
| 4 | `def` | [mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk--6ce135bc49879b117d75c146.md) | 77 | `declaration-track:6ce135bc49879b117d75c14682732bc9a8d626b3be20fd2d6735a71c9aaf5e51` |
| 5 | `theorem` | [coe_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/coe-mk--c879d349c5ca9ced85ee6e73.md) | 81 | `result-track:c879d349c5ca9ced85ee6e73c7717f6d7b01ed8333d437fb6f1631ab2dcdc5f6` |
| 6 | `theorem` | [mk'_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk-apply--93ef200e35fcbe3d1a32097a.md) | 85 | `result-track:93ef200e35fcbe3d1a32097a7e8bf99a30d163eabd212b1358d6cb3892fdc631` |
| 7 | `theorem` | [mk'_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk-surjective--a213845624d790f4e8143c9b.md) | 89 | `result-track:a213845624d790f4e8143c9b8dbf3a101ca2d50ea2672450ee7c6d5d02ed402f` |
| 8 | `theorem` | [mk'_eq_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk-eq-mk--8d95297d1c6908b2b51b804e.md) | 93 | `result-track:8d95297d1c6908b2b51b804e8ac9866fbf270dd9bdb5aac574349e84ad89f728` |
| 9 | `theorem` | [monoidHom_ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/monoidhom-ext--9d45fd496d72b08099df4360.md) | 105 | `result-track:9d45fd496d72b08099df436054afd052b960499772a7faba6ac1fd5afcdf8a66` |
| 10 | `theorem` | [eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/eq-one-iff--7d9145fcca70fee46a8dc720.md) | 109 | `result-track:7d9145fcca70fee46a8dc720fd6f55ea9263280580c5e68c78f03651a3813d68` |
| 11 | `theorem` | [range_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/range-mk--8e2a93d8e4cbadc0025542d8.md) | 117 | `result-track:8e2a93d8e4cbadc0025542d8f7e5aaf074cc58fbd703835b629689849b379436` |
| 12 | `theorem` | [ker_le_range_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/ker-le-range-iff--eb06139767786a3539dab276.md) | 121 | `result-track:eb06139767786a3539dab2769ff484a7369ab6c9d5cfd484c055c0454dafbc7b` |
| 13 | `theorem` | [ker_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/ker-mk--fb55925511ac8423919bc103.md) | 127 | `result-track:fb55925511ac8423919bc1036b7f5c40240e1bee5707b3fb90540c345cb0bc10` |
| 14 | `theorem` | [eq_iff_div_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/eq-iff-div-mem--09818cc84fa98388996f12f3.md) | 132 | `result-track:09818cc84fa98388996f12f33be7adb9d5bbd3a04f3aee20232075123383e683` |
| 15 | `instance` | [Quotient.commGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/quotient-commgroup--b5519fa29db12fe787e9295c.md) | 140 | `declaration-track:b5519fa29db12fe787e9295ca93baf8d9a56fd1cd3ae1dd139730d1beca5ed43` |
| 16 | `theorem` | [mk_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk-one--d3660d75c534eaaf296455af.md) | 147 | `result-track:d3660d75c534eaaf296455afcb856fdc1e12b633d7d0bc3e71047c85914e0f74` |
| 17 | `theorem` | [mk_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk-mul--e597a04e5aba8b174f782a24.md) | 151 | `result-track:e597a04e5aba8b174f782a24f12c81141c9d1237e9ae88ab2879fa69394541ff` |
| 18 | `theorem` | [mk_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk-inv--8de42bc385765bdbb318d026.md) | 155 | `result-track:8de42bc385765bdbb318d026763bc3fd46e2b8b54c5b0b099f0390b4e35f7816` |
| 19 | `theorem` | [mk_div](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk-div--6b024f57c206b489412a5692.md) | 159 | `result-track:6b024f57c206b489412a56927f5df4eedb0644b72ab98de6e1d0ca98e9a10147` |
| 20 | `theorem` | [mk_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk-pow--a2e4b88447b62a9b0fe1637b.md) | 163 | `result-track:a2e4b88447b62a9b0fe1637bc25ef8ca48ef842fdc6c91421ca0fa952c06d8c0` |
| 21 | `theorem` | [mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/mk-zpow--81a72b708ebf27edf6ede20d.md) | 167 | `result-track:81a72b708ebf27edf6ede20d86a091ae9f47f9ef8a7c8e1d90879f61992bcb74` |
| 22 | `lemma` | [map_mk'_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/map-mk-self--a1cb7abf9834ccdcc869ebf8.md) | 170 | `result-track:a1cb7abf9834ccdcc869ebf8cad0b4cca58d3e96a7ad5bb9d3e89ebc7f278b39` |
| 23 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.Con.Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.Con.subgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/root-grwtsk-algebra-grouptheory-con-variantff08a1fd5943e5feccdd218025ac7--ecc320ce68c8f8a64f2b29b6.md) | 178 | `declaration-track:ecc320ce68c8f8a64f2b29b69735ee07c02b84a4dcfc6be4116ee730b4fc6e86` |
| 24 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Con.Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.Con.mem_subgroup_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/root-grwtsk-algebra-grouptheory-con-variantff08a1fd5943e5feccdd218025ac7--a56096414ec034b8dd0bc331.md) | 185 | `result-track:a56096414ec034b8dd0bc3314ad7cedf2b4979939252af7971707078b4abe9df` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/instance--e8b279726c9d39cfddedea69.md) | 189 | `declaration-track:e8b279726c9d39cfddedea6922069cf583112d17774160d7ed7b53ba347d615a` |
| 26 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Con.Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.Con.subgroup_quotientGroupCon](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/root-grwtsk-algebra-grouptheory-con-variantff08a1fd5943e5feccdd218025ac7--c2e918fa9ec356faa05d0e53.md) | 193 | `result-track:c2e918fa9ec356faa05d0e5398f2199e126412fa2bba4e197854ee09bb0812a3` |
| 27 | `theorem` | [con_subgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/con-subgroup--7b02005f109ac0d141706440.md) | 199 | `result-track:7b02005f109ac0d141706440f94e90d405944dfdfa113f3960b1958946313836` |
| 28 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.Con.Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.Subgroup.orderIsoCon](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/root-grwtsk-algebra-grouptheory-con-variantff08a1fd5943e5feccdd218025ac7--bbdc19b06642b964c6b19e83.md) | 211 | `declaration-track:bbdc19b06642b964c6b19e83d12a6b71a36d7aa51e24dd6301838847b497183b` |
| 29 | `lemma` | [con_le_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/con-le-iff--e6221a4f725d8c08f5f73950.md) | 224 | `result-track:e6221a4f725d8c08f5f7395015b8ab8b3d6f1fb8a41b826b05b6e025d2773378` |
| 30 | `lemma` | [con_mono](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/con-mono--ff64f1dac8f2674d64be0849.md) | 229 | `result-track:ff64f1dac8f2674d64be08496bdf5b07c7c0853090fd0811ac19f8316a179ffc` |
| 31 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/lift--a5f4aa4990bb1271f222808a.md) | 237 | `declaration-track:a5f4aa4990bb1271f222808a5905320311ed041342ceb46778ab79a3e4e5f227` |
| 32 | `theorem` | [lift_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/lift-mk--466aebe60d8c5c10e6c6ac9a.md) | 241 | `result-track:466aebe60d8c5c10e6c6ac9a30ac133ce542d078caadd19e5cd6592c676ae919` |
| 33 | `theorem` | [lift_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/lift-mk--c626ca0708e15603da42e037.md) | 245 | `result-track:c626ca0708e15603da42e037daa14ada20c593d347132daeabb542c5e9549129` |
| 34 | `theorem` | [lift_comp_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/lift-comp-mk--efe58670a5e7e3e35fa08ea8.md) | 250 | `result-track:efe58670a5e7e3e35fa08ea85e516dd8974a2e3f2cba00fa553578aa364773e4` |
| 35 | `theorem` | [lift_quot_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/lift-quot-mk--1f3d6548b76ae792f0e7a788.md) | 255 | `result-track:1f3d6548b76ae792f0e7a78860c9019e21d82b08af97f80f59a2b539c2a0b077` |
| 36 | `theorem` | [lift_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/lift-surjective-of-surjective--32d6e4ae67dd3d216934ce9f.md) | 260 | `result-track:32d6e4ae67dd3d216934ce9f02d2ca284e391c7bd71f4de7a3cb645d7b1c815f` |
| 37 | `theorem` | [ker_lift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/ker-lift--1d19981aab9862d380f75729.md) | 265 | `result-track:1d19981aab9862d380f75729619d2e7944f6c10501e42372bd707a34f1ee5f6b` |
| 38 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/map--8343934f7fa04a7c01dba100.md) | 273 | `declaration-track:8343934f7fa04a7c01dba100ae0bd56f8d6d506a6f73353d0e202b78c883aa3d` |
| 39 | `theorem` | [map_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/map-mk--815fa1302b2342ae4f95c422.md) | 281 | `result-track:815fa1302b2342ae4f95c4220acadbb1b9632118dd3ea8331d8735bec8aeebce` |
| 40 | `theorem` | [map_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/map-mk--44e5916c37f03d3baf76d464.md) | 286 | `result-track:44e5916c37f03d3baf76d464417e71184521822e69286dd5483a6459185a8e60` |
| 41 | `theorem` | [map_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/map-surjective-of-surjective--1eb8ce2bec622c7751848066.md) | 291 | `result-track:1eb8ce2bec622c7751848066dded64d64dbbd3c71b109524cff1b1b66c060bf7` |
| 42 | `theorem` | [ker_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/ker-map--37391ce274eb17c27926aeb3.md) | 297 | `result-track:37391ce274eb17c27926aeb3c1349b7d9a7960cd69533479d79e4526b416678d` |
| 43 | `theorem` | [map_id_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/map-id-apply--cbc0b837c286a0700a4c4de7.md) | 303 | `result-track:cbc0b837c286a0700a4c4de7fc81d3c5046ba1543eccd92440b21e2a40a9d309` |
| 44 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/map-id--2a6035186ce148199294d8f6.md) | 308 | `result-track:2a6035186ce148199294d8f6d5d05c5fa425aa12fa7da4efd638138d835cb228` |
| 45 | `theorem` | [map_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/map-map--092d5ee60b699dd453ed3cd8.md) | 313 | `result-track:092d5ee60b699dd453ed3cd87dac86ede6e81eb47695670e5f8b88cf1da9d39e` |
| 46 | `theorem` | [map_comp_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/map-comp-map--5f69c930636ad09f3c9b2efa.md) | 322 | `result-track:5f69c930636ad09f3c9b2efa36475397af1a64fb6981b45a6fd4069bab9a64a6` |
| 47 | `lemma` | [image_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/image-coe--80a87b0f91beb1a78ce09ebe.md) | 332 | `result-track:80a87b0f91beb1a78ce09ebe11352bc7aed5aea8d51dd0b90f6f80a080921981` |
| 48 | `lemma` | [preimage_image_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/preimage-image-coe--18c6a76b288649dcb2ce0333.md) | 336 | `result-track:18c6a76b288649dcb2ce033317789745405b321fe99abaea2dba6b6941aebd87` |
| 49 | `lemma` | [image_coe_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/image-coe-inj--ed2089d65dd2da79a6562c29.md) | 347 | `result-track:ed2089d65dd2da79a6562c294924f8a06574a350b61557310b26f1b25b9c3d51` |
| 50 | `def` | [congr](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/congr--a7aaf401a8384f012eb32f98.md) | 361 | `declaration-track:a7aaf401a8384f012eb32f98bc3832ffe18747638fae4fdec4daa98656136008` |
| 51 | `theorem` | [congr_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/congr-mk--ad70d5998252f61d8458d9d6.md) | 377 | `result-track:ad70d5998252f61d8458d9d67a03d7dece9fee4fb4e1a843f748383e72135243` |
| 52 | `theorem` | [congr_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/congr-mk--8a91d1e04617f08be83788e2.md) | 380 | `result-track:8a91d1e04617f08be83788e2bc77524fec83c8e63dc193dfce2ca441e93a045d` |
| 53 | `theorem` | [congr_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/congr-apply--41953e9bda0b9423ac3ae7ff.md) | 385 | `result-track:41953e9bda0b9423ac3ae7ff7a2ccdc90bdeba9a73a11ac427c38213fc5a9b27` |
| 54 | `theorem` | [congr_refl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/congr-refl--32171d8c2132698b780a4b9c.md) | 390 | `result-track:32171d8c2132698b780a4b9c8e28d5d95c0b5fcc7265c1d9c7e487821cd01bee` |
| 55 | `theorem` | [congr_symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant20ea00bdf3e183d354cf30f2c8a3c1c25171232355e414e2332da38829a20673.lean/declarations/congr-symm--7095ffcd7ded662c14082417.md) | 396 | `result-track:7095ffcd7ded662c1408241731820e8680754c604727b5a2a4e74d80b7b30aa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
