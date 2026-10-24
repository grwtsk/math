# Verification target: GRWTSK.Algebra.GroupTheory.SubMulAction.Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fda4f378edba50c35e4f82e1186764443b8650e0",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fda4f378edba50c35e4f82e1186764443b8650e0`.

Source path: `GRWTSK/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.GroupAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SMulMemClass](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/smulmemclass--117f81b123ae6f63f0e3f10c.md) | 47 | `declaration-track:117f81b123ae6f63f0e3f10ca9e642d770645478d10d648bec20da62de774266` |
| 2 | `class` | [VAddMemClass](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/vaddmemclass--e2f594de5014b147d947f660.md) | 58 | `declaration-track:e2f594de5014b147d947f66031205822f62e980c59967733e1fd603c2997f875` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/instance--f86e442e9c7d47050ae884ad.md) | 75 | `declaration-track:f86e442e9c7d47050ae884ad3230e10ac6d187379edab58e0ead5b9119288025` |
| 4 | `theorem` | [_root_.SMulMemClass.ofIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/root-smulmemclass-ofisscalartower--26538889ac533ebbde2e6381.md) | 82 | `result-track:26538889ac533ebbde2e63815ec85377a181293b9268bb799a23cfef48ce52a0` |
| 5 | `theorem` | [val_smul](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/val-smul--770cb66604fd557e235ced35.md) | 90 | `result-track:770cb66604fd557e235ced356b0230b8403d615037e3c19d03e4f239febcb4eb` |
| 6 | `theorem` | [mk_smul_mk](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/mk-smul-mk--79d7ba01dedf4d02c72b1ae2.md) | 98 | `result-track:79d7ba01dedf4d02c72b1ae2cecd3c7a6fe6ed3cba536e2572e6f6289d248176` |
| 7 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/smul-def--64787cc872002ee315ae7cdf.md) | 104 | `result-track:64787cc872002ee315ae7cdf4e950fc7eb4516a380543bf27f3f64a6ef9af1a7` |
| 8 | `theorem` | [forall_smul_mem_iff](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/forall-smul-mem-iff--4274cecf0155ba5d9a25f035.md) | 110 | `result-track:4274cecf0155ba5d9a25f035485d1a43df58b410a677d230603df551a8746ba0` |
| 9 | `structure` | [SubMulAction](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/submulaction--78b3bc74db5e6265e9eb5bc3.md) | 118 | `declaration-track:78b3bc74db5e6265e9eb5bc3548a25fec85cad138d3df8133092278bc488a77e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/instance--378e2f754c48aaca704734d9.md) | 129 | `declaration-track:378e2f754c48aaca704734d958fba78f46a65f313a511eb0b0e806562d92ed83` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/instance--bae0a2e5b9d11cc6d43b9830.md) | 132 | `declaration-track:bae0a2e5b9d11cc6d43b98308ab0f55d3811263b5d7f9feb93422ef9c91e09dd` |
| 12 | `theorem` | [mem_carrier](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/mem-carrier--831baf606f446dbf01075b42.md) | 135 | `result-track:831baf606f446dbf01075b42a18086552589bf9cb9e8cd0d8a07173c0919fe99` |
| 13 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/ext--80d627bd7560fba304aa9e7f.md) | 140 | `result-track:80d627bd7560fba304aa9e7f3673a6802f08f568a09db8e0cd0ae1252fe259c0` |
| 14 | `def` | [copy](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/copy--6773fcae1988f751782b0bff.md) | 146 | `declaration-track:6773fcae1988f751782b0bff588fc5bb2ea71dc4a48d4acbe8319a0fdbaa0b38` |
| 15 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/coe-copy--bc79ff952f72afbb5c82caa3.md) | 153 | `result-track:bc79ff952f72afbb5c82caa327696e988ecbbc9358ac6f4099227ffb8fbfde98` |
| 16 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/copy-eq--f8260dbae25f796c10f1c4e5.md) | 157 | `result-track:f8260dbae25f796c10f1c4e5dd81941da3197ee4e2b53896d0e0292d8a7c4a78` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/instance--8422b727eb3c9653192ac3ef.md) | 161 | `declaration-track:8422b727eb3c9653192ac3ef54aa0b86eabfa8bfc6cae491e11651521df34a64` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/instance--a190d758058823c0ad424b5a.md) | 166 | `declaration-track:a190d758058823c0ad424b5a0eb705cdeb8cb1a95bf4da45e2a502de8a1e47b5` |
| 19 | `theorem` | [smul_mem](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/smul-mem--39ccf3753a0e609b4ec2903e.md) | 181 | `result-track:39ccf3753a0e609b4ec2903e0d4a1fa56f3f82a84d246a9281eca92fbc99cc50` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/instance--3bcb85dbbdec2d1556d38818.md) | 185 | `declaration-track:3bcb85dbbdec2d1556d388185702aecedf4dcf1473c60687b856d068f273d4e5` |
| 21 | `theorem` | [val_smul](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/val-smul--59a3128648ed48f8454f719d.md) | 190 | `result-track:59a3128648ed48f8454f719d4bbff1a151aba9749645cf337d106df9f35fbaf0` |
| 22 | `def` | [subtype](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/subtype--6f96402e6cd12dea39b89e55.md) | 200 | `declaration-track:6f96402e6cd12dea39b89e5520d732c0fb45e21a861e13918ad505d8d387d8ec` |
| 23 | `theorem` | [subtype_apply](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/subtype-apply--8bced52581cf844586b3d5df.md) | 204 | `result-track:8bced52581cf844586b3d5df9107c37db526a1eced2f713ba85566c880a5de88` |
| 24 | `theorem` | [subtype_eq_val](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/subtype-eq-val--9b52409a3c00f8138ea64856.md) | 208 | `result-track:9b52409a3c00f8138ea6485680583703d8074e6b23ff9aebb92a6b6c4126cba2` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/instance--af55eebc739d3abaf778d642.md) | 222 | `declaration-track:af55eebc739d3abaf778d6423b68c9b9d2cd2c525cceb39a81d1f9438a0b3caf` |
| 26 | `def` | [subtype](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/subtype--77119ab610f6a819957e87dc.md) | 227 | `declaration-track:77119ab610f6a819957e87dc458c75a7082fce8f72d02529f76dc468696247b7` |
| 27 | `theorem` | [coeSubtype](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/coesubtype--e6638ebaf98f8b74424b1086.md) | 232 | `result-track:e6638ebaf98f8b74424b1086d69a9f1f7da8ca5b67e5d4b1d7c18742634098df` |
| 28 | `theorem` | [smul_of_tower_mem](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/smul-of-tower-mem--a971b42e17c6775839942d47.md) | 248 | `result-track:a971b42e17c6775839942d47cdb8d6689059c6a17e1b484a2ae4a11d04178cbc` |
| 29 | `instance` | [smul'](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/smul--846ae5fa9a611bc071fe139a.md) | 253 | `declaration-track:846ae5fa9a611bc071fe139a0e7f9a632671574ef893a229d6b6c4cc5d3cd677` |
| 30 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/isscalartower--a0340293e7dcd7b934732143.md) | 256 | `declaration-track:a0340293e7dcd7b93473214346a3b941546bbe872cb7930e5dbdf5eb6622032a` |
| 31 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/isscalartower--bdcf5ff7fcae628390bbffca.md) | 260 | `declaration-track:bdcf5ff7fcae628390bbffcadd96c8108e1075bac3b91a3fe51322c115bb03fc` |
| 32 | `theorem` | [val_smul_of_tower](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/val-smul-of-tower--6f6ce49474f111a8026c6c4f.md) | 266 | `result-track:6f6ce49474f111a8026c6c4f4bb2a2a8c76639cf6c271ebae79479addb59aa5d` |
| 33 | `theorem` | [smul_mem_iff'](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/smul-mem-iff--83957fdb597f41ca95b75070.md) | 271 | `result-track:83957fdb597f41ca95b750704c7d8e8f2203c1d4b9b9c562183ed5980b58a927` |
| 34 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/iscentralscalar--3fa01f4fd63330dd0b02dbfa.md) | 276 | `declaration-track:3fa01f4fd63330dd0b02dbfaae448901a72b6d9f6192f53839290b07ab25a543` |
| 35 | `instance` | [mulAction'](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/mulaction--1ad0318463571e579b90eafa.md) | 290 | `declaration-track:1ad0318463571e579b90eafa314d96e00004c06ef399549833c624e9127a57c0` |
| 36 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/mulaction--f708c77cc31cbecb479d17e1.md) | 296 | `declaration-track:f708c77cc31cbecb479d17e1f7a690ab3badddb8a752bda2738b684fd489d0e4` |
| 37 | `theorem` | [val_image_orbit](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/val-image-orbit--0eafa2b3d1b07b72717e70ed.md) | 303 | `result-track:0eafa2b3d1b07b72717e70ed3a37766d4f9486f05152032ccd0adf2af6f685fc` |
| 38 | `theorem` | [stabilizer_of_subMul.submonoid](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/stabilizer-of-submul-submonoid--a8062e2f124fd8a552720ad1.md) | 313 | `result-track:a8062e2f124fd8a552720ad10ad35d5f5eb4be91b69d167e95cf19b6dcc5cdfe` |
| 39 | `theorem` | [stabilizer_of_subMul](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/stabilizer-of-submul--b54fe4a6ea1cab887e1fb441.md) | 326 | `result-track:b54fe4a6ea1cab887e1fb4412a9aaf6e196abe4cf2df7a497207567590ad5410` |
| 40 | `theorem` | [zero_mem](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/zero-mem--05b6389a852a6c74fe1ac7cd.md) | 342 | `result-track:05b6389a852a6c74fe1ac7cd83a4472ae57f4edf7c37a5d34142fed7f8c5c3fc` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/instance--9f37cfc926d3353ff6215a27.md) | 349 | `declaration-track:9f37cfc926d3353ff6215a27dc98f4c100022e29571258423dd2b65fd638bb93` |
| 42 | `theorem` | [neg_mem](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/neg-mem--4b350e6115f4a39c3f40dbe4.md) | 364 | `result-track:4b350e6115f4a39c3f40dbe46ec7b432fb71af15bf9838e586c59fbb662481d7` |
| 43 | `theorem` | [neg_mem_iff](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/neg-mem-iff--31df6ca3e2b38a25e87a053a.md) | 370 | `result-track:31df6ca3e2b38a25e87a053acfb3245a3a041bd2fa26290bfefbcbb168681271` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/instance--5ddd8966b83d4d635b9a3a5c.md) | 376 | `declaration-track:5ddd8966b83d4d635b9a3a5c1836859470da4bec0c9ddc8584f62b825aa983d8` |
| 45 | `theorem` | [val_neg](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/val-neg--79984f28e4e3b3dbd4dac93f.md) | 380 | `result-track:79984f28e4e3b3dbd4dac93f008ec17c49445de3aa678350eed778e780b56490` |
| 46 | `theorem` | [smul_mem_iff](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/declarations/smul-mem-iff--f1fc99b5b8fc638add2bae0f.md) | 396 | `result-track:f1fc99b5b8fc638add2bae0f75a40c9cedb9f69cc269c81704a651930e8aa46e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
