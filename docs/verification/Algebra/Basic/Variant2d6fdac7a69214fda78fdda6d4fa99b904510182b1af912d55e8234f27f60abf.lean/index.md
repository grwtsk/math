# Verification target: GRWTSK.Algebra.Basic.Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c02c7b1b1cec54321d90f3174ba843ff542be3d7",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c02c7b1b1cec54321d90f3174ba843ff542be3d7`.

Source path: `GRWTSK/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean.json)

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
| 1 | `theorem` | [Subalgebra.isIntegral_iff](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/subalgebra-isintegral-iff--1cfc2ced0cc37670a1ccdecb.md) | 35 | `result-track:1cfc2ced0cc37670a1ccdecb958cb0cbb531e92baec1d48a76e2d6ce0d802863` |
| 2 | `theorem` | [Algebra.IsIntegral.of_injective](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/algebra-isintegral-of-injective--2fbb977b47b851aac388bc24.md) | 44 | `result-track:2fbb977b47b851aac388bc2433580e285be11f942f55a9a04d1dcd4fc314ccfc` |
| 3 | `theorem` | [Algebra.IsIntegral.of_surjective](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/algebra-isintegral-of-surjective--cd9e891e1822c0cc6218de3c.md) | 49 | `result-track:cd9e891e1822c0cc6218de3cc1735d2333fe40f5afc708e478af3e803807cf24` |
| 4 | `theorem` | [AlgEquiv.isIntegral_iff](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/algequiv-isintegral-iff--504857eb0fb7cbefde5f0811.md) | 53 | `result-track:504857eb0fb7cbefde5f081159a986e08e6cdd813c2db4baa8346e1364cb2448` |
| 5 | `instance` | [Module.End.isIntegral](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/module-end-isintegral--b4834da11b87a9618f8b0ec5.md) | 58 | `declaration-track:b4834da11b87a9618f8b0ec5261019a9004399e16ec3409838652a7b39af4ed3` |
| 6 | `theorem` | [IsIntegral.of_finite](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-of-finite--71ae2b888a233047aa84f1db.md) | 64 | `result-track:71ae2b888a233047aa84f1dba96eb0bd65a80ecb370215fff64f04b706bff80e` |
| 7 | `theorem` | [isIntegral_of_noetherian](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-of-noetherian--6ff895d6abb718934994e06d.md) | 68 | `result-track:6ff895d6abb718934994e06d914c1a5e0fc6fb977d28c09d51682fa73e243763` |
| 8 | `instance` | [Algebra.IsIntegral.of_finite](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/algebra-isintegral-of-finite--3b0034e183547e0a00847744.md) | 72 | `declaration-track:3b0034e183547e0a00847744fea0b6ee225681e18f090cb7040d840db49796a8` |
| 9 | `lemma` | [Algebra.isIntegral_of_surjective](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/algebra-isintegral-of-surjective--4bd5b13ab0b979ec9ab43052.md) | 75 | `result-track:4bd5b13ab0b979ec9ab43052c909da0481eb8261c0a3b4c32acbdbff5421b9a4` |
| 10 | `theorem` | [IsIntegral.of_mem_of_fg](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-of-mem-of-fg--d0a629915f77c63a69e1c212.md) | 81 | `result-track:d0a629915f77c63a69e1c2127e15125d071b5a671f7e92701af8a494535410e2` |
| 11 | `theorem` | [isIntegral_of_submodule_noetherian](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-of-submodule-noetherian--5a6b81544da223a115b2a3aa.md) | 86 | `result-track:5a6b81544da223a115b2a3aaedaa366ee52259f196cd1070d9d19a0ad1579547` |
| 12 | `theorem` | [isIntegral_of_smul_mem_submodule](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-of-smul-mem-submodule--eaeafee965593a1e4da771c0.md) | 92 | `result-track:eaeafee965593a1e4da771c09954929e73fc97f2cd1b79a903933227de7ce8a4` |
| 13 | `theorem` | [RingHom.Finite.to_isIntegral](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/ringhom-finite-to-isintegral--945f88bb43fccf52c398e1b5.md) | 127 | `result-track:945f88bb43fccf52c398e1b5328222a3bb12087bbb4ca307d790c048219625c1` |
| 14 | `theorem` | [RingHom.IsIntegralElem.of_mem_closure](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/ringhom-isintegralelem-of-mem-closure--9f07a0f41b24f531d234f85c.md) | 135 | `result-track:9f07a0f41b24f531d234f85cb8d9eacf1bed29f1dda5b42adee9e1149f0c40cc` |
| 15 | `theorem` | [IsIntegral.of_mem_closure](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-of-mem-closure--68f937de2cd0425e48eb17f2.md) | 144 | `result-track:68f937de2cd0425e48eb17f24d1e8ce4cd8019850ef89bc65ab9a403eb084a08` |
| 16 | `theorem` | [RingHom.IsIntegralElem.add](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/ringhom-isintegralelem-add--3a75af83427209f303896912.md) | 150 | `result-track:3a75af83427209f303896912954c50b61c57ed833fbeee3569cb23794dbadf41` |
| 17 | `theorem` | [IsIntegral.add](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-add--fc3995caf1be3a41de24e91e.md) | 156 | `result-track:fc3995caf1be3a41de24e91edeb0784bafd44b5e97efef029fbbeae45bfd5315` |
| 18 | `theorem` | [RingHom.IsIntegralElem.neg](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/ringhom-isintegralelem-neg--3a3ed7266834281fb108043c.md) | 163 | `result-track:3a3ed7266834281fb108043c7f686bc031c68552f51e56892e87bdd9fed3f5e6` |
| 19 | `theorem` | [RingHom.IsIntegralElem.of_neg](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/ringhom-isintegralelem-of-neg--1131434b270182c829e323b6.md) | 166 | `result-track:1131434b270182c829e323b603eacce362ec138fe4efa9292a646e2c1ac7c9d9` |
| 20 | `theorem` | [RingHom.IsIntegralElem.neg_iff](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/ringhom-isintegralelem-neg-iff--0921a802b3315d07c95fb4d3.md) | 170 | `result-track:0921a802b3315d07c95fb4d34c124b18ecc43f17cba77291fb42dd957d01aad7` |
| 21 | `theorem` | [IsIntegral.neg](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-neg--bc0d445b81179a65a0db803f.md) | 173 | `result-track:bc0d445b81179a65a0db803f0661cca8718189e31f37671c5e7e8994145f8994` |
| 22 | `theorem` | [IsIntegral.of_neg](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-of-neg--52e3010ee2c4c83900628194.md) | 176 | `result-track:52e3010ee2c4c83900628194f28d3bbba0cfd9fa99973d98f02f7023c3ce4459` |
| 23 | `theorem` | [IsIntegral.neg_iff](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-neg-iff--fc1b0856a3490a001ce92667.md) | 180 | `result-track:fc1b0856a3490a001ce926675340b5faa8c6b5d0496e9f464e408e1c0df144c4` |
| 24 | `theorem` | [RingHom.IsIntegralElem.sub](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/ringhom-isintegralelem-sub--29ff7f499bd2a106e9347c94.md) | 183 | `result-track:29ff7f499bd2a106e9347c94d1553d1dacd0c6c6e5acb7d57956c16f115e40f8` |
| 25 | `theorem` | [IsIntegral.sub](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-sub--bbd3f427fa05915a466b326e.md) | 187 | `result-track:bbd3f427fa05915a466b326e80f9a835d9e1c7b1202c3ed0ff9336d346052cc8` |
| 26 | `theorem` | [RingHom.IsIntegralElem.mul](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/ringhom-isintegralelem-mul--78afa6063e84dcce7e5b53bc.md) | 191 | `result-track:78afa6063e84dcce7e5b53bc4f1c7b8c22ce7bb19a1f877005c50b3cabdc8567` |
| 27 | `theorem` | [IsIntegral.mul](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-mul--22e0bd4967aa00f86583da9d.md) | 196 | `result-track:22e0bd4967aa00f86583da9d08ce68bd3b04ca4c286250d2527a26ccbb785c87` |
| 28 | `theorem` | [IsIntegral.smul](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-smul--bae5dc003b16df3bf6fff7f4.md) | 200 | `result-track:bae5dc003b16df3bf6fff7f483266797e5935900a07c672afcd814a0731efcde` |
| 29 | `theorem` | [isIntegral_intCast](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-intcast--fd307f6be2e4e4d9827cfd93.md) | 205 | `result-track:fd307f6be2e4e4d9827cfd9360f050538cbf4f494ba46dd53cd88a49f194c1e6` |
| 30 | `theorem` | [isIntegral_natCast](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-natcast--0ee0b71f4492538590018549.md) | 209 | `result-track:0ee0b71f449253859001854910c41e0eac05bc8cea7c56f6da9be18b4765c2b3` |
| 31 | `def` | [integralClosure](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/integralclosure--fdecd3162bac65f5935c40ae.md) | 216 | `declaration-track:fdecd3162bac65f5935c40aea168260aead80b4654db625ba313266f044e4c01` |
| 32 | `theorem` | [mem_integralClosure_iff](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/mem-integralclosure-iff--7a544a88a90bec98e2f87a7c.md) | 224 | `result-track:7a544a88a90bec98e2f87a7c3d932fd299e112f81672c4ba75507cc55be32b1b` |
| 33 | `instance` | [Algebra.IsIntegral.prod](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/algebra-isintegral-prod--9e38be5f4645ee9f94d193e1.md) | 230 | `declaration-track:9e38be5f4645ee9f94d193e1766c914cfc2cdadf23a821cbd68e72bed2a3f37e` |
| 34 | `theorem` | [IsIntegral.tmul](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/isintegral-tmul--6315de11f43cb50752ca8aae.md) | 243 | `result-track:6315de11f43cb50752ca8aae4a21fc91d1263089e13d3a8f84e61ded68c2e9aa` |
| 35 | `instance` | [Algebra.IsIntegral.tensorProduct](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/algebra-isintegral-tensorproduct--eceeb7d280542ed22853a2df.md) | 252 | `declaration-track:eceeb7d280542ed22853a2df310ee7e011618d080bd8807bfade47906a4ae499` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/instance--ea1c4c5a0258287e1f86e80a.md) | 264 | `declaration-track:ea1c4c5a0258287e1f86e80aa916be05dc97cc161b1f66d687cf363a4f615608` |
| 37 | `theorem` | [integralClosure.coe_smul](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/integralclosure-coe-smul--6a93b84bd2b75e7c244fed1e.md) | 274 | `result-track:6a93b84bd2b75e7c244fed1eac336e5432f46dc90d0b2800c9cc8e05a1b01338` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/instance--14047a5e8e05f778ed701e1d.md) | 277 | `declaration-track:14047a5e8e05f778ed701e1d75c369e2f83aad8db322c77f9949623f548bbe22` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant2d6fdac7a69214fda78fdda6d4fa99b904510182b1af912d55e8234f27f60abf.lean/declarations/instance--52a874d7ed95cb908ed8805e.md) | 280 | `declaration-track:52a874d7ed95cb908ed8805e4e0b8b6a7d4cc5cfaa899cc4ba2edbc18e9eaa95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
