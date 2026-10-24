# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc656942c6e385c97d1f73359a305b9beb2f6815",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc656942c6e385c97d1f73359a305b9beb2f6815`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset--be86d599030dc08deaad37f2.md) | 36 | `declaration-track:be86d599030dc08deaad37f2d38be54e990cb4039b015626da1df8d0459b0e41` |
| 2 | `theorem` | [toMultiset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-zero--fd8ddfd80988fc3731e4cf68.md) | 44 | `result-track:fd8ddfd80988fc3731e4cf68028940b5136d08cfe5029d2ff89a493a0173975d` |
| 3 | `theorem` | [toMultiset_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-add--9b122e65037a932d9d6c7602.md) | 47 | `result-track:9b122e65037a932d9d6c7602b3f50a16d48a0029a5640f691981b0652e12cec9` |
| 4 | `theorem` | [toMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-apply--fead63432ce7895ecfa24c55.md) | 50 | `result-track:fead63432ce7895ecfa24c55688af660a60985e9c250eda5b29ffe3b34e0ab87` |
| 5 | `theorem` | [toMultiset_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-single--f6fe1a21c9e9854be3ecb80a.md) | 54 | `result-track:f6fe1a21c9e9854be3ecb80a2fe587823a10ccc15c142b22cf02d76d1b135144` |
| 6 | `theorem` | [toMultiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-sum--b526a682060ff80311a7a365.md) | 57 | `result-track:b526a682060ff80311a7a36536e62bb26cfd07be837df6825e1f64ba40ef6159` |
| 7 | `theorem` | [toMultiset_sum_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-sum-single--197abc276e656581f9dd324b.md) | 61 | `result-track:197abc276e656581f9dd324bf9abbdd81a63f9a13c0bc44f1c1e256258695e36` |
| 8 | `theorem` | [card_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/card-tomultiset--be46ab8bae85f6f1db048488.md) | 66 | `result-track:be46ab8bae85f6f1db04848838cfc88adf5a35f197c0bd9e689fce24e90f3a1f` |
| 9 | `theorem` | [toMultiset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-map--7e1c2af727d99cb087ba895b.md) | 69 | `result-track:7e1c2af727d99cb087ba895b8887dd693dd7981eb22b1558baafab91959c7369` |
| 10 | `theorem` | [prod_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/prod-tomultiset--aea9590e5a8c27f9a042d2ed.md) | 80 | `result-track:aea9590e5a8c27f9a042d2ed0074987042e0d4488ec91f3e84d9310fc15aba2a` |
| 11 | `theorem` | [toFinset_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinset-tomultiset--ef93b734014e7f105e9ca3da.md) | 90 | `result-track:ef93b734014e7f105e9ca3da005e70dfedfc5788611566e700fff8b8c7003411` |
| 12 | `theorem` | [count_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/count-tomultiset--52ae8b39c4a42caac6548a16.md) | 100 | `result-track:52ae8b39c4a42caac6548a162cdb3914a52a926d0cc6a8abb942fa3bf2ff5f79` |
| 13 | `theorem` | [toMultiset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-sup--aa626fe5b4a888e4ff381b10.md) | 111 | `result-track:aa626fe5b4a888e4ff381b10db31ef5c8edbacd3f7d9698f10e52b97449ce379` |
| 14 | `theorem` | [toMultiset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-inf--edd8785e4c5eb058ee4470c0.md) | 116 | `result-track:edd8785e4c5eb058ee4470c0bf21cce1176a4f325eeceab177ac90332c3db4ae` |
| 15 | `theorem` | [mem_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/mem-tomultiset--000979b234543489b349a384.md) | 122 | `result-track:000979b234543489b349a38433278948fed3b8ec3acf5f0641122ba571abf6b7` |
| 16 | `def` | [toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp--be9d42616b66da1a1ad28210.md) | 135 | `declaration-track:be9d42616b66da1a1ad282105b42029633c2125ed62e8491111c4ee1b28f1d6a` |
| 17 | `theorem` | [toFinsupp_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-support--cbd49b7d73814f57e095b64a.md) | 149 | `result-track:cbd49b7d73814f57e095b64af25a7cc30965c4728cd55f64eb92741e4d750d46` |
| 18 | `theorem` | [toFinsupp_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-apply--3f83190f26461718d48e7fdb.md) | 152 | `result-track:3f83190f26461718d48e7fdb6aa7652b4b6e3bf79b1e0967f82ad198fb4789f3` |
| 19 | `theorem` | [toFinsupp_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-zero--d78ce7ea560927547319235b.md) | 154 | `result-track:d78ce7ea560927547319235bf43580c348f44360931555ed3d79e5f92897c6e2` |
| 20 | `theorem` | [toFinsupp_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-add--494a1b101d945d8d58519358.md) | 156 | `result-track:494a1b101d945d8d58519358c5e90d21991251f4ae4c764bf159c000e6d20f45` |
| 21 | `theorem` | [toFinsupp_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-singleton--1be7bdb84080f2f58d9dd695.md) | 160 | `result-track:1be7bdb84080f2f58d9dd695fa966ff48011668848007fe35ec0eb632ef6b7cc` |
| 22 | `theorem` | [toFinsupp_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-tomultiset--0c122dd7dbbda8e332f8fcaf.md) | 164 | `result-track:0c122dd7dbbda8e332f8fcaf03761987392265c98e8f21029d7e503c7234f16d` |
| 23 | `theorem` | [toFinsupp_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-eq-iff--468243ed9ecba9f22069e0c6.md) | 167 | `result-track:468243ed9ecba9f22069e0c6f8c64490d50f5751426071e5d2aca0da9f11d9aa` |
| 24 | `theorem` | [toFinsupp_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-union--21d5a1c0e16ee7bea79d222a.md) | 171 | `result-track:21d5a1c0e16ee7bea79d222a228c9da49c8403e59004e0b328563dd784438b37` |
| 25 | `theorem` | [toFinsupp_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-inter--b07f25a0d0d7f6ef5b512f5d.md) | 175 | `result-track:b07f25a0d0d7f6ef5b512f5dbc3bcb0960bf0958ba09289517cb6ab52d83061a` |
| 26 | `theorem` | [toFinsupp_sum_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tofinsupp-sum-eq--493a243cb2dee87e39748f53.md) | 180 | `result-track:493a243cb2dee87e39748f538a5e8938e461042f5e534e59f08e056363f3687a` |
| 27 | `theorem` | [Finsupp.toMultiset_toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/finsupp-tomultiset-tofinsupp--9552b353557750c5196ea8cd.md) | 186 | `result-track:9552b353557750c5196ea8cd0a8c294ddf863d6d4930e505cdd762fc24aef881` |
| 28 | `theorem` | [Finsupp.toMultiset_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/finsupp-tomultiset-eq-iff--46276e563ba3c305e56eed15.md) | 190 | `result-track:46276e563ba3c305e56eed153001db60301e43d4a4618a984ebf42e5303c3d9d` |
| 29 | `def` | [orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/orderisomultiset--4260751e267e0a6ca72f4d3e.md) | 198 | `declaration-track:4260751e267e0a6ca72f4d3e9208ac322a6b98885ff115f7efad429fbeee0035` |
| 30 | `theorem` | [coe_orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/coe-orderisomultiset--fa576608bd66c5ba7cf54304.md) | 203 | `result-track:fa576608bd66c5ba7cf5430486bac8a6e30451f8f4b97720497cae3bf659beb0` |
| 31 | `theorem` | [coe_orderIsoMultiset_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/coe-orderisomultiset-symm--8e261ea6d91a4e973e99b210.md) | 207 | `result-track:8e261ea6d91a4e973e99b2108d63d6ad0fca44bd21193b9dba4c0925d43afaa9` |
| 32 | `theorem` | [toMultiset_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/tomultiset-strictmono--5195adf283a4764bd21f4d1b.md) | 211 | `result-track:5195adf283a4764bd21f4d1bb05a44160788395133f5ddf66398a4ebb7e2016c` |
| 33 | `theorem` | [sum_id_lt_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/sum-id-lt-of-lt--c12d1d242bbd7f9348e34fa7.md) | 214 | `result-track:c12d1d242bbd7f9348e34fa7e71ab7d12015fef0a03870f2adce03a7869b3bcb` |
| 34 | `theorem` | [lt_wf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/lt-wf--25a8b58057577e582ea57cb0.md) | 222 | `result-track:25a8b58057577e582ea57cb0d6095477e87d43f9fb6aa3ee9313972666b51861` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/instance--f76344f82614a19810c3e8bb.md) | 226 | `declaration-track:f76344f82614a19810c3e8bb6259d75c1ee3dfcb024bd1a34823754039cf4281` |
| 36 | `theorem` | [Multiset.toFinsupp_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/multiset-tofinsupp-strictmono--bd02120cc36c9c8eb3a57ced.md) | 232 | `result-track:bd02120cc36c9c8eb3a57cedf6cd3ee92bfe4fd7753a24479bad1d5196155466` |
| 37 | `def` | [equivNatSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/equivnatsum--90342225a81145df357e1ba4.md) | 244 | `declaration-track:90342225a81145df357e1ba469283a497639833a634080d9202579755a3d239c` |
| 38 | `lemma` | [coe_equivNatSum_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/coe-equivnatsum-apply-apply--c3ec5628996ba8d757bf6405.md) | 248 | `result-track:c3ec5628996ba8d757bf640566fb754e5dcf31953410a76fd21fb0a5b3e4d7ce` |
| 39 | `lemma` | [coe_equivNatSum_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/coe-equivnatsum-symm-apply--6c3e3fd7ef01d38e54e677bd.md) | 252 | `result-track:6c3e3fd7ef01d38e54e677bd7ea35471d095f6eaf45a2f85e1cb2ba4098f048e` |
| 40 | `def` | [equivNatSumOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/equivnatsumoffintype--5e365790b0ecbc7f06358255.md) | 260 | `declaration-track:5e365790b0ecbc7f0635825534add4eca1a515b4aa4a8d380a028b1b2d5c0063` |
| 41 | `lemma` | [coe_equivNatSumOfFintype_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/coe-equivnatsumoffintype-apply-apply--496d2c6200c609d4fa36ab92.md) | 264 | `result-track:496d2c6200c609d4fa36ab92d5302ed432cee20d32aaa71c7eb35bb31811ea6c` |
| 42 | `lemma` | [coe_equivNatSumOfFintype_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/declarations/coe-equivnatsumoffintype-symm-apply--8e776f6d0f8330cbb5109576.md) | 268 | `result-track:8e776f6d0f8330cbb510957611c42a51915ab511e4b730401861bf9eef557878` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
