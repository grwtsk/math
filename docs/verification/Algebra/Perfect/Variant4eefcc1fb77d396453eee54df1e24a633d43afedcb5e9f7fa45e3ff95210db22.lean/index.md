# Verification target: GRWTSK.Algebra.Perfect.Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aea37303222861166b3e97ad53e0fe5fb9880d0",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/index.md) · [Full source](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aea37303222861166b3e97ad53e0fe5fb9880d0`.

Source path: `GRWTSK/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Reduced` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.KummerPolynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PerfectRing](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/perfectring--8edb7a58f6a1383c6b32a856.md) | 50 | `declaration-track:8edb7a58f6a1383c6b32a85684cd0b7c1ce861a27033eef80a04e214137d8c2b` |
| 2 | `lemma` | [PerfectRing.ofSurjective](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/perfectring-ofsurjective--89da1bedbf28d50cc1fd4006.md) | 60 | `result-track:89da1bedbf28d50cc1fd400619df237fc7401e0a1c7c5a9f53bb4b062ab6ce2d` |
| 3 | `instance` | [PerfectRing.ofFiniteOfIsReduced](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/perfectring-offiniteofisreduced--e5c051c61ea6ca64a41c3291.md) | 64 | `declaration-track:e5c051c61ea6ca64a41c3291642f668173b477dece4b83f418c4d0a4cea024a1` |
| 4 | `theorem` | [bijective_frobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/bijective-frobenius--e946fcac8168fe967c61e9e7.md) | 71 | `result-track:e946fcac8168fe967c61e9e73f11c2ef1beb6822ae6ff0afaab656501797bbf3` |
| 5 | `theorem` | [bijective_iterateFrobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/bijective-iteratefrobenius--aa090194255340c9efebf7bf.md) | 73 | `result-track:aa090194255340c9efebf7bfe7a4c6e7a828b9d820b1383ff19b799269911a17` |
| 6 | `theorem` | [injective_frobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/injective-frobenius--2769a4b5e0708e51cf0e9c3e.md) | 77 | `result-track:2769a4b5e0708e51cf0e9c3efc9a8ec819fed4c420981508d4a8eac95b1b7dcb` |
| 7 | `theorem` | [surjective_frobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/surjective-frobenius--c8815dc4a0bb6428cce4f023.md) | 80 | `result-track:c8815dc4a0bb6428cce4f0232da5ae771e12b44626fe52e58ecde77f3b7dd34c` |
| 8 | `def` | [frobeniusEquiv](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/frobeniusequiv--e988153e34f97e403c6b3391.md) | 84 | `declaration-track:e988153e34f97e403c6b33915adb7decd58aa19bc70555dcfeeb7132463531ea` |
| 9 | `theorem` | [coe_frobeniusEquiv](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/coe-frobeniusequiv--95bc94330fb85de7c888bcb5.md) | 88 | `result-track:95bc94330fb85de7c888bcb5f8a0041a8c8e989107d188a17f64363b3b4eb589` |
| 10 | `theorem` | [frobeniusEquiv_def](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/frobeniusequiv-def--c306494159ef711ca90752b4.md) | 90 | `result-track:c306494159ef711ca90752b49b00f8f8576f46a8c9183ad155d7ccb4e31d8e01` |
| 11 | `def` | [iterateFrobeniusEquiv](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv--e704423db51f9e8c303ed651.md) | 94 | `declaration-track:e704423db51f9e8c303ed651840fddb590ccf2b973b4a1e0c5c396986eb69ea5` |
| 12 | `theorem` | [coe_iterateFrobeniusEquiv](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/coe-iteratefrobeniusequiv--c29371274ec90f36b57b5b26.md) | 98 | `result-track:c29371274ec90f36b57b5b26f6e6937c418a37f6ffb476a678348396ce4a87ea` |
| 13 | `theorem` | [iterateFrobeniusEquiv_def](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-def--c22612611c6cfa73ba0bbbca.md) | 100 | `result-track:c22612611c6cfa73ba0bbbca43070564246c0b38d14706abc31b78373e89ae40` |
| 14 | `theorem` | [iterateFrobeniusEquiv_add_apply](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-add-apply--fdc46b753909baa2458aef63.md) | 102 | `result-track:fdc46b753909baa2458aef63fc7b654b8e6153d45925c58bfef26f7089077be8` |
| 15 | `theorem` | [iterateFrobeniusEquiv_add](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-add--ebe47219eb916f37cf639370.md) | 106 | `result-track:ebe47219eb916f37cf639370de149dd33dd9e0623b2f38b395678ffb5d2856f7` |
| 16 | `theorem` | [iterateFrobeniusEquiv_symm_add_apply](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-symm-add-apply--f328faba586e6ee742e4b62b.md) | 110 | `result-track:f328faba586e6ee742e4b62bddae48c608e0ff6be6c7889d0034dde6c326ed4d` |
| 17 | `theorem` | [iterateFrobeniusEquiv_symm_add](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-symm-add--be680c6e58b821ed88a81459.md) | 115 | `result-track:be680c6e58b821ed88a814599738a92d2439b72080d9d1351f0eddd39cb81a7d` |
| 18 | `theorem` | [iterateFrobeniusEquiv_zero_apply](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-zero-apply--74f3e24dd6df7bc3e49c4cb4.md) | 119 | `result-track:74f3e24dd6df7bc3e49c4cb4a6f24fb2ca59d34f70d60fac5e17607bbcb53e5b` |
| 19 | `theorem` | [iterateFrobeniusEquiv_one_apply](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-one-apply--ca0464053b2c7f795e8f55f5.md) | 122 | `result-track:ca0464053b2c7f795e8f55f555fb139491c8b3ac7716ed4446c383447d62b4b9` |
| 20 | `theorem` | [iterateFrobeniusEquiv_zero](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-zero--97d9371830d445eee2bfbc35.md) | 126 | `result-track:97d9371830d445eee2bfbc35227ff890081ed610ca96896a9edffb962441f9a4` |
| 21 | `theorem` | [iterateFrobeniusEquiv_one](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-one--67ac6858146a5ae254c8d2ef.md) | 130 | `result-track:67ac6858146a5ae254c8d2ef21bb67bf96e0ec099c94f8dced483508fd6d1b32` |
| 22 | `theorem` | [iterateFrobeniusEquiv_eq_pow](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-eq-pow--230eeca8441d64f6cb4f8871.md) | 133 | `result-track:230eeca8441d64f6cb4f8871f6c9c4887b6a2b721d2b7c6d216b4ded3f87c1a8` |
| 23 | `theorem` | [iterateFrobeniusEquiv_symm](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/iteratefrobeniusequiv-symm--cfbdf0163844291a1f593cbd.md) | 137 | `result-track:cfbdf0163844291a1f593cbd056ea112651a75f9aa70557d6f0b0339d8f93781` |
| 24 | `theorem` | [frobeniusEquiv_symm_apply_frobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/frobeniusequiv-symm-apply-frobenius--023330e333d9ef48535e9532.md) | 142 | `result-track:023330e333d9ef48535e9532dcd9bcdffc8f02cffd03759646abb26b691e01a6` |
| 25 | `theorem` | [frobenius_apply_frobeniusEquiv_symm](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/frobenius-apply-frobeniusequiv-symm--c2860add12af1598f18a09f5.md) | 147 | `result-track:c2860add12af1598f18a09f523b3715d128aefb1b78e0e29ea84a5b3fcb7f3eb` |
| 26 | `theorem` | [frobenius_comp_frobeniusEquiv_symm](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/frobenius-comp-frobeniusequiv-symm--1fc717955e48b8303a48ca8f.md) | 152 | `result-track:1fc717955e48b8303a48ca8f1fdcd790a6f897237f899c239daa69625f8325fc` |
| 27 | `theorem` | [frobeniusEquiv_symm_comp_frobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/frobeniusequiv-symm-comp-frobenius--e633136dff37b751c150e927.md) | 157 | `result-track:e633136dff37b751c150e927410f02b2dbdd069df982f71607689fd52c0ee894` |
| 28 | `theorem` | [frobeniusEquiv_symm_pow_p](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/frobeniusequiv-symm-pow-p--7956dec677bc6e930813b3d7.md) | 162 | `result-track:7956dec677bc6e930813b3d7ef5996723a34f7015ab5d5f04529fb0fb36c3c1b` |
| 29 | `theorem` | [injective_pow_p](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/injective-pow-p--3c945154868a56baa80fe511.md) | 165 | `result-track:3c945154868a56baa80fe511e95e11a4db5257338fc93f7bc0b3f0d8dc879323` |
| 30 | `lemma` | [polynomial_expand_eq](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/polynomial-expand-eq--126df4fd9022736242c35cc2.md) | 167 | `result-track:126df4fd9022736242c35cc24bd42b2454f91b955f01d0f1770f80aba14898a2` |
| 31 | `theorem` | [not_irreducible_expand](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/not-irreducible-expand--287c77d4825489be35a25c7b.md) | 173 | `result-track:287c77d4825489be35a25c7b114163a38f1da87664fb51ebf64e2b4902e6c0f6` |
| 32 | `instance` | [instPerfectRingProd](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/instperfectringprod--b84813e21f01b3c13c31597f.md) | 178 | `declaration-track:b84813e21f01b3c13c31597ffb4962d91d73875c98ac49684f19f485a46c96e2` |
| 33 | `class` | [PerfectField](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/perfectfield--01625c43cba9553742e09c36.md) | 187 | `declaration-track:01625c43cba9553742e09c3676b6a988e30f6c317a12bc0d89912d241309070e` |
| 34 | `lemma` | [PerfectRing.toPerfectField](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/perfectring-toperfectfield--317152720e9c5c5e81e037b6.md) | 191 | `result-track:317152720e9c5c5e81e037b673c514f64c8c49c11b016c3d89c4c2f93074d9b4` |
| 35 | `instance` | [ofCharZero](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/ofcharzero--b79c020fdf23fd428b6c5bce.md) | 204 | `declaration-track:b79c020fdf23fd428b6c5bced208a213dbbde76fdbfb2cf7f92ddd9c045f1855` |
| 36 | `instance` | [ofFinite](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/offinite--9595e89249c0c6c522613108.md) | 206 | `declaration-track:9595e89249c0c6c522613108b2554fc6a1523bd55b959057f717bd1bffb9706b` |
| 37 | `instance` | [toPerfectRing](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/toperfectring--928533a87d8a543483187ee6.md) | 214 | `declaration-track:928533a87d8a543483187ee645d80a5a7aefcbd1f46f643c949342cf0fe7194b` |
| 38 | `theorem` | [separable_iff_squarefree](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/separable-iff-squarefree--d1243df873d598c964ea6a8d.md) | 224 | `result-track:d1243df873d598c964ea6a8d03bebca3afa6535198832cf520a2c155dda17767` |
| 39 | `instance` | [Algebra.IsAlgebraic.isSeparable_of_perfectField](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/algebra-isalgebraic-isseparable-of-perfectfield--4178f95622297c22548583b7.md) | 235 | `declaration-track:4178f95622297c22548583b78a04bedd22497fbe70318af06aa3974886b68f85` |
| 40 | `theorem` | [Algebra.IsAlgebraic.perfectField](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/algebra-isalgebraic-perfectfield--2a5d9da9d01b46661f7021c6.md) | 241 | `result-track:2a5d9da9d01b46661f7021c6470dc1fae04cbf1d6a85ea72a6f5a2c457a1bf1c` |
| 41 | `theorem` | [roots_expand_pow_map_iterateFrobenius_le](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand-pow-map-iteratefrobenius-le--6c7e197335e1ccae12b1a4c3.md) | 252 | `result-track:6c7e197335e1ccae12b1a4c3ede7104b8c205fedf41bec8c38a8cd5e76aba6fc` |
| 42 | `theorem` | [roots_expand_map_frobenius_le](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand-map-frobenius-le--b3b72ad2060830b9bf4f51a9.md) | 265 | `result-track:b3b72ad2060830b9bf4f51a97f3daa364ffae9f58ed9b45ad8a9d594eadbf9e4` |
| 43 | `theorem` | [roots_expand_pow_image_iterateFrobenius_subset](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand-pow-image-iteratefrobenius-subset--2bf44bc13926e173c5616133.md) | 270 | `result-track:2bf44bc13926e173c5616133642c101403f1c884e2e4e91ff42e175cbc1ce27d` |
| 44 | `theorem` | [roots_expand_image_frobenius_subset](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand-image-frobenius-subset--f0571f722548afb4c0eba13a.md) | 276 | `result-track:f0571f722548afb4c0eba13a61a18816ec2cdcca0d73f7ff041918523dac3ca1` |
| 45 | `theorem` | [roots_expand_pow](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand-pow--6a5b2b865bdb1d83cef1f0b9.md) | 286 | `result-track:6a5b2b865bdb1d83cef1f0b9ed5f4b1226736e58a38b3e7d33996dd47b03c2c0` |
| 46 | `theorem` | [roots_expand](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand--1053944e9c9a7c68c14057b9.md) | 294 | `result-track:1053944e9c9a7c68c14057b968032a67f345d21cc640465fadc660149365eb2f` |
| 47 | `theorem` | [roots_X_pow_char_pow_sub_C](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-x-pow-char-pow-sub-c--c853009f71ab768e5c0266ad.md) | 298 | `result-track:c853009f71ab768e5c0266adf9cf551319c9d549e266749bca1f1b479efa6fa1` |
| 48 | `theorem` | [roots_X_pow_char_pow_sub_C_pow](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-x-pow-char-pow-sub-c-pow--ff05ce3f0efa5e1daba49129.md) | 303 | `result-track:ff05ce3f0efa5e1daba49129667a3412c529a822d9f67ae03ff913bc151c3d8b` |
| 49 | `theorem` | [roots_X_pow_char_sub_C](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-x-pow-char-sub-c--8ef5c56353ccb715b49cf503.md) | 307 | `result-track:8ef5c56353ccb715b49cf503de1eb09f4aee87fbeceab1e9ad039446e07245e2` |
| 50 | `theorem` | [roots_X_pow_char_sub_C_pow](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-x-pow-char-sub-c-pow--aa5a5693cc2baa03d9000bd5.md) | 312 | `result-track:aa5a5693cc2baa03d9000bd5e5b29ac60793bfb5d4e8de42baa170197fc8c040` |
| 51 | `theorem` | [roots_expand_pow_map_iterateFrobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand-pow-map-iteratefrobenius--509901d6c4a6326aa6894510.md) | 317 | `result-track:509901d6c4a6326aa68945105319aceee721117f1dbca59c081d07dba63fe744` |
| 52 | `theorem` | [roots_expand_map_frobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand-map-frobenius--b645e7b46bbe748c96873360.md) | 322 | `result-track:b645e7b46bbe748c968733600a479eb1e17b2e91313ab7798964947a7a5cb52b` |
| 53 | `theorem` | [roots_expand_image_iterateFrobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand-image-iteratefrobenius--2aac814e2db914dd8a1c2c24.md) | 325 | `result-track:2aac814e2db914dd8a1c2c24c65102f0e391199d75537945a2e17690145b0297` |
| 54 | `theorem` | [roots_expand_image_frobenius](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/roots-expand-image-frobenius--c676a1889f01d8ec5ade93aa.md) | 330 | `result-track:c676a1889f01d8ec5ade93aa7b3a0d70b9df9b5f8474f529bc0d8c3fde0a7745` |
| 55 | `def` | [rootsExpandToRoots](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/rootsexpandtoroots--2cc503c77a539a546bb53507.md) | 342 | `declaration-track:2cc503c77a539a546bb535070d1334a72768c444e36eda7ccb1158ef9c4f0a3b` |
| 56 | `theorem` | [rootsExpandToRoots_apply](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/rootsexpandtoroots-apply--bfc5d3c8864754eba82c627e.md) | 347 | `result-track:bfc5d3c8864754eba82c627efc67974131ab83165ed2179b9141c8b6cae65624` |
| 57 | `def` | [rootsExpandPowToRoots](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/rootsexpandpowtoroots--9bb5410b8f02e9bb0c45ea15.md) | 353 | `declaration-track:9bb5410b8f02e9bb0c45ea152bda48fa8f4a11c59c4ec24ed3669b0cdb3e8c37` |
| 58 | `theorem` | [rootsExpandPowToRoots_apply](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/rootsexpandpowtoroots-apply--315d6cc01cf90be795cef86f.md) | 360 | `result-track:315d6cc01cf90be795cef86f363ac3e784f2e3142221c038c25445a308c03abe` |
| 59 | `def` | [rootsExpandEquivRoots](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/rootsexpandequivroots--9db91e283f593bffeb2d5418.md) | 367 | `declaration-track:9db91e283f593bffeb2d5418866c95488addcac5714b4c605b96344e54903cdc` |
| 60 | `theorem` | [rootsExpandEquivRoots_apply](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/rootsexpandequivroots-apply--fa6a8f3fabebe8e39f62c5d5.md) | 374 | `result-track:fa6a8f3fabebe8e39f62c5d50904da035a1ac602ad7e57a7c5a9806c91739399` |
| 61 | `def` | [rootsExpandPowEquivRoots](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/rootsexpandpowequivroots--8bda4f22aa69ed6a5f69fc1d.md) | 379 | `declaration-track:8bda4f22aa69ed6a5f69fc1d7f4576dde57e7608ed02eb370423135e5cd5fde9` |
| 62 | `theorem` | [rootsExpandPowEquivRoots_apply](../../../../mathematics/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/declarations/rootsexpandpowequivroots-apply--a1b0f3bca293fcd1bba1068a.md) | 388 | `result-track:a1b0f3bca293fcd1bba1068a90c0023a894b4b6ed2e776d756b4deeb27636851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
