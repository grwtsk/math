# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08f69ba1f5c6710f2d2d4b766b8c2cb8e14ef8e5",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08f69ba1f5c6710f2d2d4b766b8c2cb8e14ef8e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Rotate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [formPerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm--112742358a4b7e48bfc321dd.md) | 46 | `declaration-track:112742358a4b7e48bfc321dd39c39860aa6a55aa8bc046f7ee74ebc7c34192be` |
| 2 | `theorem` | [formPerm_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-nil--4eaf98b9cf680a690302966d.md) | 50 | `result-track:4eaf98b9cf680a690302966dd3ce5df9e8ab4a269d48000008cb56f1991af358` |
| 3 | `theorem` | [formPerm_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-singleton--3ec4dc2cdb2ae9653f30b4a1.md) | 54 | `result-track:3ec4dc2cdb2ae9653f30b4a1c7b4023ca4dc82f875c19c54fe92d2969bbce8a0` |
| 4 | `theorem` | [formPerm_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-cons-cons--97afd78c3bb62cb1b43d4702.md) | 58 | `result-track:97afd78c3bb62cb1b43d4702602ea9d72e512c07177e213fb948b8d6be6db7c6` |
| 5 | `theorem` | [formPerm_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-pair--95ec36a78ac828c1eaa147ec.md) | 62 | `result-track:95ec36a78ac828c1eaa147ec34783545132fc9115e0f0647f1f0cb2a57b07131` |
| 6 | `theorem` | [mem_or_mem_of_zipWith_swap_prod_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/mem-or-mem-of-zipwith-swap-prod-ne--ee6b1cd9e61b2c9f52e47f6b.md) | 65 | `result-track:ee6b1cd9e61b2c9f52e47f6bc7f8f8b5b4cb660cf157a955d31855c1471a8827` |
| 7 | `theorem` | [zipWith_swap_prod_support'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/zipwith-swap-prod-support--0d6c2977d0af138fe8db49bd.md) | 76 | `result-track:0d6c2977d0af138fe8db49bdc8eaf190265e96dd8d33e6c4c7b2bd43afaea89a` |
| 8 | `theorem` | [zipWith_swap_prod_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/zipwith-swap-prod-support--2a118a38ce81809774999cb4.md) | 80 | `result-track:2a118a38ce81809774999cb4285513b0706f9388e1237d1d8b9e290ba6e375d0` |
| 9 | `theorem` | [support_formPerm_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/support-formperm-le--577c2af319325796f3b982f4.md) | 86 | `result-track:577c2af319325796f3b982f4fd4c523ef8c7eda34fd2587d2f099173d02ee99d` |
| 10 | `theorem` | [support_formPerm_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/support-formperm-le--48a692ef85d2cd358ea3ff23.md) | 90 | `result-track:48a692ef85d2cd358ea3ff2323a569f7b56c4a38bbbe97e372b10fde092617b0` |
| 11 | `theorem` | [mem_of_formPerm_apply_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/mem-of-formperm-apply-ne--f5e0434bf922c6bfbd124189.md) | 97 | `result-track:f5e0434bf922c6bfbd1241895f2f5cb51f807ec06bef6a3271296c5a8cd407a0` |
| 12 | `theorem` | [formPerm_apply_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-of-notmem--5d2868931c91e7d937bc3dfb.md) | 100 | `result-track:5d2868931c91e7d937bc3dfb9f459787296506c5bc138e125b19e109a9315a48` |
| 13 | `theorem` | [formPerm_apply_mem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-mem-of-mem--687fb96e8989d4195b7364f4.md) | 105 | `result-track:687fb96e8989d4195b7364f4102964c3aa863e9289a81f87908d44362759090a` |
| 14 | `theorem` | [mem_of_formPerm_apply_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/mem-of-formperm-apply-mem--d597a1941385d94c7cad2996.md) | 119 | `result-track:d597a1941385d94c7cad2996ffd5fff1793b3a10057eab2d87381a12d680ba36` |
| 15 | `theorem` | [formPerm_mem_iff_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-mem-iff-mem--77e77414247dceb874ecd41e.md) | 124 | `result-track:77e77414247dceb874ecd41e6e5f8e50ec800c2a7c88a2159c9b7ef74ae0184c` |
| 16 | `theorem` | [formPerm_cons_concat_apply_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-cons-concat-apply-last--e34592209e1667ebf9929890.md) | 128 | `result-track:e34592209e1667ebf9929890436e04bcbd790d83218da20eb5420ebb768ce580` |
| 17 | `theorem` | [formPerm_apply_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-getlast--303a89d77eacffa1aef62c87.md) | 135 | `result-track:303a89d77eacffa1aef62c87da52071aa33707ba08bfea3fdff4cb4a8455cf25` |
| 18 | `theorem` | [formPerm_apply_getElem_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-getelem-length--7a3e5704e2f072ce41e946ba.md) | 140 | `result-track:7a3e5704e2f072ce41e946ba77566759682d244b0a315a47f1128f8ba0781db3` |
| 19 | `theorem` | [formPerm_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-head--ce2a98a9e8e1534f7fca1ff2.md) | 144 | `result-track:ce2a98a9e8e1534f7fca1ff298862887c35fcb164d33b7fd038f20fbe90367be` |
| 20 | `theorem` | [formPerm_apply_getElem_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-getelem-zero--7b389948efa4f416cec35c01.md) | 147 | `result-track:7b389948efa4f416cec35c01f08073038050c3e5e06f43305335bf3a1dd8c4dc` |
| 21 | `theorem` | [formPerm_eq_head_iff_eq_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-eq-head-iff-eq-getlast--622ce71c3befbb3e33a64d3e.md) | 156 | `result-track:622ce71c3befbb3e33a64d3e38ac10afd45b622fc84405d5d82581567b560430` |
| 22 | `theorem` | [formPerm_apply_lt_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-lt-getelem--ca12f561d4905bc9e0ac50aa.md) | 160 | `result-track:ca12f561d4905bc9e0ac50aa16a770495f7d71cdf3da7adabb5eada292bcc52d` |
| 23 | `theorem` | [formPerm_apply_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-getelem--7ae41c4ede4100b42bad2c87.md) | 176 | `result-track:7ae41c4ede4100b42bad2c87e014def5507486d21d073da07267037ec1d4b995` |
| 24 | `theorem` | [support_formPerm_of_nodup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/support-formperm-of-nodup--ea129fc818dd6b59b44f475a.md) | 190 | `result-track:ea129fc818dd6b59b44f475a1b4f83fd8076a200e6e18f1ae89296f97a08e7f1` |
| 25 | `theorem` | [support_formPerm_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/support-formperm-of-nodup--4e2b71452359558f17437f8a.md) | 207 | `result-track:4e2b71452359558f17437f8adcb4e10630a5c008d3ef9ea45bef013d97b021e2` |
| 26 | `theorem` | [formPerm_rotate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-rotate-one--4879ee8ff99f03b4929725e8.md) | 213 | `result-track:4879ee8ff99f03b4929725e848300c9d4202fbae751db5236dd2f3cc0153d5af` |
| 27 | `theorem` | [formPerm_rotate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-rotate--4a247088a7b1b98d8c482c71.md) | 223 | `result-track:4a247088a7b1b98d8c482c71f4ffa3fec8cd372ca46b52c8197354e5a3ab1807` |
| 28 | `theorem` | [formPerm_eq_of_isRotated](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-eq-of-isrotated--036683861592b400d98b0045.md) | 232 | `result-track:036683861592b400d98b0045cfd30f0688640c963dd15d8a37fcecec6dde9d48` |
| 29 | `theorem` | [formPerm_append_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-append-pair--f42ac20daa04ab69f4046e3b.md) | 237 | `result-track:f42ac20daa04ab69f4046e3ba8df07c10bc4f204606c5cc08ba4a6b7177197dc` |
| 30 | `theorem` | [formPerm_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-reverse--fa0c356eeb5a7468da040231.md) | 244 | `result-track:fa0c356eeb5a7468da040231231519c8ce7f1ebf78723bc708468a98e7013466` |
| 31 | `theorem` | [formPerm_pow_apply_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-pow-apply-getelem--2667b416f5bb86755e4ded4c.md) | 250 | `result-track:2667b416f5bb86755e4ded4c728c72d39b4fef15781cee159b0446496ea18db7` |
| 32 | `theorem` | [formPerm_pow_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-pow-apply-head--711f98c35d590e73e8093b35.md) | 259 | `result-track:711f98c35d590e73e8093b35c8a08f7d708e05e29ee3905348864fc969b4eb8a` |
| 33 | `theorem` | [formPerm_ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-ext-iff--8d870f3faed9bfb219044954.md) | 265 | `result-track:8d870f3faed9bfb2190449546f2bdf92fd29277eedde6af2c0ffc1b386ca6fe5` |
| 34 | `theorem` | [formPerm_apply_mem_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-mem-eq-self-iff--986c6186ed31aa40f3e4d93b.md) | 300 | `result-track:986c6186ed31aa40f3e4d93b1e75ad16fea1bd70ebcde9d9afa68d9209490050` |
| 35 | `theorem` | [formPerm_apply_mem_ne_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-apply-mem-ne-self-iff--29f781aa5a00fe858cf7cf03.md) | 312 | `result-track:29f781aa5a00fe858cf7cf030684ef7c81c8e82f6b8c5e2defd7f0fed7efe260` |
| 36 | `theorem` | [mem_of_formPerm_ne_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/mem-of-formperm-ne-self--c49a1a2a02e6bdb6e8489bc4.md) | 317 | `result-track:c49a1a2a02e6bdb6e8489bc4efa4f3862cb7b27b1886b185baac814c1d350db1` |
| 37 | `theorem` | [formPerm_eq_self_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-eq-self-of-notmem--3de5fb60b951ad51511af19d.md) | 323 | `result-track:3de5fb60b951ad51511af19d8ab038beee53db7f4b57d4c830fb7ac767247540` |
| 38 | `theorem` | [formPerm_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-eq-one-iff--f7911042b15047a72355d4ae.md) | 329 | `result-track:f7911042b15047a72355d4aef0d9de950f0e5b6a5c86572ae9e5525ac0af4796` |
| 39 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-eq-formperm-iff--575315b69b2dfc57179a42ed.md) | 340 | `result-track:575315b69b2dfc57179a42ede7de689dcf94bb8b95adf26055dbcd3ad49450d3` |
| 40 | `theorem` | [form_perm_zpow_apply_mem_imp_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/form-perm-zpow-apply-mem-imp-mem--f04e3e94d5264e6277e6ea57.md) | 360 | `result-track:f04e3e94d5264e6277e6ea57ee73b5065b6fa94461ffe79280073e33eaa4e8c4` |
| 41 | `theorem` | [formPerm_pow_length_eq_one_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/declarations/formperm-pow-length-eq-one-of-nodup--dedd4df3164397f08f429e5c.md) | 369 | `result-track:dedd4df3164397f08f429e5c1db56b7c1970c80aa7f0ec29d7306a235f63ee59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
