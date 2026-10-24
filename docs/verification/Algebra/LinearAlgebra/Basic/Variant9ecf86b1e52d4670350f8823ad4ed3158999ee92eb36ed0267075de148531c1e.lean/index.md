# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4866e60c459db675b46fd19206d50c52533a4916",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4866e60c459db675b46fd19206d50c52533a4916`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean.json)

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
| 1 | `structure` | [Relations](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/relations--85f41b974facaedaf429ca2c.md) | 55 | `declaration-track:85f41b974facaedaf429ca2c7dba9d4314ec97eeb01bbbd42ba3a45958ad5465` |
| 2 | `def` | [Quotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/quotient--1099750a707a006b3a118ef1.md) | 70 | `declaration-track:1099750a707a006b3a118ef1d28dcc4cf7f9b1bfbaf5a6e3c0c01550ecfe33c0` |
| 3 | `def` | [toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/toquotient--c642a686d9ea4d4eb186de97.md) | 74 | `declaration-track:c642a686d9ea4d4eb186de9733fc53de5100bca27f1f5f8174a1b24b981c1e9c` |
| 4 | `lemma` | [Quotient.linearMap_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/quotient-linearmap-ext--6d72be4fed2a3dcbe40e5a66.md) | 78 | `result-track:6d72be4fed2a3dcbe40e5a661ad5e311d524e1197b3f677d31dafb5dbd0a92e5` |
| 5 | `lemma` | [surjective_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/surjective-toquotient--54f1fdb6b801dc28f827c8c0.md) | 85 | `result-track:54f1fdb6b801dc28f827c8c01ac72577c1d066f02115461086167c374463a1f4` |
| 6 | `lemma` | [ker_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ker-toquotient--969dd73154a88be81cd1a457.md) | 88 | `result-track:969dd73154a88be81cd1a4570fee41cb177e1efc4f2c70c96f9f9e60c35aee92` |
| 7 | `lemma` | [toQuotient_relation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/toquotient-relation--9d9fc89c5571cd4fc661fd70.md) | 94 | `result-track:9d9fc89c5571cd4fc661fd7046713625aeeac37d2e87f4bacbc0c3bc43b36816` |
| 8 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/map--48f44f813119b1157b5853cc.md) | 102 | `declaration-track:48f44f813119b1157b5853cc40ed6221c26e0f4b54663a29c1191fefb445886d` |
| 9 | `lemma` | [map_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/map-single--b5384a4592835ce2d3e8d1bb.md) | 106 | `result-track:b5384a4592835ce2d3e8d1bb7ef40796270cee0c2e2f8f60d4f7e5a756e9c7ca` |
| 10 | `lemma` | [range_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/range-map--3923f9f75c4e11b99d3c9b76.md) | 111 | `result-track:3923f9f75c4e11b99d3c9b760801191fcf4ce7b8034a6dbf89b40a52e0ea6a2b` |
| 11 | `lemma` | [toQuotient_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/toquotient-map--97a8af68e7b9edea8f3e4c51.md) | 116 | `result-track:97a8af68e7b9edea8f3e4c5130fb1300d777bd308db1e51480e8ad34c47c4443` |
| 12 | `lemma` | [toQuotient_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/toquotient-map-apply--3babae65f5402c00f091b05c.md) | 119 | `result-track:3babae65f5402c00f091b05c5dd205714fd1375b4b33d8c9638ac2c22aa2f0d7` |
| 13 | `structure` | [Solution](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/solution--3734148e546674b879d97a6d.md) | 127 | `declaration-track:3734148e546674b879d97a6da86d038a97d51af00ced047428181f7e8b5fbf93` |
| 14 | `def` | [π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/anonymous--47ef683d095f7a1a4b649d01.md) | 143 | `declaration-track:47ef683d095f7a1a4b649d01801fb4a4903e350e3c2acb7ea5e5820dd532c337` |
| 15 | `lemma` | [π_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/single--92783e35e9750cbcdac08d90.md) | 146 | `result-track:92783e35e9750cbcdac08d90873c7f2c035e4567bc5cf2958203e5fbd6bb3e3a` |
| 16 | `lemma` | [π_relation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/relation--c72e18179be740cfdd01125e.md) | 150 | `result-track:c72e18179be740cfdd01125e410b8260a6408a89591b17f9d38c0e13af4757e7` |
| 17 | `lemma` | [π_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/comp-map--9759ddb457b6c39f08714aff.md) | 154 | `result-track:9759ddb457b6c39f08714aff0ce75ebaf886ee355afae991b4041616f8ccee08` |
| 18 | `lemma` | [π_comp_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/comp-map-apply--9014f0e066a98efd9625d388.md) | 157 | `result-track:9014f0e066a98efd9625d38822b666a9fd0a2b3565be5f2aef6a842be94538bd` |
| 19 | `lemma` | [range_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/range--27952208f0724edd57ab030e.md) | 161 | `result-track:27952208f0724edd57ab030ec38a080b0ebc67d0f15117223df3f309d0b18194` |
| 20 | `lemma` | [span_relation_le_ker_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/span-relation-le-ker--f14a4f6024d7d6faac100832.md) | 164 | `result-track:f14a4f6024d7d6faac1008324ae7e34d1a2cf908549afc879afd78a92663cd5b` |
| 21 | `def` | [fromQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/fromquotient--a1c7250c03967ae153f3f40a.md) | 172 | `declaration-track:a1c7250c03967ae153f3f40adb63aa5c13687b28152f4332d87c0736b62a7ce5` |
| 22 | `lemma` | [fromQuotient_comp_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/fromquotient-comp-toquotient--152817dfec6768c65a95c213.md) | 176 | `result-track:152817dfec6768c65a95c213e467f33ecbcc2e95345c0276acf39f8129e1ac54` |
| 23 | `lemma` | [fromQuotient_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/fromquotient-toquotient--f51f69e6d44ec954630bd7df.md) | 180 | `result-track:f51f69e6d44ec954630bd7dfe8558db16af7161fa5a7a22e0752eabf37eabe6f` |
| 24 | `def` | [postcomp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/postcomp--f4745576e22b8ef4d4ce54cf.md) | 187 | `declaration-track:f4745576e22b8ef4d4ce54cff1b5ce243663ff27824df5ae3c6ec99999fc4c12` |
| 25 | `lemma` | [postcomp_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/postcomp-comp--89b2496a934dd9d8d06fffc5.md) | 194 | `result-track:89b2496a934dd9d8d06fffc55008f281489deb4b873a8947d6c1ac0f7d63ec9c` |
| 26 | `lemma` | [postcomp_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/postcomp-id--1e7821cc3386d2201f3e8da3.md) | 198 | `result-track:1e7821cc3386d2201f3e8da3f862e2e07bc0c69a77f9c7a0aa93426288147695` |
| 27 | `lemma` | [congr_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/congr-var--82d06fc37f31be104c88b6f5.md) | 202 | `result-track:82d06fc37f31be104c88b6f582aa967e1c5c5c13b5956506c2e66664afd4a215` |
| 28 | `lemma` | [congr_postcomp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/congr-postcomp--cb7b86ad7805df3219be7f07.md) | 205 | `result-track:cb7b86ad7805df3219be7f0793c33d5539e1a576e7df46ebe07edbe733d835cc` |
| 29 | `def` | [ofπ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/of--a999dec0b19d6e453067f5bf.md) | 219 | `declaration-track:a999dec0b19d6e453067f5bf5103e8317cc93801fac480b682c290ed7390bb49` |
| 30 | `lemma` | [ofπ_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/of--b552409cbfa150fcaceb8412.md) | 227 | `result-track:b552409cbfa150fcaceb841223f11e04be6a4c9a10d30a1a2e3e4160e4cc1633` |
| 31 | `def` | [ofπ'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/of--a7ba6249c17c42f52cbbee1d.md) | 238 | `declaration-track:a7ba6249c17c42f52cbbee1dc0ecce2609c4eda22f465412a7fd5b1b203bf3dd` |
| 32 | `lemma` | [ofπ'_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/of--c332d620e8b0f7dddfdf57ba.md) | 243 | `result-track:c332d620e8b0f7dddfdf57ba9bf98f407a4132fa16c03626e1bf0ab3e7d4953f` |
| 33 | `lemma` | [injective_fromQuotient_iff_ker_π_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/injective-fromquotient-iff-ker-eq-span--5c4064f746d97e33d5a6d7dc.md) | 251 | `result-track:5c4064f746d97e33d5a6d7dc2ef0cd196e4a95fa9cbf81afcedb5b523ff31f78` |
| 34 | `lemma` | [surjective_fromQuotient_iff_surjective_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/surjective-fromquotient-iff-surjective--39649138bf5fa42eb7fa9028.md) | 268 | `result-track:39649138bf5fa42eb7fa9028a3c5148192bc06c20d1979f91e67c9b53d4b064a` |
| 35 | `lemma` | [surjective_π_iff_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/surjective-iff-span-eq-top--37b1fb359433acd12b7b3bf1.md) | 274 | `result-track:37b1fb359433acd12b7b3bf10ea63c2603e896e5fc2a0622b9f1aa220ad5c84c` |
| 36 | `structure` | [IsPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ispresentation--f6093dd3bab458c6ce6128b5.md) | 283 | `declaration-track:f6093dd3bab458c6ce6128b53d2334cbb19c78bba7949f19e601d618c03ede48` |
| 37 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/linearequiv--f796090427b6840dd0a12ebb.md) | 295 | `declaration-track:f796090427b6840dd0a12ebbebf4cc826c52064244cc25d75bce292a0136356b` |
| 38 | `lemma` | [linearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/linearequiv-apply--a1f56fbf0eb7cfdb25f590fd.md) | 298 | `result-track:a1f56fbf0eb7cfdb25f590fd796bb42ccbafafbfd5b8b2dd14e95f263a673c52` |
| 39 | `lemma` | [linearEquiv_symm_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/linearequiv-symm-var--feebcae51a0256f50d0823c5.md) | 302 | `result-track:feebcae51a0256f50d0823c56b4f132f21e0b6acaca25168b732ca59dc01e828` |
| 40 | `lemma` | [surjective_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/surjective--28cde0db96c047649a1199e6.md) | 306 | `result-track:28cde0db96c047649a1199e61201e3adf601d707859c3559e008edbfa67e1d91` |
| 41 | `lemma` | [ker_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ker--ac685f0f2ae960b44a94df46.md) | 309 | `result-track:ac685f0f2ae960b44a94df46e66ed532bf9553f2a41a211bc131f44eda15e875` |
| 42 | `lemma` | [exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/exact--9a44207f6f52794047ec317f.md) | 313 | `result-track:9a44207f6f52794047ec317f62989582ce1cc2d363ccbfb164a10029cbc38ebb` |
| 43 | `def` | [desc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/desc--f21fc3451714349178f76097.md) | 321 | `declaration-track:f21fc3451714349178f7609757e802b7024687ca059aa06072dc627b2358f61c` |
| 44 | `lemma` | [desc_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/desc-var--1ea0cfb39a2434ec8243da8d.md) | 325 | `result-track:1ea0cfb39a2434ec8243da8d253dc76fad0ed19822ccad743e7ed452e9610ec4` |
| 45 | `lemma` | [desc_comp_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/desc-comp--ea50613290bc66ed2b1b581e.md) | 331 | `result-track:ea50613290bc66ed2b1b581e4f9fb3201e001b912bb6e878aae21a96cb9ae826` |
| 46 | `lemma` | [π_desc_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/desc-apply--777e25dc272784dd3eea8be7.md) | 334 | `result-track:777e25dc272784dd3eea8be792fac9f35cb4b3a342beb6fc8ef82a107e456ffc` |
| 47 | `lemma` | [postcomp_desc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/postcomp-desc--28c3737c9aeebaedfa090462.md) | 339 | `result-track:28c3737c9aeebaedfa09046206d4a6f0c167792884eb3a575c07826facc640fb` |
| 48 | `lemma` | [postcomp_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/postcomp-injective--23465ed6d94f291dce1fa430.md) | 342 | `result-track:23465ed6d94f291dce1fa430452a07c56fcedee9ca4ddada28beb6fa3d6bfc1f` |
| 49 | `def` | [linearMapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/linearmapequiv--74e9585bfa8a1b1e62fc796d.md) | 355 | `declaration-track:74e9585bfa8a1b1e62fc796de878daff0113723741bd58daead2d34b40b3ec60` |
| 50 | `def` | [uniq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/uniq--35175273af0dd63ac94b4c23.md) | 367 | `declaration-track:35175273af0dd63ac94b4c23939b6c3053c9bd9996e1c20f57d29a4a43a9d07c` |
| 51 | `lemma` | [postcomp_uniq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/postcomp-uniq--17bf572454ce6f0186f05644.md) | 373 | `result-track:17bf572454ce6f0186f05644d00f57428bfa560549d05fe13e35beae1a36e35b` |
| 52 | `lemma` | [postcomp_uniq_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/postcomp-uniq-symm--ebc05ca45acb8fe3821ee25c.md) | 377 | `result-track:ebc05ca45acb8fe3821ee25c5813282da69956ca032af3696a9905dce05d5cf9` |
| 53 | `lemma` | [uniq_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/uniq-var--d6480f3497edf9e25dca9ad8.md) | 381 | `result-track:d6480f3497edf9e25dca9ad865b6711c140657b2665125463a88f4aa6332be29` |
| 54 | `lemma` | [uniq_symm_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/uniq-symm-var--056bb3da0dfd1158ea3301bb.md) | 385 | `result-track:056bb3da0dfd1158ea3301bbbe599b6f8f5dfad78150c803d2cbb631fbd836e5` |
| 55 | `lemma` | [of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/of-linearequiv--1dc97e7320814c3144554881.md) | 390 | `result-track:1dc97e7320814c3144554881549f29f41ab2bf6be66217377cf55d8d32b59a2c` |
| 56 | `def` | [ofQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ofquotient--853930604a4fc0dfb228cb94.md) | 404 | `declaration-track:853930604a4fc0dfb228cb941c9ef91b76de346b53cf5530de2903fac159e3a0` |
| 57 | `lemma` | [ofQuotient_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ofquotient--14375b9a5cb4a77cc93831aa.md) | 408 | `result-track:14375b9a5cb4a77cc93831aa32d1e40592c82a5a840d72c925b219666b92ca41` |
| 58 | `lemma` | [ofQuotient_fromQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ofquotient-fromquotient--bf25cee7881fb461ab7c157f.md) | 411 | `result-track:bf25cee7881fb461ab7c157fe7087661140d2ca46592d0676f19f2e50c063cb3` |
| 59 | `lemma` | [ofQuotient_isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ofquotient-ispresentation--e30f8f2a1111be4673ea5459.md) | 413 | `result-track:e30f8f2a1111be4673ea54594ebf08993834e3d0ca6188c1a5a0e38fd049b1e4` |
| 60 | `structure` | [IsPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ispresentationcore--d8e552392dde6d4beb98bddd.md) | 423 | `declaration-track:d8e552392dde6d4beb98bddd996023762f3913615421fafb1c191e16d4b1bbf3` |
| 61 | `lemma` | [desc_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/desc-var--ee129f51f1c25acf37a72513.md) | 437 | `result-track:ee129f51f1c25acf37a725133f7fb147fd708d28b1948455b7a6cf0c444e9674` |
| 62 | `def` | [down](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/down--a0dab98f4a705b750a988e25.md) | 443 | `declaration-track:a0dab98f4a705b750a988e25e1ab432d1bb32ee9ba336b1951db4840d0df774b` |
| 63 | `lemma` | [isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ispresentation--75633f69c1ddd017675d79e2.md) | 457 | `result-track:75633f69c1ddd017675d79e24a61ca992a4fd54d70be0be0b520d7b3fbcc0915` |
| 64 | `lemma` | [isPresentation_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ispresentation-iff--960aa355adc28a5203c47c65.md) | 471 | `result-track:960aa355adc28a5203c47c650a899eec5f72a3f12f1a5647b7de5f207d0f7cbf` |
| 65 | `lemma` | [isPresentation_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/ispresentation-mk--1196367cc672ad834c808dd5.md) | 479 | `result-track:1196367cc672ad834c808dd53893ae79854ed7ceab36819e2597c75bf1611a27` |
| 66 | `structure` | [Presentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/presentation--7dae94503413f0f0697ce6d3.md) | 494 | `declaration-track:7dae94503413f0f0697ce6d30330c5b4186585fca8f070996bc2614b68c47485` |
| 67 | `def` | [Presentation.ofIsPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/presentation-ofispresentation--1216172c38989e1fbcbde613.md) | 501 | `declaration-track:1216172c38989e1fbcbde6131786ddc5740ab7b7f53bd073db7e5764fb56d16c` |
| 68 | `def` | [Presentation.ofLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/declarations/presentation-oflinearequiv--ae78960df072673138f3b050.md) | 511 | `declaration-track:ae78960df072673138f3b05078847fab744d08bec24e45be525f6c1c2f0ae361` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
