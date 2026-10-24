# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveFourSector.Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8e02ebb752932aae0869309c4d40c0257260a32",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8e02ebb752932aae0869309c4d40c0257260a32`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.CommutingInvolutions` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SelfAdjointFor](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/selfadjointfor--a066406027a5e4c33e4d1f33.md) | 32 | `declaration-track:a066406027a5e4c33e4d1f33042ddaaf53e6c2f38fdb606fc89be9afabde50d2` |
| 2 | `theorem` | [orthogonal_of_eigen_plus_minus](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/orthogonal-of-eigen-plus-minus--14c75969ab4a704424d66a2e.md) | 36 | `result-track:14c75969ab4a704424d66a2edb64bb90e65b037045a37080719bd6553a1d324a` |
| 3 | `theorem` | [four_sum_energy](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/four-sum-energy--e6c036772f0f9ace42089b0b.md) | 50 | `result-track:e6c036772f0f9ace42089b0bf6c36e0776c0cc3e7cdb5a6b57badd104fa610f0` |
| 4 | `structure` | [PositiveCommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/positivecommutinginvolutions--c5d41fbbc4086798a8c2b7c7.md) | 78 | `declaration-track:c5d41fbbc4086798a8c2b7c79dc876ef36edc13923a0c5b6d2c9b201fad2034d` |
| 5 | `def` | [sectorPP](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/sectorpp--dc08b7aea510a086205cbaa8.md) | 89 | `declaration-track:dc08b7aea510a086205cbaa8b9a292f82831dee5f90ab4983f801b3ad0041d61` |
| 6 | `def` | [sectorPM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/sectorpm--5ffc1bda5d6a4e9ac458dcc7.md) | 93 | `declaration-track:5ffc1bda5d6a4e9ac458dcc7c72944f191886fc55e2c524168ae1f06b3fac494` |
| 7 | `def` | [sectorMP](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/sectormp--69d9332b75790a125122333d.md) | 97 | `declaration-track:69d9332b75790a125122333d471e91486c1a2db902056c24728c9643815841d7` |
| 8 | `def` | [sectorMM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/sectormm--9992886ce9b541691964eb3f.md) | 101 | `declaration-track:9992886ce9b541691964eb3fac4cf098c1dabd99fa20b9113b6fdc2f19e85d0f` |
| 9 | `theorem` | [sectorPP_apply](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/sectorpp-apply--be4ae394f5dedbbd2cd2cecf.md) | 104 | `result-track:be4ae394f5dedbbd2cd2cecf11c23cc8b21c5eaf8f3303e35c5b766f2752fdb6` |
| 10 | `theorem` | [sectorPM_apply](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/sectorpm-apply--a70d5c5cccf95da3405edddb.md) | 106 | `result-track:a70d5c5cccf95da3405edddbd23f0127dd22901055595c8003496e6eb583d597` |
| 11 | `theorem` | [sectorMP_apply](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/sectormp-apply--5406fcd8f18379fc9a7cbec2.md) | 108 | `result-track:5406fcd8f18379fc9a7cbec27b36b69211f38a10f71e639eb677eb1330e1b01b` |
| 12 | `theorem` | [sectorMM_apply](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/sectormm-apply--5322c03fbd062aa5f0e772b6.md) | 110 | `result-track:5322c03fbd062aa5f0e772b6a4c87a55bea4905e02ba2cfbbd97000081c734b7` |
| 13 | `theorem` | [first_on_PP](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/first-on-pp--a53e22e943e128ea2d8992eb.md) | 114 | `result-track:a53e22e943e128ea2d8992ebffb0599c63e263136a86598168324da60085b676` |
| 14 | `theorem` | [second_on_PP](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/second-on-pp--f4cce68cc711437cb8f49a6f.md) | 124 | `result-track:f4cce68cc711437cb8f49a6f4fbcee46109a5d582dd1e1225964cf9f2693ca62` |
| 15 | `theorem` | [first_on_PM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/first-on-pm--2f82c5b2a23e8329fe9ed8bc.md) | 135 | `result-track:2f82c5b2a23e8329fe9ed8bcc6b693c9c71161fac13304f093b916ec5ef6fd7d` |
| 16 | `theorem` | [second_on_PM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/second-on-pm--3e9b491d33c0f9a37e59e574.md) | 145 | `result-track:3e9b491d33c0f9a37e59e5744b9d13c3568a1b9cc112b1025b070e75dff65aaf` |
| 17 | `theorem` | [first_on_MP](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/first-on-mp--1e1a716a0397fd5e70baf2e9.md) | 151 | `result-track:1e1a716a0397fd5e70baf2e99c93298af7976aff8438d0cc75f946f85d5cc535` |
| 18 | `theorem` | [second_on_MP](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/second-on-mp--4b58694126e698035fbbc6c5.md) | 161 | `result-track:4b58694126e698035fbbc6c55f9e4c565b32a27c61e3fa0ec011dec290b23aff` |
| 19 | `theorem` | [first_on_MM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/first-on-mm--88b29ef8c8a5e96bd1aafb42.md) | 172 | `result-track:88b29ef8c8a5e96bd1aafb42ee6a22d8013ee3931ec9fb927c01b22e04f035b5` |
| 20 | `theorem` | [second_on_MM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/second-on-mm--064d9d1a628670b8757e0785.md) | 182 | `result-track:064d9d1a628670b8757e07858e47da0b7d094ad3f12b5d66aff32bb9c89a176b` |
| 21 | `theorem` | [orthogonal_PP_PM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/orthogonal-pp-pm--93f71e227e7c12032f4b062b.md) | 193 | `result-track:93f71e227e7c12032f4b062b5f0ccc17b86f871769ef1b16d77c23a084021afa` |
| 22 | `theorem` | [orthogonal_PP_MP](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/orthogonal-pp-mp--01d3bfc43e3c3e7f1b0d62e1.md) | 199 | `result-track:01d3bfc43e3c3e7f1b0d62e1f6ca5a4b0b8c69ab9e5cf76e3f9da658d079a5cb` |
| 23 | `theorem` | [orthogonal_PP_MM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/orthogonal-pp-mm--6cbea23627dec4da2e33fe53.md) | 205 | `result-track:6cbea23627dec4da2e33fe53fba6f0af36ca378102f65077cbb3c584ea350593` |
| 24 | `theorem` | [orthogonal_PM_MP](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/orthogonal-pm-mp--6d441bbeb32a00f9480ee2d6.md) | 211 | `result-track:6d441bbeb32a00f9480ee2d60eb8f61572d2eeed81f7c4060245e6a716a935ec` |
| 25 | `theorem` | [orthogonal_PM_MM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/orthogonal-pm-mm--17038f8cdeefe0f79b1708eb.md) | 217 | `result-track:17038f8cdeefe0f79b1708eb72c0b0b7b795d52ca76717a629492fabc18d3db1` |
| 26 | `theorem` | [orthogonal_MP_MM](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/orthogonal-mp-mm--57b0c17385a2136127485437.md) | 223 | `result-track:57b0c17385a2136127485437b855b02a8bee41020e76a4645ccb4bbdbed2df7b` |
| 27 | `theorem` | [energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/energy-decomposition--6838bdae55b02ab381bc455c.md) | 229 | `result-track:6838bdae55b02ab381bc455cda827de2f47e9e49bc73d0dedc3dffe986330f3f` |
| 28 | `def` | [interventionGeometry](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/interventiongeometry--79c64740261f7a1e294dbb92.md) | 257 | `declaration-track:79c64740261f7a1e294dbb920b64a840a30624c92ce570846e1c285784c857e9` |
| 29 | `def` | [interventionEnergy](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/interventionenergy--ce9b67cb41c813dcbccce4ce.md) | 261 | `declaration-track:ce9b67cb41c813dcbccce4ce01dd5ebdcc538841a0502a83ab80d7ce3f42062e` |
| 30 | `theorem` | [interventionEnergy_eq](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/interventionenergy-eq--131a03e43759d248fd274e74.md) | 265 | `result-track:131a03e43759d248fd274e74df5dad7e387f0fed54aa6f1e5c80f071cddcaafc` |
| 31 | `theorem` | [interventionEnergy_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/interventionenergy-nonnegative--e7915194b6437618c7423e65.md) | 271 | `result-track:e7915194b6437618c7423e6592745db89a389b006913467ffb848aaa71787734` |
| 32 | `theorem` | [interventionEnergy_le_total](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/interventionenergy-le-total--34aabbdbe50af285597a8016.md) | 276 | `result-track:34aabbdbe50af285597a801626e41685e360d50cf8993476f781b7c1927a4547` |
| 33 | `theorem` | [interventionEnergy_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean/declarations/interventionenergy-eq-zero-iff--9a4dde5d351ea5775f69b4cd.md) | 286 | `result-track:9a4dde5d351ea5775f69b4cd9532f35054ada92aec89a9948ca183f555246ca5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
