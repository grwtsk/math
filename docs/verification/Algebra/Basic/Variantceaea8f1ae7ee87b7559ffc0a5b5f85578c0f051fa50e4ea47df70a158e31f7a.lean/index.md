# Verification target: GRWTSK.Algebra.Basic.Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d05c2dddcddcc926e98a56952b70c6dbbde87a61",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d05c2dddcddcc926e98a56952b70c6dbbde87a61`.

Source path: `GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAlgClosed](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/isalgclosed--51f6b4a9e74162f1f55cca4c.md) | 61 | `declaration-track:51f6b4a9e74162f1f55cca4c285db2575e1e2217a2a44bf4b20bc59e6452d99c` |
| 2 | `theorem` | [IsAlgClosed.splits_codomain](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/isalgclosed-splits-codomain--787372b5ca0305dc62218752.md) | 69 | `result-track:787372b5ca0305dc622187524f8ed3ef4a35d67e9e9cbb19f6f3b91ba481e95e` |
| 3 | `theorem` | [IsAlgClosed.splits_domain](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/isalgclosed-splits-domain--fe0c93b14d9d0d3404f630d6.md) | 77 | `result-track:fe0c93b14d9d0d3404f630d68857c264c78567268ba77b6a59c6d1e75c4c714c` |
| 4 | `theorem` | [exists_root](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/exists-root--ab76b3802c5b1469e01e37df.md) | 86 | `result-track:ab76b3802c5b1469e01e37df21424bef4aea4f929070da33c4b7773204997b20` |
| 5 | `theorem` | [exists_pow_nat_eq](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/exists-pow-nat-eq--2781e862f92cc9f5c2d13a09.md) | 90 | `result-track:2781e862f92cc9f5c2d13a09f3e76914429e0b358d251ffac606e54a97411690` |
| 6 | `theorem` | [exists_eq_mul_self](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/exists-eq-mul-self--c866fe2b74ab2470b04c56ac.md) | 100 | `result-track:c866fe2b74ab2470b04c56ac85a067760b33debeb7be96309b83fd40e60df3e7` |
| 7 | `theorem` | [roots_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/roots-eq-zero-iff--5f6a01340c68add5c89cda1d.md) | 105 | `result-track:5f6a01340c68add5c89cda1d4c090e8353c6c3b9b0b4eebb85b76fba0cf4322f` |
| 8 | `theorem` | [exists_eval₂_eq_zero_of_injective](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/exists-eval-eq-zero-of-injective--b61c59a1722255f57c693ae2.md) | 115 | `result-track:b61c59a1722255f57c693ae2579db27dac54102a66bb122d8b938b54d76b01c2` |
| 9 | `theorem` | [exists_eval₂_eq_zero](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/exists-eval-eq-zero--c77d54b8b7ebc93f6898baa2.md) | 121 | `result-track:c77d54b8b7ebc93f6898baa25393094f260734429689711883e9b98fce51c3b2` |
| 10 | `theorem` | [exists_aeval_eq_zero_of_injective](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/exists-aeval-eq-zero-of-injective--90d5466e8f4275f9a39db6bd.md) | 128 | `result-track:90d5466e8f4275f9a39db6bd0bc9fece8377b52923deb7b6f890134266b68746` |
| 11 | `theorem` | [exists_aeval_eq_zero](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/exists-aeval-eq-zero--1c39f6ded71656cac56901a3.md) | 134 | `result-track:1c39f6ded71656cac56901a3f4dad2f66461314f233d0f138495755917e4e1cd` |
| 12 | `theorem` | [of_exists_root](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/of-exists-root--a9b741340b51e2fb92c22b5e.md) | 139 | `result-track:a9b741340b51e2fb92c22b5e037c88aa90ebff301ece5538033cb97f054b3fcf` |
| 13 | `theorem` | [degree_eq_one_of_irreducible](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/degree-eq-one-of-irreducible--d4e901dc5891af387d20a86a.md) | 150 | `result-track:d4e901dc5891af387d20a86ac3662110e966a666c8368daa403f450c3fe85c13` |
| 14 | `theorem` | [algebraMap_surjective_of_isIntegral](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/algebramap-surjective-of-isintegral--55dc4069801ba6aa4dd1053d.md) | 155 | `result-track:55dc4069801ba6aa4dd1053dcce3b6f83ead629a79e12e137cfc11c8ed91a42f` |
| 15 | `theorem` | [algebraMap_surjective_of_isIntegral'](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/algebramap-surjective-of-isintegral--a6f45d803329fdda30ffaf4c.md) | 167 | `result-track:a6f45d803329fdda30ffaf4c56cb7708b624c443c529027a33e32a923591c8b8` |
| 16 | `theorem` | [algebraMap_surjective_of_isAlgebraic](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/algebramap-surjective-of-isalgebraic--c0b8e95a95b7eff6f043c2d1.md) | 172 | `result-track:c0b8e95a95b7eff6f043c2d1027f821096197166db282400156771e12f2a40c6` |
| 17 | `class` | [IsAlgClosure](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/isalgclosure--f271c921ac19c92f6dab8107.md) | 181 | `declaration-track:f271c921ac19c92f6dab8107e64b73de86c9733e971d49ccb120da1b61f55767` |
| 18 | `theorem` | [isAlgClosure_iff](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/isalgclosure-iff--133f4ae6bd9a5d5b29124269.md) | 187 | `result-track:133f4ae6bd9a5d5b29124269ec02be19ce809006b2cc80c237e8f47244f84401` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/instance--631b891c5f973432d56ec439.md) | 192 | `declaration-track:631b891c5f973432d56ec4390dafa4f713b24c1f20985a7252ff2d923c822ab8` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/instance--23940e69f51e350140cbad98.md) | 198 | `declaration-track:23940e69f51e350140cbad98bb990fe3dbf79dca1f7733d3074d6609d44090f5` |
| 21 | `structure` | [SubfieldWithHom](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/subfieldwithhom--8fe098c8e14b79dfcdcb14c7.md) | 220 | `declaration-track:8fe098c8e14b79dfcdcb14c71ae59d9692013b65f5b97cd22797c6d692c998d3` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/instance--f1284965f86d3387a1b1a739.md) | 233 | `declaration-track:f1284965f86d3387a1b1a739ac8506f68f9029fb3d9de6b601c781ba93e36186` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/instance--de72f8de1a9e964d938ce177.md) | 236 | `declaration-track:de72f8de1a9e964d938ce17737b6b27f55761c34c0f065ee32dcf1785e480df8` |
| 24 | `theorem` | [le_def](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/le-def--b7a3774964a4baf092fa14e3.md) | 240 | `result-track:b7a3774964a4baf092fa14e3c0649e160bc68a74c604b0d559c6270759113996` |
| 25 | `theorem` | [compat](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/compat--7b14d91b90fa5164e768aaec.md) | 244 | `result-track:7b14d91b90fa5164e768aaec9313067aba243b96815170cf25203d0b4f5c2db1` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/instance--40e03aac9e538e0911a4eb7e.md) | 248 | `declaration-track:40e03aac9e538e0911a4eb7e5314eb6cbcf0ef29061de0c9dabe3831226643d7` |
| 27 | `theorem` | [maximal_subfieldWithHom_chain_bounded](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/maximal-subfieldwithhom-chain-bounded--81449336ffe71828d119cf03.md) | 257 | `result-track:81449336ffe71828d119cf03d7e96be62085d4aa995119f17259765b607e07ad` |
| 28 | `theorem` | [exists_maximal_subfieldWithHom](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/exists-maximal-subfieldwithhom--036a7d3fcfc6db5bf724764c.md) | 287 | `result-track:036a7d3fcfc6db5bf724764c58512b16bf14ba9f28d0fc784762757b315c1433` |
| 29 | `def` | [maximalSubfieldWithHom](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/maximalsubfieldwithhom--e43f909f8d7f5ce423b74d03.md) | 292 | `declaration-track:e43f909f8d7f5ce423b74d03a64ec052900d15cd667d4d7586d0037dfe0c23b2` |
| 30 | `theorem` | [maximalSubfieldWithHom_is_maximal](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/maximalsubfieldwithhom-is-maximal--0ec9d558807c5fb45771c738.md) | 296 | `result-track:0ec9d558807c5fb45771c7381c3537c7f9caaea264806cdc72ae1abc4bf2d802` |
| 31 | `def` | [_root_.GRWTSK.Algebra.IsAlgClosed.Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.Algebra.adjoin.liftSingleton](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/root-grwtsk-algebra-isalgclosed-varianta256c73672c2971b2faebaf57d2302aef--78f8dc16a86fbd4124210525.md) | 305 | `declaration-track:78f8dc16a86fbd41242105250fbce9b3e63c05ce10e8edaee5f40d696677602b` |
| 32 | `theorem` | [maximalSubfieldWithHom_eq_top](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/maximalsubfieldwithhom-eq-top--8f4069ba75d09c9dee510595.md) | 316 | `result-track:8f4069ba75d09c9dee510595cb79ab5bbfb1b0951d234653a3ade73fdce94423` |
| 33 | `theorem` | [FractionRing.isAlgebraic](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/fractionring-isalgebraic--d8a661b5ac6cd8542f03e59d.md) | 371 | `result-track:d8a661b5ac6cd8542f03e59d79db7b93ad0be12ea7845f8a38bdc7ccb0be37b0` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/instance--f0ade59f1efb28ecf466238b.md) | 390 | `declaration-track:f0ade59f1efb28ecf466238b22642faceda6ba5160afea78e44842486a7fc938` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/instance--c0f0b61dc3b1f4acc19eb241.md) | 396 | `declaration-track:c0f0b61dc3b1f4acc19eb241821712ab88c01fff6cbe9296671683c589b01c00` |
| 36 | `def` | [equiv](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/equiv--496dcd1b3b01427f5a2ed1cb.md) | 424 | `declaration-track:496dcd1b3b01427f5a2ed1cbc925593060eef6f27bd029b777b3c0a6737982fc` |
| 37 | `theorem` | [ofAlgebraic](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/ofalgebraic--8520e67ee054d76a9f556160.md) | 455 | `result-track:8520e67ee054d76a9f5561603e0bb97c5500e6baadf4fa1d6abf6d8d57365409` |
| 38 | `def` | [equivOfAlgebraic'](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/equivofalgebraic--fa0271516e79ce0b858e2e6c.md) | 461 | `declaration-track:fa0271516e79ce0b858e2e6c976ca9f63ca354d8a66ebe2c27e15a1cbd36b8c8` |
| 39 | `def` | [equivOfAlgebraic](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/equivofalgebraic--a1a4e57f97fda41c1db7e3b3.md) | 475 | `declaration-track:a1a4e57f97fda41c1db7e3b3fbe8ac10017e0f2c64572cfa9b4fc363947fa38a` |
| 40 | `def` | [equivOfEquivAux](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/equivofequivaux--09449e7c716a6d6b583735d6.md) | 486 | `declaration-track:09449e7c716a6d6b583735d6b135b9ee362027cc3f99fe3a79160d1de2f193fd` |
| 41 | `def` | [equivOfEquiv](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/equivofequiv--a770c7f5182290fd7f869019.md) | 511 | `declaration-track:a770c7f5182290fd7f86901976f7f4446affdf59f3a5101e307551187cd1baa4` |
| 42 | `theorem` | [equivOfEquiv_comp_algebraMap](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/equivofequiv-comp-algebramap--b6cf3c142723f06c7731d6d5.md) | 516 | `result-track:b6cf3c142723f06c7731d6d5eaeee5f4e593dbf1b76d8799646d7266f8ec0895` |
| 43 | `theorem` | [equivOfEquiv_algebraMap](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/equivofequiv-algebramap--859067b2e2c6729a361509b8.md) | 522 | `result-track:859067b2e2c6729a361509b8627848c6b9e56e08d2a26e27b4077febef7658b6` |
| 44 | `theorem` | [equivOfEquiv_symm_algebraMap](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/equivofequiv-symm-algebramap--f84e4aed8975e82d36748134.md) | 528 | `result-track:f84e4aed8975e82d36748134168beb5239065e4947257c7a31784f90714e7f44` |
| 45 | `theorem` | [equivOfEquiv_symm_comp_algebraMap](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/equivofequiv-symm-comp-algebramap--74c7c190f8b8601905805074.md) | 534 | `result-track:74c7c190f8b860190580507433fc6635be210bc39576ccf29e76f1deda2b5a2c` |
| 46 | `theorem` | [Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly](../../../../mathematics/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/declarations/algebra-isalgebraic-range-eval-eq-rootset-minpoly--c23e062f2b5f2412a7fef83a.md) | 547 | `result-track:c23e062f2b5f2412a7fef83af0212d15f4d1f3fc805ced931001381fabf48288` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
