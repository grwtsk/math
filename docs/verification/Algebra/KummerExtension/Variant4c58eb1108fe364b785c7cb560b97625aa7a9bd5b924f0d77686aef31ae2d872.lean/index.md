# Verification target: GRWTSK.Algebra.KummerExtension.Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb507eb6fc3b59ca7942bd0f2038038f2acf0721",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/index.md) · [Full source](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb507eb6fc3b59ca7942bd0f2038038f2acf0721`.

Source path: `GRWTSK/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.KummerPolynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Minpoly` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [X_pow_sub_C_splits_of_isPrimitiveRoot](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/x-pow-sub-c-splits-of-isprimitiveroot--e695bd6040062ff2e226b474.md) | 53 | `result-track:e695bd6040062ff2e226b474f60bfcb575c2082e6c8621ed7c4d6b23be27bcb4` |
| 2 | `theorem` | [X_pow_sub_C_eq_prod'](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/x-pow-sub-c-eq-prod--d32288406066f0c2aae57314.md) | 65 | `result-track:d32288406066f0c2aae57314042b9fc6d674f93fd8f230d8bd7a992b9be2b7f0` |
| 3 | `lemma` | [X_pow_sub_C_eq_prod](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/x-pow-sub-c-eq-prod--e4b31ca01ea9a50c9724570c.md) | 72 | `result-track:e4b31ca01ea9a50c9724570cec6ed1bdf2a8632b54c4717f810d60a919f28af3` |
| 4 | `theorem` | [X_pow_mul_sub_C_irreducible](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/x-pow-mul-sub-c-irreducible--2078ab6bffbcb64d39f0a613.md) | 87 | `result-track:2078ab6bffbcb64d39f0a6133b8db49ee76562c153b7a7740590ba3aae6f6210` |
| 5 | `theorem` | [X_pow_sub_C_irreducible_of_odd](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/x-pow-sub-c-irreducible-of-odd--bdb664ad1885629a0e0735cf.md) | 100 | `result-track:bdb664ad1885629a0e0735cf5bdf88ee9d1cab37392e16e54b73cbb8a85202ad` |
| 6 | `theorem` | [X_pow_sub_C_irreducible_iff_forall_prime_of_odd](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/x-pow-sub-c-irreducible-iff-forall-prime-of-odd--42f20f41c1119806cbad2826.md) | 121 | `result-track:42f20f41c1119806cbad28261f4d02c52520265b75f906a2e3624d1b1d717c9b` |
| 7 | `theorem` | [X_pow_sub_C_irreducible_iff_of_odd](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/x-pow-sub-c-irreducible-iff-of-odd--e97173da0fd508540e9f88d8.md) | 126 | `result-track:e97173da0fd508540e9f88d806ea954f04ad7df2c0cab08e45552f9c43768210` |
| 8 | `theorem` | [X_pow_sub_C_irreducible_of_prime_pow](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/x-pow-sub-c-irreducible-of-prime-pow--eec7b16ca9eb98917f9f666a.md) | 132 | `result-track:eec7b16ca9eb98917f9f666a57ff99d44ceb0139df460f89e1ceca39c03f1af3` |
| 9 | `theorem` | [X_pow_sub_C_irreducible_iff_of_prime_pow](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/x-pow-sub-c-irreducible-iff-of-prime-pow--362705888b9a8860de4d27ae.md) | 139 | `result-track:362705888b9a8860de4d27ae96b077a94cb19f684b719882100e6480c44b367c` |
| 10 | `theorem` | [Polynomial.separable_X_pow_sub_C_of_irreducible](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/polynomial-separable-x-pow-sub-c-of-irreducible--d522f13204a444036781df1c.md) | 167 | `result-track:d522f13204a444036781df1c2763a5c315f30615ee08bc81cfe3aeb743b10bbe` |
| 11 | `def` | [autAdjoinRootXPowSubCHom](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autadjoinrootxpowsubchom--d329931a9fc0a834086d7075.md) | 190 | `declaration-track:d329931a9fc0a834086d7075a91a1efb6e56d713a137159d957a50ed6ff59772` |
| 12 | `def` | [autAdjoinRootXPowSubC](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autadjoinrootxpowsubc--6299c7de72e3442a7f0c3e35.md) | 203 | `declaration-track:6299c7de72e3442a7f0c3e352176aef2df24e965adeb84fbe612ce058478c939` |
| 13 | `lemma` | [autAdjoinRootXPowSubC_root](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autadjoinrootxpowsubc-root--25c2d6907ff2c0e092245a22.md) | 209 | `result-track:25c2d6907ff2c0e092245a227cad777645ac21f1e4d2284f8a4006c93db5e5cc` |
| 14 | `def` | [AdjoinRootXPowSubCEquivToRootsOfUnity](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/adjoinrootxpowsubcequivtorootsofunity--25ff1a53ff627efa5debb460.md) | 219 | `declaration-track:25ff1a53ff627efa5debb460ec95b2d45c674b999ec85b3e2d1102f0ac655126` |
| 15 | `def` | [autAdjoinRootXPowSubCEquiv](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autadjoinrootxpowsubcequiv--b11f36514b45d0517651c646.md) | 236 | `declaration-track:b11f36514b45d0517651c64634bc8dbf01dad7d411bdffb946e266027b68019d` |
| 16 | `lemma` | [autAdjoinRootXPowSubCEquiv_root](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autadjoinrootxpowsubcequiv-root--66e9c14a8e41b772b90da858.md) | 271 | `result-track:66e9c14a8e41b772b90da85856d37fe3e0e33c62b618e37d5bc0131539f83a2e` |
| 17 | `lemma` | [autAdjoinRootXPowSubCEquiv_symm_smul](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autadjoinrootxpowsubcequiv-symm-smul--5aced1d9ef1d7834d25c47be.md) | 275 | `result-track:5aced1d9ef1d7834d25c47bec7f2a5f93243946a88e22126b2e8a1ecb20b7983` |
| 18 | `lemma` | [isSplittingField_AdjoinRoot_X_pow_sub_C](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/issplittingfield-adjoinroot-x-pow-sub-c--1baa75326880df2fd412e3de.md) | 297 | `result-track:1baa75326880df2fd412e3de7ecd046703c706c6dd293a43b2cdd80d1a6bdb8d` |
| 19 | `def` | [adjoinRootXPowSubCEquiv](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/adjoinrootxpowsubcequiv--a46993a0ee19950f0503a97f.md) | 321 | `declaration-track:a46993a0ee19950f0503a97f94ec84e04502bd212cc74b1da7f148e200807d27` |
| 20 | `lemma` | [adjoinRootXPowSubCEquiv_root](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/adjoinrootxpowsubcequiv-root--f7effcc26b7727c1a25cc59f.md) | 331 | `result-track:f7effcc26b7727c1a25cc59fda875c6d90543fdfa934435da02accffebeb15ae` |
| 21 | `lemma` | [adjoinRootXPowSubCEquiv_symm_eq_root](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/adjoinrootxpowsubcequiv-symm-eq-root--f71ecc43199a061da1e8da6d.md) | 335 | `result-track:f71ecc43199a061da1e8da6d3b6e8eba56b2528770b429c0ac228e7f98408d65` |
| 22 | `lemma` | [Algebra.adjoin_root_eq_top_of_isSplittingField](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/algebra-adjoin-root-eq-top-of-issplittingfield--04ea6d3ef347655b2278ea41.md) | 341 | `result-track:04ea6d3ef347655b2278ea41c57c31adb440a2b7ef34bf404f3de7d0c7150e69` |
| 23 | `lemma` | [IntermediateField.adjoin_root_eq_top_of_isSplittingField](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/intermediatefield-adjoin-root-eq-top-of-issplittingfield--023272fa606dfe2c4907edd6.md) | 350 | `result-track:023272fa606dfe2c4907edd68b7aefa9d20977ec2615a1a7f4290af57272c108` |
| 24 | `abbrev` | [rootOfSplitsXPowSubC](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/rootofsplitsxpowsubc--9b1e7ca743678f495338e95a.md) | 359 | `declaration-track:9b1e7ca743678f495338e95a12666df8a541106ebfcae994f2d7e6310edd2e58` |
| 25 | `lemma` | [rootOfSplitsXPowSubC_pow](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/rootofsplitsxpowsubc-pow--4542fb9895aaf1fe6ecf9768.md) | 364 | `result-track:4542fb9895aaf1fe6ecf9768dc78a5f703fcc6d10aa4b1a1df833b291e92752e` |
| 26 | `def` | [autEquivRootsOfUnity](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autequivrootsofunity--a873013e802322b44a6e92c2.md) | 376 | `declaration-track:a873013e802322b44a6e92c275760689b7c7e53dc9eef23079ee03ea4889a845` |
| 27 | `lemma` | [autEquivRootsOfUnity_apply_rootOfSplit](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autequivrootsofunity-apply-rootofsplit--62c7c403fb98f60a7486f318.md) | 381 | `result-track:62c7c403fb98f60a7486f3180d5a885f7b182624ec26d9b50100e32be01921f8` |
| 28 | `lemma` | [autEquivRootsOfUnity_smul](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autequivrootsofunity-smul--e7bfeb1fe009b1de39019603.md) | 393 | `result-track:e7bfeb1fe009b1de390196030c14d91579095cfebdd762cccf96b14591629d7d` |
| 29 | `def` | [autEquivZmod](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autequivzmod--57ef629c8a0d2f665e955a19.md) | 409 | `declaration-track:57ef629c8a0d2f665e955a199c9cb0cdc79380635d815cd5f8d5a3be2fe60805` |
| 30 | `lemma` | [autEquivZmod_symm_apply_intCast](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autequivzmod-symm-apply-intcast--c31c6478910d35598ddcc734.md) | 418 | `result-track:c31c6478910d35598ddcc734603d427c1b5c0b2a2b088ad2e347b4a58bad0c7b` |
| 31 | `lemma` | [autEquivZmod_symm_apply_natCast](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/autequivzmod-symm-apply-natcast--1f8eff77154168b3481ee503.md) | 425 | `result-track:1f8eff77154168b3481ee503993863bfde41a1c7ce92e1c07b3c197a4425679c` |
| 32 | `lemma` | [isCyclic_of_isSplittingField_X_pow_sub_C](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/iscyclic-of-issplittingfield-x-pow-sub-c--cd3c839d9f0f77eb2dd43f72.md) | 430 | `result-track:cd3c839d9f0f77eb2dd43f72939b6561aba38dc506a1490052f341ed9331f308` |
| 33 | `lemma` | [isGalois_of_isSplittingField_X_pow_sub_C](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/isgalois-of-issplittingfield-x-pow-sub-c--7d4bc33a70121bf2fb71205c.md) | 436 | `result-track:7d4bc33a70121bf2fb71205cb4ab2cec6fa15378143c41164aaf151d37b05c5f` |
| 34 | `lemma` | [finrank_of_isSplittingField_X_pow_sub_C](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/finrank-of-issplittingfield-x-pow-sub-c--856111455b239a04c199534f.md) | 440 | `result-track:856111455b239a04c199534f616a8b08a136626cc7f3d4fab63f5ab46b2bb4f0` |
| 35 | `lemma` | [exists_root_adjoin_eq_top_of_isCyclic](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/exists-root-adjoin-eq-top-of-iscyclic--1d9cc1ee700b46ddb44c3f93.md) | 463 | `result-track:1d9cc1ee700b46ddb44c3f93b055b7687f440bac65fc293b0f72f6e5dabd5976` |
| 36 | `lemma` | [irreducible_X_pow_sub_C_of_root_adjoin_eq_top](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/irreducible-x-pow-sub-c-of-root-adjoin-eq-top--b6c852f86443dbbcef180c4d.md) | 501 | `result-track:b6c852f86443dbbcef180c4d178218d6727761eb209b8165bb2552e454e5027c` |
| 37 | `lemma` | [isSplittingField_X_pow_sub_C_of_root_adjoin_eq_top](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/issplittingfield-x-pow-sub-c-of-root-adjoin-eq-top--d6391a4b56b3ba679f383d68.md) | 516 | `result-track:d6391a4b56b3ba679f383d68dbb80d308c091540376e8c3e2716440abcae8372` |
| 38 | `lemma` | [isCyclic_tfae](../../../../mathematics/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/declarations/iscyclic-tfae--d88a5e831b8880571fe97324.md) | 540 | `result-track:d88a5e831b8880571fe97324a631e7e2886bf18965441cc9556181277b7cc5cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
