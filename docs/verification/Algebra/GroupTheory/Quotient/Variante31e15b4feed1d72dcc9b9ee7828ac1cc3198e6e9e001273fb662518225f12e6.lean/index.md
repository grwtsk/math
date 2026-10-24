# Verification target: GRWTSK.Algebra.GroupTheory.Quotient.Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b995dc7840811a377de242c064c81d7240b30073",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b995dc7840811a377de242c064c81d7240b30073`.

Source path: `GRWTSK/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Actions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.ZPowers.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotientaction--4afb2225831c32fdd0737556.md) | 44 | `declaration-track:4afb2225831c32fdd073755674a6e9f2f58cb553a9962105c3964c7b2ea56988` |
| 2 | `class` | [_root_.AddAction.QuotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/root-addaction-quotientaction--b9e7220da6902373e6de0ee5.md) | 50 | `declaration-track:b9e7220da6902373e6de0ee50eb555fb27a3a8d99fc72ffbf591a2eb6b369381` |
| 3 | `instance` | [left_quotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/left-quotientaction--59df4d444cf24b4bb142c754.md) | 59 | `declaration-track:59df4d444cf24b4bb142c7540f583b2c2c52b40e3c76fd545e16b16cdaf1d104` |
| 4 | `instance` | [right_quotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/right-quotientaction--e49e9eb483a6ae6968ea3e3f.md) | 63 | `declaration-track:e49e9eb483a6ae6968ea3e3f32054bc4c0e08ca9ae74bf039446acc0e51797fe` |
| 5 | `instance` | [right_quotientAction'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/right-quotientaction--11d44e4469a5b9d78c5d28a8.md) | 69 | `declaration-track:11d44e4469a5b9d78c5d28a859e223a77245719b75303821286b0a1a0456769a` |
| 6 | `instance` | [quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotient--ac76d718fd4628eeffe9b5ae.md) | 75 | `declaration-track:ac76d718fd4628eeffe9b5ae632b09aa827cd6a3db05bc417cafc4371ae2e04a` |
| 7 | `theorem` | [Quotient.smul_mk](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotient-smul-mk--5c01f428daff1aa3fbc5fc50.md) | 85 | `result-track:5c01f428daff1aa3fbc5fc50cfc4839123ac65c5b6f3794d76d47d67f40cee8c` |
| 8 | `theorem` | [Quotient.smul_coe](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotient-smul-coe--c34cb47f8fa4a1217c96530e.md) | 90 | `result-track:c34cb47f8fa4a1217c96530ec6160f6097927f268988f226a5d2466a19df5a26` |
| 9 | `theorem` | [Quotient.mk_smul_out](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotient-mk-smul-out--62d5cba0f873f891c665c507.md) | 95 | `result-track:62d5cba0f873f891c665c5073d806e568bd329d11599e33282d145b4679e632b` |
| 10 | `theorem` | [Quotient.coe_smul_out](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotient-coe-smul-out--6448c651fba7ecc4b6ca19d2.md) | 99 | `result-track:6448c651fba7ecc4b6ca19d2b3df8ff03a891aa15721e77746c31253869e822c` |
| 11 | `theorem` | [_root_.QuotientGroup.out_conj_pow_minimalPeriod_mem](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/root-quotientgroup-out-conj-pow-minimalperiod-mem--a142305fd7c718d68d6bb39d.md) | 102 | `result-track:a142305fd7c718d68d6bb39d90eac7c68363cbec95791ab6d39201eb7d558314` |
| 12 | `def` | [_root_.MulActionHom.toQuotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/root-mulactionhom-toquotient--ee681532edbc8656966f7428.md) | 112 | `declaration-track:ee681532edbc8656966f742801dfaf204c551d9bbe658996d01712ef6dc8ca00` |
| 13 | `theorem` | [_root_.MulActionHom.toQuotient_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/root-mulactionhom-toquotient-apply--1c81cf2941f6064a9f9e826e.md) | 116 | `result-track:1c81cf2941f6064a9f9e826e1eec8c9399c41e9c25955db425f24a596c1fd621` |
| 14 | `instance` | [mulLeftCosetsCompSubtypeVal](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/mulleftcosetscompsubtypeval--f9162718882e4379193334d4.md) | 121 | `declaration-track:f9162718882e4379193334d420e0e443b4d8a860d2123ee897ed649502762389` |
| 15 | `def` | [ofQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/ofquotientstabilizer--0b888b1b8eff1cf4a1968b4d.md) | 129 | `declaration-track:0b888b1b8eff1cf4a1968b4de8f61339be8f950ac6354f8203a078f4ae898ad6` |
| 16 | `theorem` | [ofQuotientStabilizer_mk](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/ofquotientstabilizer-mk--79b5a4ca77125956892ccd10.md) | 136 | `result-track:79b5a4ca77125956892ccd105754ec4725fa4cb5c9462ac46bb935c81e64fd22` |
| 17 | `theorem` | [ofQuotientStabilizer_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/ofquotientstabilizer-mem-orbit--2ab517b7e0a29fade366256b.md) | 140 | `result-track:2ab517b7e0a29fade366256bca1421600b623e1b5c4261d4f17d276499f29236` |
| 18 | `theorem` | [ofQuotientStabilizer_smul](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/ofquotientstabilizer-smul--367bc457421ccdc78fa18c70.md) | 144 | `result-track:367bc457421ccdc78fa18c708630048a615c7dca76264d30dc891347b42a8927` |
| 19 | `theorem` | [injective_ofQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/injective-ofquotientstabilizer--9ea5aee5609f662009a3abe8.md) | 149 | `result-track:9ea5aee5609f662009a3abe8e8d115dea6c33fdb586882d2c71fb7126c96f47d` |
| 20 | `def` | [orbitEquivQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/orbitequivquotientstabilizer--15438c90ecf9727cd57f97d3.md) | 159 | `declaration-track:15438c90ecf9727cd57f97d31f3cf049cb8e7b37395041eb85782d7b33997e2a` |
| 21 | `def` | [orbitProdStabilizerEquivGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/orbitprodstabilizerequivgroup--d1146e8d5abd840dc159f09c.md) | 167 | `declaration-track:d1146e8d5abd840dc159f09cf834ce50390ed665d583f43d43cd511171743ccc` |
| 22 | `theorem` | [card_orbit_mul_card_stabilizer_eq_card_group](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/card-orbit-mul-card-stabilizer-eq-card-group--8477bc6fa01bb05531039011.md) | 173 | `result-track:8477bc6fa01bb05531039011f78adc7e4f443b1114b76eef1d559613bfe2d0d8` |
| 23 | `theorem` | [orbitEquivQuotientStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/orbitequivquotientstabilizer-symm-apply--e33e3a10a1e7777fe31576ab.md) | 179 | `result-track:e33e3a10a1e7777fe31576ab8f780f8e40cf1f2fe071e89154b8e2f332746851` |
| 24 | `theorem` | [stabilizer_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/stabilizer-quotient--8e1baae17278b0bb42d4e972.md) | 184 | `result-track:8e1baae17278b0bb42d4e9729e0497f31366f90dbb6cbea95f81097a1f6bb8ed` |
| 25 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/selfequivsigmaorbitsquotientstabilizer--131d381ebd2c76bdb4120351.md) | 205 | `declaration-track:131d381ebd2c76bdb4120351cae7c6115211437fa397e097daec85b9d0160dfb` |
| 26 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/card-eq-sum-card-group-div-card-stabilizer--409252bac6a96b80c688db26.md) | 221 | `result-track:409252bac6a96b80c688db2651ad64fe3e2ec854067ef6c6d803ff34dbdf1189` |
| 27 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/selfequivsigmaorbitsquotientstabilizer--9e939ab20fde93463c2522fa.md) | 239 | `declaration-track:9e939ab20fde93463c2522faa1a048e966dc06d2cccdde7cb1047fbe549ce9dc` |
| 28 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/card-eq-sum-card-group-div-card-stabilizer--0533ff9251e17cd8b846e14f.md) | 244 | `result-track:0533ff9251e17cd8b846e14f330da2b2fc7588a134b2b7cf697188d82b1585b4` |
| 29 | `def` | [sigmaFixedByEquivOrbitsProdGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/sigmafixedbyequivorbitsprodgroup--1e46550f8ec0524c52edb969.md) | 256 | `declaration-track:1e46550f8ec0524c52edb969e26b5c577c226b33e641e147ab90c82bb65a86ab` |
| 30 | `theorem` | [sum_card_fixedBy_eq_card_orbits_mul_card_group](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/sum-card-fixedby-eq-card-orbits-mul-card-group--ee15444f7b19f5d731f53381.md) | 280 | `result-track:ee15444f7b19f5d731f53381e20602f6486d795fbf910c2877a07b89dd8268fa` |
| 31 | `instance` | [isPretransitive_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/ispretransitive-quotient--140ec7fbbea73d714f50f199.md) | 286 | `declaration-track:140ec7fbbea73d714f50f1991df5962208ad5b241d1dbc1bd304d16a8c563f56` |
| 32 | `instance` | [finite_quotient_of_pretransitive_of_finite_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/finite-quotient-of-pretransitive-of-finite-quotient--4add24616a9ad6cf0778af8c.md) | 295 | `declaration-track:4add24616a9ad6cf0778af8c7b3769264dc005abccb00a362c0611102b9c4b24` |
| 33 | `def` | [equivSubgroupOrbitsSetoidComap](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/equivsubgrouporbitssetoidcomap--707904938549b3db48f1cfa5.md) | 315 | `declaration-track:707904938549b3db48f1cfa51e5ee873d27126401b657bab4decebfb54066152` |
| 34 | `def` | [equivSubgroupOrbits](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/equivsubgrouporbits--a2d1b19c911700fe9c1b5020.md) | 347 | `declaration-track:a2d1b19c911700fe9c1b5020f4888326cdfa2dd85fe71a563d840fe176a13e9c` |
| 35 | `instance` | [finite_quotient_of_finite_quotient_of_finite_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/finite-quotient-of-finite-quotient-of-finite-quotient--aa158d7c7bdba6065269eaaa.md) | 355 | `declaration-track:aa158d7c7bdba6065269eaaabc755d7d7543186947a34953ef95cfea764ae374` |
| 36 | `def` | [equivSubgroupOrbitsQuotientGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/equivsubgrouporbitsquotientgroup--662ebe71d5d7e8d90c22b85b.md) | 365 | `declaration-track:662ebe71d5d7e8d90c22b85b203249d8c3a4de36a0b67970012c32df117a5d8b` |
| 37 | `def` | [selfEquivOrbitsQuotientProd'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/selfequivorbitsquotientprod--b7f72a55f5ee7f71c7ec3e5a.md) | 409 | `declaration-track:b7f72a55f5ee7f71c7ec3e5afd72efaaaa31f6a7ffe1818cb609408b8987eeb9` |
| 38 | `def` | [selfEquivOrbitsQuotientProd](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/selfequivorbitsquotientprod--9e87f74158602b88e57d86bb.md) | 426 | `declaration-track:9e87f74158602b88e57d86bbf73962294c0e8e7c3b27598ace78fd34173f242e` |
| 39 | `theorem` | [ConjClasses.card_carrier](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/conjclasses-card-carrier--7cdcd947761424e8db5326eb.md) | 435 | `result-track:7cdcd947761424e8db5326ebfad4a34017222c421e85383eb0f3d1b043b340a0` |
| 40 | `theorem` | [normalCore_eq_ker](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/normalcore-eq-ker--84932e2d1d40be44a19f8035.md) | 449 | `result-track:84932e2d1d40be44a19f8035811b16c68ecc3b1f8e2d19f1cfe3a8b7ded1e5ef` |
| 41 | `def` | [quotientCentralizerEmbedding](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotientcentralizerembedding--3a2bf3321afda4613aead3be.md) | 464 | `declaration-track:3a2bf3321afda4613aead3bed205d69cec8f5d6780e0a0632ba39bbbfa06a59c` |
| 42 | `theorem` | [quotientCentralizerEmbedding_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotientcentralizerembedding-apply--eb88667bf140bdbdf6e3e2af.md) | 474 | `result-track:eb88667bf140bdbdf6e3e2af13b692a0a5e6e503f39a4b7d0ce80ecef8005be3` |
| 43 | `def` | [quotientCenterEmbedding](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotientcenterembedding--f6f6db5bdec99a1a2cefc5e2.md) | 480 | `declaration-track:f6f6db5bdec99a1a2cefc5e226d526788ce0c067be238a99b82eab910afa9a9a` |
| 44 | `theorem` | [quotientCenterEmbedding_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/declarations/quotientcenterembedding-apply--14dfd6d45fd12aa4f3c85425.md) | 486 | `result-track:14dfd6d45fd12aa4f3c85425427d8a7ba500ed4036e6e3f0f748fb7f0bdb38e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
