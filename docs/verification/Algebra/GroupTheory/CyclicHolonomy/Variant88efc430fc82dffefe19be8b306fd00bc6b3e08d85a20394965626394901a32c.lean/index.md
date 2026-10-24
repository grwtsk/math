# Verification target: GRWTSK.Algebra.GroupTheory.CyclicHolonomy.Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5271aff56c2493cef936719e00a6bf53503b36c3",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5271aff56c2493cef936719e00a6bf53503b36c3`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleLength](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/cyclelength--7092e4200b7148f550bd4928.md) | 54 | `declaration-track:7092e4200b7148f550bd4928b7d73b52d6eab1f0135953a51a9dc7f4e6123700` |
| 2 | `theorem` | [cycleLength_pos](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/cyclelength-pos--cd150a0226c32dc4c40285bd.md) | 58 | `result-track:cd150a0226c32dc4c40285bd124718efda6c811ee38f61f8f00a06d934a6ffd7` |
| 3 | `theorem` | [card_coverPhase](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/card-coverphase--b49f37574bb0c1a8f7d7a51c.md) | 63 | `result-track:b49f37574bb0c1a8f7d7a51c5e63196a6938040a3a31619fc2b0a35d6a7fe5ae` |
| 4 | `def` | [advance](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/advance--df2d0d2bf74d55ca1bf09639.md) | 69 | `declaration-track:df2d0d2bf74d55ca1bf0963999df1ad66be7374ad59700530b342d3d389473d3` |
| 5 | `theorem` | [successor_iterate_eq_advance](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/successor-iterate-eq-advance--1b7855145a5347774f27a1e9.md) | 74 | `result-track:1b7855145a5347774f27a1e9bcb8a872c7baa54073a77ee00a73d2b35e56d34a` |
| 6 | `theorem` | [advance_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/advance-zero--09e56139341e0a12ca4a1199.md) | 84 | `result-track:09e56139341e0a12ca4a1199fde0c3d2243e18926031389ed00b0c232e03a91c` |
| 7 | `theorem` | [advance_one](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/advance-one--9555102e942c7f1e3ace17a8.md) | 89 | `result-track:9555102e942c7f1e3ace17a8e922ee767c5c0de58e0d8ee9fa621f4ce7f432a1` |
| 8 | `theorem` | [advance_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/advance-succ--f43a2d9a2f689cd22a2ec18d.md) | 94 | `result-track:f43a2d9a2f689cd22a2ec18da8d76f5388f04ccc143dc026fef1a112b35d5325` |
| 9 | `theorem` | [advance_successor](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/advance-successor--d162961caaa11af38fc93c8c.md) | 100 | `result-track:d162961caaa11af38fc93c8ca2a3c57681e46d833088eb7677feef2404ab211e` |
| 10 | `theorem` | [advance_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/advance-add--4e56a9e7918c73a2537956cc.md) | 107 | `result-track:4e56a9e7918c73a2537956cc96bce9c783d06e04d3fa058c56563961cdfd4bcd` |
| 11 | `theorem` | [advance_cycle](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/advance-cycle--7cc5557bede7bcab838fd6c7.md) | 114 | `result-track:7cc5557bede7bcab838fd6c7959106b3620e7ee4b18f5ee1631c6d9ef857cce6` |
| 12 | `theorem` | [advance_mod_cycle](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/advance-mod-cycle--ef27d7dcbe65aa127a00f5cc.md) | 123 | `result-track:ef27d7dcbe65aa127a00f5cc90f97baa541e14908ff4d8999c574e529e131733` |
| 13 | `theorem` | [advance_half](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/advance-half--5049f63361545e4bb90f7f9c.md) | 130 | `result-track:5049f63361545e4bb90f7f9c6ce97d1037a8bb7a733e427ca02bd608320418a2` |
| 14 | `theorem` | [forwardProduct_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/forwardproduct-add--02f13329ec12698f238d5e48.md) | 145 | `result-track:02f13329ec12698f238d5e48d2c4eed749466cb5b1b91d1a9c8ca6b0d0638a90` |
| 15 | `theorem` | [forwardProduct_one](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/forwardproduct-one--0149f11efc7ba79d1b57a573.md) | 159 | `result-track:0149f11efc7ba79d1b57a5739eb16d4c27b30b1bc01165ac845daaafe510dcbc` |
| 16 | `def` | [monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/monodromy--7606cc3f4a7215313b1ca186.md) | 167 | `declaration-track:7606cc3f4a7215313b1ca186c89427575bc67f4425c5df5f143d55848dbac378` |
| 17 | `theorem` | [forwardProduct_cycle_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/forwardproduct-cycle-add--75fd3b939c1b313ca5b0257c.md) | 177 | `result-track:75fd3b939c1b313ca5b0257ce076656d62bc9fa45668f0aaf95f956015a7d725` |
| 18 | `def` | [holonomyGroupAt](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/holonomygroupat--9eafea71a3dc1d7f6e6453c4.md) | 186 | `declaration-track:9eafea71a3dc1d7f6e6453c4bf0ef4e088e8928e536b2a90f48dc017788850cc` |
| 19 | `theorem` | [mem_holonomyGroupAt_iff](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/mem-holonomygroupat-iff--e496b9fd1d7cd65d65a3ba34.md) | 196 | `result-track:e496b9fd1d7cd65d65a3ba34f698ff4e389f02ae64f73a647ed4877a1d8015e7` |
| 20 | `def` | [StepsInSubgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/stepsinsubgroup--56f6f6dc5121c05be56d2e97.md) | 206 | `declaration-track:56f6f6dc5121c05be56d2e978a410152305d89d84acf51331a4517eba88e3ecc` |
| 21 | `theorem` | [forwardProduct_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/forwardproduct-mem-subgroup--282821cb2f519a3bbe2ce3e8.md) | 212 | `result-track:282821cb2f519a3bbe2ce3e836febe76c91c7766cb924d2935d603e2e8c1fe06` |
| 22 | `theorem` | [monodromy_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/monodromy-mem-subgroup--458cb5686dd43c091933d3f3.md) | 225 | `result-track:458cb5686dd43c091933d3f335d0face9656de5095982ba7c96e62b39397441f` |
| 23 | `theorem` | [transport_intertwines_monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/transport-intertwines-monodromy--7e09f3bbe3c28f8581d26be0.md) | 233 | `result-track:7e09f3bbe3c28f8581d26be0eff734b47e2c2d07396c29f1dfade8ba95ee1628` |
| 24 | `theorem` | [monodromy_advance_eq_conjugate](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/monodromy-advance-eq-conjugate--aaa4dbe960a6f92025b19e4c.md) | 259 | `result-track:aaa4dbe960a6f92025b19e4c6d966b8e6fdf0acc58d576415854de6ad53ff7bd` |
| 25 | `theorem` | [monodromy_successor_eq_conjugate](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/monodromy-successor-eq-conjugate--78625300cebb7a1b2e6a7963.md) | 273 | `result-track:78625300cebb7a1b2e6a796313592271f2ff287f45b48a8b8c29ae6f5ba463c3` |
| 26 | `theorem` | [monodromy_successor_mem_of_mem_normalizer](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/monodromy-successor-mem-of-mem-normalizer--f820b2ad69b67a059544c6eb.md) | 288 | `result-track:f820b2ad69b67a059544c6eb8b400ecb909f185327ebf4ab792f7e431370d95f` |
| 27 | `theorem` | [monodromy_successor_mem_of_normal](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/monodromy-successor-mem-of-normal--e8ef20f85021d5f5b313665d.md) | 307 | `result-track:e8ef20f85021d5f5b313665d2fd3716c269373fdd6140465b94f185fff5b8c08` |
| 28 | `def` | [ClosesAfterCircuit](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/closesaftercircuit--131382bc6afc3952d4c3c834.md) | 317 | `declaration-track:131382bc6afc3952d4c3c83464b0a1c521cb5649be4e0586c4d029cc62bfb822` |
| 29 | `theorem` | [closesAfterCircuit_iff_monodromy_fixed](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/closesaftercircuit-iff-monodromy-fixed--d5627a149714084f592595c8.md) | 322 | `result-track:d5627a149714084f592595c87467aff6fb7e35b272a545fe5321fc07eed5537d` |
| 30 | `def` | [IsParallelSection](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/isparallelsection--8756f57050937aef709c1f84.md) | 331 | `declaration-track:8756f57050937aef709c1f8467012708b92c6466dcf2677071a0205c9fb31606` |
| 31 | `theorem` | [forwardProduct_apply_of_isParallelSection](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/forwardproduct-apply-of-isparallelsection--a46808827991a76bc079b953.md) | 336 | `result-track:a46808827991a76bc079b95360a544b37247ea75c2fd32b145974bd85b860945` |
| 32 | `theorem` | [isParallelSection_closesAfterCircuit](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/isparallelsection-closesaftercircuit--02222116eb9ec116724a959d.md) | 348 | `result-track:02222116eb9ec116724a959da03fcc6854a91f1f8131df2477b71788ad1f4e83` |
| 33 | `def` | [halfTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/halftransport--aa4f0daf94b56bb16426742f.md) | 357 | `declaration-track:aa4f0daf94b56bb16426742fe55dc0d65378ef0e92be5e791f1fac555c16f863` |
| 34 | `theorem` | [monodromy_eq_halfTransport_trans_self](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/monodromy-eq-halftransport-trans-self--da8006ad329de748605b4607.md) | 374 | `result-track:da8006ad329de748605b4607e8cf8f59d866df10f8ab025441ae9f581c03c06f` |
| 35 | `structure` | [PathDecomposition](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/pathdecomposition--e9e4dd0a0846df450ed00c25.md) | 389 | `declaration-track:e9e4dd0a0846df450ed00c2540aba55a26efad087378f98fca8c241337f63c68` |
| 36 | `def` | [decomposeSteps](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/decomposesteps--cc733a8f3c8baa15e4840c34.md) | 396 | `declaration-track:cc733a8f3c8baa15e4840c34f50942a45a26ecd7ca54acb29e009e271c414dd5` |
| 37 | `theorem` | [decomposeSteps_recompose](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/decomposesteps-recompose--0a6841bca5887cb05dbc3f3c.md) | 403 | `result-track:0a6841bca5887cb05dbc3f3cd0b22c3ee3cf5e716b378fa6cec2828bbf4cc30a` |
| 38 | `theorem` | [forwardProduct_laps_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/forwardproduct-laps-add--f17b72fbc179bd78f79b3a08.md) | 417 | `result-track:f17b72fbc179bd78f79b3a084451ddef076cd7b50370ae16442b68bd661c4fa1` |
| 39 | `theorem` | [forwardProduct_decomposition](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/forwardproduct-decomposition--83786bec26715b2e3a1e9efe.md) | 444 | `result-track:83786bec26715b2e3a1e9efeb2484842ad0ed45ec82d8476046865c74454e127` |
| 40 | `abbrev` | [OneLapIndex](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/onelapindex--0948704d240d7f0cc81635e0.md) | 460 | `declaration-track:0948704d240d7f0cc81635e0ea7d472a4b2e609fe5e639f927f9445768b5ea52` |
| 41 | `def` | [oneLapStart](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/onelapstart--9342501c9ae2a1ae1499ad90.md) | 465 | `declaration-track:9342501c9ae2a1ae1499ad9098259846ac5179a24cd192eebc97e946be3687e7` |
| 42 | `def` | [oneLapEnd](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/onelapend--13f18c76d90d8d550a9983fd.md) | 470 | `declaration-track:13f18c76d90d8d550a9983fdfed5f425bfaf838b4440515638f9ae639ba08dd0` |
| 43 | `def` | [oneLapPhase](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/onelapphase--10b7ffae2baf67045afdf0d5.md) | 475 | `declaration-track:10b7ffae2baf67045afdf0d5dccbacf119b16f381442ae83faba0a43d138bfd9` |
| 44 | `def` | [oneLapProduct](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/onelapproduct--05c73b02caa1b282540eac92.md) | 480 | `declaration-track:05c73b02caa1b282540eac92f7a7368774992e17a7bed1735cdfd48c9341b4b5` |
| 45 | `theorem` | [oneLapPhase_start](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/onelapphase-start--c74196745bc7b394aacc4732.md) | 485 | `result-track:c74196745bc7b394aacc47325fcaa7e037b93b3acb0681756b76609b2962922d` |
| 46 | `theorem` | [oneLapPhase_end](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/onelapphase-end--6da84a400ec3857cc7c2d696.md) | 490 | `result-track:6da84a400ec3857cc7c2d696c12c0422f0de45e06a3773344cc47e2fe9306e87` |
| 47 | `theorem` | [oneLapProduct_start](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/onelapproduct-start--becc6225ebde41ef341afd8f.md) | 495 | `result-track:becc6225ebde41ef341afd8f543b256503103fced16d175b93470c6c19afbea5` |
| 48 | `theorem` | [oneLapProduct_end](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/declarations/onelapproduct-end--fde047b616878527be5ec43d.md) | 500 | `result-track:fde047b616878527be5ec43de311e06f43fc64ef19a7a128bf34abb565c3463a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
