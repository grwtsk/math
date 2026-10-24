# Verification target: GRWTSK.Algebra.GroupTheory.Quotient.Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "556fb811522073293ead7bcecbe15636be2f71f6",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `556fb811522073293ead7bcecbe15636be2f71f6`.

Source path: `GRWTSK/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ConjFinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotientaction--7d9dbe5bb2e5e7c8723a2afd.md) | 53 | `declaration-track:7d9dbe5bb2e5e7c8723a2afdaec8867b0f8d8fb7ecc899f5094e3ec9ca1ba212` |
| 2 | `class` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.AddAction.QuotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/root-grwtsk-algebra-grouptheory-quotientaction-variantb37097355001843e4a--5ba29c4c4f7017d85cac887d.md) | 60 | `declaration-track:5ba29c4c4f7017d85cac887df53c0eb7a31bdc862660045f1fec8e3fc1684d9f` |
| 3 | `instance` | [left_quotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/left-quotientaction--660d958bcd137c5d264482b8.md) | 70 | `declaration-track:660d958bcd137c5d264482b827d6ef8a9fe558f74aa39750561ccc19fd684126` |
| 4 | `instance` | [right_quotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/right-quotientaction--c0473ea66489bd7cb5b364c3.md) | 76 | `declaration-track:c0473ea66489bd7cb5b364c32d6c15087be4c4eaf6ba26bbbd504dcebd5ddc76` |
| 5 | `instance` | [right_quotientAction'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/right-quotientaction--595548e3473d2e72dd618baf.md) | 84 | `declaration-track:595548e3473d2e72dd618baf5ec9748c840bb76fa6817dab5ba9cc559b8222e4` |
| 6 | `instance` | [quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotient--bdf8bc6492eca7a94955fa5b.md) | 92 | `declaration-track:bdf8bc6492eca7a94955fa5b58c7e8f1251765a239f4a6c7e88de286a1291efc` |
| 7 | `theorem` | [Quotient.smul_mk](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotient-smul-mk--283baba76b5fb936013089b7.md) | 104 | `result-track:283baba76b5fb936013089b7208b31f49a449ecc23209e1b5c95ed6b7b685e71` |
| 8 | `theorem` | [Quotient.smul_coe](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotient-smul-coe--3ccceb6b8bf40c43732eef67.md) | 111 | `result-track:3ccceb6b8bf40c43732eef6714a2961cfa7dec1f74250c1ffdcf902418c79783` |
| 9 | `theorem` | [Quotient.mk_smul_out'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotient-mk-smul-out--3096aa8c9b8c133a054a303d.md) | 118 | `result-track:3096aa8c9b8c133a054a303d38758eff6d045193e51c89cc2c00cd76b47f4384` |
| 10 | `theorem` | [Quotient.coe_smul_out'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotient-coe-smul-out--0d2cc543147ea0f21a58d7c4.md) | 125 | `result-track:0d2cc543147ea0f21a58d7c42d98f3b8d633d8dd6a7671e8bfd1fbc7d408c0fb` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.QuotientGroup.out'_conj_pow_minimalPeriod_mem](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/root-grwtsk-algebra-grouptheory-quotientaction-variantb37097355001843e4a--f3ec911a073edd405ad8a597.md) | 130 | `result-track:f3ec911a073edd405ad8a597db2920ee93ca7bd8dd30884a787aca2a9a3a63a5` |
| 12 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.MulActionHom.toQuotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/root-grwtsk-algebra-grouptheory-quotientaction-variantb37097355001843e4a--3bb44f35330721f41a1f9659.md) | 141 | `declaration-track:3bb44f35330721f41a1f96592ceceea391350ff1a305d2f50124dbc323efd2eb` |
| 13 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.MulActionHom.toQuotient_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/root-grwtsk-algebra-grouptheory-quotientaction-variantb37097355001843e4a--69b3dfaa10b31a49f9249796.md) | 146 | `result-track:69b3dfaa10b31a49f9249796e516f2101214e7fe90a4036fea4c902a43706a85` |
| 14 | `instance` | [mulLeftCosetsCompSubtypeVal](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/mulleftcosetscompsubtypeval--8769dddf12f2c883dae0d1f0.md) | 152 | `declaration-track:8769dddf12f2c883dae0d1f0f6279d2fc2c443db268c4b427b0633010b0bc619` |
| 15 | `def` | [ofQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/ofquotientstabilizer--f33eb76fb0d7a45f418a6401.md) | 162 | `declaration-track:f33eb76fb0d7a45f418a64017017aee754b9abb1865923ea36038ea2dfbadabc` |
| 16 | `theorem` | [ofQuotientStabilizer_mk](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/ofquotientstabilizer-mk--bb78c08464db832ba16d7fd2.md) | 171 | `result-track:bb78c08464db832ba16d7fd2cb09c1410ffa780afa5dda91bb6ca3cc385e64a2` |
| 17 | `theorem` | [ofQuotientStabilizer_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/ofquotientstabilizer-mem-orbit--f17ab2f8f8eab58f6ebae7dd.md) | 177 | `result-track:f17ab2f8f8eab58f6ebae7dda7658e67e2e2426b9e64241362cfcdf481a02e85` |
| 18 | `theorem` | [ofQuotientStabilizer_smul](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/ofquotientstabilizer-smul--3ff90660425572271cb4cb21.md) | 183 | `result-track:3ff90660425572271cb4cb21f9be2643845c1aee5e2279e221db605a86f402f6` |
| 19 | `theorem` | [injective_ofQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/injective-ofquotientstabilizer--9a11546d1414b948f155e122.md) | 190 | `result-track:9a11546d1414b948f155e1225e9f443bc530d8de77cf0e13cf057180c337732c` |
| 20 | `def` | [orbitEquivQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/orbitequivquotientstabilizer--60e36c7760f03076add80a5d.md) | 202 | `declaration-track:60e36c7760f03076add80a5d7fc5087e4ff4ac32dc62b8ebb90002f5972f30f6` |
| 21 | `def` | [orbitProdStabilizerEquivGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/orbitprodstabilizerequivgroup--be3ee7bab97ceaa5b8658ace.md) | 212 | `declaration-track:be3ee7bab97ceaa5b8658acebddb3edb9b8d21c86a7977d4d4d9874f24729acf` |
| 22 | `theorem` | [card_orbit_mul_card_stabilizer_eq_card_group](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/card-orbit-mul-card-stabilizer-eq-card-group--5200fa7b5ba49e4473891c03.md) | 220 | `result-track:5200fa7b5ba49e4473891c03fb9a840992978aeff63dbb2a1f8e23d34ad77286` |
| 23 | `theorem` | [orbitEquivQuotientStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/orbitequivquotientstabilizer-symm-apply--69130f0215b4f64330ed7ce4.md) | 228 | `result-track:69130f0215b4f64330ed7ce48bd1c31916cbef5a011b7a3d7aa5547201f29d0f` |
| 24 | `theorem` | [stabilizer_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/stabilizer-quotient--be9f4f9b8ea63f1f74e49553.md) | 235 | `result-track:be9f4f9b8ea63f1f74e495532e0412765862e34c505ea6058f0e009f4bb67cc1` |
| 25 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/selfequivsigmaorbitsquotientstabilizer--e07def08190c4f89795c8a55.md) | 259 | `declaration-track:e07def08190c4f89795c8a55f07aee836ff51e4913e7d876d3534447a2f7df27` |
| 26 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/card-eq-sum-card-group-div-card-stabilizer--5b6967cece2f7aebd0714f9c.md) | 277 | `result-track:5b6967cece2f7aebd0714f9cf11ef8a30d8a0680200d6e33f9b9714f676b5a2e` |
| 27 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/selfequivsigmaorbitsquotientstabilizer--53bc6f4c932a28a5b56400b0.md) | 297 | `declaration-track:53bc6f4c932a28a5b56400b06aee268144ffd9169985e0215ace5e32fdfba1cc` |
| 28 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/card-eq-sum-card-group-div-card-stabilizer--b2f6f17ad1c4a9a518f03faf.md) | 304 | `result-track:b2f6f17ad1c4a9a518f03faf8c57cbdd5ef136c17b68159226df594cb8abaa51` |
| 29 | `def` | [sigmaFixedByEquivOrbitsProdGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/sigmafixedbyequivorbitsprodgroup--2eed7052dcacc7eb3ab5bcd0.md) | 318 | `declaration-track:2eed7052dcacc7eb3ab5bcd0b541aa0203263bca7c542f273b179584b6b4d9ec` |
| 30 | `theorem` | [sum_card_fixedBy_eq_card_orbits_mul_card_group](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/sum-card-fixedby-eq-card-orbits-mul-card-group--4239f9fe1786f6e18c92fddd.md) | 344 | `result-track:4239f9fe1786f6e18c92fdddd37b78918354656c96326e23816e3f9ab98905b5` |
| 31 | `instance` | [isPretransitive_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/ispretransitive-quotient--d0c2121aeb951ebd30039930.md) | 352 | `declaration-track:d0c2121aeb951ebd30039930d6dfcabd33dc0fcbe6a933c75e8ef4a8fad6a4d1` |
| 32 | `theorem` | [ConjClasses.card_carrier](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/conjclasses-card-carrier--adb1784469963b5f53bdac09.md) | 363 | `result-track:adb1784469963b5f53bdac090a004de66a4f5b3af760227cad7b743c162b534d` |
| 33 | `theorem` | [normalCore_eq_ker](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/normalcore-eq-ker--d2ff5e18426a39b14e2d6332.md) | 376 | `result-track:d2ff5e18426a39b14e2d6332e0bf08d369c611dabb5657e3b38f48974caaad18` |
| 34 | `def` | [quotientCentralizerEmbedding](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotientcentralizerembedding--f927188d9af052bc3313a2b8.md) | 392 | `declaration-track:f927188d9af052bc3313a2b855c59bd500c119c08ed856411b74b2db51d322a8` |
| 35 | `theorem` | [quotientCentralizerEmbedding_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotientcentralizerembedding-apply--cd882a8a40b3e686bdae49ed.md) | 403 | `result-track:cd882a8a40b3e686bdae49ed0098925b11d781ab7736d584c1fe4912dddb73da` |
| 36 | `def` | [quotientCenterEmbedding](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotientcenterembedding--f9c38ab8875c2effe9aba291.md) | 410 | `declaration-track:f9c38ab8875c2effe9aba291c05d9b72d4329891f120ea9a78aefe5b62a8658d` |
| 37 | `theorem` | [quotientCenterEmbedding_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/quotientcenterembedding-apply--111887c21f34d2e1cb2f9e60.md) | 417 | `result-track:111887c21f34d2e1cb2f9e602a46922ab58ebacbc55a9d3fa18093f56bc61791` |
| 38 | `theorem` | [card_comm_eq_card_conjClasses_mul_card](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/declarations/card-comm-eq-card-conjclasses-mul-card--edd009008e1ecd414206e1bf.md) | 428 | `result-track:edd009008e1ecd414206e1bfac9369762477198b4129a5cb4a5a5e71f9ae82e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
