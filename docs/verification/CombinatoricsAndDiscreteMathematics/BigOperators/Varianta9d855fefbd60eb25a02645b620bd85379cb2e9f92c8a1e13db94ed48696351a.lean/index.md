# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c7263856ff3b8c2d85f1a4dd475ca5cf7757239",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c7263856ff3b8c2d85f1a4dd475ca5cf7757239`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Ext` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/evaladdmonoidhom--48dd60f1837cfb23e90ef658.md) | 60 | `declaration-track:48dd60f1837cfb23e90ef65851e7175d1278fcb30074b86eb4216eba4e6eae47` |
| 2 | `theorem` | [coe_finset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/coe-finset-sum--add5847a06d1d7d8c67151ff.md) | 64 | `result-track:add5847a06d1d7d8c67151ff40806e4f2f67b1426ae0330d6dc6f5e0ba2bff70` |
| 3 | `theorem` | [finset_sum_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/finset-sum-apply--59c1302c33787bd3d142cc71.md) | 69 | `result-track:59c1302c33787bd3d142cc71d3e85188b533702c9ed10650758ee06c9e5cbc85` |
| 4 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod--139ff70534548fdcaa0b0788.md) | 81 | `declaration-track:139ff70534548fdcaa0b0788c247b0e87338dee11e4166e807c9e29441752253` |
| 5 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.EvalAddMonoidHom.Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.map_dfinsuppProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-evaladdmonoidhom-variant--b81584df66d9f5ae211b3117.md) | 86 | `result-track:b81584df66d9f5ae211b31172b8e433bf0bf2f60cb77cb821ea365e850fcb6ce` |
| 6 | `theorem` | [prod_mapRange_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-maprange-index--39b935dfaf8f6ff2cb0195ee.md) | 93 | `result-track:39b935dfaf8f6ff2cb0195eee564cfd9d5b15d6155e4631d141267885f27d19f` |
| 7 | `theorem` | [prod_zero_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-zero-index--6c01b05a75739e34b513e0ec.md) | 110 | `result-track:6c01b05a75739e34b513e0ecf34a99a4c1b4bea4aa72d3a80dab3ff5d5e87d88` |
| 8 | `theorem` | [prod_single_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-single-index--5c0cf46629ae2f69bb7b3c50.md) | 115 | `result-track:5c0cf46629ae2f69bb7b3c50b270511c8a93bcdc4cf8faa247b2b91b0c67afff` |
| 9 | `theorem` | [prod_neg_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-neg-index--f4f4742c367481a05ddb8d62.md) | 124 | `result-track:f4f4742c367481a05ddb8d62423de91cff0c12c5d18b5be4933a98bdb04e2a4b` |
| 10 | `theorem` | [prod_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-comm--bda2a6c2588bf445edd00e27.md) | 130 | `result-track:bda2a6c2588bf445edd00e27f3cc2aea146ac95e779003db98d2d0e78c99dd84` |
| 11 | `theorem` | [sum_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sum-apply--7142b4b382fbd9d736acdd49.md) | 139 | `result-track:7142b4b382fbd9d736acdd492f00e1c6d9b8a14a69f889804a54c9ecb42b6b89` |
| 12 | `theorem` | [support_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/support-sum--7dec08db12acf8ce0bbed1bb.md) | 145 | `result-track:7dec08db12acf8ce0bbed1bb6591bd8932bad05c7edb22f793f71ce64f90b195` |
| 13 | `theorem` | [prod_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-one--206ff0f68b092eb1834bfe8c.md) | 158 | `result-track:206ff0f68b092eb1834bfe8c3578938b27f0650d0eff44b8d2deac598d214570` |
| 14 | `theorem` | [prod_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-mul--96d6d69c031308ce1cef9103.md) | 163 | `result-track:96d6d69c031308ce1cef9103899db57d4eeb20bbdb885da1023aca375bc0593a` |
| 15 | `theorem` | [prod_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-inv--ebb20f5d0e47e7353f883cd7.md) | 169 | `result-track:ebb20f5d0e47e7353f883cd7840aa68d73519e2a2a37ffb3e515ecc8964f8d83` |
| 16 | `theorem` | [prod_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-eq-one--93574a050c67c98f1508d8c1.md) | 175 | `result-track:93574a050c67c98f1508d8c1a9248e68a0df838c55e26f71f9209a8ca0b1a9a4` |
| 17 | `theorem` | [smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/smul-sum--3a01ca4198c17d61f88fb468.md) | 179 | `result-track:3a01ca4198c17d61f88fb4682a89680b6e1f97f70378ed19913a6736e1fa791c` |
| 18 | `theorem` | [prod_add_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-add-index--ba84c3425de899dcdc516dca.md) | 185 | `result-track:ba84c3425de899dcdc516dca10780d1a48cd3001d516a4d0878dba631866a3b5` |
| 19 | `theorem` | [prod_eq_prod_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-eq-prod-fintype--8cbd441f8233e5905557e3f4.md) | 203 | `result-track:8cbd441f8233e5905557e3f496d94a0b74f92ae8c8903d648925180b221ca038` |
| 20 | `lemma` | [prod_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-eq-zero-iff--c3a4c80dabbd4ac4aa9cc418.md) | 217 | `result-track:c3a4c80dabbd4ac4aa9cc4186c1789c0a1dc294c82f31a962015d7b51232bc43` |
| 21 | `lemma` | [prod_ne_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-ne-zero-iff--fbc6ec1ca4e53d27bd4baa20.md) | 218 | `result-track:fbc6ec1ca4e53d27bd4baa2001644a9c3345793ae7dcdda58574f99f480a719a` |
| 22 | `def` | [sumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sumaddhom--2a9ad778e0e4e8050a301ab0.md) | 226 | `declaration-track:2a9ad778e0e4e8050a301ab09dca7b28d5006bfa2cc2e2d2f0ed40e21dce66f7` |
| 23 | `theorem` | [sumAddHom_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sumaddhom-single--a9a0f904add656c716ed594b.md) | 272 | `result-track:a9a0f904add656c716ed594bbace34a6c682e0bbd18f25f07da7831b2a6cc01f` |
| 24 | `theorem` | [sumAddHom_comp_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sumaddhom-comp-single--943523bc4eed9b9707feb8fd.md) | 278 | `result-track:943523bc4eed9b9707feb8fdefad453cb55a803bc274753fbec6e67afc71ff0d` |
| 25 | `theorem` | [sumAddHom_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sumaddhom-apply--699b569c4a760367409e043f.md) | 283 | `result-track:699b569c4a760367409e043fa08b0d9e7b9ec956df3dc97a20703bdd0ad13b81` |
| 26 | `theorem` | [sumAddHom_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sumaddhom-comm--7b7f7cbe64f0078f7ceab511.md) | 294 | `result-track:7b7f7cbe64f0078f7ceab5116e9c064b4b0442562367ba83715db8c36f9a45e5` |
| 27 | `def` | [liftAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/liftaddhom--07645a8395c020d5f56702ca.md) | 306 | `declaration-track:07645a8395c020d5f56702cab64f8829da899be0e2b97e778446a794165e25a7` |
| 28 | `theorem` | [liftAddHom_singleAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/liftaddhom-singleaddhom--18f90b55125e128760768f83.md) | 315 | `result-track:18f90b55125e128760768f83c47b288567e7665310b8b343b85a8d237ed23044` |
| 29 | `theorem` | [liftAddHom_apply_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/liftaddhom-apply-single--8cc27fc8ab75a33546d2a936.md) | 320 | `result-track:8cc27fc8ab75a33546d2a9367ace1615fc19e8a95b0f566a9d53d6a8f2085e99` |
| 30 | `theorem` | [liftAddHom_comp_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/liftaddhom-comp-single--5852ba549eef1b86d69c8b3c.md) | 324 | `result-track:5852ba549eef1b86d69c8b3cf9b2196d2ebea6009dad3377e01d760889268159` |
| 31 | `theorem` | [comp_liftAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/comp-liftaddhom--ecca3d65b5948eae1eb24a72.md) | 328 | `result-track:ecca3d65b5948eae1eb24a72daf76142e5ec47c06e0ab4acb078284b07b277e4` |
| 32 | `theorem` | [sumAddHom_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sumaddhom-zero--fe5c8c1689fa11eee1efbc34.md) | 336 | `result-track:fe5c8c1689fa11eee1efbc34f47bc8b42a260167beef070736b211cf5322d060` |
| 33 | `theorem` | [sumAddHom_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sumaddhom-add--f8ef840e3cd823d8a7ee4c6d.md) | 341 | `result-track:f8ef840e3cd823d8a7ee4c6d6151426de791fb93863a06e0b68eca4a40107990` |
| 34 | `theorem` | [sumAddHom_singleAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sumaddhom-singleaddhom--c0af46ee0dae0939468a0008.md) | 346 | `result-track:c0af46ee0dae0939468a0008d074ea0a0d03ce26c93d9e06e5faa067a07bcb96` |
| 35 | `theorem` | [comp_sumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/comp-sumaddhom--b7da9826365cee1872b09d41.md) | 350 | `result-track:b7da9826365cee1872b09d41caf91da9460f11d754af48c1951cdca299d50c63` |
| 36 | `theorem` | [sum_sub_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sum-sub-index--c90c96b6b116a0c09179e558.md) | 354 | `result-track:c90c96b6b116a0c09179e55858c4368f19193134e32c38929a9d35e575498718` |
| 37 | `theorem` | [prod_finset_sum_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-finset-sum-index--8b6c07f20e3debf1cccfc9d4.md) | 362 | `result-track:8b6c07f20e3debf1cccfc9d4f930c1b743ee247d66c005f21dab0c0bae89a4aa` |
| 38 | `theorem` | [prod_sum_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-sum-index--554cc6b224a53924854b1b03.md) | 372 | `result-track:554cc6b224a53924854b1b0340a72dd096128f33ecd6098be0fab0b5ebe044db` |
| 39 | `theorem` | [sum_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/sum-single--e9137ffab852512ee72d0d84.md) | 381 | `result-track:e9137ffab852512ee72d0d84d53f036df3d6f32995c10fcf5260bc0b79f0d9c8` |
| 40 | `theorem` | [prod_subtypeDomain_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/prod-subtypedomain-index--5691d2e3fa19568a71e771cd.md) | 388 | `result-track:5691d2e3fa19568a71e771cd217df26fa4f6a39e736718415c7c4a84508b30be` |
| 41 | `theorem` | [subtypeDomain_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/subtypedomain-sum--573c466714486fcd429f85bb.md) | 393 | `result-track:573c466714486fcd429f85bb4aebae81ba4eaf43d3c9f6e0f186b0e2c0e9074e` |
| 42 | `theorem` | [subtypeDomain_finsupp_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/subtypedomain-finsupp-sum--b2766baca03f5e77b867731b.md) | 398 | `result-track:b2766baca03f5e77b867731b543df319b4d9aa205a5afbd6de1f106a0a157617` |
| 43 | `theorem` | [coe_dfinsuppProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/coe-dfinsuppprod--fdfe61debffa99fb3f757524.md) | 431 | `result-track:fdfe61debffa99fb3f757524850618f9d4fd7a1958d70abb845d08e4055b3334` |
| 44 | `theorem` | [dfinsuppProd_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/dfinsuppprod-apply--7f18048777901f812636e759.md) | 441 | `result-track:7f18048777901f812636e75961f0a0c5bc849834670d1af0f07c87842d539cf9` |
| 45 | `theorem` | [map_dfinsuppSumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/map-dfinsuppsumaddhom--f434e7c41decc703ca382e49.md) | 462 | `result-track:f434e7c41decc703ca382e49c22a250c8f0c73d53b8c3f4eb3e5116d2e49adc2` |
| 46 | `theorem` | [dfinsuppSumAddHom_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/dfinsuppsumaddhom-apply--9c34b4f9596b61e51c493cf9.md) | 469 | `result-track:9c34b4f9596b61e51c493cf9577e2ffa7dd1789526c67b0e278f1e7f8829a432` |
| 47 | `theorem` | [coe_dfinsuppSumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/coe-dfinsuppsumaddhom--f72d3c2b42d75de602ea77d0.md) | 477 | `result-track:f72d3c2b42d75de602ea77d0ed4619d93c80136c4b3f3cacce0076032ec0e37e` |
| 48 | `theorem` | [map_dfinsuppSumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/map-dfinsuppsumaddhom--755bcc8072f140f61218259a.md) | 492 | `result-track:755bcc8072f140f61218259adf6622e3a8e9a9e90c680eea8da265e557791a38` |
| 49 | `theorem` | [map_dfinsuppSumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Varianta9d855fefbd60eb25a02645b620bd85379cb2e9f92c8a1e13db94ed48696351a.lean/declarations/map-dfinsuppsumaddhom--1279208bd6736de0bb7cb1cb.md) | 508 | `result-track:1279208bd6736de0bb7cb1cb22bf8cb05be11411048ef30fcb120e94214a2c3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
