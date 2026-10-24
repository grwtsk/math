# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "433e43790f95719e045cdfe6d174a6942893597f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `433e43790f95719e045cdfe6d174a6942893597f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [formPerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm--4a5957355f548270d132994d.md) | 58 | `declaration-track:4a5957355f548270d132994d86f30edd67d4c9786211506ed1f963ab7e95c396` |
| 2 | `theorem` | [formPerm_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-nil--baf7f044b9205f4c9567c08c.md) | 62 | `result-track:baf7f044b9205f4c9567c08cb5597c8a15c4089a0a2f32b0b4b9ca1d7710369e` |
| 3 | `theorem` | [formPerm_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-singleton--90d75df12eed2510d7950661.md) | 66 | `result-track:90d75df12eed2510d79506619a9bc5252838b777c24d5f80cef768b4aa7918a1` |
| 4 | `theorem` | [formPerm_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-cons-cons--98a073cb213dfc03e924529f.md) | 70 | `result-track:98a073cb213dfc03e924529f483f00e44df8cc8cb27b8c8bcd3d640a053e6f2a` |
| 5 | `theorem` | [formPerm_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-pair--2f911f1c1fd7693f2d14858c.md) | 74 | `result-track:2f911f1c1fd7693f2d14858c0000c12fd818c2c90a5ef300adce47680f877e20` |
| 6 | `theorem` | [mem_or_mem_of_zipWith_swap_prod_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/mem-or-mem-of-zipwith-swap-prod-ne--daeff6a723523645335c7a3c.md) | 77 | `result-track:daeff6a723523645335c7a3cf6716f382cd5a2ff4cdc401f38dc4c5a1c631fff` |
| 7 | `theorem` | [zipWith_swap_prod_support'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/zipwith-swap-prod-support--985edb1d2eb34d7a9e8c7a49.md) | 88 | `result-track:985edb1d2eb34d7a9e8c7a49cc7b4425e789c51cc3ff1a5116bede902f72a9af` |
| 8 | `theorem` | [zipWith_swap_prod_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/zipwith-swap-prod-support--a9fc704b46868c7f3fae8346.md) | 92 | `result-track:a9fc704b46868c7f3fae83467ac3f21a2d47a3a63a7e9224822e093f4a311159` |
| 9 | `theorem` | [support_formPerm_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/support-formperm-le--a24b583de9747e0fa6e82e61.md) | 98 | `result-track:a24b583de9747e0fa6e82e6192f6138360098362d7259f686025779ea3e281f7` |
| 10 | `theorem` | [support_formPerm_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/support-formperm-le--5ad76068d408db29d3c9517f.md) | 102 | `result-track:5ad76068d408db29d3c9517fe02252aecd26a2a563ae79cf918924f1673cf6d9` |
| 11 | `theorem` | [mem_of_formPerm_apply_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/mem-of-formperm-apply-ne--a77cd76c7aab7f7d2cfb0480.md) | 109 | `result-track:a77cd76c7aab7f7d2cfb0480b2f88645753d56cef2c5c617ef68058a7cddb989` |
| 12 | `theorem` | [formPerm_apply_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-of-notmem--4363bfbf5a9a7bd0bcddd4c2.md) | 112 | `result-track:4363bfbf5a9a7bd0bcddd4c217e326b671d250c49b885129ed831a8d0183dc0d` |
| 13 | `theorem` | [formPerm_apply_mem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-mem-of-mem--0fc02a20b31d12158fe6a6a6.md) | 115 | `result-track:0fc02a20b31d12158fe6a6a6bb18c82d3b7b09a1e041d233cf03d55afe40bfd9` |
| 14 | `theorem` | [mem_of_formPerm_apply_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/mem-of-formperm-apply-mem--57761655fa90410dedb78437.md) | 130 | `result-track:57761655fa90410dedb7843734f23b1589dfc43c18717cf0645a0edf752d1eab` |
| 15 | `theorem` | [formPerm_mem_iff_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-mem-iff-mem--4e44e2cd5242db87176b5394.md) | 135 | `result-track:4e44e2cd5242db87176b5394186103d603080da73ee11a47a8da5476d3928dc9` |
| 16 | `theorem` | [formPerm_cons_concat_apply_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-cons-concat-apply-last--d8f4b1cce0f690bf86c7f2e7.md) | 139 | `result-track:d8f4b1cce0f690bf86c7f2e703ae489df0fba80431764d8072b3d12da8fed476` |
| 17 | `theorem` | [formPerm_apply_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-getlast--f1b6fae0d45ee8fc17fbb593.md) | 146 | `result-track:f1b6fae0d45ee8fc17fbb593ad9e362dad3d99b70deebe85ddc019afff61555a` |
| 18 | `theorem` | [formPerm_apply_getElem_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-getelem-length--5463617bfbceff6aee9d5b6d.md) | 151 | `result-track:5463617bfbceff6aee9d5b6d77bbdbe1263b6fd52c8ea483d884de3bacdc02f3` |
| 19 | `theorem` | [formPerm_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-head--acc2b41fe5ec7c2010a500f5.md) | 155 | `result-track:acc2b41fe5ec7c2010a500f5e2af2e4512f63fd639311ac1198fa744aace50e1` |
| 20 | `theorem` | [formPerm_apply_getElem_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-getelem-zero--b0d009896b276c8dc62fe196.md) | 158 | `result-track:b0d009896b276c8dc62fe196ba03221b8ec129778302a5f2bc295d86e1eb11cd` |
| 21 | `theorem` | [formPerm_eq_head_iff_eq_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-eq-head-iff-eq-getlast--a42f68332edf2360fe7d374a.md) | 167 | `result-track:a42f68332edf2360fe7d374a1f170b372714dc01ae61ffb65ae4c7a5db8664f8` |
| 22 | `theorem` | [formPerm_apply_lt_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-lt-getelem--3dffbfdbe1056816bc1a8d0c.md) | 171 | `result-track:3dffbfdbe1056816bc1a8d0c05d046b75548d2713e0561474cb1ad30b52b3163` |
| 23 | `theorem` | [formPerm_apply_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-getelem--efc362004a5379be9bc584af.md) | 188 | `result-track:efc362004a5379be9bc584af6395cef08c2d94c0c871b14573c8c911575b13ec` |
| 24 | `theorem` | [support_formPerm_of_nodup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/support-formperm-of-nodup--effdbedc13c2eec1f6910593.md) | 202 | `result-track:effdbedc13c2eec1f6910593ab11e9851ad5eceaf81868f43506fac3597c638b` |
| 25 | `theorem` | [support_formPerm_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/support-formperm-of-nodup--745b305a278ebecdde3d6cd7.md) | 219 | `result-track:745b305a278ebecdde3d6cd798d9e0b7832f4c67386043db48b39e2cadad4059` |
| 26 | `theorem` | [formPerm_rotate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-rotate-one--74ab6a7ac34d0a0c048d84ce.md) | 225 | `result-track:74ab6a7ac34d0a0c048d84cefc5100a6b246fa6af3248c23eb7ea31d69c3552d` |
| 27 | `theorem` | [formPerm_rotate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-rotate--edf3dacf77b00459d02d6f2d.md) | 235 | `result-track:edf3dacf77b00459d02d6f2d1787a38d12bec4a9ffa92c3e37dc72a785c50c6a` |
| 28 | `theorem` | [formPerm_eq_of_isRotated](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-eq-of-isrotated--c554d3b2f44b471c4d491e90.md) | 244 | `result-track:c554d3b2f44b471c4d491e90aee695a99b1678ba9029cfd8dde14802ab259384` |
| 29 | `theorem` | [formPerm_append_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-append-pair--735742c977c8072c3cd837e1.md) | 249 | `result-track:735742c977c8072c3cd837e19c0fb0b27bfeb39819d274b0b95de28eb8fec85c` |
| 30 | `theorem` | [formPerm_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-reverse--3ad38c15c9886ef9932a486d.md) | 256 | `result-track:3ad38c15c9886ef9932a486d85a24febad6a084c7adb09946bf559131c790c1a` |
| 31 | `theorem` | [formPerm_pow_apply_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-pow-apply-getelem--de431c769f2aeb4b9cfb0044.md) | 262 | `result-track:de431c769f2aeb4b9cfb0044fc71da3ebc704f23aa8e770611a534c5e09b8282` |
| 32 | `theorem` | [formPerm_pow_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-pow-apply-head--5b6a9fe3a6d8c26a7f56a280.md) | 271 | `result-track:5b6a9fe3a6d8c26a7f56a2805b0215e637f23def2f00c2d5180672c4896da5a6` |
| 33 | `theorem` | [formPerm_ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-ext-iff--339530c9824a08beb8d5a874.md) | 277 | `result-track:339530c9824a08beb8d5a8745b21875705461dd062ed610b290cf09da161605c` |
| 34 | `theorem` | [formPerm_apply_mem_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-mem-eq-self-iff--028b163aa5838112ef8fecfb.md) | 314 | `result-track:028b163aa5838112ef8fecfbb78dc3ef39d746e7d3723f23d4632d416f9e9ffa` |
| 35 | `theorem` | [formPerm_apply_mem_ne_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-apply-mem-ne-self-iff--84ad236985ae4f549a2fe70d.md) | 326 | `result-track:84ad236985ae4f549a2fe70d9ece03b9cf73442dfe4e8e04967f6d7b35676974` |
| 36 | `theorem` | [formPerm_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-eq-one-iff--236209c001cc62f2cb30878e.md) | 331 | `result-track:236209c001cc62f2cb30878e1f9236d4866cd80fb5ee20592652d5985718b1d7` |
| 37 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-eq-formperm-iff--527b5683a679eb1e3e3b627d.md) | 342 | `result-track:527b5683a679eb1e3e3b627d52842337a69e241cc295d25fda571d83db3c1dd8` |
| 38 | `theorem` | [form_perm_zpow_apply_mem_imp_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/form-perm-zpow-apply-mem-imp-mem--844dfeaccf3d6779e4267ee8.md) | 362 | `result-track:844dfeaccf3d6779e4267ee8be2b576df7c2ad22861adac8a865cb6cdd6d833e` |
| 39 | `theorem` | [formPerm_pow_length_eq_one_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant067164b7498739e6fbba14538017941a5eb0609c9c9a6eca1339d5cd55dce154.lean/declarations/formperm-pow-length-eq-one-of-nodup--cdfb5581d009eb60adea6c59.md) | 371 | `result-track:cdfb5581d009eb60adea6c592579d4e6f4c4f8a2db6745b6c4664b8ca7ba93b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
