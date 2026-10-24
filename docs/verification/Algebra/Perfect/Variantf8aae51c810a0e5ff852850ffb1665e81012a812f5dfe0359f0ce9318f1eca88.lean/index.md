# Verification target: GRWTSK.Algebra.Perfect.Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dc90a653ce0741e990c65d94306bc3bdda16066",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/index.md) · [Full source](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dc90a653ce0741e990c65d94306bc3bdda16066`.

Source path: `GRWTSK/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Reduced` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.KummerPolynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PerfectRing](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/perfectring--03269930be5c71011cd76351.md) | 42 | `declaration-track:03269930be5c71011cd76351ef0f99efe56ad2cb44615106325bdfe0272f0b34` |
| 2 | `lemma` | [PerfectRing.ofSurjective](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/perfectring-ofsurjective--8150c577eb3a1ea8aa4d74c1.md) | 52 | `result-track:8150c577eb3a1ea8aa4d74c1915d64cb413dd4f2f948dc5d1e541cb7f1f497f3` |
| 3 | `instance` | [PerfectRing.ofFiniteOfIsReduced](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/perfectring-offiniteofisreduced--e4db5d98b0c908121db16235.md) | 56 | `declaration-track:e4db5d98b0c908121db162358726546b42633c574c17a765081f3806b499cf60` |
| 4 | `theorem` | [bijective_frobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/bijective-frobenius--0a79b97f463338e80176d15c.md) | 63 | `result-track:0a79b97f463338e80176d15c57a3291063f160dc4ff5455aaee14047276c7433` |
| 5 | `theorem` | [bijective_iterateFrobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/bijective-iteratefrobenius--22fa14ba8198ed77dc580958.md) | 65 | `result-track:22fa14ba8198ed77dc5809583b79982e2e04ef19a192db65eb8a76ad0cd29543` |
| 6 | `theorem` | [injective_frobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/injective-frobenius--1f8e1d06cb326a4425cbdb93.md) | 69 | `result-track:1f8e1d06cb326a4425cbdb93fb932aa93e7d514a32f42450e5a2bd1bcae290fc` |
| 7 | `theorem` | [surjective_frobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/surjective-frobenius--320c455b9ba34286b7915f3f.md) | 72 | `result-track:320c455b9ba34286b7915f3f5088134df1d59190d62a2335d69b2debf8506885` |
| 8 | `def` | [frobeniusEquiv](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/frobeniusequiv--3ef5cc27fc99bcf807719313.md) | 76 | `declaration-track:3ef5cc27fc99bcf80771931333954556dad38a08886acdf55dc57ea6dec8ba3e` |
| 9 | `theorem` | [coe_frobeniusEquiv](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/coe-frobeniusequiv--888e6d5ef7bed26cd1d305cf.md) | 80 | `result-track:888e6d5ef7bed26cd1d305cf40050114fb4b4c2b5809635aa9b96d9307a8a315` |
| 10 | `theorem` | [frobeniusEquiv_def](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/frobeniusequiv-def--11f16bb0acb4bfb01346603f.md) | 82 | `result-track:11f16bb0acb4bfb01346603f7e1dbb0d740fd8ae62f9158aff50ccb97ab3f4d2` |
| 11 | `def` | [iterateFrobeniusEquiv](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv--10b33157f48bfa10537aae5f.md) | 86 | `declaration-track:10b33157f48bfa10537aae5f81d85de2bb6f70c6f9f00801eeb8d58c5d5e6084` |
| 12 | `theorem` | [coe_iterateFrobeniusEquiv](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/coe-iteratefrobeniusequiv--d9bcc977fe124235ff4568a9.md) | 90 | `result-track:d9bcc977fe124235ff4568a9cd2fc376ef42124db53dbc5dba47cc8b1b22a2f0` |
| 13 | `theorem` | [iterateFrobeniusEquiv_def](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-def--1fa039e2770499164e5c8959.md) | 92 | `result-track:1fa039e2770499164e5c895999537cc91ce93ac42307c86ff112f065211169e9` |
| 14 | `theorem` | [iterateFrobeniusEquiv_add_apply](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-add-apply--44589314529a699641a5e995.md) | 94 | `result-track:44589314529a699641a5e9958f2eebae8006268076182bf346d41bbe49b63b01` |
| 15 | `theorem` | [iterateFrobeniusEquiv_add](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-add--577233deef4d8ae6ac8fdb3b.md) | 98 | `result-track:577233deef4d8ae6ac8fdb3b38c7dd965b8e5f5f1b6e87fcd457e94567d6b123` |
| 16 | `theorem` | [iterateFrobeniusEquiv_symm_add_apply](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-symm-add-apply--f6b81cda7809383bfecab771.md) | 102 | `result-track:f6b81cda7809383bfecab771edbed5d64393a19169622f657ab9bbba8f23d24b` |
| 17 | `theorem` | [iterateFrobeniusEquiv_symm_add](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-symm-add--6447395ff2f1858c449364db.md) | 107 | `result-track:6447395ff2f1858c449364dba00593043aeeea92185e9f9a88272dc36b4574cc` |
| 18 | `theorem` | [iterateFrobeniusEquiv_zero_apply](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-zero-apply--dac7dc614b2f9b94e57f7ba1.md) | 111 | `result-track:dac7dc614b2f9b94e57f7ba10f8218918fd3e886ff62e20aa4288a25e7966b8a` |
| 19 | `theorem` | [iterateFrobeniusEquiv_one_apply](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-one-apply--9b737cd0952348940a1f7dac.md) | 114 | `result-track:9b737cd0952348940a1f7dac54be4b3e3eea581390ecc7298934c26071715105` |
| 20 | `theorem` | [iterateFrobeniusEquiv_zero](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-zero--6d2873b02b7bd19c37abf297.md) | 118 | `result-track:6d2873b02b7bd19c37abf297c990a4ef982b0e17521c41512414cbb6cd7a5fbb` |
| 21 | `theorem` | [iterateFrobeniusEquiv_one](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-one--78ccaefdc79d0c2d6004e009.md) | 122 | `result-track:78ccaefdc79d0c2d6004e009349d1356984f3dc0113b4aab1aa66950767acea9` |
| 22 | `theorem` | [iterateFrobeniusEquiv_eq_pow](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-eq-pow--f260630e3426337c87a9b1a3.md) | 125 | `result-track:f260630e3426337c87a9b1a3e1ea04fb0572fbcbc87187e5264eeb5dc42280d0` |
| 23 | `theorem` | [iterateFrobeniusEquiv_symm](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/iteratefrobeniusequiv-symm--23d73ede66b13e0b859d9a64.md) | 129 | `result-track:23d73ede66b13e0b859d9a641355626cf50d406c7c91ef00db8abd3eba971bd2` |
| 24 | `theorem` | [frobeniusEquiv_symm_apply_frobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/frobeniusequiv-symm-apply-frobenius--260d9ac41e672ef0887b761e.md) | 134 | `result-track:260d9ac41e672ef0887b761ee46cc082e6b8ab8de561e238556a7c9fbea16d24` |
| 25 | `theorem` | [frobenius_apply_frobeniusEquiv_symm](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/frobenius-apply-frobeniusequiv-symm--a25d015699a3457a4c507681.md) | 139 | `result-track:a25d015699a3457a4c5076813372000c2a3b740e9294ecdf121e520196c25805` |
| 26 | `theorem` | [frobenius_comp_frobeniusEquiv_symm](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/frobenius-comp-frobeniusequiv-symm--28ea4ce4f55d1989a3eb5456.md) | 144 | `result-track:28ea4ce4f55d1989a3eb5456b0c1c8fd811b8dbb78c2eb789841929f1c822031` |
| 27 | `theorem` | [frobeniusEquiv_symm_comp_frobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/frobeniusequiv-symm-comp-frobenius--e47b9ddc62113d4762a1fabc.md) | 149 | `result-track:e47b9ddc62113d4762a1fabc363962d4e1d583fc64dfb0005b722697ed1d16c2` |
| 28 | `theorem` | [frobeniusEquiv_symm_pow_p](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/frobeniusequiv-symm-pow-p--6a72aa534d334dad3c0b91ff.md) | 154 | `result-track:6a72aa534d334dad3c0b91ff0dda60e91a9558c58e2e20ce0eec229f5e42eaad` |
| 29 | `theorem` | [injective_pow_p](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/injective-pow-p--6f04fdff0f29268d941b926b.md) | 157 | `result-track:6f04fdff0f29268d941b926bc90bf6a8cf8c3f93feeca9768227287406e7ccc7` |
| 30 | `lemma` | [polynomial_expand_eq](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/polynomial-expand-eq--0c0997a4a57fc3d0d7197da5.md) | 159 | `result-track:0c0997a4a57fc3d0d7197da5c57d8262d60872c3b665a1abebd76a2a33f281e3` |
| 31 | `theorem` | [not_irreducible_expand](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/not-irreducible-expand--f43f18e55fe0f1ae448b6e11.md) | 165 | `result-track:f43f18e55fe0f1ae448b6e116499040412b57313b497673ade9ff5d0bd70b28a` |
| 32 | `instance` | [instPerfectRingProd](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/instperfectringprod--40b2cba67530ec4dadc95f40.md) | 170 | `declaration-track:40b2cba67530ec4dadc95f40dea5e0dcf7edec5cbc583349df73358dc6e27ea5` |
| 33 | `class` | [PerfectField](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/perfectfield--624c2c05e33f904d07cda272.md) | 179 | `declaration-track:624c2c05e33f904d07cda272e8fc4c2227aa59ad4546c7f2f2d6b11267ec035b` |
| 34 | `lemma` | [PerfectRing.toPerfectField](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/perfectring-toperfectfield--89499be79458e7c617b8014d.md) | 183 | `result-track:89499be79458e7c617b8014d38be033c7438e0c8368f6526b6250a97d02cbdc0` |
| 35 | `instance` | [ofCharZero](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/ofcharzero--0420798515f32c1598932470.md) | 196 | `declaration-track:0420798515f32c15989324709746bdc4c3ef91e84d9358156b80b1f5a355bb56` |
| 36 | `instance` | [ofFinite](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/offinite--a4900bf8068de403b329ab1d.md) | 198 | `declaration-track:a4900bf8068de403b329ab1dc94958c348101ba2fb11ccf2fbcf8c8942c0be0c` |
| 37 | `instance` | [toPerfectRing](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/toperfectring--8059c7951a0ea001bb52e11b.md) | 206 | `declaration-track:8059c7951a0ea001bb52e11b7fbcc3147cc089c974acf45f21d79213ff072e07` |
| 38 | `theorem` | [separable_iff_squarefree](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/separable-iff-squarefree--8b1c7f5f9b01c667c278484a.md) | 216 | `result-track:8b1c7f5f9b01c667c278484a4731429884949a5a0d195b15696640834f13b669` |
| 39 | `instance` | [Algebra.IsAlgebraic.isSeparable_of_perfectField](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/algebra-isalgebraic-isseparable-of-perfectfield--64aeeb0838cc8fdb5630e406.md) | 227 | `declaration-track:64aeeb0838cc8fdb5630e40611be01adcf3d889ed84b7617677acd929e1b7347` |
| 40 | `theorem` | [Algebra.IsAlgebraic.perfectField](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/algebra-isalgebraic-perfectfield--97006f99a964332b7764356f.md) | 233 | `result-track:97006f99a964332b7764356fbe33b3fefebb4b4c8e2abf8c52c4c6d74078dd20` |
| 41 | `theorem` | [roots_expand_pow_map_iterateFrobenius_le](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand-pow-map-iteratefrobenius-le--ce533607113b4e27775b1c07.md) | 244 | `result-track:ce533607113b4e27775b1c07aced02fef85451ea88f0b0b69756b3e82643432c` |
| 42 | `theorem` | [roots_expand_map_frobenius_le](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand-map-frobenius-le--40c2d9516c633e86adaf0588.md) | 257 | `result-track:40c2d9516c633e86adaf0588fb588c7415bed0de59c1dcfbbb3e2e35338b25f7` |
| 43 | `theorem` | [roots_expand_pow_image_iterateFrobenius_subset](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand-pow-image-iteratefrobenius-subset--2d6be48ac73654ceed3698b7.md) | 262 | `result-track:2d6be48ac73654ceed3698b727800248c1c2b670585e0a68df19dbdc8e7060de` |
| 44 | `theorem` | [roots_expand_image_frobenius_subset](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand-image-frobenius-subset--73dbfdb161d382e914671462.md) | 268 | `result-track:73dbfdb161d382e91467146246f5439ce7d862b26fc6fc5094c543c88f8ebfae` |
| 45 | `theorem` | [roots_expand_pow](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand-pow--8e7f26f2bccba3653da383ab.md) | 278 | `result-track:8e7f26f2bccba3653da383ab4a94325a19774610583adb75c2ca95b50dbd116f` |
| 46 | `theorem` | [roots_expand](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand--c3e8b3bb9e3885bf75698502.md) | 286 | `result-track:c3e8b3bb9e3885bf756985022d676287085901f05f3ccbb064e5edd6f7a9bc3c` |
| 47 | `theorem` | [roots_X_pow_char_pow_sub_C](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-x-pow-char-pow-sub-c--3671757098d656510131e7a5.md) | 290 | `result-track:3671757098d656510131e7a5f25d3fa16933ef60b6243e33a44de10561388bbd` |
| 48 | `theorem` | [roots_X_pow_char_pow_sub_C_pow](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-x-pow-char-pow-sub-c-pow--3b7d6bf746d90dbfa3b4af02.md) | 295 | `result-track:3b7d6bf746d90dbfa3b4af02308ed218ec4c03c2ad03c929647bc4954b6cdd74` |
| 49 | `theorem` | [roots_X_pow_char_sub_C](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-x-pow-char-sub-c--527528629f0a0405bad47ab9.md) | 299 | `result-track:527528629f0a0405bad47ab95b58a928c295277092730d4aa0201941ef21d04d` |
| 50 | `theorem` | [roots_X_pow_char_sub_C_pow](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-x-pow-char-sub-c-pow--d6b1cbf151af0b8ce6996884.md) | 304 | `result-track:d6b1cbf151af0b8ce69968842d5d04ddd74da20b4156882b83fd756340d46035` |
| 51 | `theorem` | [roots_expand_pow_map_iterateFrobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand-pow-map-iteratefrobenius--062a9f2e0f38a0f9a852ad21.md) | 309 | `result-track:062a9f2e0f38a0f9a852ad21572c6cff4f335a804062ec50f81f9f50dd91c273` |
| 52 | `theorem` | [roots_expand_map_frobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand-map-frobenius--6636cd095e253d93c2e501c6.md) | 314 | `result-track:6636cd095e253d93c2e501c6ff81191846ad0d7513197dcf31bccfe7d9018d72` |
| 53 | `theorem` | [roots_expand_image_iterateFrobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand-image-iteratefrobenius--1f6745a06d30bfc7f604ba06.md) | 317 | `result-track:1f6745a06d30bfc7f604ba0651dad8753e079e79cac28476a4cd3fe12326395d` |
| 54 | `theorem` | [roots_expand_image_frobenius](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/roots-expand-image-frobenius--97dcaa89c3a35edc30b213d8.md) | 322 | `result-track:97dcaa89c3a35edc30b213d857124aa49c8937eac455252f9127b6be0ec12ec7` |
| 55 | `def` | [rootsExpandToRoots](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/rootsexpandtoroots--59d713cf251ed5837cc5ed86.md) | 334 | `declaration-track:59d713cf251ed5837cc5ed86c3b719b732f493b6754dc6039db6984ee643ea68` |
| 56 | `theorem` | [rootsExpandToRoots_apply](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/rootsexpandtoroots-apply--df6fb0bc71ffb690b6a05578.md) | 339 | `result-track:df6fb0bc71ffb690b6a0557860d83ab94d74c650c724ba0a3485d7e95c8a15b9` |
| 57 | `def` | [rootsExpandPowToRoots](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/rootsexpandpowtoroots--aa3db2d7fedc31f8471f60e9.md) | 345 | `declaration-track:aa3db2d7fedc31f8471f60e9e5efb896602d744d295a75730062b309050ef890` |
| 58 | `theorem` | [rootsExpandPowToRoots_apply](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/rootsexpandpowtoroots-apply--07509f4075e8350506893465.md) | 352 | `result-track:07509f4075e83505068934656de72af8e5a8c7bff06bd71fd0b83c8260abef1d` |
| 59 | `def` | [rootsExpandEquivRoots](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/rootsexpandequivroots--ab71d92ef31a3aacc6c40bac.md) | 359 | `declaration-track:ab71d92ef31a3aacc6c40baca232b96ac745c1b5fd6ae9f2f58042a42a2f9a2d` |
| 60 | `theorem` | [rootsExpandEquivRoots_apply](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/rootsexpandequivroots-apply--4ef1358b54a160ac376ce95c.md) | 366 | `result-track:4ef1358b54a160ac376ce95c7bed0699d2e759482aa86ff2adba206177022bf1` |
| 61 | `def` | [rootsExpandPowEquivRoots](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/rootsexpandpowequivroots--fc54b6fa22f3ef6e90f9ad41.md) | 371 | `declaration-track:fc54b6fa22f3ef6e90f9ad41dd9eb5ad35e57c8702d51b289c13c99133a12201` |
| 62 | `theorem` | [rootsExpandPowEquivRoots_apply](../../../../mathematics/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean/declarations/rootsexpandpowequivroots-apply--280aee1c9af84947bc4aa29e.md) | 380 | `result-track:280aee1c9af84947bc4aa29ee4bd428c3746c41c3050a16c61f4833c28df3634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
