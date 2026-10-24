# Verification target: GRWTSK.Algebra.Basic.Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "577fe06140e45bce34c448e91329dc1bc732d032",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `577fe06140e45bce34c448e91329dc1bc732d032`.

Source path: `GRWTSK/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Cotangent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra.Extension](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/algebra-extension--890fc73777952e5b26bfe128.md) | 43 | `declaration-track:890fc73777952e5b26bfe12875b2522eae8f8ca62f388da6367285fa1ec4bb7b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/instance--abe29fcb06b86b3109c713ce.md) | 65 | `declaration-track:abe29fcb06b86b3109c713ce2b7a3a71e1ef931d0549c70d76d192303c7d6321` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/instance--445c412ee94c0540f29ecdc3.md) | 68 | `declaration-track:445c412ee94c0540f29ecdc360ab24031a850c56d12a597e9ce3dc8c822f5cce` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/instance--b191ae5d6872984755e1080a.md) | 71 | `declaration-track:b191ae5d6872984755e1080a2fc32981e6b1ba3a037469f0f754349d496cc402` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/instance--15f382916d2dc89ad244e76d.md) | 78 | `declaration-track:15f382916d2dc89ad244e76daedce022f465f5a7b0463b547487ba4e019f0ee5` |
| 6 | `lemma` | [σ_smul](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/smul--1e4256e0e60b942242a38b14.md) | 84 | `result-track:1e4256e0e60b942242a38b142b451b5f61c26e345565540190198cc6bd035d11` |
| 7 | `lemma` | [σ_injective](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/injective--ac1e2fb9e1b6a52514e2e651.md) | 87 | `result-track:ac1e2fb9e1b6a52514e2e651d47bd4e1b4a022550b281785c51244d1de4546ad` |
| 8 | `lemma` | [algebraMap_surjective](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/algebramap-surjective--7d61669c0e2109653f453424.md) | 91 | `result-track:7d61669c0e2109653f453424758e61ab11fcc066a38a846aaa6007276d19649e` |
| 9 | `def` | [ofSurjective](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/ofsurjective--8f81226c6cf8e44d4e2ec1b5.md) | 98 | `declaration-track:8f81226c6cf8e44d4e2ec1b542733142aba6983960c1d833aefb8843a6d34f91` |
| 10 | `def` | [self](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/self--968bc6709d06c1ba1a876407.md) | 110 | `declaration-track:968bc6709d06c1ba1a876407180a4b1e038d3c5df0a4cf61ceb5a4edc5d1fc95` |
| 11 | `abbrev` | [ker](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/ker--cf8132dec96925ab5f3d1de5.md) | 116 | `declaration-track:cf8132dec96925ab5f3d1de5796240da547e20330e397d68e9cf44be115cab64` |
| 12 | `def` | [localization](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/localization--79f1a82d6b2afa13e7a02f35.md) | 128 | `declaration-track:79f1a82d6b2afa13e7a02f356b2874ae806e46e6bad05f5ec6d1d3579a6afe9c` |
| 13 | `def` | [baseChange](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/basechange--ee08ae07d33736ea5835aa57.md) | 153 | `declaration-track:ee08ae07d33736ea5835aa570426030c9a2f9de3acc582aa570f102978bbc46d` |
| 14 | `structure` | [Hom](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/hom--907deeb6d538d08963343847.md) | 182 | `declaration-track:907deeb6d538d08963343847495d0a5633d460e6ba76ed75763d9d79f3336149` |
| 15 | `def` | [Hom.toAlgHom](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/hom-toalghom--b8d9ea7c38ae5f6776da1d0e.md) | 196 | `declaration-track:b8d9ea7c38ae5f6776da1d0e0643711a0180a5054a0948f5476fddac166641ad` |
| 16 | `lemma` | [Hom.toAlgHom_apply](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/hom-toalghom-apply--efc104803c9c718e8e4a0cfd.md) | 202 | `result-track:efc104803c9c718e8e4a0cfd033afef55da38baac2cf9316f1fb9e5f49edc42c` |
| 17 | `def` | [Hom.id](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/hom-id--140460b327338bf7cb864326.md) | 209 | `declaration-track:140460b327338bf7cb86432617a7d41202f1854776500b39c5f42dc456bbb7e0` |
| 18 | `lemma` | [Hom.toAlgHom_id](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/hom-toalghom-id--22647e7d60cce8b2f7b3fdaf.md) | 212 | `result-track:22647e7d60cce8b2f7b3fdaf2494f32c5208ee5391914312a52af48316f635ee` |
| 19 | `def` | [Hom.comp](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/hom-comp--c815424354a7ed62b8661f88.md) | 219 | `declaration-track:c815424354a7ed62b8661f88999b08aa64ce5290b90c0894e01890454e5a336e` |
| 20 | `lemma` | [Hom.comp_id](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/hom-comp-id--e1a9ee8ff7d52569f44cdfdf.md) | 225 | `result-track:e1a9ee8ff7d52569f44cdfdf03949fe0a3cf5623914711922ee4538923e16c80` |
| 21 | `lemma` | [Hom.id_comp](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/hom-id-comp--69aaa221c4cc2655c253d001.md) | 228 | `result-track:69aaa221c4cc2655c253d0016d020700075b6ea5528bea2f5f62a19d09a1d3a5` |
| 22 | `def` | [Hom.mapKer](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/hom-mapker--c2410b90d2cd79eee404f832.md) | 233 | `declaration-track:c2410b90d2cd79eee404f83249ba97cc1439a64b43d630cc64b9cf4120d96de5` |
| 23 | `def` | [infinitesimal](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/infinitesimal--42e614e60d81ced47c7d9338.md) | 249 | `declaration-track:42e614e60d81ced47c7d93387cdb9af6f378070f40ec407ea1550bf266048a93` |
| 24 | `def` | [toInfinitesimal](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/toinfinitesimal--f00812bfa9edc015b37e0499.md) | 256 | `declaration-track:f00812bfa9edc015b37e04990635a145277d2409917ee999d6cc99a8e2dd83da` |
| 25 | `lemma` | [ker_infinitesimal](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/ker-infinitesimal--63aa544824f648ccd2db72ef.md) | 261 | `result-track:63aa544824f648ccd2db72ef7dd2fc6f7069bc90d3e5737a740626f50a75a083` |
| 26 | `def` | [Cotangent](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent--9f1a3888f368410e607e65a3.md) | 272 | `declaration-track:9f1a3888f368410e607e65a31f02efae99e68b0c9f1486025f2ad6fcd2390ffb` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/instance--26888a74fd769847546a7a26.md) | 275 | `declaration-track:26888a74fd769847546a7a26c81bfe4e0351a08c99289842b647564d1f2ec471` |
| 28 | `def` | [Cotangent.of](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-of--90ee6c0ded18495d63b2c4a5.md) | 280 | `declaration-track:90ee6c0ded18495d63b2c4a5a0cba45cc15de719c12b150d36c5ebb9885bb493` |
| 29 | `def` | [Cotangent.val](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-val--ed683bef82af4872ebb7e81c.md) | 283 | `declaration-track:ed683bef82af4872ebb7e81c002cf8f09a7d533d28d04b762070ba933d9f0566` |
| 30 | `lemma` | [Cotangent.ext](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-ext--9dcac392a0227d27eb6e2aaf.md) | 286 | `result-track:9dcac392a0227d27eb6e2aaf8344c88921befdfd64b9b124b8c8dcf7eb989fe3` |
| 31 | `lemma` | [val_add](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/val-add--7277be3365d43a83c00dfbed.md) | 292 | `result-track:7277be3365d43a83c00dfbed5f8d131838a037ee8891abcdddd6b3ac790f3ba5` |
| 32 | `lemma` | [val_zero](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/val-zero--def85d48d9d2a292a9dbb082.md) | 293 | `result-track:def85d48d9d2a292a9dbb0827b2be9dea95fc19e71379830a98409592341d70b` |
| 33 | `lemma` | [of_add](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/of-add--54724ca4c03d77992e0508e3.md) | 294 | `result-track:54724ca4c03d77992e0508e3a63e92ee909b80cecc9c189188c4cdc6bbca1c4e` |
| 34 | `lemma` | [of_zero](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/of-zero--5e3b76eb7d7297476038b66e.md) | 295 | `result-track:5e3b76eb7d7297476038b66ef237e77c7b8159acd371f7d5f2d78bef69e8e7fe` |
| 35 | `lemma` | [of_val](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/of-val--2c293915e1a8e153c59ded52.md) | 296 | `result-track:2c293915e1a8e153c59ded52908e3a41a8eacdd150d14b6a4a04ae8455a8ead1` |
| 36 | `lemma` | [val_of](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/val-of--e891a1b68829d82257829adf.md) | 297 | `result-track:e891a1b68829d82257829adff5ee9921b2ab85a2ca52373459c04adc6fb4570e` |
| 37 | `lemma` | [val_sub](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/val-sub--2c041aed29bff538096ad949.md) | 298 | `result-track:2c041aed29bff538096ad949b591e409f16703ac7eb731bc1b03fd24d674e7f9` |
| 38 | `lemma` | [Cotangent.smul_eq_zero_of_mem](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-smul-eq-zero-of-mem--d6f6e31dd7c361b8fe9124f4.md) | 302 | `result-track:d6f6e31dd7c361b8fe9124f4674d8d3e6ba7dd76bf4957f81dee1c79a1ee2a5e` |
| 39 | `instance` | [Cotangent.module](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-module--ab8b23b8a5be7bf7d65f290a.md) | 311 | `declaration-track:ab8b23b8a5be7bf7d65f290a81b2fc72f4bd84e3c0f07944923c543835dbb1f7` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/instance--1e844e03bd8ad847374480c1.md) | 327 | `declaration-track:1e844e03bd8ad847374480c1d94b14c4a86854d327d54baefca27c681bc245ac` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/instance--3bb795111bb03464b5515d5a.md) | 330 | `declaration-track:3bb795111bb03464b5515d5ae017f34cf5115944d2ed51afa4a5393ba5e07e05` |
| 42 | `lemma` | [Cotangent.val_smul'''](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-val-smul--cfc8ff39acbb7751e2abc279.md) | 339 | `result-track:cfc8ff39acbb7751e2abc279ce97a976193097712d5a6cf7d4e37cb034deaf59` |
| 43 | `lemma` | [Cotangent.val_smul](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-val-smul--c0acfeacff92b6fc63fcf06e.md) | 344 | `result-track:c0acfeacff92b6fc63fcf06ea8f40eeb620ea5241dd9e88e902751a8aa4441ed` |
| 44 | `lemma` | [Cotangent.val_smul'](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-val-smul--1091f5f2cf04865e8b24c85e.md) | 348 | `result-track:1091f5f2cf04865e8b24c85e3a4848778f4c849dfd13e83c2be57e32bc0e3704` |
| 45 | `lemma` | [Cotangent.val_smul''](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-val-smul--4b76c1268ec948429c2d7707.md) | 354 | `result-track:4b76c1268ec948429c2d770743a5a2b087404b974bf26e6c5916297547716e22` |
| 46 | `def` | [Cotangent.mk](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-mk--a9c18fe5c4150cda70b66e7c.md) | 358 | `declaration-track:a9c18fe5c4150cda70b66e7c28363b6db8d61905652f87a94db1a42a19b27ba2` |
| 47 | `lemma` | [Cotangent.val_mk](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-val-mk--536117e3db8fb8933336ed5a.md) | 364 | `result-track:536117e3db8fb8933336ed5ab7e3e7a0a347b1c434bd2989a56e684cd6de56b3` |
| 48 | `lemma` | [Cotangent.mk_surjective](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-mk-surjective--71432eaff8b31caebc159d19.md) | 366 | `result-track:71432eaff8b31caebc159d19400f11e2aeab87e3a721a25046940bd92b2d8e8d` |
| 49 | `lemma` | [Cotangent.mk_eq_zero_iff](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-mk-eq-zero-iff--4f833c1b9daa81f227663024.md) | 369 | `result-track:4f833c1b9daa81f227663024134a6f9c6f43a5d8e9a6883d394b784a80632bb0` |
| 50 | `def` | [Cotangent.map](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-map--0d7619f779c959f09a2e44b9.md) | 380 | `declaration-track:0d7619f779c959f09a2e44b9b90870c320ca37dc00c5c829eaf8cc9cbb6915dd` |
| 51 | `lemma` | [Cotangent.map_mk](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-map-mk--8ad93429cece8a9f5160e7e3.md) | 397 | `result-track:8ad93429cece8a9f5160e7e3aa7cb5441b73777ef1b67cb41ef03561fa4b00e3` |
| 52 | `lemma` | [Cotangent.map_id](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-map-id--ff177d8e752f7bd65e04f07a.md) | 403 | `result-track:ff177d8e752f7bd65e04f07a3905472a3fcb065cc60ec146e53ace38e7f253e7` |
| 53 | `lemma` | [Cotangent.map_comp](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-map-comp--81613b2ad7482b006972e45a.md) | 413 | `result-track:81613b2ad7482b006972e45a44621234032288939ebc60d7f03097068078d79a` |
| 54 | `lemma` | [Cotangent.finite](../../../../mathematics/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/declarations/cotangent-finite--be873e67e08348c4f4338cc6.md) | 420 | `result-track:be873e67e08348c4f4338cc60fc3c27491653a5f2ba306972fca3b74df010cf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
