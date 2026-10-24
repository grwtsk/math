# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f42f74d2392968fe7a1508c0ca714c202bbe279c",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f42f74d2392968fe7a1508c0ca714c202bbe279c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Set` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort--c7ae1a90def1b17c5cd684b6.md) | 31 | `declaration-track:c7ae1a90def1b17c5cd684b60db6e4ceb8419233fe71d40fdd9021144edeb795` |
| 2 | `theorem` | [sort_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-val--b084f933a55a58891b134152.md) | 35 | `result-track:b084f933a55a58891b1341520546a4c7c6b88503b0b4d050ac415d291610df12` |
| 3 | `theorem` | [sort_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-mk--0ffd32efbd360b4f283f2146.md) | 39 | `result-track:0ffd32efbd360b4f283f214694486c3b98ff466d0cc37af4de340828c5cfa326` |
| 4 | `theorem` | [sort_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-sorted--8dcb7c01f0e3e7b3bd296897.md) | 42 | `result-track:8dcb7c01f0e3e7b3bd296897c35ae65788c42bdb1a77085235b475a3af1b48f5` |
| 5 | `theorem` | [sort_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-eq--d908417606615081e723cf68.md) | 46 | `result-track:d908417606615081e723cf68602d11e12ef8d13d24603169abdc15651ea4e01d` |
| 6 | `theorem` | [sort_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-nodup--ca61ca0450822f1a3d7f0322.md) | 50 | `result-track:ca61ca0450822f1a3d7f0322c2db02a027ab89820dbb3907c0e3d29b82b49ade` |
| 7 | `theorem` | [sort_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-tofinset--c8eda305812dccf50f109465.md) | 54 | `result-track:c8eda305812dccf50f10946581b009c398fedea6ccc8954cbaed8332a7e21b2f` |
| 8 | `theorem` | [mem_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/mem-sort--016b9a0641665f0ec90dd7e8.md) | 58 | `result-track:016b9a0641665f0ec90dd7e8586764ce6fdc431710ffc82e94f474a9047149dc` |
| 9 | `theorem` | [length_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/length-sort--4e905dac0967644fb709e546.md) | 62 | `result-track:4e905dac0967644fb709e546d72bb1502afe8e0035e55a40fa4513601e5bcb66` |
| 10 | `theorem` | [sort_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-empty--f24be8c3c15b6885e6012768.md) | 66 | `result-track:f24be8c3c15b6885e601276836575ac12ac8c39b1a46863b54519dc7f200bb0f` |
| 11 | `theorem` | [sort_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-singleton--2ccc2be09df9956e11b40dd1.md) | 70 | `result-track:2ccc2be09df9956e11b40dd1be62e449f9df070a07fd3eb63f521f24ccffa8db` |
| 12 | `theorem` | [map_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/map-sort--ac5056082593e438912462a2.md) | 73 | `result-track:ac5056082593e438912462a208c7322a73daadd1176d927104f28af8785fbd58` |
| 13 | `theorem` | [_root_.StrictMonoOn.map_finsetSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/root-strictmonoon-map-finsetsort--4785184cfbc6f19f1d0b98cd.md) | 78 | `result-track:4785184cfbc6f19f1d0b98cd1cd5ddf80e1018eb2968bb325297c2fb304a8efb` |
| 14 | `theorem` | [sort_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-cons--f8461012e2b6a78fbf693cce.md) | 83 | `result-track:f8461012e2b6a78fbf693cceda7f1453064b8c008727b232190b956119921ed9` |
| 15 | `theorem` | [sort_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-insert--0d277a2a4b385ce113eb0df2.md) | 87 | `result-track:0d277a2a4b385ce113eb0df2cb8f781e3914b05d035e8b0288f5785a2ab248d3` |
| 16 | `theorem` | [sort_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-range--b24e048bfac9989379c3cef5.md) | 92 | `result-track:b24e048bfac9989379c3cef5622d3a6fcc102a3b7d5997c7c7065f88502bd62a` |
| 17 | `theorem` | [sort_perm_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-perm-tolist--eba514ce610ce620ac918249.md) | 96 | `result-track:eba514ce610ce620ac9182494f49f6fb5174aa66dfa222a524a274f09cfacab7` |
| 18 | `theorem` | [_root_.List.toFinset_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/root-list-tofinset-sort--fe04f4504bc3a0a2d82f928c.md) | 100 | `result-track:fe04f4504bc3a0a2d82f928c0e9675a23f69a0c902ba85b35530738ea787f540` |
| 19 | `theorem` | [sort_sorted_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-sorted-lt--57d4593b6079923a21719a63.md) | 114 | `result-track:57d4593b6079923a21719a63f4533b892fa79277cd9cc0efbf2d0cd94fa3cd30` |
| 20 | `theorem` | [sort_sorted_gt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-sorted-gt--bf82380c9d486462e618a50c.md) | 117 | `result-track:bf82380c9d486462e618a50c70c27d1217e929173d3bd2f299e4f3f29e7d15a0` |
| 21 | `theorem` | [sorted_zero_eq_min'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sorted-zero-eq-min-aux--04063f29126473760075636d.md) | 120 | `result-track:04063f29126473760075636d5bf526537fc5567c53996f5cdb5f7163b6a804d1` |
| 22 | `theorem` | [sorted_zero_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sorted-zero-eq-min--23f4a71ea259b382f08ad81a.md) | 131 | `result-track:23f4a71ea259b382f08ad81a769c0bdd55a80cf49519219c2efcafaa9f24014a` |
| 23 | `theorem` | [min'_eq_sorted_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/min-eq-sorted-zero--53ec9b0f85f680de77e64f32.md) | 135 | `result-track:53ec9b0f85f680de77e64f3275a74862258b13c2bc15dacffa630beced4b0dfa` |
| 24 | `theorem` | [sorted_last_eq_max'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sorted-last-eq-max-aux--f0271b7993b84eb09ab9c80f.md) | 139 | `result-track:f0271b7993b84eb09ab9c80f55708ffaae2b92b9cb9889e712164547969955db` |
| 25 | `theorem` | [sorted_last_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sorted-last-eq-max--b3e16e342e151e70d09778d7.md) | 152 | `result-track:b3e16e342e151e70d09778d7453f84392af2d9915bcd81a677ebd4f3637db59a` |
| 26 | `theorem` | [max'_eq_sorted_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/max-eq-sorted-last--81e1663effc5c70cb33236c9.md) | 158 | `result-track:81e1663effc5c70cb33236c9d78b13ef004c107c8157e07ad98ca59f27c928f3` |
| 27 | `def` | [orderIsoOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderisooffin--06221402866b8e8150ed6171.md) | 168 | `declaration-track:06221402866b8e8150ed6171cb56638f2490fc2937804c5b51cc917c3f50a6b9` |
| 28 | `def` | [orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderemboffin--03225d333c1dfa7642c8f06e.md) | 176 | `declaration-track:03225d333c1dfa7642c8f06e73d6a7fbca3501a79325b6d0bd4142148b5b5211` |
| 29 | `theorem` | [coe_orderIsoOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/coe-orderisooffin-apply--e3fba3dd35b39d85d9b127ee.md) | 180 | `result-track:e3fba3dd35b39d85d9b127ee80dd041c9335a05ec5c92537f45179f81b136d95` |
| 30 | `theorem` | [orderIsoOfFin_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderisooffin-symm-apply--f3aca6a0a25118296a296aad.md) | 184 | `result-track:f3aca6a0a25118296a296aad61b9e0272f48061b30a86a708ff29049f3112567` |
| 31 | `theorem` | [orderEmbOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderemboffin-apply--ca81e1e4811861dafcaa234b.md) | 188 | `result-track:ca81e1e4811861dafcaa234b6d99dc14e5346b0fdfa091341b2436213ea4b326` |
| 32 | `theorem` | [orderEmbOfFin_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderemboffin-mem--81402bcc056fd1ef6edb8549.md) | 193 | `result-track:81402bcc056fd1ef6edb85495d4b90ae167bbf13b75ecb2c198cf501db0a6bcc` |
| 33 | `theorem` | [range_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/range-orderemboffin--5118f1195e7275ddc7fbbcff.md) | 198 | `result-track:5118f1195e7275ddc7fbbcff099d8e02deda9e913b945862a77955d3360f25b5` |
| 34 | `theorem` | [image_orderEmbOfFin_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/image-orderemboffin-univ--a94cc3b70be4cfd7c74ed73a.md) | 206 | `result-track:a94cc3b70be4cfd7c74ed73a1dccd29c7348c96b0000e645091271329bcd1a85` |
| 35 | `theorem` | [map_orderEmbOfFin_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/map-orderemboffin-univ--8340048c58c9b7be3dede556.md) | 212 | `result-track:8340048c58c9b7be3dede55643f179b59224e188278932f30fb7978ee79a5237` |
| 36 | `theorem` | [listMap_orderEmbOfFin_finRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/listmap-orderemboffin-finrange--69414f9ead84b27fc0f24259.md) | 217 | `result-track:69414f9ead84b27fc0f24259f3db1621677a3cca292f4f1ccaa920f82e98d568` |
| 37 | `theorem` | [orderEmbOfFin_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderemboffin-zero--a4e7e92fdbf0fde2a52c16eb.md) | 223 | `result-track:a4e7e92fdbf0fde2a52c16ebeab233c3793e8a3891d5d7ad0476aab6e07e6472` |
| 38 | `theorem` | [orderEmbOfFin_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderemboffin-last--a64effb01b118ca982b690fc.md) | 228 | `result-track:a64effb01b118ca982b690fc70ea5b6d09920f7f1b4c462f191b9d3a6d6f6b8b` |
| 39 | `theorem` | [orderEmbOfFin_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderemboffin-singleton--6f4cff7c543bcd0011c5c9b4.md) | 235 | `result-track:6f4cff7c543bcd0011c5c9b4e5707a5f1d56bf528f82936e047f1a21dc9f1181` |
| 40 | `theorem` | [orderEmbOfFin_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderemboffin-unique--5f65f6d28006e9ed00ee1855.md) | 242 | `result-track:5f65f6d28006e9ed00ee1855f76c0dff9b4c49931aadc7f8e9aea6ff34ee1b06` |
| 41 | `theorem` | [orderEmbOfFin_unique'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderemboffin-unique--b8e7e37aa417fa4abcfa0de4.md) | 253 | `result-track:b8e7e37aa417fa4abcfa0de4f9cc35401c99fbabaec960510311603da61de093` |
| 42 | `theorem` | [orderEmbOfFin_eq_orderEmbOfFin_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderemboffin-eq-orderemboffin-iff--ed7344dbb9c7007e86b906df.md) | 261 | `result-track:ed7344dbb9c7007e86b906df7b85aa9ebc2d8261b01731eaf479fe33871bcf53` |
| 43 | `def` | [orderEmbOfCardLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderembofcardle--21f641a53b15198ede9c109f.md) | 270 | `declaration-track:21f641a53b15198ede9c109f37f9eb9425cc910d42bb3594c6c8863b8285efe2` |
| 44 | `theorem` | [orderEmbOfCardLe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/orderembofcardle-mem--be32580479e72eca841b3c63.md) | 273 | `result-track:be32580479e72eca841b3c63d96150e27a88dd1c357df0e5fc499a7eaefe137f` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/instance--75dcbed348ececf48f5222ae.md) | 280 | `declaration-track:75dcbed348ececf48f5222ae74164c5ccab7d6758e05369fa2b40fb4ad2562d7` |
| 46 | `theorem` | [sort_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/sort-univ--a5d71857cf836f6de8e077fd.md) | 289 | `result-track:a5d71857cf836f6de8e077fdafd6b2d8ed037f0fdd8636e398125d06dc1fe034` |
| 47 | `def` | [Fintype.orderIsoFinOfCardEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/fintype-orderisofinofcardeq--c08f2b693f8a82c170bd9ef5.md) | 302 | `declaration-track:c08f2b693f8a82c170bd9ef52d79767bf6e60dc4bdd372397592c30077732b75` |
| 48 | `lemma` | [nonempty_orderEmbedding_of_finite_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/declarations/nonempty-orderembedding-of-finite-infinite--70706a2c5f8e7e38dc237735.md) | 309 | `result-track:70706a2c5f8e7e38dc237735024c4fee129e38d576d4156fbddd0290c5fc1d3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
