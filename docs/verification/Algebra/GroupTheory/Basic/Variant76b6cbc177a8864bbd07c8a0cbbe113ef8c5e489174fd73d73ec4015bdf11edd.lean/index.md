# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17d7c02fd4584a900b41c95d984c09cbfd3118db",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17d7c02fd4584a900b41c95d984c09cbfd3118db`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean.json)

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
| 1 | `theorem` | [IsCyclic.exists_generator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-exists-generator--be011842d6b6d1a9420b4d82.md) | 32 | `result-track:be011842d6b6d1a9420b4d8290b7ae9f3520fad12edad06c89cedcfcb76f8a9a` |
| 2 | `theorem` | [isCyclic_iff_exists_zpowers_eq_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-iff-exists-zpowers-eq-top--4e17fb9c6355fcdcd6d35f15.md) | 36 | `result-track:4e17fb9c6355fcdcd6d35f159234f7f76cd3cc90ec60dd9815953d503c1f92a3` |
| 3 | `theorem` | [Subgroup.isCyclic_iff_exists_zpowers_eq_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/subgroup-iscyclic-iff-exists-zpowers-eq-top--fd6eede56d34014d20507650.md) | 41 | `result-track:fd6eede56d34014d2050765057d328811fa672541615f0e4110e3aedc91c3021` |
| 4 | `instance` | [Subgroup.isCyclic_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/subgroup-iscyclic-zpowers--ef389d5ea9bd9ac01d30b088.md) | 49 | `declaration-track:ef389d5ea9bd9ac01d30b088ae63d01dade017b65cbeea5153d114ba51bcfb07` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/instance--b8b2895dcb66494a61ba2757.md) | 54 | `declaration-track:b8b2895dcb66494a61ba275713efeb82be58599eba9c1ace63d980d8cbc3c692` |
| 6 | `theorem` | [isCyclic_multiplicative_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-multiplicative-iff--b0ee26d51bf0d959a7f823a3.md) | 58 | `result-track:b0ee26d51bf0d959a7f823a373b4010851dd182928413b7f113ae4f40eed9edd` |
| 7 | `instance` | [isCyclic_multiplicative](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-multiplicative--92a702dd0036dc36f98406cf.md) | 62 | `declaration-track:92a702dd0036dc36f98406cf47bf1b25478b07f38e7de731608d7ee916743c03` |
| 8 | `theorem` | [isAddCyclic_additive_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/isaddcyclic-additive-iff--cc48e8bcd9f0c968b5083249.md) | 66 | `result-track:cc48e8bcd9f0c968b50832498b46df680f3487ba231d7f83f65e8653f18391cf` |
| 9 | `instance` | [isAddCyclic_additive](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/isaddcyclic-additive--7d5b03efd689ab2edded7617.md) | 69 | `declaration-track:7d5b03efd689ab2edded76178decf031122b52733df20dad4eff1d5643661a2a` |
| 10 | `instance` | [IsCyclic.isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-ismulcommutative--e93af6024398747902e762cc.md) | 73 | `declaration-track:e93af6024398747902e762cc213e4f9f6e865fe4b1ffd55f89372c2ac94bcd12` |
| 11 | `def` | [IsCyclic.commGroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-commgroup--74c634df2ab898564d356ef7.md) | 91 | `declaration-track:74c634df2ab898564d356ef776b6030a2362713fc708ba9fbfd3f1af2fa1fca8` |
| 12 | `theorem` | [Nontrivial.of_not_isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/nontrivial-of-not-iscyclic--579a5b07e715e85041d5ced0.md) | 98 | `result-track:579a5b07e715e85041d5ced0365dd612b1d96f2fbcf8e209664327801c87dfcc` |
| 13 | `theorem` | [MonoidHom.map_cyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/monoidhom-map-cyclic--0ecf55dba0da0f1e3b021863.md) | 103 | `result-track:0ecf55dba0da0f1e3b021863300288ad3209ab7ea38ba3b901572739b1dd490f` |
| 14 | `lemma` | [isCyclic_iff_exists_orderOf_eq_natCard](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-iff-exists-orderof-eq-natcard--ef804de39937762ba6cfdf2a.md) | 112 | `result-track:ef804de39937762ba6cfdf2ad9d0de19743eb0364c6629ce0609b668d405bd1b` |
| 15 | `lemma` | [isCyclic_iff_exists_natCard_le_orderOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-iff-exists-natcard-le-orderof--22f55c80ecebb7d502f6bb25.md) | 117 | `result-track:22f55c80ecebb7d502f6bb252d93fcbeff70bc141b6d4f61667cd4024d55e7ef` |
| 16 | `theorem` | [isCyclic_of_orderOf_eq_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-of-orderof-eq-card--86881fc66422eb4eb754f54a.md) | 125 | `result-track:86881fc66422eb4eb754f54a256cdb083dcb27806ea0021e0c520108a5e9e142` |
| 17 | `theorem` | [isCyclic_of_card_le_orderOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-of-card-le-orderof--83604c6c1e4e672507806cde.md) | 130 | `result-track:83604c6c1e4e672507806cde0c5cc3cbe64726587b928afcde393d0cdbddaf7d` |
| 18 | `theorem` | [Subgroup.eq_bot_or_eq_top_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/subgroup-eq-bot-or-eq-top-of-prime-card--ea93dcf674b619483d0c00d7.md) | 135 | `result-track:ea93dcf674b619483d0c00d768fb167e73c1153ebd1a3c3622cca35f70c64faa` |
| 19 | `theorem` | [zpowers_eq_top_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/zpowers-eq-top-of-prime-card--bf692a7eea0278264f71768f.md) | 143 | `result-track:bf692a7eea0278264f71768fb50d0188161d0ca712dc7ab6110f80f6cbffedcb` |
| 20 | `theorem` | [mem_zpowers_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/mem-zpowers-of-prime-card--5db74ccc73a08cce4c283b9e.md) | 150 | `result-track:5db74ccc73a08cce4c283b9ea5b49b0e1502c2799a06f10547d72baf8c299be3` |
| 21 | `theorem` | [mem_powers_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/mem-powers-of-prime-card--4cfc080dbdaa1f8db2f879ea.md) | 155 | `result-track:4cfc080dbdaa1f8db2f879eac196df9dea87557d9a093285e4c7003b67327353` |
| 22 | `theorem` | [powers_eq_top_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/powers-eq-top-of-prime-card--76eb6c9f6232583d57ee20b8.md) | 162 | `result-track:76eb6c9f6232583d57ee20b869d0e6f6de2fb0dfa1ba69a62dac477246426d18` |
| 23 | `theorem` | [isCyclic_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-of-prime-card--bc6d9a2b37676694ed3d0510.md) | 169 | `result-track:bc6d9a2b37676694ed3d0510cb8a54cb20a707c4939719cf3d1e06dbe8d938fa` |
| 24 | `theorem` | [isCyclic_of_card_dvd_prime](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-of-card-dvd-prime--32e8fe0f758fd58aa5bed19d.md) | 178 | `result-track:32e8fe0f758fd58aa5bed19d74cd46ba8b15a14705534dd649383f041d933527` |
| 25 | `theorem` | [isCyclic_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-of-surjective--902ee99b4b1a3f9ee3a7c3a9.md) | 185 | `result-track:902ee99b4b1a3f9ee3a7c3a9a0327b794a4999bf07a90e2fd008a37d832e7123` |
| 26 | `theorem` | [MulEquiv.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/mulequiv-iscyclic--4ac90856ec896b34dbe086ca.md) | 195 | `result-track:4ac90856ec896b34dbe086ca5bc1c4d7d50967e2c65aa11f70df16ae1d15fd3c` |
| 27 | `theorem` | [orderOf_eq_card_of_forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/orderof-eq-card-of-forall-mem-zpowers--94ea0370fb5fa31d025ef652.md) | 201 | `result-track:94ea0370fb5fa31d025ef652732ffe2fd9bedd3c6dc60e29d1c60e65ee902614` |
| 28 | `theorem` | [orderOf_eq_card_of_forall_mem_powers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/orderof-eq-card-of-forall-mem-powers--c19e21731b75f7cdfd39b031.md) | 206 | `result-track:c19e21731b75f7cdfd39b0313a402187763983125ca3f03065a5671a98d6c6e6` |
| 29 | `theorem` | [orderOf_eq_card_of_zpowers_eq_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/orderof-eq-card-of-zpowers-eq-top--99dd21f66157eb64cb375191.md) | 212 | `result-track:99dd21f66157eb64cb3751913c6532786515a2cf4a6f8f514071ec21662b6336` |
| 30 | `theorem` | [exists_pow_ne_one_of_isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/exists-pow-ne-one-of-iscyclic--187eb12e0df289ab2b11a599.md) | 217 | `result-track:187eb12e0df289ab2b11a5992da73506ca2fb9a8a5decb7fe85d703ed07519da` |
| 31 | `theorem` | [Infinite.orderOf_eq_zero_of_forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/infinite-orderof-eq-zero-of-forall-mem-zpowers--bbfc6d784f658bcea1a90dde.md) | 228 | `result-track:bbfc6d784f658bcea1a90ddec6ac103d946c619357fb7d95d8ad8cf41784629b` |
| 32 | `instance` | [Bot.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/bot-iscyclic--70c2e6d17e8f3bcfdd93b952.md) | 233 | `declaration-track:70c2e6d17e8f3bcfdd93b952d1c10e5748fbbdd904f72d9ca950decbf1c56288` |
| 33 | `instance` | [Subgroup.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/subgroup-iscyclic--9c9351388af29dcc25d791bc.md) | 237 | `declaration-track:9c9351388af29dcc25d791bc55ca33fb42dba5e1447bcf7a5e8896d0197a9b4a` |
| 34 | `theorem` | [isCyclic_of_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-of-injective--7dcccfc44b1b595fea9c0d8f.md) | 287 | `result-track:7dcccfc44b1b595fea9c0d8fe15e75955a0b7b7f7cded7bd0247c677b1e0221d` |
| 35 | `lemma` | [Subgroup.isCyclic_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/subgroup-iscyclic-of-le--0591bb4c94dc60b559d4d57b.md) | 292 | `result-track:0591bb4c94dc60b559d4d57bbbeee3ae6c083a2955c85c57b84f487b85f02249` |
| 36 | `theorem` | [Subgroup.le_zpowers_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/subgroup-le-zpowers-iff--64cd4a3e707b8d711be85f94.md) | 296 | `result-track:64cd4a3e707b8d711be85f94e437dae6f105639bdfd3058294cf0aefc0e0cac1` |
| 37 | `theorem` | [IsCyclic.card_pow_eq_one_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-card-pow-eq-one-le--44edaed265943d8b36110a56.md) | 313 | `result-track:44edaed265943d8b36110a569840c088847418acbd2d47b19e76793ba00a8bb3` |
| 38 | `theorem` | [IsCyclic.exists_monoid_generator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-exists-monoid-generator--01a5af749229f0a99db2d311.md) | 347 | `result-track:01a5af749229f0a99db2d311f6733b6c523f6b8ef58524626dae61b73cada547` |
| 39 | `lemma` | [IsCyclic.exists_ofOrder_eq_natCard](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-exists-oforder-eq-natcard--b1ba48475f8f9653b9d936dc.md) | 353 | `result-track:b1ba48475f8f9653b9d936dc6522fdcbcaddde2b1af86139cfe1d5c731cae01a` |
| 40 | `def` | [MulDistribMulAction.toMonoidHomZModOfIsCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/muldistribmulaction-tomonoidhomzmodofiscyclic--e4ab81a9795a49d1c0385797.md) | 362 | `declaration-track:e4ab81a9795a49d1c038579750cb768c2daabf5b5bedb0f4d82e377338fb58cf` |
| 41 | `theorem` | [MulDistribMulAction.toMonoidHomZModOfIsCyclic_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/muldistribmulaction-tomonoidhomzmodofiscyclic-apply--663e715fe2e199e0586031f6.md) | 379 | `result-track:663e715fe2e199e0586031f664d8d9cc3bea3118c86ef229aa58a72662fdec05` |
| 42 | `theorem` | [IsCyclic.unique_zpow_zmod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-unique-zpow-zmod--e939cbf238420bfe28958ee9.md) | 392 | `result-track:e939cbf238420bfe28958ee95ea50ea922117ae1d6579ccebb1542b11b01ac83` |
| 43 | `theorem` | [IsCyclic.image_range_orderOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-image-range-orderof--9ff54a3944c876e0d5842044.md) | 405 | `result-track:9ff54a3944c876e0d584204450e1a188f4891c812fad42daec666b6336c8b2c3` |
| 44 | `theorem` | [IsCyclic.image_range_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-image-range-card--c93ff097d7220e7cc6e3f733.md) | 410 | `result-track:c93ff097d7220e7cc6e3f7333cfb5bb15d423179e09685e1ee067850d43f10ca` |
| 45 | `lemma` | [IsCyclic.ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76b6cbc177a8864bbd07c8a0cbbe113ef8c5e489174fd73d73ec4015bdf11edd.lean/declarations/iscyclic-ext--84058d92563dabda19d34355.md) | 415 | `result-track:84058d92563dabda19d34355a98d9ec530067035dbcf0fe6a14b3b3267bcc93e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
