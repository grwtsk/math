# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Abelian.Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f40f6599c259401324849ad29522ca6f812052c6",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f40f6599c259401324849ad29522ca6f812052c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LieModule.IsTrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/liemodule-istrivial--404db3e038bc7722a758aa5d.md) | 36 | `declaration-track:404db3e038bc7722a758aa5de465dfb60ee5310cc5f9d470d016a7ec65a17ee8` |
| 2 | `theorem` | [trivial_lie_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/trivial-lie-zero--33899d00c0ebbdd6ca1b7124.md) | 40 | `result-track:33899d00c0ebbdd6ca1b712441f5f1707eeb7d5e56b5ce90a778d155f01bd22b` |
| 3 | `instance` | [LieModule.instIsTrivialOfSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/liemodule-instistrivialofsubsingleton--a9e2ba1c9f8ab3cf5a77361e.md) | 44 | `declaration-track:a9e2ba1c9f8ab3cf5a77361e6102ad1a3fc2b2b3cda29786c2d097e82f61424f` |
| 4 | `instance` | [LieModule.instIsTrivialOfSubsingleton'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/liemodule-instistrivialofsubsingleton--c00a152ba5249946704ed5f3.md) | 48 | `declaration-track:c00a152ba5249946704ed5f33043256fdc7380ff7e3524a061a247b7275b6749` |
| 5 | `abbrev` | [IsLieAbelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/islieabelian--52563fe30fbbf02e5657d152.md) | 53 | `declaration-track:52563fe30fbbf02e5657d1529d966fec8c8ee2157dd599646194df4f3dbc5584` |
| 6 | `instance` | [LieIdeal.isLieAbelian_of_trivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/lieideal-islieabelian-of-trivial--60fc1386510fbf09cf532492.md) | 56 | `declaration-track:60fc1386510fbf09cf53249275aee703e4ba51b974537b722bf96499feb3a727` |
| 7 | `theorem` | [Function.Injective.isLieAbelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/function-injective-islieabelian--4f22dbad423e4e5ff6cddaef.md) | 60 | `result-track:4f22dbad423e4e5ff6cddaef466b9e30ccdeb32db51cab94786c2bea4b768b33` |
| 8 | `theorem` | [Function.Surjective.isLieAbelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/function-surjective-islieabelian--62ab59c819c1f9e41ddd8f59.md) | 69 | `result-track:62ab59c819c1f9e41ddd8f59ce18b2266464fcd749a2f7037cdeadaf357e1e98` |
| 9 | `theorem` | [lie_abelian_iff_equiv_lie_abelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/lie-abelian-iff-equiv-lie-abelian--21140a69bc9ea18aff400c1d.md) | 77 | `result-track:21140a69bc9ea18aff400c1ddaeadd7b4c1c885d137ffb603d98f2fdcb077331` |
| 10 | `theorem` | [commutative_ring_iff_abelian_lie_ring](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/commutative-ring-iff-abelian-lie-ring--b13eadfb40f49db61ea89746.md) | 82 | `result-track:b13eadfb40f49db61ea897464637c8e0397df995f2574c38e557a2d6dae05c46` |
| 11 | `def` | [ker](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/ker--760675b1ccfab14476c4a21e.md) | 99 | `declaration-track:760675b1ccfab14476c4a21ea33252a4567b528bb7d070fb9ffed965fdecdee0` |
| 12 | `theorem` | [mem_ker](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/mem-ker--ac1f48228b112a61ee5d2927.md) | 103 | `result-track:ac1f48228b112a61ee5d2927255f2dc83c91074ad5aa863c5bb75dd8145f055a` |
| 13 | `lemma` | [isFaithful_iff_ker_eq_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/isfaithful-iff-ker-eq-bot--db1da4a3a4ef92694b42ed10.md) | 107 | `result-track:db1da4a3a4ef92694b42ed107c08eef36a031788a78ed0e936a681718c3fb2aa` |
| 14 | `lemma` | [ker_eq_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/ker-eq-bot--4143a58927fb0f80c62da5d1.md) | 111 | `result-track:4143a58927fb0f80c62da5d1e17483528504c64de4b63bc2ab32ad951197d77e` |
| 15 | `def` | [maxTrivSubmodule](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/maxtrivsubmodule--03e4728990c1dfcdc1c1b77e.md) | 116 | `declaration-track:03e4728990c1dfcdc1c1b77ed8b6082771ed2df03b2bc58673be4fe0a902f314` |
| 16 | `theorem` | [mem_maxTrivSubmodule](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/mem-maxtrivsubmodule--5ee554ae4a9e5c8b26f6ad25.md) | 124 | `result-track:5ee554ae4a9e5c8b26f6ad255971769681534f39608d5e43c7e2dd875d3f5170` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/instance--7ba3faa3670034ed532fefff.md) | 127 | `declaration-track:7ba3faa3670034ed532fefffe02a9e67ad795bf771744bc5c80cda18959b7a65` |
| 18 | `theorem` | [ideal_oper_maxTrivSubmodule_eq_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/ideal-oper-maxtrivsubmodule-eq-bot--200a6d07c0065aa9a1105dc7.md) | 130 | `result-track:200a6d07c0065aa9a1105dc7ba5d43b0d7036f8a5ab3bf21d30b2194f343dc2e` |
| 19 | `theorem` | [le_max_triv_iff_bracket_eq_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/le-max-triv-iff-bracket-eq-bot--21f39b9b73328cec6c49ff20.md) | 137 | `result-track:21f39b9b73328cec6c49ff20dd930aa8b57f7641234cfcb117536cfedf6ebad7` |
| 20 | `theorem` | [trivial_iff_le_maximal_trivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/trivial-iff-le-maximal-trivial--3e0e93becccc36b4ae68044e.md) | 146 | `result-track:3e0e93becccc36b4ae68044eb3f54f32e7ba69c3b379f8ebe121abcd916278d0` |
| 21 | `theorem` | [isTrivial_iff_max_triv_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/istrivial-iff-max-triv-eq-top--0bc7680318b66e38eb0ff6eb.md) | 151 | `result-track:0bc7680318b66e38eb0ff6eb9cf3ba8954dc24ba9670a33bd43955e67101c695` |
| 22 | `def` | [maxTrivHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/maxtrivhom--6f866b16d38a3767e0470ff1.md) | 160 | `declaration-track:6f866b16d38a3767e0470ff195ccd6b300fd0cdc788d7a0d56f31debf2a23fd9` |
| 23 | `theorem` | [coe_maxTrivHom_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/coe-maxtrivhom-apply--39a029820ef5a35dbf61816c.md) | 169 | `result-track:39a029820ef5a35dbf61816ca899e78ea6e7fb37ab1b3eac58d66178b04415be` |
| 24 | `def` | [maxTrivEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/maxtrivequiv--ad90f9133258c0d8a7927657.md) | 174 | `declaration-track:ad90f9133258c0d8a792765746ee3901e95ad5ce2d7a8e6917bd439d4c9750b9` |
| 25 | `theorem` | [coe_maxTrivEquiv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/coe-maxtrivequiv-apply--9125e1bef38c1e250e20a16e.md) | 182 | `result-track:9125e1bef38c1e250e20a16e591afb14c9fdb1f358d4f1b670b3346aed140b5c` |
| 26 | `theorem` | [maxTrivEquiv_of_refl_eq_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/maxtrivequiv-of-refl-eq-refl--746797e1acb7c0de909eb920.md) | 187 | `result-track:746797e1acb7c0de909eb920438b9692a705647cc85167848c03e87460529a92` |
| 27 | `theorem` | [maxTrivEquiv_of_equiv_symm_eq_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/maxtrivequiv-of-equiv-symm-eq-symm--49d51e29b7b6be2a5085b431.md) | 192 | `result-track:49d51e29b7b6be2a5085b43154f782133116bd03a4892c46480869218b37f68d` |
| 28 | `def` | [maxTrivLinearMapEquivLieModuleHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/maxtrivlinearmapequivliemodulehom--03cac8c6d2e1dd8fed07d66b.md) | 198 | `declaration-track:03cac8c6d2e1dd8fed07d66b6a2b45025a936d2e8e2d59d7c8c44cd97fa55867` |
| 29 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/coe-maxtrivlinearmapequivliemodulehom--e87176b422fba56b9c9a9fea.md) | 211 | `result-track:e87176b422fba56b9c9a9feab57d7e901af9d4506c863250b24bc626318195ce` |
| 30 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/coe-maxtrivlinearmapequivliemodulehom-symm--79348035cee5e03d7f2bf4e2.md) | 215 | `result-track:79348035cee5e03d7f2bf4e237fd510b80d3882b4becd45342106a7c7a891ae3` |
| 31 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/tolinearmap-maxtrivlinearmapequivliemodulehom--8077c59c4bf787b5624fbfd2.md) | 220 | `result-track:8077c59c4bf787b5624fbfd2a0db8d15cc7809375083adee13d7429e9e16b466` |
| 32 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/tolinearmap-maxtrivlinearmapequivliemodulehom-symm--c5351b7621764c8713020220.md) | 229 | `result-track:c5351b7621764c871302022003b7419e95142370189d9fadd0156c798e20969a` |
| 33 | `abbrev` | [center](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/center--dd8f2e4a09913d46f8e6cca0.md) | 244 | `declaration-track:dd8f2e4a09913d46f8e6cca0918c0f975fa745353687ec5dc55bc40e62ce883e` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/instance--5b6970fa07bca9e8e37d378e.md) | 247 | `declaration-track:5b6970fa07bca9e8e37d378e567c2115b4160167e532ec14b80876570a75d577` |
| 35 | `theorem` | [ad_ker_eq_self_module_ker](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/ad-ker-eq-self-module-ker--f08dd4603cb29f7e1a066a1b.md) | 251 | `result-track:f08dd4603cb29f7e1a066a1b3e7934c73bdf90f72d0ba5137205c2d0d4f08502` |
| 36 | `theorem` | [self_module_ker_eq_center](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/self-module-ker-eq-center--b8bf179a832e5b34b54accc2.md) | 255 | `result-track:b8bf179a832e5b34b54accc22e546d45f5c9119aa8005ba85503ea287a49341d` |
| 37 | `theorem` | [abelian_of_le_center](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/abelian-of-le-center--9ac7bed5a7f6962c2a76a34b.md) | 259 | `result-track:9ac7bed5a7f6962c2a76a34b884abb92df9b53e946c5ae089a8eb8dce4bb4ca9` |
| 38 | `theorem` | [isLieAbelian_iff_center_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/islieabelian-iff-center-eq-top--ec3bdacbfae4deeb2462ff25.md) | 263 | `result-track:ec3bdacbfae4deeb2462ff2553973aefc0502526a74ae2f3e7bf70409c511511` |
| 39 | `theorem` | [isFaithful_self_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/isfaithful-self-iff--940983b3c3085f3bafa32236.md) | 266 | `result-track:940983b3c3085f3bafa322366529de801d16ed498b573a9cc42b3ab629bd775c` |
| 40 | `theorem` | [center_eq_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/center-eq-bot--fdd5c27aa36d409cc557a032.md) | 270 | `result-track:fdd5c27aa36d409cc557a032056728ab58dc47454fa0714ca02387504db65b5f` |
| 41 | `lemma` | [commute_toEnd_of_mem_center_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/commute-toend-of-mem-center-left--46760033b5a3b318d917d86e.md) | 282 | `result-track:46760033b5a3b318d917d86eb679864004a8411c227d808080276fdbf6d22a5f` |
| 42 | `lemma` | [commute_toEnd_of_mem_center_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/commute-toend-of-mem-center-right--1f9c1bf3cd7c5e7947a974af.md) | 286 | `result-track:1f9c1bf3cd7c5e7947a974afd43d647e77c417570bd1174e0022b11bbb570e69` |
| 43 | `theorem` | [LieSubmodule.trivial_lie_oper_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/liesubmodule-trivial-lie-oper-zero--6d38a1376a09d4af473818a9.md) | 303 | `result-track:6d38a1376a09d4af473818a90b15cd920744cad355b024393ba244cc644245cf` |
| 44 | `theorem` | [LieSubmodule.lie_abelian_iff_lie_self_eq_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/liesubmodule-lie-abelian-iff-lie-self-eq-bot--4b38eb46dce383e71583e0f1.md) | 308 | `result-track:4b38eb46dce383e71583e0f1b10ece0e6509a0e8c7597a5041e13a98b3577e72` |
| 45 | `lemma` | [lie_eq_self_of_isAtom_of_ne_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/lie-eq-self-of-isatom-of-ne-bot--95f9220a1999024452577f51.md) | 319 | `result-track:95f9220a1999024452577f51ace605b03beec4054c9a393ab298730d297ac234` |
| 46 | `lemma` | [lie_eq_self_of_isAtom_of_nonabelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantfec60d9d43f7849389f486a1fb5a80ddafaa51a15160f918046e778c010671da.lean/declarations/lie-eq-self-of-isatom-of-nonabelian--9f8c2177025b2c2118ff8f60.md) | 323 | `result-track:9f8c2177025b2c2118ff8f60df70f2a49e9975bf0d68e226786aa7749f98b045` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
