# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b31d5347353f78d4a7c8c5000b56cc15c29a8bb",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b31d5347353f78d4a7c8c5000b56cc15c29a8bb`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Multiset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.NoncommCoprod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.ConjAct` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.PossibleTypes` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.DomMulAct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Rank` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Subgroup.Centralizer.toConjAct_smul_mem_cycleFactorsFinset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/subgroup-centralizer-toconjact-smul-mem-cyclefactorsfinset--ca3878b171d8c11581f340f6.md) | 112 | `result-track:ca3878b171d8c11581f340f6d0d81aee9e64eb72be2ade5a0cc3fe9962a1d7d3` |
| 2 | `def` | [Subgroup.Centralizer.cycleFactorsFinset_mulAction](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/subgroup-centralizer-cyclefactorsfinset-mulaction--0af23a15919d7f1fa5dc692f.md) | 127 | `declaration-track:0af23a15919d7f1fa5dc692f512a5c7c67bc0b90184171340c8d9cdc31fbc9fb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/instance--f61d94c6ec1953dfccab383c.md) | 142 | `declaration-track:f61d94c6ec1953dfccab383c3128ff3af6bf8b098957684fdb4a7da8506a19c8` |
| 4 | `def` | [toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/topermhom--0e7ca120f7e5ec39ca7c4d01.md) | 147 | `declaration-track:0e7ca120f7e5ec39ca7c4d01398e58e069cb3aaa22af672306a2876b8945d647` |
| 5 | `theorem` | [centralizer_smul_def](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/centralizer-smul-def--eb32b5ec64b80a5786488675.md) | 149 | `result-track:eb32b5ec64b80a5786488675002df54e4e8c38234c3bc9703d79d24ee5bd53fa` |
| 6 | `theorem` | [val_centralizer_smul](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/val-centralizer-smul--b173a621198cbf533b1418e0.md) | 155 | `result-track:b173a621198cbf533b1418e0a10a0114665a2c8a6bdbd8a6f77702abc539f82e` |
| 7 | `theorem` | [toPermHom_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/topermhom-apply--de74d77597e5841ad882f856.md) | 159 | `result-track:de74d77597e5841ad882f8565d0c91eb17d0fab7a1e8b47af4d9c2a6a972ea70` |
| 8 | `theorem` | [coe_toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/coe-topermhom--e254614e08ea794d2f9d31fd.md) | 162 | `result-track:e254614e08ea794d2f9d31fdadb8fbd199fdaea7f3f7442f9c817b7921ed4e39` |
| 9 | `def` | [range_toPermHom'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/range-topermhom--83044987f6981b269459062e.md) | 168 | `declaration-track:83044987f6981b269459062ea469a4f51e41d2aa8691faa370915ada657fb03d` |
| 10 | `theorem` | [mem_range_toPermHom'_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/mem-range-topermhom-iff--2f907fd540fd108a0e93b44e.md) | 185 | `result-track:2f907fd540fd108a0e93b44efa385b3c1001dd7ee216e3d5e72566a0c726702b` |
| 11 | `theorem` | [mem_ker_toPermHom_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/mem-ker-topermhom-iff--161b331193619db003c680e4.md) | 193 | `result-track:161b331193619db003c680e4ff9bde1567f65dc5137af2755560437614c438e6` |
| 12 | `structure` | [Basis](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/basis--e2487d869b24996186ae2464.md) | 204 | `declaration-track:e2487d869b24996186ae2464979a2e0509ec32e13d2ab52b7e2bc24383fa47fd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/instance--215a75cb02955f3f7ad0cf0a.md) | 210 | `declaration-track:215a75cb02955f3f7ad0cf0a89c7a1211a9192e1cbe27e78e0b83e3e8e8395d9` |
| 14 | `theorem` | [nonempty](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/nonempty--419aa8cd26da18d7fd586891.md) | 217 | `result-track:419aa8cd26da18d7fd5868914704d42e67b120a11a9317eeeb6a8462bc23051f` |
| 15 | `theorem` | [mem_support_self](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/mem-support-self--5e23badbef323d6ffe9d679d.md) | 224 | `result-track:5e23badbef323d6ffe9d679de1e50ba08095bd7c94864a69532dc1970e99437d` |
| 16 | `theorem` | [injective](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/injective--534eabe58161060fda16bf8f.md) | 227 | `result-track:534eabe58161060fda16bf8f349a5100a76a3e94b8db916dc7b4cd5ca7d57944` |
| 17 | `theorem` | [cycleOf_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/cycleof-eq--5908645b031f6e0ea1bf1fef.md) | 236 | `result-track:5908645b031f6e0ea1bf1fefd588496a0ce470611120972cdeffe828310ec8b4` |
| 18 | `theorem` | [sameCycle](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/samecycle--a274c1e5ce411c77578675c1.md) | 239 | `result-track:a274c1e5ce411c77578675c164c9a9cb143984b2b2dbbb290f9e6c5093d38032` |
| 19 | `def` | [ofPermHomFun](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhomfun--8aa93c58e6d193305f5a668b.md) | 246 | `declaration-track:8aa93c58e6d193305f5a668bbfc804258c87776a5823d74af6e9d6d99bc8497d` |
| 20 | `theorem` | [mem_fixedPoints_or_exists_zpow_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/mem-fixedpoints-or-exists-zpow-eq--55416790fc467eb2e78ff1bb.md) | 253 | `result-track:55416790fc467eb2e78ff1bb1f1d56ec99acbbd0b235ae9fa37d1325e5f54d55` |
| 21 | `theorem` | [ofPermHomFun_apply_of_cycleOf_mem](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhomfun-apply-of-cycleof-mem--f8a19d0194d462283ab88920.md) | 264 | `result-track:f8a19d0194d462283ab88920c592a0e4e0ff1321e49ae65eda707aba0d6c6093` |
| 22 | `theorem` | [ofPermHomFun_apply_of_mem_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhomfun-apply-of-mem-fixedpoints--7428cb447552d8953484fcf2.md) | 286 | `result-track:7428cb447552d8953484fcf29792745d7e222728ef1d2072b0bfef47a511455c` |
| 23 | `theorem` | [ofPermHomFun_apply_mem_support_cycle_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhomfun-apply-mem-support-cycle-iff--83c2d63a63d9e957c9503cf1.md) | 292 | `result-track:83c2d63a63d9e957c9503cf1be9ea81d5ab86430f893843d7f525f980cbeefd8` |
| 24 | `theorem` | [ofPermHomFun_commute_zpow_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhomfun-commute-zpow-apply--18e9a35b377c20be51b049a9.md) | 318 | `result-track:18e9a35b377c20be51b049a9ab17d09cd675be3a42f9dfb683ca9c6c1549e9af` |
| 25 | `theorem` | [ofPermHomFun_mul](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhomfun-mul--b061cf306d72ab9429cf1506.md) | 331 | `result-track:b061cf306d72ab9429cf1506e8160343d438123157b90f518da0f404305e4386` |
| 26 | `theorem` | [ofPermHomFun_one](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhomfun-one--4fc96a5c7327d8fa868ac60a.md) | 341 | `result-track:4fc96a5c7327d8fa868ac60a3ca635c65270f6a887d6861e47909f720374162d` |
| 27 | `def` | [ofPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhom--a639eaae9d697792b5ac5cc2.md) | 349 | `declaration-track:a639eaae9d697792b5ac5cc28418766ceb79fec5395a4c4e83fbe0126e58c78b` |
| 28 | `theorem` | [ofPermHom_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhom-apply--464c16d6e84fc059d76da77a.md) | 358 | `result-track:464c16d6e84fc059d76da77a261415585b94500aa48b5cf7a9e4e510b4eeb18b` |
| 29 | `theorem` | [ofPermHom_support](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhom-support--95d76d6e3ed66e34e891b5cf.md) | 360 | `result-track:95d76d6e3ed66e34e891b5cf98f4a0c696987d13f01b1c4e235413293f8e3d85` |
| 30 | `theorem` | [card_ofPermHom_support](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/card-ofpermhom-support--2a61bba2cde6d572c507485e.md) | 384 | `result-track:2a61bba2cde6d572c507485e38e2052a0026acd018c596dd38ddff0d098fba44` |
| 31 | `theorem` | [ofPermHom_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/ofpermhom-mem-centralizer--c2ee71de33ee29746e57b925.md) | 391 | `result-track:c2ee71de33ee29746e57b925cce676712661f0665e52f48e42084034ffe99971` |
| 32 | `def` | [toCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/tocentralizer--2d8512bb5e0e10ed0b1526ed.md) | 401 | `declaration-track:2d8512bb5e0e10ed0b1526ed80f6d3d4aa0695d7aaec001e6477223a35e3dde5` |
| 33 | `theorem` | [toCentralizer_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/tocentralizer-apply--580a68ec3c390a2d9fb0472a.md) | 407 | `result-track:580a68ec3c390a2d9fb0472a3ab0f45e2b69a894e5a6a71e4f86189d5b9e65de` |
| 34 | `theorem` | [toCentralizer_equivariant](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/tocentralizer-equivariant--e0bcd34c430642ab9264fd96.md) | 409 | `result-track:e0bcd34c430642ab9264fd966ebda0f5f4118818c1086f9955555ebfc9cc8054` |
| 35 | `theorem` | [toPermHom_apply_toCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/topermhom-apply-tocentralizer--bce1439b134da4d624c959a2.md) | 425 | `result-track:bce1439b134da4d624c959a2bd532a6e3c45a927d9aa79581c8498fea90c3caf` |
| 36 | `theorem` | [mem_range_toPermHom_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/mem-range-topermhom-iff--84466720c1d425e5d7db59f8.md) | 437 | `result-track:84466720c1d425e5d7db59f89a84b6cfb466adcc536e3044dae5761bc7f294cb` |
| 37 | `theorem` | [mem_range_toPermHom_iff'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/mem-range-topermhom-iff--20474f9942474360b3a9f996.md) | 447 | `result-track:20474f9942474360b3a9f9963fdd3085dabdb27df4f099734f64c4986c29537b` |
| 38 | `theorem` | [range_toPermHom_eq_range_toPermHom'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/range-topermhom-eq-range-topermhom--e2bebf268e32cdb9539ff847.md) | 454 | `result-track:e2bebf268e32cdb9539ff8475d432afddb838b0761bb11a9d9c4842de635b0ba` |
| 39 | `theorem` | [nat_card_range_toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/nat-card-range-topermhom--91fb52905e26141e277003fb.md) | 459 | `result-track:91fb52905e26141e277003fb6050d646e395dc4745b250cdada9d89610e9aff6` |
| 40 | `def` | [kerParam](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/kerparam--bc4052153359b58e695ad9e4.md) | 486 | `declaration-track:bc4052153359b58e695ad9e44d93a92053bffa34017c79b1a5e19d36ebcb6895` |
| 41 | `theorem` | [kerParam_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/kerparam-apply--1154ef4e22dade94c3a91758.md) | 491 | `result-track:1154ef4e22dade94c3a9175870293ba20875fcc3533ef35e04154d8b3e1fb9d6` |
| 42 | `theorem` | [kerParam_injective](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/kerparam-injective--41801f1818386fa0735c4a49.md) | 520 | `result-track:41801f1818386fa0735c4a4930b4f070fdce33289b02344c8b65cf32b44b93c3` |
| 43 | `theorem` | [kerParam_range_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/kerparam-range-eq--88fa36d6f7223aea961a9e71.md) | 540 | `result-track:88fa36d6f7223aea961a9e719ad4aebedcfe5ff342528c6e63c190743097022c` |
| 44 | `theorem` | [kerParam_range_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/kerparam-range-le-centralizer--e92a33a00c5dec0c1a600387.md) | 575 | `result-track:e92a33a00c5dec0c1a600387099dc0a02ac58ec45193c8f3d2c397c4a1901bb7` |
| 45 | `theorem` | [kerParam_range_card](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/kerparam-range-card--1cc8a5a6d1f59882acc70f7c.md) | 580 | `result-track:1cc8a5a6d1f59882acc70f7c012e875b72014718f8b7ff260bb91a7a9349eb38` |
| 46 | `theorem` | [sign_kerParam_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/sign-kerparam-apply-apply--1fc40131c664d1c3a8675442.md) | 599 | `result-track:1fc40131c664d1c3a86754422720da1bdd947db13eb4a0f9ac8dc7c7ce3e6b5e` |
| 47 | `theorem` | [cycleType_kerParam_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/cycletype-kerparam-apply-apply--4cb3c6b41f5cbf1c73297219.md) | 607 | `result-track:4cb3c6b41f5cbf1c73297219af1cdf1f7be66425540a51c99dc08f34d35b1d73` |
| 48 | `theorem` | [nat_card_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/nat-card-centralizer--e3a0df41f7c25a9c49ecf707.md) | 632 | `result-track:e3a0df41f7c25a9c49ecf707dd568c5b8af92cbae406904c0cef80d980985316` |
| 49 | `theorem` | [card_isConj_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/card-isconj-mul-eq--49550cb996f7dc77a3c46d96.md) | 639 | `result-track:49550cb996f7dc77a3c46d9648d66b66ac0e88697c823bcc7e76e869f94ca6a1` |
| 50 | `theorem` | [card_isConj_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/card-isconj-eq--93352bed05305efa57faeafa.md) | 654 | `result-track:93352bed05305efa57faeafa2e5bc71c54f1bd1ff71fddc6d28faa6a17fcf9b3` |
| 51 | `theorem` | [card_of_cycleType_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/card-of-cycletype-eq-zero-iff--06f470c7716f632c71c6ac26.md) | 668 | `result-track:06f470c7716f632c71c6ac266f7b255faad1344a6d713ffc4ba8ade8ac98329b` |
| 52 | `theorem` | [card_of_cycleType_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/card-of-cycletype-mul-eq--6df67afb7d32dbd7de23b9e2.md) | 675 | `result-track:6df67afb7d32dbd7de23b9e26772150fdc4d2463d3ab99a7d203db10eeb8a2f1` |
| 53 | `theorem` | [card_of_cycleType](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/card-of-cycletype--ed86fcf47001c1cf38270300.md) | 691 | `result-track:ed86fcf47001c1cf38270300ef99770f59deec6d996b5360f4ee8ff7435c0c7f` |
| 54 | `lemma` | [card_of_cycleType_singleton](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant7c93aa8a72a347e32026c75b73e1b517144b87f67d1bee0edf62800516a62d0d.lean/declarations/card-of-cycletype-singleton--ef9199308839643e609f985b.md) | 710 | `result-track:ef9199308839643e609f985b338836747f8de4d7c697321c85ba077e32e24119` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
