# Verification target: GRWTSK.Algebra.LinearAlgebra.RootSystem.Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "991560bcbd90b9229f41921d33e1418b0b3c1a11",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `991560bcbd90b9229f41921d33e1418b0b3c1a11`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean.json)

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
| 1 | `lemma` | [chainLength_aux](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainlength-aux--f45040451bcc62837b4c7341.md) | 62 | `result-track:f45040451bcc62837b4c73415f14b00bf319cfb6c7f45babf2be60780196670b` |
| 2 | `def` | [chainLength](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainlength--dd5fd8fab0f5664ed4bc543d.md) | 78 | `declaration-track:dd5fd8fab0f5664ed4bc543d8151730470ce3cc48ba62bdefb67196aa802255d` |
| 3 | `lemma` | [chainLength_of_isZero](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainlength-of-iszero--0b296244a6157caeb336350c.md) | 83 | `result-track:0b296244a6157caeb336350c4cbd6f017599f60be76e5648f8a366c9e7292b94` |
| 4 | `lemma` | [chainLength_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainlength-nsmul--764bfb96387fb749a83ef1e2.md) | 85 | `result-track:764bfb96387fb749a83ef1e2f9871f7f1ddfab550c378ebae93c269cc762b0bc` |
| 5 | `lemma` | [chainLength_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainlength-smul--9fc9e26ab0e0eda1ed3550c2.md) | 97 | `result-track:9fc9e26ab0e0eda1ed3550c2adb5dce4fef57dc79bfaa8e118056e3394484722` |
| 6 | `lemma` | [apply_coroot_eq_cast'](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/apply-coroot-eq-cast--f87017906948261975fc34ff.md) | 101 | `result-track:f87017906948261975fc34ff60d7c869e14f55562646f9dc120ab5890dff083c` |
| 7 | `lemma` | [rootSpace_neg_nsmul_add_chainTop_of_le](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootspace-neg-nsmul-add-chaintop-of-le--213e62ced7ecd2c6563e14d2.md) | 114 | `result-track:213e62ced7ecd2c6563e14d23d3549516af0a02c00a7d9e9f7c297b2db23b668` |
| 8 | `lemma` | [rootSpace_neg_nsmul_add_chainTop_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootspace-neg-nsmul-add-chaintop-of-lt--e43e3eefd93f3b0d34a749a8.md) | 127 | `result-track:e43e3eefd93f3b0d34a749a86f10ece9cb285fb1cf8517741c2b6e359158366e` |
| 9 | `lemma` | [chainTopCoeff_le_chainLength](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chaintopcoeff-le-chainlength--b7195103946b8ca95f42c390.md) | 150 | `result-track:b7195103946b8ca95f42c39041e9338f2df23e467a51c16c1757bd3c929c0453` |
| 10 | `lemma` | [chainBotCoeff_add_chainTopCoeff](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainbotcoeff-add-chaintopcoeff--7638796acffc34f31cd570fe.md) | 161 | `result-track:7638796acffc34f31cd570feec2f1e5874d85f5de5a90ace94c0ca46d3ded37f` |
| 11 | `lemma` | [chainTopCoeff_add_chainBotCoeff](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chaintopcoeff-add-chainbotcoeff--6b9abc242fd0c587acffa57f.md) | 183 | `result-track:6b9abc242fd0c587acffa57fb60be4d4c3027815ca4323d043b30a7120af4a36` |
| 12 | `lemma` | [chainBotCoeff_le_chainLength](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainbotcoeff-le-chainlength--e9236fbe2f91a9f2be8f2074.md) | 187 | `result-track:e9236fbe2f91a9f2be8f2074f76302716c8da3f1f622006dfddf4825b5882d35` |
| 13 | `lemma` | [chainLength_neg](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainlength-neg--8ca47e47f0572d314d1ca9cc.md) | 191 | `result-track:8ca47e47f0572d314d1ca9cc19d995929e467ee8128ee319a176dd69d883483b` |
| 14 | `lemma` | [chainLength_zero](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainlength-zero--714adbc9ab2698a90e88eb79.md) | 197 | `result-track:714adbc9ab2698a90e88eb792f39685d627b60b66dafe4f8f07498ee6d8c3373` |
| 15 | `lemma` | [apply_coroot_eq_cast](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/apply-coroot-eq-cast--ee1ee36d0a08cc8dae7270ef.md) | 202 | `result-track:ee1ee36d0a08cc8dae7270ef34ca2ca6589598741feb05111fb77d55c8f04234` |
| 16 | `lemma` | [le_chainBotCoeff_of_rootSpace_ne_top](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/le-chainbotcoeff-of-rootspace-ne-top--57d56094a3133ba7a751e642.md) | 206 | `result-track:57d56094a3133ba7a751e642a433584c24d76de81772c6fd657d03d8c836d321` |
| 17 | `lemma` | [rootSpace_zsmul_add_ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootspace-zsmul-add-ne-bot-iff--20c91d15ca9fb48247c2c986.md) | 218 | `result-track:20c91d15ca9fb48247c2c9869816f27ca9957d615b1d6e7e67f87f8dfe4287c7` |
| 18 | `lemma` | [rootSpace_zsmul_add_ne_bot_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootspace-zsmul-add-ne-bot-iff-mem--71aaa54f066bce14bbd39c00.md) | 236 | `result-track:71aaa54f066bce14bbd39c0043aea3517e4de7ef95bcf63459f4731bacc35d2d` |
| 19 | `lemma` | [exists_mem_rootSpace_lie_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/exists-mem-rootspace-lie-ne-zero--91df4862b538fff4d16c0d17.md) | 240 | `result-track:91df4862b538fff4d16c0d17f7fc24fba09134b2e0bb744fd0d552b7a4f22ab3` |
| 20 | `lemma` | [chainTopCoeff_of_eq_zsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chaintopcoeff-of-eq-zsmul-add--46cae38fcdc9aca689087106.md) | 267 | `result-track:46cae38fcdc9aca689087106b8ea05bf6f64b8c93dbd75cf08346c01ec3b4754` |
| 21 | `lemma` | [chainBotCoeff_of_eq_zsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainbotcoeff-of-eq-zsmul-add--951a99a1a8860d770701cc07.md) | 278 | `result-track:951a99a1a8860d770701cc074313c24a839cedf183342c097bc1a610fbb1b692` |
| 22 | `lemma` | [chainLength_of_eq_zsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainlength-of-eq-zsmul-add--8db2d9cc718077c3c5e1ee27.md) | 285 | `result-track:8db2d9cc718077c3c5e1ee2758576908632f216e1f740748ea28d09ecbec73a5` |
| 23 | `lemma` | [chainTopCoeff_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chaintopcoeff-zero-right--ee2a7b4fcc1d9d891c34efe1.md) | 295 | `result-track:ee2a7b4fcc1d9d891c34efe10ada0d975dc037dc6141c55b4352ca5b0f57c783` |
| 24 | `lemma` | [chainBotCoeff_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainbotcoeff-zero-right--c4a252e4421883827b81825f.md) | 326 | `result-track:c4a252e4421883827b81825fec866a1a3b53bd9e2c76782a94d2c5945ee1d448` |
| 25 | `lemma` | [chainLength_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/chainlength-zero-right--56363ef2f2c0ccc451d3a5f9.md) | 330 | `result-track:56363ef2f2c0ccc451d3a5f9a29b95a0022c033ac0166cbeb72a7ea3226554ca` |
| 26 | `lemma` | [rootSpace_two_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootspace-two-smul--7084550b0e0843be91c95951.md) | 334 | `result-track:7084550b0e0843be91c959518a03d653b965994a0784ee2c7e5025cd271a7924` |
| 27 | `lemma` | [rootSpace_one_div_two_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootspace-one-div-two-smul--d49bbfd25d53977c7194bb9c.md) | 340 | `result-track:d49bbfd25d53977c7194bb9cc13ce601645bccbe907cffada1fdd122430b28a2` |
| 28 | `lemma` | [eq_neg_one_or_eq_zero_or_eq_one_of_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/eq-neg-one-or-eq-zero-or-eq-one-of-eq-smul--41ff2b1e9219fbc240b070db.md) | 351 | `result-track:41ff2b1e9219fbc240b070dbb680c21812bf41f0ab5d0acbe0554ad450708ed9` |
| 29 | `lemma` | [eq_neg_or_eq_of_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/eq-neg-or-eq-of-eq-smul--9d35370b74607a95472b8ae8.md) | 389 | `result-track:9d35370b74607a95472b8ae89d6eec4ac8d896e3390e16b38063e2c5497a747c` |
| 30 | `def` | [reflectRoot](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/reflectroot--fa91be6ffc0014da059158fd.md) | 399 | `declaration-track:fa91be6ffc0014da059158fdea7a1ddd7cb38f495a03330b311a2f55be0465f0` |
| 31 | `lemma` | [reflectRoot_isNonZero](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/reflectroot-isnonzero--9bcd08492cf73adb9c2900d2.md) | 408 | `result-track:9bcd08492cf73adb9c2900d20344b186b7e561a4cbd0eced1a11cf5fa7590800` |
| 32 | `def` | [rootSystem](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootsystem--8eea659a1ce0423d8c44b5df.md) | 422 | `declaration-track:8eea659a1ce0423d8c44b5dfc4c8a9f50e3d75cd6763e36625958c91953c53a2` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/instance--066451184f37503f55e8b8c7.md) | 438 | `declaration-track:066451184f37503f55e8b8c7d9b34b630d9d5fbc2864d407e64b3274539d12b6` |
| 34 | `lemma` | [corootForm_rootSystem_eq_killing](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/corootform-rootsystem-eq-killing--95fd15a69188dae26d98eb5b.md) | 443 | `result-track:95fd15a69188dae26d98eb5b77b3b47b8012600c563af9bcf305901b2137949d` |
| 35 | `lemma` | [rootSystem_toLinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootsystem-tolinearmap-apply--034e735ca61e0db7d3706c06.md) | 448 | `result-track:034e735ca61e0db7d3706c06194301450e0428478acdb0d7917a621e7ba540cc` |
| 36 | `lemma` | [rootSystem_pairing_apply](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootsystem-pairing-apply--36fbc17c820080ec3417b2ca.md) | 449 | `result-track:36fbc17c820080ec3417b2caf663d192cab60fb3f1676ca4952cb40454415c3c` |
| 37 | `lemma` | [rootSystem_root_apply](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootsystem-root-apply--40968bd40cd2627c6513b611.md) | 450 | `result-track:40968bd40cd2627c6513b61168710d0dee01072697998743b1e89a0773ae91f2` |
| 38 | `lemma` | [rootSystem_coroot_apply](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootsystem-coroot-apply--73039c013a09a577d4976ded.md) | 451 | `result-track:73039c013a09a577d4976ded9cb4d6bfc6bbadd8226d309628aeacd7691cfaee` |
| 39 | `lemma` | [biSup_corootSpace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/bisup-corootspace-eq-top--dad98659fdfac002b378be8f.md) | 455 | `result-track:dad98659fdfac002b378be8f5603433b84d2673f99ba0d4b0e93c57e1db50085` |
| 40 | `lemma` | [biSup_corootSubmodule_eq_cartan](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/bisup-corootsubmodule-eq-cartan--203582bbf6c6a972949fbb3c.md) | 466 | `result-track:203582bbf6c6a972949fbb3ce6fce8ab503c30ff0a78261590763370d8920165` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/instance--07105e337374e90ee7733205.md) | 472 | `declaration-track:07105e337374e90ee7733205dde26051477d5f2d01741be8b95ff8ccce5ce140` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/instance--1a95be744cc92fd9baf90208.md) | 476 | `declaration-track:1a95be744cc92fd9baf90208bd76791a4eeb798d6de583513a3d23ce6aec8c2a` |
| 43 | `lemma` | [rootSystem_reflectionPerm_self_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/declarations/rootsystem-reflectionperm-self-eq-neg--a66c883fd1920c1bc0c53e2f.md) | 489 | `result-track:a66c883fd1920c1bc0c53e2f4a8e85224fa771c28c162271cb8929c51f9484a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
