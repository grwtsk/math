# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c41caf0dfbb12cc211f09968cd8fb721e036f9f2",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c41caf0dfbb12cc211f09968cd8fb721e036f9f2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/homrel--d19032e3871bb6d1f8278502.md) | 25 | `declaration-track:d19032e3871bb6d1f8278502b89a1a7a686429d89307ce810d4e66adc42720e8` |
| 2 | `def` | [Functor.homRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/functor-homrel--c4ae3d2bd3a1d1d162f10d81.md) | 38 | `declaration-track:c4ae3d2bd3a1d1d162f10d810c1c8c46bf9b9aeb14f0ea810a1831f0dc5627b3` |
| 3 | `lemma` | [Functor.homRel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/functor-homrel-iff--adb2a8fe11a846fc626cc118.md) | 42 | `result-track:adb2a8fe11a846fc626cc118ff769369a232e8fdab08a9001a24c65d625eba8a` |
| 4 | `class` | [IsStableUnderPrecomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/isstableunderprecomp--79fc994292fc68dad8a69411.md) | 52 | `declaration-track:79fc994292fc68dad8a69411fb278b976c0b2ac578a4e842450b183a7a2b235e` |
| 5 | `class` | [IsStableUnderPostcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/isstableunderpostcomp--39ba002f730413b1f603a62b.md) | 56 | `declaration-track:39ba002f730413b1f603a62b95caa4d03a06a37425512f6a1b0047948794a2e6` |
| 6 | `inductive` | [CompClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/compclosure--88775f04d9adf9f94e9cd679.md) | 63 | `declaration-track:88775f04d9adf9f94e9cd679455ee89ee5fbccf6511e59133b931055cf7ae4ef` |
| 7 | `theorem` | [CompClosure.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/compclosure-of--0c6ff8eadbc9e8b9e61f5359.md) | 68 | `result-track:0c6ff8eadbc9e8b9e61f5359a291838174d05c114aa0607f98ee8f831943208e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--467119461eb78a62813cd340.md) | 71 | `declaration-track:467119461eb78a62813cd340be38b8b847caa3ecc53ec65dc7c0335033d02df4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--2694aa8805963ad36ec90d4a.md) | 76 | `declaration-track:2694aa8805963ad36ec90d4a29a76e5be5367d24d43df1c0ab4e2434d928543a` |
| 10 | `lemma` | [compClosure_iff_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/compclosure-iff-self--fee64e24290aa4ee668e4229.md) | 85 | `result-track:fee64e24290aa4ee668e42292b08516fb2ca1be01a81df94c94174812cd41688` |
| 11 | `theorem` | [compClosure_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/compclosure-eq-self--7a3091f542d0884ac82fd838.md) | 92 | `result-track:7a3091f542d0884ac82fd838ae491ed0d06d9bea7467258d5bdb282b904da522` |
| 12 | `class` | [Congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/congruence--bbd2810ec74f63ba633e829c.md) | 104 | `declaration-track:bbd2810ec74f63ba633e829c6d0fdd9a78440e7fdde5515d704aed24c2243ace` |
| 13 | `instance` | [Functor.congruence_homRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/functor-congruence-homrel--b61ec318736936d4f50f4fd3.md) | 110 | `declaration-track:b61ec318736936d4f50f4fd3a78d78a7d3a78089ff21e0e67aae8257835e9945` |
| 14 | `structure` | [Quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/quotient--4c2e4e01f356e842c11d2352.md) | 121 | `declaration-track:4c2e4e01f356e842c11d23524b0f0315b0fc11c85413b403625cc5594d53ab17` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--f22ef24ab17165aa3e1d79d8.md) | 125 | `declaration-track:f22ef24ab17165aa3e1d79d80f7bd0d417a3a85e4389ec57155535f6abcf971f` |
| 16 | `def` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/hom--a9aa857cba98c8f9c4cb1023.md) | 131 | `declaration-track:a9aa857cba98c8f9c4cb1023c4c01845429e690138d0ffb8ded808233c6043fa` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--6cdabc6e322f7c520d3ff905.md) | 134 | `declaration-track:6cdabc6e322f7c520d3ff905338f1850955b311322ab9ab70c579a935c5dc226` |
| 18 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/comp--f0b165b5ebf580f55a3595d8.md) | 138 | `declaration-track:f0b165b5ebf580f55a3595d8db1744d13e4a48b88827e8968b3806967cd5e262` |
| 19 | `theorem` | [comp_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/comp-mk--be1f76250d8078e7a392b7e1.md) | 146 | `result-track:be1f76250d8078e7a392b7e1a1cdbe52387d228234b02b11b592ab74cc2e4d7a` |
| 20 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/category--de5729dcb713874872c7e7b8.md) | 151 | `declaration-track:de5729dcb713874872c7e7b833fe1303fd5888f1f25456237e38ae54ca43f409` |
| 21 | `def` | [equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/equiv--1c35e422625d84888a3d1618.md) | 161 | `declaration-track:1c35e422625d84888a3d1618f8e1f607c79b64d4544cb8ef56fa9bd957688b7f` |
| 22 | `def` | [inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/inv--5b79779bf714f6ac7838f199.md) | 170 | `declaration-track:5b79779bf714f6ac7838f199285d419dd47eecce79ff246bb2f865a230a2b317` |
| 23 | `theorem` | [inv_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/inv-mk--e523b26504b52f2786a5440e.md) | 177 | `result-track:e523b26504b52f2786a5440e68c866694dbd779457e1e57b20697a7128949598` |
| 24 | `instance` | [groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/groupoid--fdef6cca14798318bc4064ed.md) | 183 | `declaration-track:fdef6cca14798318bc4064edb422fcb0e1899b13baae6d184df47a914032dc22` |
| 25 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/functor--b62c23b5ea7d9eb5caeb65e3.md) | 192 | `declaration-track:b62c23b5ea7d9eb5caeb65e3397e02ea8041e6dfe65c948f6e6f765be7fcd8fd` |
| 26 | `instance` | [full_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/full-functor--90b025f1e1dea2b0d06872dd.md) | 197 | `declaration-track:90b025f1e1dea2b0d06872ddaf9488d3e8c331f3bd72f7602adb9059f1eb46b4` |
| 27 | `instance` | [essSurj_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/esssurj-functor--af23154b0b9e9d171fecfa13.md) | 200 | `declaration-track:af23154b0b9e9d171fecfa13cacb0bc43ece66de817ac66bcbeb8e9b35fc6828` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--b6956ad1588c93f5104ddde0.md) | 203 | `declaration-track:b6956ad1588c93f5104ddde0c6aeba0857c8843b9966c3ebb5103a3438b0e82f` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--8f875bde52ed3e2d20df14f0.md) | 206 | `declaration-track:8f875bde52ed3e2d20df14f0585b6319caba4a54ec133024e90d1af8e9e568fb` |
| 30 | `theorem` | [induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/induction--c7b9f9615e6a34213fa83e53.md) | 209 | `result-track:c7b9f9615e6a34213fa83e530c1e37ffce6567ac0121382ad22789446e3083d2` |
| 31 | `theorem` | [sound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/sound--aa8f54f727ab546f806438f3.md) | 215 | `result-track:aa8f54f727ab546f806438f33c255e163a6f5e09b5cadb42982c337036480868` |
| 32 | `theorem` | [functor_map_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/functor-map-eq-iff--11076f46d5ef791abb0f96ad.md) | 220 | `result-track:11076f46d5ef791abb0f96ad6a65eb4b3f0911227dad7ccd39bc4232d869fed3` |
| 33 | `theorem` | [functor_homRel_eq_compClosure_eqvGen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/functor-homrel-eq-compclosure-eqvgen--c93f8b523aa8bcadc511671f.md) | 226 | `result-track:c93f8b523aa8bcadc511671fcbf24f00ae824a4f3b68554ef8115df89c6af7d8` |
| 34 | `theorem` | [compClosure.congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/compclosure-congruence--18862239c5d49c0cc335130f.md) | 231 | `result-track:18862239c5d49c0cc335130f9108854a40bd8f435055a46c66ba51f82a5958fb` |
| 35 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/lift--cdd3648a74ac4328b7744f56.md) | 241 | `declaration-track:cdd3648a74ac4328b7744f5681138ae42fe9818d803d5e6e82af173c3392db6f` |
| 36 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/lift-spec--4d8703f83085bfea4d6dfd09.md) | 255 | `result-track:4d8703f83085bfea4d6dfd09d0189a156a10bfc771e436ce58fa530b3b3832a7` |
| 37 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/lift-unique--1eda142905bd5a00d46d9fc4.md) | 258 | `result-track:1eda142905bd5a00d46d9fc41ec8f85e620da0b657993ef09be78f75a89d3c08` |
| 38 | `lemma` | [lift_unique'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/lift-unique--4e709d5c37bc53148ebb09de.md) | 270 | `result-track:4e709d5c37bc53148ebb09debbb9389ba0eddda61b58e0880f46a04d4198711b` |
| 39 | `def` | [lift.isLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/lift-islift--a34853e12060f03f9257b271.md) | 280 | `declaration-track:a34853e12060f03f9257b271d50a04bcdeb3c509072c61ab5d166a27f86ff28e` |
| 40 | `theorem` | [lift.isLift_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/lift-islift-hom--bee0d13618721af7e06d40a0.md) | 284 | `result-track:bee0d13618721af7e06d40a0986ad88c33e76d70cb1a026bf00b4756b318ea23` |
| 41 | `theorem` | [lift.isLift_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/lift-islift-inv--65beb35709e9e8de760bb1b5.md) | 288 | `result-track:65beb35709e9e8de760bb1b5c2069d5863b38c42636485d5a9d6aa66e9d71394` |
| 42 | `theorem` | [lift_obj_functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/lift-obj-functor-obj--24ea8b9662e61ea8f82ccd4d.md) | 291 | `result-track:24ea8b9662e61ea8f82ccd4df24d0f93b015150656dbe030b07c713896fff11f` |
| 43 | `theorem` | [lift_map_functor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/lift-map-functor-map--69666bfc0bd30e4ea80cfec4.md) | 294 | `result-track:69666bfc0bd30e4ea80cfec4f8da0ff9dd80718402e10f84993d99b4cde93a1f` |
| 44 | `lemma` | [natTrans_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/nattrans-ext--1d0cbad89b125b3fcdb1c044.md) | 300 | `result-track:1d0cbad89b125b3fcdb1c04444a1048910605ae74ffe0791c6fbb196c77d73b0` |
| 45 | `def` | [natTransLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/nattranslift--289c9e6832395ca7c8fad7a4.md) | 308 | `declaration-track:289c9e6832395ca7c8fad7a4c0891db34ccd3520e57a81af4ed151ecb1dca028` |
| 46 | `lemma` | [natTransLift_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/nattranslift-app--aa5e86b659fa51a365826c91.md) | 316 | `result-track:aa5e86b659fa51a365826c917ae2cbd32f161099de2d5b758b5ad79b75d58ab1` |
| 47 | `lemma` | [comp_natTransLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/comp-nattranslift--76a44f34fd1aa5afedfa099c.md) | 321 | `result-track:76a44f34fd1aa5afedfa099cf6a352dbed7daf4867d2d1194b0a0de9cb2d2463` |
| 48 | `lemma` | [natTransLift_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/nattranslift-id--ae6624e6e51d00b2a837f567.md) | 327 | `result-track:ae6624e6e51d00b2a837f56752e586a715cce437d2525d60cf38c47644f7b6bc` |
| 49 | `def` | [natIsoLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/natisolift--623a6e19a4665f41320e9b54.md) | 333 | `declaration-track:623a6e19a4665f41320e9b54f20957635c31e34f94a452e9238bf918c2283f5b` |
| 50 | `instance` | [full_whiskeringLeft_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/full-whiskeringleft-functor--96d26971e2dad16935fbfb40.md) | 342 | `declaration-track:96d26971e2dad16935fbfb4008a4d2faa0d88f270ecaf1d9d38a89c95767a31f` |
| 51 | `instance` | [faithful_whiskeringLeft_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/faithful-whiskeringleft-functor--8ab3a8bf02422a7e8ac703f2.md) | 346 | `declaration-track:8ab3a8bf02422a7e8ac703f28fe3566e0a06776a626201b6b69c79ba009d44f7` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--9f0bb298ff9179002da543d7.md) | 355 | `declaration-track:9f0bb298ff9179002da543d73ee0098c5674d366c88e7fa8d5abbd6c29370e36` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--708e7179f36508d5d5cff89b.md) | 361 | `declaration-track:708e7179f36508d5d5cff89b43ab2ab352b6305d731af55a2aef8751b1ad6f87` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--16f52297e932572d670281f5.md) | 366 | `declaration-track:16f52297e932572d670281f5727538920f033c273505dfb8ee974fdce29a9fed` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant624c8b16a7fdf02706301bf288b7b737dbbd5981c0598b5a32a9024a85bb05e7.lean/declarations/instance--655a576791c0acc1b7a46d11.md) | 370 | `declaration-track:655a576791c0acc1b7a46d1188f9153a649592b76c6d80513cba323e38e96505` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
