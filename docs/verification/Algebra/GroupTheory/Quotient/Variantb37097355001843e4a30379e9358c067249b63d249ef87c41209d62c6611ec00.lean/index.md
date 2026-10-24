# Verification target: GRWTSK.Algebra.GroupTheory.Quotient.Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac67a7792bf237603a0e187dcf3ff0d9e1aa7442",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac67a7792bf237603a0e187dcf3ff0d9e1aa7442`.

Source path: `GRWTSK/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ConjFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotientaction--220bb82912e0008e6c31c65d.md) | 45 | `declaration-track:220bb82912e0008e6c31c65d9096ad9ee6abd5ff7fa98f6d1cdeaedf569d25bb` |
| 2 | `class` | [_root_.AddAction.QuotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/root-addaction-quotientaction--338a53f7e92718e01d2fb3ad.md) | 52 | `declaration-track:338a53f7e92718e01d2fb3ad1dd9ae0710968afe5bf195ca04494194e6bbcedb` |
| 3 | `instance` | [left_quotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/left-quotientaction--c8147e77616323ab9505988d.md) | 62 | `declaration-track:c8147e77616323ab9505988d4cf1da2e148800b66234aed106eefb83f1dbef18` |
| 4 | `instance` | [right_quotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/right-quotientaction--57f35ba4cc8bbd7c32d3c40b.md) | 68 | `declaration-track:57f35ba4cc8bbd7c32d3c40b365e368260946025de05c30fc664e272aba14823` |
| 5 | `instance` | [right_quotientAction'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/right-quotientaction--fa3bc6b3f35bf3c9ef8c44bd.md) | 76 | `declaration-track:fa3bc6b3f35bf3c9ef8c44bd1d3c7d820423e3260be14905baf8445bc36c3d4b` |
| 6 | `instance` | [quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotient--4aa577cbed9f02ac3aca0655.md) | 84 | `declaration-track:4aa577cbed9f02ac3aca0655e5855025d6c3270b4b5b3ef66914f61dfdff9f9a` |
| 7 | `theorem` | [Quotient.smul_mk](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotient-smul-mk--f6980d99d10f26ec36367a84.md) | 96 | `result-track:f6980d99d10f26ec36367a8452a29a8688c7516c4eae45f88cbbb743ee974157` |
| 8 | `theorem` | [Quotient.smul_coe](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotient-smul-coe--e4553fe0a9971c51033bab67.md) | 103 | `result-track:e4553fe0a9971c51033bab672a3e8290e78492f50e1896fa4b6021610d2b40ba` |
| 9 | `theorem` | [Quotient.mk_smul_out'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotient-mk-smul-out--ebd626ee4d8084e3dda6aead.md) | 110 | `result-track:ebd626ee4d8084e3dda6aead28ee3d8df61d29682d7befb0c45830def75dbc1f` |
| 10 | `theorem` | [Quotient.coe_smul_out'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotient-coe-smul-out--ed5e2e7dc7aeb648f8ba348b.md) | 117 | `result-track:ed5e2e7dc7aeb648f8ba348b303e207f71adefd6e2c738847656ca61391d8daf` |
| 11 | `theorem` | [_root_.QuotientGroup.out'_conj_pow_minimalPeriod_mem](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/root-quotientgroup-out-conj-pow-minimalperiod-mem--b37c48f73e1d6ef9bbc66c8f.md) | 122 | `result-track:b37c48f73e1d6ef9bbc66c8fce1203d24a2b45375ac2f9df54e0dd32bceb504d` |
| 12 | `def` | [_root_.MulActionHom.toQuotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/root-mulactionhom-toquotient--8618c7a87276f09f049aa2ca.md) | 133 | `declaration-track:8618c7a87276f09f049aa2caed14f45a01e25be34bae44fae6486ea8330f4098` |
| 13 | `theorem` | [_root_.MulActionHom.toQuotient_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/root-mulactionhom-toquotient-apply--493c86c54a9457a597c4ac04.md) | 138 | `result-track:493c86c54a9457a597c4ac042f4bd649e9827049071e5a62c7692bd88041b9d7` |
| 14 | `instance` | [mulLeftCosetsCompSubtypeVal](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/mulleftcosetscompsubtypeval--cabbf971ffdcc42d974d22b1.md) | 144 | `declaration-track:cabbf971ffdcc42d974d22b1a1c072b5f92c2ea2da795068691101e30bff5d23` |
| 15 | `def` | [ofQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/ofquotientstabilizer--a2c02645c867b7a3300d63b8.md) | 154 | `declaration-track:a2c02645c867b7a3300d63b8c9eea49c3bddea0f2e1e67d147fed901b8af6d30` |
| 16 | `theorem` | [ofQuotientStabilizer_mk](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/ofquotientstabilizer-mk--8f6776a1e03b3c56128d9b4d.md) | 163 | `result-track:8f6776a1e03b3c56128d9b4d4b0a3c0277e51fdafc0b8c072c8d6b5011addbc6` |
| 17 | `theorem` | [ofQuotientStabilizer_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/ofquotientstabilizer-mem-orbit--429ef0a3d0c25efed1bc759c.md) | 169 | `result-track:429ef0a3d0c25efed1bc759cd42200f4c1fceabfc262b6a327df2f993b36b3aa` |
| 18 | `theorem` | [ofQuotientStabilizer_smul](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/ofquotientstabilizer-smul--0bcb8c25a7ce3b948c90b89d.md) | 175 | `result-track:0bcb8c25a7ce3b948c90b89df27c36c7f48d48f8df40298be49da75159761a9b` |
| 19 | `theorem` | [injective_ofQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/injective-ofquotientstabilizer--f2f8a76cdf61983463c4eab4.md) | 182 | `result-track:f2f8a76cdf61983463c4eab405e89df9be4f8540781e92241f2375e50c560835` |
| 20 | `def` | [orbitEquivQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/orbitequivquotientstabilizer--f05113c612bfc766c0ab752b.md) | 194 | `declaration-track:f05113c612bfc766c0ab752bc691adcf98bc62adecf2edeb5f85cc95c6c4f2bc` |
| 21 | `def` | [orbitProdStabilizerEquivGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/orbitprodstabilizerequivgroup--d85088f82a3eb4538377e733.md) | 204 | `declaration-track:d85088f82a3eb4538377e73335cb776a3fa36498fe8a7404e92927b3c829cb2c` |
| 22 | `theorem` | [card_orbit_mul_card_stabilizer_eq_card_group](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/card-orbit-mul-card-stabilizer-eq-card-group--6c8bd5cce32eef72d1c0e731.md) | 212 | `result-track:6c8bd5cce32eef72d1c0e731de83c3c24f11382736fb0667aa01565dc7978505` |
| 23 | `theorem` | [orbitEquivQuotientStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/orbitequivquotientstabilizer-symm-apply--c0ecf6a1b7cac8190643adef.md) | 220 | `result-track:c0ecf6a1b7cac8190643adefaabd7ad4dab0e7d909a60de93e14eacb17b34571` |
| 24 | `theorem` | [stabilizer_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/stabilizer-quotient--f7f71e0bb7ba48a4d5c7ac19.md) | 227 | `result-track:f7f71e0bb7ba48a4d5c7ac194f4f1a5c21d6f2c32dd1dbcd26aec1508430ef00` |
| 25 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/selfequivsigmaorbitsquotientstabilizer--9d8553587053b828f084d7a1.md) | 251 | `declaration-track:9d8553587053b828f084d7a1d3fd4b10ad9bf7148930e954751d3382627586f6` |
| 26 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/card-eq-sum-card-group-div-card-stabilizer--289bd0112306d20ece404299.md) | 269 | `result-track:289bd0112306d20ece4042992304142ec8af722d605a9fb8f158c022595b7d77` |
| 27 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/selfequivsigmaorbitsquotientstabilizer--d2136ee733c4c1bf80f9a034.md) | 289 | `declaration-track:d2136ee733c4c1bf80f9a0346dd2e491c85d899605a7a8f4d4fd5bdc330e381b` |
| 28 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/card-eq-sum-card-group-div-card-stabilizer--47f0335e9cf4a981e7546db7.md) | 296 | `result-track:47f0335e9cf4a981e7546db7ec0a177fc2b3f526956e50740dc526e87420a759` |
| 29 | `def` | [sigmaFixedByEquivOrbitsProdGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/sigmafixedbyequivorbitsprodgroup--5807500f43a8d168dfadad75.md) | 310 | `declaration-track:5807500f43a8d168dfadad75f49b8487db154cdc5980cf0ab3a65f330275b1bd` |
| 30 | `theorem` | [sum_card_fixedBy_eq_card_orbits_mul_card_group](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/sum-card-fixedby-eq-card-orbits-mul-card-group--83a34457ff35d87b1dc76e13.md) | 336 | `result-track:83a34457ff35d87b1dc76e13beb382e36bc839e6a17e4e92cec43b8a4b7cc4c1` |
| 31 | `instance` | [isPretransitive_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/ispretransitive-quotient--58518f1155d1c934f28363b9.md) | 344 | `declaration-track:58518f1155d1c934f28363b9782db9c4ecb200d1d492542d4da7d779b3780ca5` |
| 32 | `theorem` | [ConjClasses.card_carrier](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/conjclasses-card-carrier--676d549d9805ff512d16ad67.md) | 355 | `result-track:676d549d9805ff512d16ad67a131708132d12810ef67be258373ad1546ce7161` |
| 33 | `theorem` | [normalCore_eq_ker](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/normalcore-eq-ker--617009d96121699ad5b5784f.md) | 368 | `result-track:617009d96121699ad5b5784fe94fb6a11f48a7430a1017a5a6d7110ec3e471bd` |
| 34 | `def` | [quotientCentralizerEmbedding](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotientcentralizerembedding--afa71a202c50829120eec7a6.md) | 384 | `declaration-track:afa71a202c50829120eec7a6abf1860bb6adf91c45fe3dfbbd100bedcd9b9ee6` |
| 35 | `theorem` | [quotientCentralizerEmbedding_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotientcentralizerembedding-apply--89e24d62f9128a03c39223c6.md) | 395 | `result-track:89e24d62f9128a03c39223c64f1c167e13747d7c64fa2cddaf2bd80a04da5f63` |
| 36 | `def` | [quotientCenterEmbedding](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotientcenterembedding--0c69cb93c1763df440444d73.md) | 402 | `declaration-track:0c69cb93c1763df440444d7325ba03ff735b15ca6fe0d7e130becad3282a3602` |
| 37 | `theorem` | [quotientCenterEmbedding_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/quotientcenterembedding-apply--a61118554d908228049824ef.md) | 409 | `result-track:a61118554d908228049824efa559aed4172fa4e8fe54f07cc73d320e428e9448` |
| 38 | `theorem` | [card_comm_eq_card_conjClasses_mul_card](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/declarations/card-comm-eq-card-conjclasses-mul-card--d530e98fb2e73f3bc26a330d.md) | 420 | `result-track:d530e98fb2e73f3bc26a330d8085e4f397b55a2eb80c52a18c7601f833556357` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
