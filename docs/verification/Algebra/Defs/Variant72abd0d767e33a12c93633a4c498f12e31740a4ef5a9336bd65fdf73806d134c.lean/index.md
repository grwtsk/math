# Verification target: GRWTSK.Algebra.Defs.Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25436adc30bc0c71af6223d3290a9f4bb7fc2392",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25436adc30bc0c71af6223d3290a9f4bb7fc2392`.

Source path: `GRWTSK/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Subsemiring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SubringClass](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subringclass--298222ae37b434b3a8329af5.md) | 74 | `declaration-track:298222ae37b434b3a8329af574718b38cb6dba9965ebff8641c418ab2699b02e` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--3de35a6c236ddc53e9f75bd6.md) | 78 | `declaration-track:3de35a6c236ddc53e9f75bd6f5060129bef5dae1b00778ca102d3d08f6f4b50c` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--e4732f65eb6b21fcb226b3cf.md) | 82 | `declaration-track:e4732f65eb6b21fcb226b3cf0df0f15df7acf1945bf271b97e43c93b7c30baeb` |
| 4 | `theorem` | [intCast_mem](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/intcast-mem--1baa9138c81997508f8d555b.md) | 88 | `result-track:1baa9138c81997508f8d555b960281508df4581fbecdd8dcb1f60d670baa4ff5` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--558a36bcf959a70692e490ea.md) | 92 | `declaration-track:558a36bcf959a70692e490eabd19c5b3da2915c22206665b81769e71f281bc89` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--21c1115509ab792695aa68ea.md) | 97 | `declaration-track:21c1115509ab792695aa68eabf66287280656f15e0dccdb764836e4f6d3d61e6` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--2512f821f98483f3bf8ecfbe.md) | 103 | `declaration-track:2512f821f98483f3bf8ecfbe917096c7c612d4bb7e4d510419a6294f8abc4117` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--0a77588c9289937fd2955372.md) | 111 | `declaration-track:0a77588c9289937fd29553725d5121dfde26d520304cdbc04f23ad758f7f6804` |
| 9 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subtype--c79c8245831d252b0bcf308a.md) | 115 | `declaration-track:c79c8245831d252b0bcf308a2d56282bf2e7d8bf32266896cc66fc6ea72d23f5` |
| 10 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subtype-apply--19e6023b2b5615bb46771811.md) | 121 | `result-track:19e6023b2b5615bb46771811e65ed0d3d4b4f1cdb92ac0778952737e76cb465f` |
| 11 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subtype-injective--d9cfe89bd1bcbfafc7f7b9af.md) | 124 | `result-track:d9cfe89bd1bcbfafc7f7b9af0cfccf3e1481fe1cd5e276f078c7a7effdeaa7c7` |
| 12 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-subtype--2b5160f1fbf532402f3c2ea8.md) | 129 | `result-track:2b5160f1fbf532402f3c2ea8806bdecda664af29009c909e97dc7fa1140d4590` |
| 13 | `theorem` | [coe_natCast](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-natcast--8808bd757b549e7b5a467fb1.md) | 136 | `result-track:8808bd757b549e7b5a467fb1de42fb5183815905cad587082d7622565747bdac` |
| 14 | `theorem` | [coe_intCast](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-intcast--3833d1e70bc3e360467419fd.md) | 139 | `result-track:3833d1e70bc3e360467419fd6bb1ac53b235c8dc708c3a7445a6a08ba3e7674b` |
| 15 | `structure` | [Subring](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subring--18e59a37e639f2bbdced9646.md) | 150 | `declaration-track:18e59a37e639f2bbdced9646ca700ce76f71a96715456ca803ea564de16e35db` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--c95bd618cb80a6fa074d42eb.md) | 163 | `declaration-track:c95bd618cb80a6fa074d42ebbcc9f30c3fd9eef60b6faf3800fc34dc1c902ec5` |
| 17 | `def` | [ofClass](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/ofclass--a793c211c4fa58002298c295.md) | 171 | `declaration-track:a793c211c4fa58002298c295ec983680d1aa8f930315ea7790d831c05c8c80f6` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--a776d69f0508ead8baae5ee8.md) | 180 | `declaration-track:a776d69f0508ead8baae5ee876bda782d021aec61de22911a668e7e5296b7670` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--8ba6694addb2719a758bad5f.md) | 192 | `declaration-track:8ba6694addb2719a758bad5f25e76189e707973a52de4d151d1ba91bdab9aded` |
| 20 | `def` | [toNonUnitalSubring](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/tononunitalsubring--987eedf6de41794d48742763.md) | 200 | `declaration-track:987eedf6de41794d4874276361d9f94e993f03de771cfc83380a6b86e2e663b5` |
| 21 | `theorem` | [mem_toSubsemiring](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mem-tosubsemiring--3a51c87043476786cc75b2f8.md) | 203 | `result-track:3a51c87043476786cc75b2f804abdb3bdaec1d8db311d06ce5511ce14eae2ad4` |
| 22 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mem-carrier--00122bf01b1e469129966d31.md) | 205 | `result-track:00122bf01b1e469129966d31d201c6667410a1cedcda437b2996c6a4ba31280e` |
| 23 | `theorem` | [mem_mk](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mem-mk--68b1bede83796d2e9ca26aa4.md) | 209 | `result-track:68b1bede83796d2e9ca26aa4dd6d5a216187075e11510771f5fe0bc36e41d165` |
| 24 | `theorem` | [coe_set_mk](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-set-mk--cd7218ffca649a35d735d5e4.md) | 211 | `result-track:cd7218ffca649a35d735d5e4823c4df405242e9d279b0f94c6fcf55c3200898d` |
| 25 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mk-le-mk--e08f07b731b49e6006d9757b.md) | 214 | `result-track:e08f07b731b49e6006d9757b11ae83e73154aac4c9f0f973a5e67f34f54e792a` |
| 26 | `lemma` | [one_mem_toNonUnitalSubring](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/one-mem-tononunitalsubring--c1f3ff3d53ab4fa7c339aa29.md) | 218 | `result-track:c1f3ff3d53ab4fa7c339aa2938571e09f9e9664bc414b4d522c1536da9484d40` |
| 27 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/ext--7b1f3ad191f0919b07676567.md) | 222 | `result-track:7b1f3ad191f0919b07676567ffe4433e8e2a01d43acb19fde8688cd77ad18821` |
| 28 | `def` | [copy](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/copy--bab2b90d6a47a4a0ec0b5bf3.md) | 228 | `declaration-track:bab2b90d6a47a4a0ec0b5bf3d44c9d9a758dc894ff9e7c0c4073d9d61221f2dc` |
| 29 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/copy-eq--ff652bdf52f0259cf7389dc4.md) | 233 | `result-track:ff652bdf52f0259cf7389dc4d2b11d4470bbce089046a9021718b9cbfccbcbc0` |
| 30 | `theorem` | [toSubsemiring_injective](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/tosubsemiring-injective--9c9f038f766205df16ea5459.md) | 236 | `result-track:9c9f038f766205df16ea5459ca67d7273ef469850efd5d29917a33c763ec8a95` |
| 31 | `theorem` | [toAddSubgroup_injective](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/toaddsubgroup-injective--b52277d84f1d9fd3ffbcd463.md) | 239 | `result-track:b52277d84f1d9fd3ffbcd463d70eb954072791e58b1c5d4afffca1bc70552fdf` |
| 32 | `theorem` | [toSubmonoid_injective](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/tosubmonoid-injective--a15b6c1e9f25d82585aa09b6.md) | 242 | `result-track:a15b6c1e9f25d82585aa09b6aea93f2f9988faaac1ce96d9e056e9860fa7106c` |
| 33 | `def` | [mk'](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mk--c389a15dbbd2abe559ecd14d.md) | 248 | `declaration-track:c389a15dbbd2abe559ecd14db4d218a989fbafe34e8b20c938ffd9ff580ecf54` |
| 34 | `theorem` | [mem_mk'](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mem-mk--800b7e5ad185349546e05e24.md) | 253 | `result-track:800b7e5ad185349546e05e241016fae388b36b0a4148eb8052a7ebc9583d1206` |
| 35 | `theorem` | [mk'_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mk-tosubmonoid--3a765328aa9db026400f2bfb.md) | 258 | `result-track:3a765328aa9db026400f2bfbdc9e299f25585c650a5a4d6b0c11277c414e2b13` |
| 36 | `theorem` | [mk'_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mk-toaddsubgroup--5f5942131c1f5eccf799be10.md) | 263 | `result-track:5f5942131c1f5eccf799be1056c832bfdda847b44e6610a988ecc6478c4dd6bb` |
| 37 | `def` | [Subsemiring.toSubring](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subsemiring-tosubring--7f47aad179ec59045e50b66a.md) | 271 | `declaration-track:7f47aad179ec59045e50b66a69b3400b4e6e4b36aa579e00c1ea18922cbd3a01` |
| 38 | `theorem` | [one_mem](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/one-mem--c3062ca0bb5fc5f476ac5d68.md) | 282 | `result-track:c3062ca0bb5fc5f476ac5d683c3caa9bd1393fa19384005d92a54a38c32a8071` |
| 39 | `theorem` | [zero_mem](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/zero-mem--d40401ecb65b3703b87f391e.md) | 286 | `result-track:d40401ecb65b3703b87f391eb06c9a9992be0bf3c2bfc71add9b6df9e4ec3f66` |
| 40 | `theorem` | [mul_mem](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mul-mem--5ee92117212d6192d28513d6.md) | 290 | `result-track:5ee92117212d6192d28513d652d7b04d329a4d76b396ba7d1253076e6051edba` |
| 41 | `theorem` | [add_mem](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/add-mem--da253e5d799a0a2ca22e3375.md) | 294 | `result-track:da253e5d799a0a2ca22e33753e3d3ca35160198f6a23fa4955683c12e85c019f` |
| 42 | `theorem` | [neg_mem](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/neg-mem--2a8580d15b2dee807e8c547a.md) | 298 | `result-track:2a8580d15b2dee807e8c547a55f2e11a59104313136f60495cfb176ec71969c7` |
| 43 | `theorem` | [sub_mem](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/sub-mem--38d308c8b4d70b2017d9f383.md) | 302 | `result-track:38d308c8b4d70b2017d9f38376711663cb6c200b56593f5fb7f80552038b6764` |
| 44 | `instance` | [toRing](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/toring--687c4fddc8d50af175c46498.md) | 306 | `declaration-track:687c4fddc8d50af175c46498c9a7f1be3d4d09dae1a94c11ad83c074c609d49f` |
| 45 | `theorem` | [zsmul_mem](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/zsmul-mem--ae5251edc818425986049a15.md) | 308 | `result-track:ae5251edc818425986049a15f4accfdea9e1db1d2974941858b3a395f05b795d` |
| 46 | `theorem` | [pow_mem](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/pow-mem--17fc4fc8406872e5402f1a8d.md) | 311 | `result-track:17fc4fc8406872e5402f1a8da1db7e2b6dc0a8b5c85d77b3356acd75c8cf6486` |
| 47 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-add--5fb2e5f022c220c9ef76b5cd.md) | 315 | `result-track:5fb2e5f022c220c9ef76b5cdc6a61651a29ac498b388712d8b45c92eafa0ea1f` |
| 48 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-neg--386a2deae2e7aa27637c6876.md) | 319 | `result-track:386a2deae2e7aa27637c6876cb82590bc01e9f77e64416b52a24d7e2f899f1f8` |
| 49 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-mul--aa6e892a09c833a307dd5e12.md) | 323 | `result-track:aa6e892a09c833a307dd5e12b0f66675ac0a093f7a2421bf4c034a43672b9bd8` |
| 50 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-zero--75c827bfbc0a27f2d4064768.md) | 327 | `result-track:75c827bfbc0a27f2d4064768094aaa40e3f3fd3ccf155767abc0c74c4d2a5eda` |
| 51 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-one--7a4eb9d8df81e143def85d66.md) | 331 | `result-track:7a4eb9d8df81e143def85d6650869edd2e0db4c37586dfbceceb1fe893c9622d` |
| 52 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-pow--b34840ea548d490bf8b7bdb6.md) | 335 | `result-track:b34840ea548d490bf8b7bdb6e8334db969f8277116f1e6018ba64e8cffcc19df` |
| 53 | `theorem` | [coe_eq_zero_iff](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-eq-zero-iff--3318ff3924794c896310672e.md) | 338 | `result-track:3318ff3924794c896310672e503751f6250415cd21b67cb214ee25da9b90ea78` |
| 54 | `instance` | [toCommRing](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/tocommring--da8fdd86485738776afe5ba5.md) | 342 | `declaration-track:da8fdd86485738776afe5ba549f8197922133afdc8739f40846a96f65c6719fa` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--b01a8888de5172c676ba144f.md) | 346 | `declaration-track:b01a8888de5172c676ba144f415577c9e8c38523d708b171186dec9e10418062` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--dbb47abee24016f6a3a3d8c7.md) | 350 | `declaration-track:dbb47abee24016f6a3a3d8c7097afd612fcd73846327f6901f4973a83fd1433c` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/instance--38b18d59951dde7ab29ee5c9.md) | 354 | `declaration-track:38b18d59951dde7ab29ee5c969e3df959e36c0496d36976d966e2ab415aa0378` |
| 58 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subtype--91e055e3226e7ce3e5ab6622.md) | 358 | `declaration-track:91e055e3226e7ce3e5ab662291661b5c47229f42359d422f1224a9da5887afea` |
| 59 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subtype-apply--177d17dd981bf028b77d7250.md) | 362 | `result-track:177d17dd981bf028b77d7250f922dbaa771789d409e5556f22f11e08b415e0ae` |
| 60 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subtype-injective--5be3b91cf013db23194b88c8.md) | 365 | `result-track:5be3b91cf013db23194b88c8d3b41e7061862c15cdd30142f4200f2cc1f6c652` |
| 61 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-subtype--8c7ab3f9bb263a323113e508.md) | 370 | `result-track:8c7ab3f9bb263a323113e508c4c127eeda73c77c1a87a4059759adce0ded582d` |
| 62 | `theorem` | [coe_natCast](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-natcast--549ab8c6a31722c6f4cf2497.md) | 377 | `result-track:549ab8c6a31722c6f4cf24979ea2e92548eb190e8d9d7c773195179e6d5f8ec3` |
| 63 | `theorem` | [coe_intCast](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-intcast--fe778f7cad17f312b73d47d1.md) | 380 | `result-track:fe778f7cad17f312b73d47d19f7af4a631584d17faeff83809eff637a501a456` |
| 64 | `theorem` | [coe_toSubsemiring](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-tosubsemiring--a6e44d95bfa3a620698575c1.md) | 385 | `result-track:a6e44d95bfa3a620698575c1b371505936821e02aa010777e2de380699a23e3b` |
| 65 | `theorem` | [mem_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mem-tosubmonoid--5d1d5661c5eff2849ecf1560.md) | 388 | `result-track:5d1d5661c5eff2849ecf156006a0f3030b4832850164c2d28272f4d5f2647cc9` |
| 66 | `theorem` | [coe_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-tosubmonoid--0bd08ff1c3ebf8df80f95d98.md) | 392 | `result-track:0bd08ff1c3ebf8df80f95d9823c4760dc6250a78e77535e667dfd49bb363ac0a` |
| 67 | `theorem` | [mem_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/mem-toaddsubgroup--a026424f3804e6d46a4ef6c0.md) | 395 | `result-track:a026424f3804e6d46a4ef6c078460766ff4da6a1acd068af202aea3ce8dec084` |
| 68 | `theorem` | [coe_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/coe-toaddsubgroup--ee450229697fcb087dd46b75.md) | 399 | `result-track:ee450229697fcb087dd46b751d15ae164cdcd4fe0f06ecfa2a4d2c57fdc6016e` |
| 69 | `def` | [NonUnitalSubring.toSubring](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/nonunitalsubring-tosubring--8fe7cc9bbc7f093fffc15222.md) | 405 | `declaration-track:8fe7cc9bbc7f093fffc152220fc4c651b33d2fa35edb9b0dae961c56946cdaf1` |
| 70 | `lemma` | [Subring.toNonUnitalSubring_toSubring](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/subring-tononunitalsubring-tosubring--91466acc0017b2c479bbc5e4.md) | 409 | `result-track:91466acc0017b2c479bbc5e46707b35dd5af2faf9e8c3843eb1ae001fc6201c8` |
| 71 | `lemma` | [NonUnitalSubring.toSubring_toNonUnitalSubring](../../../../mathematics/Algebra/Defs/Variant72abd0d767e33a12c93633a4c498f12e31740a4ef5a9336bd65fdf73806d134c.lean/declarations/nonunitalsubring-tosubring-tononunitalsubring--7adc5e08f272758c3414177c.md) | 412 | `result-track:7adc5e08f272758c3414177cec6f872687a8e068a387456f3e8a169fc9279443` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
