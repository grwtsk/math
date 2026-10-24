# Verification target: GRWTSK.Algebra.GroupTheory.DivInvMonoid.Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c8a5b12e862be9c462ca3d6dfc5eb6657523c59",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c8a5b12e862be9c462ca3d6dfc5eb6657523c59`.

Source path: `GRWTSK/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean.json)

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
| 1 | `def` | [zpowRec](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpowrec--4bbaeebb74fa92536f472beb.md) | 39 | `declaration-track:4bbaeebb74fa92536f472beba97ab377778090f28b4c9af677f5272f6691f2df` |
| 2 | `def` | [zsmulRec](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zsmulrec--56362e5185edddb6cce0d2cc.md) | 45 | `declaration-track:56362e5185edddb6cce0d2cc3247f2859c7c9c49145f139885808b1eb11002fd` |
| 3 | `class` | [InvolutiveNeg](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/involutiveneg--3aa848576f75dcb099787604.md) | 54 | `declaration-track:3aa848576f75dcb099787604ee9da06a0926f4140130c5784a15eaa4260cc97c` |
| 4 | `class` | [InvolutiveInv](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/involutiveinv--3738835102f5c542f44a3af7.md) | 59 | `declaration-track:3738835102f5c542f44a3af70cdc6f438ae6533bd5a9cf90ecb801d56a5215df` |
| 5 | `theorem` | [inv_inv](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/inv-inv--c48b7a6029392462cfed8057.md) | 65 | `result-track:c48b7a6029392462cfed8057c75053508877ffbe48652de04d58f01561689dd3` |
| 6 | `def` | [DivInvMonoid.div'](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/divinvmonoid-div--ea9eb10bfc98d43ab434474d.md) | 109 | `declaration-track:ea9eb10bfc98d43ab434474d68f9825d209bff9e35849729c3f578a36fb21a6d` |
| 7 | `class` | [ZSMul](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zsmul--cccaf50744db61ac24559cee.md) | 113 | `declaration-track:cccaf50744db61ac24559ceec8d936396f811dce3ef5ea70673394a07d64247e` |
| 8 | `class` | [ZPow](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow--54b8fe11ec7f204f238078c4.md) | 121 | `declaration-track:54b8fe11ec7f204f238078c4c879d3e7e320f9c08c2bd7678ab065f66808354a` |
| 9 | `instance` | [ZPow.toPow](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-topow--578197e1c34b2dea9208dd65.md) | 126 | `declaration-track:578197e1c34b2dea9208dd6512339c427edce095281659ebcc705caa4d7d8d26` |
| 10 | `instance` | [ZPow.ofPow](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-ofpow--523b933c2723cc474b05e649.md) | 130 | `declaration-track:523b933c2723cc474b05e649667b791cbcf87a9a0fa0767d4d119873922dc5a2` |
| 11 | `class` | [DivInvMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/divinvmonoid--6ecb8108f0ccd25c95fca6ac.md) | 150 | `declaration-track:6ecb8108f0ccd25c95fca6ac70d721d710dca65189594f520428f6ffe6f7f825` |
| 12 | `def` | [SubNegMonoid.sub'](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/subnegmonoid-sub--b6e9d1c98db7a4b9faf8af9b.md) | 170 | `declaration-track:b6e9d1c98db7a4b9faf8af9bf0aec1794fa4f169a190b089cc760b1e986f2870` |
| 13 | `class` | [SubNegMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/subnegmonoid--849d850b666ed167d22f71e8.md) | 191 | `declaration-track:849d850b666ed167d22f71e804a161fd55fc6d2ad4df4b1772989ba64d5e863e` |
| 14 | `class` | [IsAddCyclic](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/isaddcyclic--e029001b1ec1bacb9b5c13be.md) | 204 | `declaration-track:e029001b1ec1bacb9b5c13bee4242c28d64d9a4dc668ac220af5270f94533b4e` |
| 15 | `class` | [IsCyclic](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/iscyclic--851f31f5f10398bb60d2ae83.md) | 209 | `declaration-track:851f31f5f10398bb60d2ae8389ac4459df4311a7fe1cd7f04a206a146b5590bc` |
| 16 | `theorem` | [exists_zpow_surjective](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/exists-zpow-surjective--ec2303198ebc9b25c30eb0bb.md) | 213 | `result-track:ec2303198ebc9b25c30eb0bbfbc225fcaea1a0f17b74d245f17c3bc37190ace0` |
| 17 | `theorem` | [zpow_eq_pow](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-eq-pow--0bff1f704f3f940a0ffb2af3.md) | 221 | `result-track:0bff1f704f3f940a0ffb2af3f26898ef12444e7b5f56a807d70738f24c9bd670` |
| 18 | `theorem` | [zpow_zero](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-zero--55ec77409d5c58346a88c5b5.md) | 225 | `result-track:55ec77409d5c58346a88c5b5734c404a9cf54dd3da8bfa00d93b371590060628` |
| 19 | `theorem` | [zpow_natCast](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-natcast--8fbb98e24c5e8c2690ac11e7.md) | 233 | `result-track:8fbb98e24c5e8c2690ac11e764477661ab1e6d36ab1136803072142f438289fc` |
| 20 | `lemma` | [zpow_ofNat](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-ofnat--d4aec1340e9f8b0b4125e89f.md) | 244 | `result-track:d4aec1340e9f8b0b4125e89ffce97cd053612bdf621f777601fd9d37609e2c58` |
| 21 | `theorem` | [zpow_negSucc](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-negsucc--fc592ce770059197369045c9.md) | 247 | `result-track:fc592ce770059197369045c9cbc5ae0609bf858176398a1d2548bc03a213585d` |
| 22 | `theorem` | [negSucc_zsmul](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/negsucc-zsmul--a29bb85851c1b2e1ab7cb71c.md) | 251 | `result-track:a29bb85851c1b2e1ab7cb71c6716e76bb986a373cd5e08782d409060720a01e4` |
| 23 | `theorem` | [div_eq_mul_inv](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/div-eq-mul-inv--ac83d946713c8fadd239f0fe.md) | 264 | `result-track:ac83d946713c8fadd239f0fe0d630bf43a368955af7aa84fc7bbacd8ac9dc888` |
| 24 | `theorem` | [inv_eq_one_div](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/inv-eq-one-div--efcd71b28afd54da0ba6da02.md) | 270 | `result-track:efcd71b28afd54da0ba6da02e5d677b0a6c9c56e3de67c6a4e9f584b735ce97b` |
| 25 | `theorem` | [mul_div_assoc](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/mul-div-assoc--ce5c85633b498602c48f3765.md) | 273 | `result-track:ce5c85633b498602c48f3765db1c828e30f13abf58798adfca7d1e7c415d1ab7` |
| 26 | `theorem` | [one_div](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/one-div--448ba2e41a12ebd6cb907fed.md) | 277 | `result-track:448ba2e41a12ebd6cb907fed6dd20cf5d1cbb7c9c905de22771c83b441cf4061` |
| 27 | `lemma` | [zpow_one](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-one--f530e264a60a99da14613a90.md) | 281 | `result-track:f530e264a60a99da14613a90ba96596271146894aeee39cc6a5ea36f65a058ba` |
| 28 | `lemma` | [zpow_two](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-two--02d78c65420371bc8ac09b33.md) | 287 | `result-track:02d78c65420371bc8ac09b330a41af4815dcecc9de4c61749e40c0544566de1b` |
| 29 | `lemma` | [zpow_neg_one](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-neg-one--9e8490ae293a9e5f58513899.md) | 290 | `result-track:9e8490ae293a9e5f58513899727e0338e38d8e3efb6648301847cf79448f2367` |
| 30 | `lemma` | [zpow_neg_coe_of_pos](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/zpow-neg-coe-of-pos--047869e4bd14ab60580ad146.md) | 294 | `result-track:047869e4bd14ab60580ad1460e33beee32f9e4cf03350d29a651415188d6f2fa` |
| 31 | `class` | [NegZeroClass](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/negzeroclass--9ec8a19981988a2f40484838.md) | 302 | `declaration-track:9ec8a19981988a2f4048483857eb361c5fc49c59e311554fe716d134ef2a0f89` |
| 32 | `class` | [SubNegZeroMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/subnegzeromonoid--4990eca6f6e223b6de1bb36f.md) | 306 | `declaration-track:4990eca6f6e223b6de1bb36fac22e629b3e43dcca3dce66c7ae3dd95b3e88465` |
| 33 | `class` | [InvOneClass](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/invoneclass--a64694ed16d3cd1e42d2dd76.md) | 310 | `declaration-track:a64694ed16d3cd1e42d2dd7674e4cfb8e63cad826a0afcea6b15ca81470759af` |
| 34 | `class` | [DivInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/divinvonemonoid--977290131f4856a144b152ab.md) | 315 | `declaration-track:977290131f4856a144b152abe42d31047b33fb869b79e8d24c94bb019a0f170b` |
| 35 | `theorem` | [inv_one](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/inv-one--4163cfc7e38f8b1260c5f38f.md) | 320 | `result-track:4163cfc7e38f8b1260c5f38fdb1d3c25ca12e63ec70a964c680bbdd2e724cb43` |
| 36 | `class` | [SubtractionMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/subtractionmonoid--ef8d82237c318aed52342c5f.md) | 327 | `declaration-track:ef8d82237c318aed52342c5f10380770755d9cd97d1563833102b96e41a0a7fd` |
| 37 | `class` | [DivisionMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/divisionmonoid--bcd57e32a81d1b1f92fb0e99.md) | 338 | `declaration-track:bcd57e32a81d1b1f92fb0e99b47b332ad527ca3689abfdf993cc1394aca63467` |
| 38 | `theorem` | [mul_inv_rev](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/mul-inv-rev--cc0b7d67495dc088c8735d9b.md) | 349 | `result-track:cc0b7d67495dc088c8735d9b383827595408de68d7f6f41c72de057b5d4bc536` |
| 39 | `theorem` | [inv_eq_of_mul_eq_one_right](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/inv-eq-of-mul-eq-one-right--fed984d8a1af4daa46404de1.md) | 353 | `result-track:fed984d8a1af4daa46404de108baf73c92bf3a0b4e247dad602d09b61bd327ed` |
| 40 | `theorem` | [inv_eq_of_mul_eq_one_left](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/inv-eq-of-mul-eq-one-left--df148a315082ec214bf92698.md) | 357 | `result-track:df148a315082ec214bf9269883372bf93a495924520a62b9a2923330c846c127` |
| 41 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/eq-inv-of-mul-eq-one-left--c959bb936efd467ff90c840b.md) | 361 | `result-track:c959bb936efd467ff90c840be3cbfdd8936cd2313622533758fb1f8f564f89c9` |
| 42 | `class` | [SubtractionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/subtractioncommmonoid--c588cbf3c15e765b9a49c730.md) | 367 | `declaration-track:c588cbf3c15e765b9a49c7306a1178fbafc2091b8ac527b00ea81e9dccc9e60c` |
| 43 | `class` | [DivisionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Variant093712ee3c47a471174edb02efbaa29ccb4237ac9548021ac5b709c6a2fed13b.lean/declarations/divisioncommmonoid--23a279a8ed83b5a10d11099f.md) | 373 | `declaration-track:23a279a8ed83b5a10d11099fdfa6d34f246f855504b693260e93360291c2dc64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
