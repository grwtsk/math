# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrdConnectedComponent.Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dff782732e42b6cded9142969f3ab7fd8a7ff1d0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dff782732e42b6cded9142969f3ab7fd8a7ff1d0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean.json)

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
| 1 | `def` | [ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedcomponent--72124acf66d7e8b4f05d8e73.md) | 42 | `declaration-track:72124acf66d7e8b4f05d8e73d349ea7593f73738b0decb5ced54ec3a4587c8ee` |
| 2 | `theorem` | [mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/mem-ordconnectedcomponent--c950d4a3c09c4594149268e9.md) | 45 | `result-track:c950d4a3c09c4594149268e995fb935927b552a7624016cb18f9c40faabb412f` |
| 3 | `theorem` | [dual_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/dual-ordconnectedcomponent--2611d43933d257a31a8a42e7.md) | 48 | `result-track:2611d43933d257a31a8a42e74a31ab25d2f271c3ae5ce31c5a2faa2b9fa662ec` |
| 4 | `theorem` | [ordConnectedComponent_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedcomponent-subset--9f8bcf2ca5c276d728b7090a.md) | 52 | `result-track:9f8bcf2ca5c276d728b7090a3a2a3bfa7943cfd354e5478a3ccb1f5d7167f3ff` |
| 5 | `theorem` | [subset_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/subset-ordconnectedcomponent--8af296f82ebc04a3b587b3e4.md) | 55 | `result-track:8af296f82ebc04a3b587b3e4b3a7c427d017270efa31a254e9cf090d081e32a8` |
| 6 | `theorem` | [self_mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/self-mem-ordconnectedcomponent--b338eee5287b343d28930fc6.md) | 59 | `result-track:b338eee5287b343d28930fc61ab60c67171d1d68fbc95d31204feca75d621503` |
| 7 | `theorem` | [nonempty_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/nonempty-ordconnectedcomponent--5e8e7c9718c29ab8f28817ad.md) | 63 | `result-track:5e8e7c9718c29ab8f28817ad619ace135887d0d42c782153b0ba2f673c1df729` |
| 8 | `theorem` | [ordConnectedComponent_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedcomponent-eq-empty--89827fafee3c3b70d2fc664b.md) | 67 | `result-track:89827fafee3c3b70d2fc664b0f6088e9b9cad65e0d51d2fb0523d2f61ef50d99` |
| 9 | `theorem` | [ordConnectedComponent_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedcomponent-empty--aeccf41dba766c3d3989bc8a.md) | 71 | `result-track:aeccf41dba766c3d3989bc8a57c72b38607bce4c281eb2528384223325f6a3f8` |
| 10 | `theorem` | [ordConnectedComponent_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedcomponent-univ--0bc0e35703f961412cdfa42c.md) | 75 | `result-track:0bc0e35703f961412cdfa42c9fe6fd687abbc9fd36309cc7c484c06f268144cd` |
| 11 | `theorem` | [ordConnectedComponent_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedcomponent-inter--f53a9388dc20a62458757263.md) | 78 | `result-track:f53a9388dc20a62458757263e7c947226a5e3def6127cf6d2195f7754c9f104c` |
| 12 | `theorem` | [mem_ordConnectedComponent_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/mem-ordconnectedcomponent-comm--e40ad174f1c58318cbe0aab8.md) | 82 | `result-track:e40ad174f1c58318cbe0aab8f069667edd7d51c544fcb0e24f9c1892f692fbe3` |
| 13 | `theorem` | [mem_ordConnectedComponent_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/mem-ordconnectedcomponent-trans--3b7a23bfcaad6b52add8cdf8.md) | 86 | `result-track:3b7a23bfcaad6b52add8cdf8b526c9836dc8b5f737be440dc661f30e5d83e4ef` |
| 14 | `theorem` | [ordConnectedComponent_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedcomponent-eq--85c7a648815704356b402414.md) | 92 | `result-track:85c7a648815704356b4024143f0b41cc956294a98eb17166c919c9482765890a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/instance--140277cd21f3b444d1a6c9d3.md) | 98 | `declaration-track:140277cd21f3b444d1a6c9d3eac153bc44e19f87d219acbcbfa49b2319f61da3` |
| 16 | `def` | [ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedproj--2df38ca73fe04ebdb52c97cc.md) | 103 | `declaration-track:2df38ca73fe04ebdb52c97cc452360a0ebd28705dea94227966be1097d43c1c3` |
| 17 | `theorem` | [ordConnectedProj_mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedproj-mem-ordconnectedcomponent--22cd3c18063aa12d87613676.md) | 106 | `result-track:22cd3c18063aa12d87613676f4eec3e13c29ad9c19ed14130d67200a7993eff9` |
| 18 | `theorem` | [mem_ordConnectedComponent_ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/mem-ordconnectedcomponent-ordconnectedproj--8f993577c53edf30217795fb.md) | 110 | `result-track:8f993577c53edf30217795fb78efa1971f76f3a986fb668d70d5ddac8ff23132` |
| 19 | `theorem` | [ordConnectedComponent_ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedcomponent-ordconnectedproj--fd2aee9f1928556e40f59911.md) | 115 | `result-track:fd2aee9f1928556e40f599110b2f1bf669792be2bdebfba9a74eb455e2a59444` |
| 20 | `theorem` | [ordConnectedProj_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedproj-eq--6b3aa7882c51aaba27f9052e.md) | 120 | `result-track:6b3aa7882c51aaba27f9052e7646c8f166bbcaac119ce7a6d985483080aa13d1` |
| 21 | `def` | [ordConnectedSection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedsection--5a84c7002e5c4c80d75dca34.md) | 132 | `declaration-track:5a84c7002e5c4c80d75dca347ad3883eed5b7d6c98f67d4396f55386726579d0` |
| 22 | `theorem` | [dual_ordConnectedSection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/dual-ordconnectedsection--2cd2486309bfaf25a13403f0.md) | 135 | `result-track:2cd2486309bfaf25a13403f0866e9cfdd92996cadcd70e2aafab1b1852e08f11` |
| 23 | `theorem` | [ordConnectedSection_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordconnectedsection-subset--813249da537455679e624a1b.md) | 144 | `result-track:813249da537455679e624a1bc6cb3787fb506eb9869d535ee859d364ea9be57c` |
| 24 | `theorem` | [eq_of_mem_ordConnectedSection_of_uIcc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/eq-of-mem-ordconnectedsection-of-uicc-subset--e81473a2f4c0c5ddddff9f23.md) | 147 | `result-track:e81473a2f4c0c5ddddff9f23057c9aa970d03c3dc21bdc2ef7aa016852916df7` |
| 25 | `def` | [ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordseparatingset--34f9a48545f47d3bc8dfa141.md) | 160 | `declaration-track:34f9a48545f47d3bc8dfa141ef9980fc6566cb4ee903857d7e3763f2476d6396` |
| 26 | `theorem` | [ordSeparatingSet_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordseparatingset-comm--5d0247bb8b332f8f393296db.md) | 163 | `result-track:5d0247bb8b332f8f393296dbe92afeff650ab6fc74563214b1436cd90c749229` |
| 27 | `theorem` | [disjoint_left_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/disjoint-left-ordseparatingset--6e9050414feb98f7b3ae6054.md) | 166 | `result-track:6e9050414feb98f7b3ae60544ca86987075c3a07303eec8467465c3cce8c1b84` |
| 28 | `theorem` | [disjoint_right_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/disjoint-right-ordseparatingset--dac1782a6e3798e513c3d62f.md) | 171 | `result-track:dac1782a6e3798e513c3d62f6759330629ce2301bf2f5c308720d80121e78153` |
| 29 | `theorem` | [dual_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/dual-ordseparatingset--c44400f1942647b2b9ff5528.md) | 174 | `result-track:c44400f1942647b2b9ff5528111a46bfb7f7458f365a4488fe96363d5efcd1dc` |
| 30 | `def` | [ordT5Nhd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/ordt5nhd--5a4199b75a7560a92c142c05.md) | 183 | `declaration-track:5a4199b75a7560a92c142c05c9fb1b45ad2381c91469352f86fa7e60b7c4784d` |
| 31 | `theorem` | [disjoint_ordT5Nhd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant6e505382bfa321e824e2d415e1c95553add88cd61c6956f68897585eba3aa108.lean/declarations/disjoint-ordt5nhd--145e0964b8eecc12a0d79368.md) | 186 | `result-track:145e0964b8eecc12a0d79368f186969d3358cad6f43751a5ae492b1f032ad092` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
