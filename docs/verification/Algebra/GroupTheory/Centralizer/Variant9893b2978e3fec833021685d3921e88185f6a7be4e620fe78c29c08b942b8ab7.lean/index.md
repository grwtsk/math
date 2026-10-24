# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91440cef8726265c304ec4e9f42971178fa1cbfb",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91440cef8726265c304ec4e9f42971178fa1cbfb`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean.json)

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
| 1 | `lemma` | [Subgroup.Centralizer.toConjAct_smul_mem_cycleFactorsFinset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/subgroup-centralizer-toconjact-smul-mem-cyclefactorsfinset--507388d8caf2833aaefc8bf9.md) | 116 | `result-track:507388d8caf2833aaefc8bf9c146e1d5ef2f249eaf417fcf2377922ce9e4698e` |
| 2 | `def` | [Subgroup.Centralizer.cycleFactorsFinset_mulAction](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/subgroup-centralizer-cyclefactorsfinset-mulaction--48ca3625534a60206696ad9e.md) | 132 | `declaration-track:48ca3625534a60206696ad9e42cb789809376b37e77b2242da391163d105665f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/instance--f94366f239df81beef9b4238.md) | 147 | `declaration-track:f94366f239df81beef9b4238b5136050826e17a825773106da3b62ea9003bda9` |
| 4 | `def` | [toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/topermhom--e4c686220c4e2887828311fd.md) | 152 | `declaration-track:e4c686220c4e2887828311fd61359e0effa6920a21586b171011047ddbe48ed4` |
| 5 | `theorem` | [centralizer_smul_def](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/centralizer-smul-def--89636afe2a43087434a52115.md) | 154 | `result-track:89636afe2a43087434a521151871ef42d05918daee3abfb2c101c8dac4ed7dc8` |
| 6 | `theorem` | [val_centralizer_smul](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/val-centralizer-smul--92322641ea94065efd886870.md) | 160 | `result-track:92322641ea94065efd886870fa73452c7141d02040af0306e356db7c3d16cb9a` |
| 7 | `theorem` | [toPermHom_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/topermhom-apply--11a3765eb222ae49fd10e58e.md) | 164 | `result-track:11a3765eb222ae49fd10e58ed7c45fd08ff1a942c4ad449658fc21b02026e71c` |
| 8 | `theorem` | [coe_toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/coe-topermhom--b7fa7e6bd30ca03c4ad07efe.md) | 167 | `result-track:b7fa7e6bd30ca03c4ad07efe768bff07e1bcebd334654b6d8ac59fda07019c02` |
| 9 | `def` | [range_toPermHom'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/range-topermhom--7edbba5b61d09841a68fe2a5.md) | 173 | `declaration-track:7edbba5b61d09841a68fe2a5ac14526c378285788b2350bf12c38b64cfeb44c0` |
| 10 | `theorem` | [mem_range_toPermHom'_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/mem-range-topermhom-iff--05a963314f91e1942ed54e91.md) | 188 | `result-track:05a963314f91e1942ed54e91d72314c233d0f7f1c1220c6732afbc47827fd0c3` |
| 11 | `theorem` | [mem_ker_toPermHom_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/mem-ker-topermhom-iff--4efe215537171fc308428848.md) | 196 | `result-track:4efe215537171fc3084288489e2748a6e1754c93af3bb784b46e809d3dce54ac` |
| 12 | `structure` | [Basis](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/basis--680e6b7209b3f2b526735803.md) | 207 | `declaration-track:680e6b7209b3f2b526735803eee47969dda5fe3308f332d3a7e89b4fb57fe8e9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/instance--03907ead04d5a2da53345d9b.md) | 214 | `declaration-track:03907ead04d5a2da53345d9b619d325ec3c1c5860b9d2d97b3df2cddff4b6c64` |
| 14 | `theorem` | [nonempty](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/nonempty--ed86c601c829e593d69b5982.md) | 220 | `result-track:ed86c601c829e593d69b598236e6f07889f7ed78d2686ab2060ec2e823de1d65` |
| 15 | `theorem` | [mem_support_self](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/mem-support-self--ee0a9986921c970adc95c1ea.md) | 227 | `result-track:ee0a9986921c970adc95c1ea4f00d1c053470e5da906c0384c9ed283d21d53ab` |
| 16 | `theorem` | [injective](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/injective--a2fed04ee7fffbcbe882c301.md) | 230 | `result-track:a2fed04ee7fffbcbe882c3014f818025c448db340a59b422507b89a344cb0308` |
| 17 | `theorem` | [cycleOf_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/cycleof-eq--f7477ce066b8c271aaf3c522.md) | 239 | `result-track:f7477ce066b8c271aaf3c5225304eaf235821726a60676b6e1269319ef5a6329` |
| 18 | `theorem` | [sameCycle](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/samecycle--fa3027d4b709ca6359ca0178.md) | 242 | `result-track:fa3027d4b709ca6359ca0178acf2c04eef25c1d044d4aaa98146006103926cd7` |
| 19 | `def` | [ofPermHomFun](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhomfun--b2341761bc2f999618eb8736.md) | 249 | `declaration-track:b2341761bc2f999618eb8736cce16872857e49d2863776c401659e3b93ec91f9` |
| 20 | `theorem` | [mem_fixedPoints_or_exists_zpow_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/mem-fixedpoints-or-exists-zpow-eq--75b81b62fff8e72fe3ce07f4.md) | 256 | `result-track:75b81b62fff8e72fe3ce07f4faa7548bff270d13909a5f4842388663044d115c` |
| 21 | `theorem` | [ofPermHomFun_apply_of_cycleOf_mem](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhomfun-apply-of-cycleof-mem--99c7884041d7fadc2d7b51c2.md) | 267 | `result-track:99c7884041d7fadc2d7b51c246b7f8e4d57921c89fc731690fa9c49f50a84423` |
| 22 | `theorem` | [ofPermHomFun_apply_of_mem_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhomfun-apply-of-mem-fixedpoints--996511914f5f4f750a9a20e1.md) | 289 | `result-track:996511914f5f4f750a9a20e1c1fc61dd80fd06e66f52921c84a287c6ac89e24d` |
| 23 | `theorem` | [ofPermHomFun_apply_mem_support_cycle_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhomfun-apply-mem-support-cycle-iff--f1204c17fa38d9d256749531.md) | 295 | `result-track:f1204c17fa38d9d256749531f8c1a0678533a0a0d86d67a338f9df62627f4872` |
| 24 | `theorem` | [ofPermHomFun_commute_zpow_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhomfun-commute-zpow-apply--a41b422bfa3813b177c00d54.md) | 321 | `result-track:a41b422bfa3813b177c00d54695cf717fa6ecace83f97b5daea26ef3d356329c` |
| 25 | `theorem` | [ofPermHomFun_mul](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhomfun-mul--7244b80c2a6ddd54991b2168.md) | 334 | `result-track:7244b80c2a6ddd54991b2168c4d1e363e0ec0ccbbfba0b70db5cfd0c5e6b486f` |
| 26 | `theorem` | [ofPermHomFun_one](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhomfun-one--afce35844790ec188763b333.md) | 344 | `result-track:afce35844790ec188763b333c3eed36a1d9331b4dec0fb83eb28d35b9fdb3c3f` |
| 27 | `def` | [ofPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhom--51ba738e62905bb65028239a.md) | 352 | `declaration-track:51ba738e62905bb65028239aeba98132da72ca4c4fa82e8de60253021b223537` |
| 28 | `theorem` | [ofPermHom_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhom-apply--5a5a60d2950575dc4fe5ed60.md) | 361 | `result-track:5a5a60d2950575dc4fe5ed6091b28650c5c16936da51b2d15daceff4b89a14bc` |
| 29 | `theorem` | [ofPermHom_support](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhom-support--d5eed677fcb03c2956ce9407.md) | 363 | `result-track:d5eed677fcb03c2956ce940780bb3de239d7c29103ce5e9b84c0c0a0a296d312` |
| 30 | `theorem` | [card_ofPermHom_support](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/card-ofpermhom-support--d33829a555c980a676b3eec1.md) | 387 | `result-track:d33829a555c980a676b3eec12b602ab51953200bcbe88b8ea9af0f50d8e46114` |
| 31 | `theorem` | [ofPermHom_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/ofpermhom-mem-centralizer--e7c03696390e81aa1bdf1c6f.md) | 394 | `result-track:e7c03696390e81aa1bdf1c6f3a11dbe5b5fb1e86ba44c588d61bed061b17ff0a` |
| 32 | `def` | [toCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/tocentralizer--b953ed205a57ffdd8be5d2ec.md) | 404 | `declaration-track:b953ed205a57ffdd8be5d2ec0c795312bbae845b224476ca4994508f6843988d` |
| 33 | `theorem` | [toCentralizer_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/tocentralizer-apply--b71210059f28324db587badd.md) | 410 | `result-track:b71210059f28324db587baddac91a08e86ffb54a91700bb5f2efe523c2b37064` |
| 34 | `theorem` | [toCentralizer_equivariant](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/tocentralizer-equivariant--d7f9c8f062a46d40062fc8ad.md) | 412 | `result-track:d7f9c8f062a46d40062fc8adbf26a21d8b9c1e8cbfbd026ce43597627262c4f1` |
| 35 | `theorem` | [toPermHom_apply_toCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/topermhom-apply-tocentralizer--42ef3f01b568a8d61ef78bd6.md) | 428 | `result-track:42ef3f01b568a8d61ef78bd63f676e04b9fb254a24cc860e5020db7b38833e2d` |
| 36 | `theorem` | [mem_range_toPermHom_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/mem-range-topermhom-iff--69a22a3cc2c6feb13ef7c727.md) | 440 | `result-track:69a22a3cc2c6feb13ef7c7276eb8bc8ced10cf0afa34ff2dca14e944ceaaa5a2` |
| 37 | `theorem` | [mem_range_toPermHom_iff'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/mem-range-topermhom-iff--41d79c540d1b5e0ab47259e7.md) | 450 | `result-track:41d79c540d1b5e0ab47259e707b038c941d23f1e094cb4847dee7048de711ddf` |
| 38 | `theorem` | [range_toPermHom_eq_range_toPermHom'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/range-topermhom-eq-range-topermhom--4d94c404b589d57c56f25f3e.md) | 457 | `result-track:4d94c404b589d57c56f25f3e397141ad2840ebb385e3063b90cd36fd8376e417` |
| 39 | `theorem` | [nat_card_range_toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/nat-card-range-topermhom--59fafdba18a1a51da4549356.md) | 462 | `result-track:59fafdba18a1a51da45493564338ffba933b24222e73db98ab67a67a86c386bf` |
| 40 | `def` | [kerParam](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/kerparam--ea5f7d99a16934c3842f520a.md) | 487 | `declaration-track:ea5f7d99a16934c3842f520ad4556a4c364bcc27c1e9035fea747fc89cf4d2ab` |
| 41 | `theorem` | [kerParam_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/kerparam-apply--79984c6a638471c68562f4c4.md) | 493 | `result-track:79984c6a638471c68562f4c4370114665c0b000c8477eb31c5fcf550373ed189` |
| 42 | `theorem` | [kerParam_injective](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/kerparam-injective--5c3259010916f8d65b52e84e.md) | 522 | `result-track:5c3259010916f8d65b52e84e6b576a16547f763bb4ae726f76170e12807fc8fe` |
| 43 | `theorem` | [kerParam_range_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/kerparam-range-eq--9e438a035e9a9f66ce95b715.md) | 542 | `result-track:9e438a035e9a9f66ce95b71544cc4dd5bcc665929fe92bc91d5959a5b0651cae` |
| 44 | `theorem` | [kerParam_range_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/kerparam-range-le-centralizer--fb6704f74c69ae1fa76f6668.md) | 577 | `result-track:fb6704f74c69ae1fa76f66680d2979b258e3ded0799fb64becf2506d3e374858` |
| 45 | `theorem` | [kerParam_range_card](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/kerparam-range-card--79ee5c0ccf930786ae5c9cfd.md) | 582 | `result-track:79ee5c0ccf930786ae5c9cfdb7784eb9fab42b1d90bfdca073876a0dee7abe45` |
| 46 | `theorem` | [sign_kerParam_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/sign-kerparam-apply-apply--ff62d6b9a82fe1baa73e7ba7.md) | 602 | `result-track:ff62d6b9a82fe1baa73e7ba7cf14c02e4245a715fca293ff92c65f3bca77dfc9` |
| 47 | `theorem` | [cycleType_kerParam_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/cycletype-kerparam-apply-apply--09c969471758747ebc7109ca.md) | 610 | `result-track:09c969471758747ebc7109ca434948675a8f13cf1c184f3b512f64d5fa17ff17` |
| 48 | `theorem` | [nat_card_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/nat-card-centralizer--eb99cb3d3ace5baa8c5b698d.md) | 636 | `result-track:eb99cb3d3ace5baa8c5b698dbb482af79b1aa09e629b502474e2f24bfa044119` |
| 49 | `theorem` | [card_isConj_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/card-isconj-mul-eq--dfccb2e707823c7469f4c727.md) | 643 | `result-track:dfccb2e707823c7469f4c7276f95160992bcd872bfc023f1d8623c5dccacbd17` |
| 50 | `theorem` | [card_isConj_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/card-isconj-eq--b5dc8ba612b7884e8cd435ea.md) | 658 | `result-track:b5dc8ba612b7884e8cd435ea97947c5ec2334cd8f621c6b997b42b27ae9f3482` |
| 51 | `theorem` | [card_of_cycleType_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/card-of-cycletype-eq-zero-iff--fa9445468f9f88549a31750a.md) | 672 | `result-track:fa9445468f9f88549a31750ab94150e1e3fe6a85c1eb702525569a79b9b91003` |
| 52 | `theorem` | [card_of_cycleType_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/card-of-cycletype-mul-eq--0f60c233fa38d6a5651614a0.md) | 679 | `result-track:0f60c233fa38d6a5651614a090c132b75dc5a31157054cea1f8bb83588dfbef8` |
| 53 | `theorem` | [card_of_cycleType](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/card-of-cycletype--049f9ffd720052e1ed81988c.md) | 694 | `result-track:049f9ffd720052e1ed81988cabf7822d4546d1e7a13ad99cb498f6c58d1f2b55` |
| 54 | `lemma` | [card_of_cycleType_singleton](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/declarations/card-of-cycletype-singleton--a3fa56f76bc3c5b9df801fb5.md) | 713 | `result-track:a3fa56f76bc3c5b9df801fb5b49d8f5df555f734d0f8c0a8d0ec05883ed40d8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
