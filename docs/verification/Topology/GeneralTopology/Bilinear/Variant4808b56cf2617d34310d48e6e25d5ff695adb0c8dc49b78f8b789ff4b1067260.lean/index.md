# Verification target: GRWTSK.Topology.GeneralTopology.Bilinear.Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ac94975a080f6513d6777d378c9adbe53cc094b",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ac94975a080f6513d6777d378c9adbe53cc094b`.

Source path: `GRWTSK/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.ContinuousLinearMap` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [opNorm_ext](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/opnorm-ext--5482fd284ee8e8ebdd7766af.md) | 55 | `result-track:5482fd284ee8e8ebdd7766af7dd7a24c2b47df2f9de3d4d1742f3a0f0c660dfa` |
| 2 | `theorem` | [opNorm_le_bound₂](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/opnorm-le-bound--f62d40a594a754ad8757d05c.md) | 69 | `result-track:f62d40a594a754ad8757d05c5b025523726d92b78a6258473fbbe0f833d9de85` |
| 3 | `theorem` | [le_opNorm₂](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/le-opnorm--9604647f5c65957b934cae17.md) | 74 | `result-track:9604647f5c65957b934cae1785d4939e7d1fa6c51ec54cbcc5e78d99e40d4fa7` |
| 4 | `theorem` | [le_of_opNorm₂_le_of_le](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/le-of-opnorm-le-of-le--6a6f26d7f72560a4d8fb0e0f.md) | 79 | `result-track:6a6f26d7f72560a4d8fb0e0f6405d75c52ce6afc1fd0a9d73825f104921bb0da` |
| 5 | `lemma` | [norm_mkContinuous₂_aux](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/norm-mkcontinuous-aux--ffd897cc120ae1f29ecbd160.md) | 91 | `result-track:ffd897cc120ae1f29ecbd16026ec42a21eb39c43266eb7e8638d72f45752b4bb` |
| 6 | `def` | [mkContinuousOfExistsBound₂](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/mkcontinuousofexistsbound--5a962930bfda52f319633b09.md) | 105 | `declaration-track:5a962930bfda52f319633b093ded2a500d47de84c6330ee7fba1cee3d98374bd` |
| 7 | `def` | [mkContinuous₂](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/mkcontinuous--39b687795f3e83fb2548fb09.md) | 121 | `declaration-track:39b687795f3e83fb2548fb0917a7a7c9cfe7e42d70ac9dd298c120e3492fb4e1` |
| 8 | `theorem` | [mkContinuous₂_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/mkcontinuous-apply--20f35309f30f0b9c63155891.md) | 126 | `result-track:20f35309f30f0b9c63155891a29136cc304c124e67e04e0d90db39155f069601` |
| 9 | `theorem` | [mkContinuous₂_norm_le'](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/mkcontinuous-norm-le--711e7e8eaff0c1a56b255562.md) | 130 | `result-track:711e7e8eaff0c1a56b2555628e852163cd576bed4f45168a8e6aa25b55d3643d` |
| 10 | `theorem` | [mkContinuous₂_norm_le](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/mkcontinuous-norm-le--92fc02d60634aa5c583358fb.md) | 134 | `result-track:92fc02d60634aa5c583358fbce34f2d6080e33f70723a569f2b07d22359c214e` |
| 11 | `def` | [flip](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/flip--81e9d847c5c029a74a97ccab.md) | 147 | `declaration-track:81e9d847c5c029a74a97ccabd969118d540703a20de10495e9e89a4230ebab5d` |
| 12 | `theorem` | [le_norm_flip](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/le-norm-flip--99e4682da02bb92df17a1805.md) | 154 | `result-track:99e4682da02bb92df17a180507cc4a44dadc6f0a915e8a5eaa3f6be870cf4e4a` |
| 13 | `theorem` | [flip_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/flip-apply--d83bc1ba3f9d0413c6dadc19.md) | 160 | `result-track:d83bc1ba3f9d0413c6dadc191cf27a8fcf49a16fd9b13d9b92c84c0679a0f636` |
| 14 | `theorem` | [flip_flip](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/flip-flip--89cba33fb49ea7c9fe11de17.md) | 164 | `result-track:89cba33fb49ea7c9fe11de171325f42fccc98a8dab45e949d6c250db7bc523c7` |
| 15 | `theorem` | [opNorm_flip](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/opnorm-flip--b21a07e3f83949a0734d7dd5.md) | 169 | `result-track:b21a07e3f83949a0734d7dd5ad6e2d4dec79951fec533da7ad315b6886014c80` |
| 16 | `theorem` | [flip_add](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/flip-add--e62120e1bc07b74ab7586143.md) | 174 | `result-track:e62120e1bc07b74ab7586143f5f8e4daf93fe537ef8a91104f1055679ffbc5e2` |
| 17 | `theorem` | [flip_smul](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/flip-smul--d8b84036c52de8b59713484c.md) | 178 | `result-track:d8b84036c52de8b59713484c48a4c50407964da278bab5bdf41e657bb91eaac2` |
| 18 | `def` | [flipₗᵢ'](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/flip--374eb3344cada4b9cdbb3140.md) | 186 | `declaration-track:374eb3344cada4b9cdbb314064ab822769d5b84acf624eb50276aa045cf37573` |
| 19 | `theorem` | [flipₗᵢ'_symm](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/flip-symm--073b10f6f20cc4c855061207.md) | 198 | `result-track:073b10f6f20cc4c8550612076d16f706eefe240792ff6542844b136fd4528008` |
| 20 | `theorem` | [coe_flipₗᵢ'](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/coe-flip--adad61baf5b58f775c02ac96.md) | 202 | `result-track:adad61baf5b58f775c02ac9692e979b7ac6e3bd948643824b0a5e5a76f222935` |
| 21 | `def` | [flipₗᵢ](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/flip--7831d6e36710d70cb22b1c2b.md) | 210 | `declaration-track:7831d6e36710d70cb22b1c2bbc5f07e505c1dffdeddd5f201175422eb027076a` |
| 22 | `theorem` | [flipₗᵢ_symm](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/flip-symm--e4bc3d8c6f615794334aa8e5.md) | 222 | `result-track:e4bc3d8c6f615794334aa8e5c7ce33c7ad842670addc04f1a2a50e710ee61410` |
| 23 | `theorem` | [coe_flipₗᵢ](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/coe-flip--97ebc79eb7382bb32bce977d.md) | 226 | `result-track:97ebc79eb7382bb32bce977db3450261b7f30b2db19f46a9076e0660f54e4a67` |
| 24 | `def` | [apply'](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/apply--25f8f678e5147a6eace994b0.md) | 236 | `declaration-track:25f8f678e5147a6eace994b0080fd150acfba396f0ee5cf9fe069721302ebe6f` |
| 25 | `theorem` | [apply_apply'](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/apply-apply--ee0ed71e5c633846806c8082.md) | 242 | `result-track:ee0ed71e5c633846806c80823f61fe432cb662853f71693bca4540c7586bb874` |
| 26 | `def` | [apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/apply--03860f21aa940b15e4fec459.md) | 251 | `declaration-track:03860f21aa940b15e4fec459a2d6c0d1802d0ce21b28e78d4ab3b6e388cf648a` |
| 27 | `theorem` | [apply_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/apply-apply--f4661875218f5b44e144d7da.md) | 257 | `result-track:f4661875218f5b44e144d7dac38caaf0b551926c50e021e90e095f7d87f48985` |
| 28 | `def` | [compSL](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/compsl--f01d862905a949c09083ce18.md) | 264 | `declaration-track:f01d862905a949c09083ce18be7210374061d6cc69611e0f462ce4b881c8cc7f` |
| 29 | `theorem` | [norm_compSL_le](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/norm-compsl-le--bf2f8301510f7233dfc79f47.md) | 272 | `result-track:bf2f8301510f7233dfc79f4777aa6e8c894c9a7734d68879f4c035c419d700c7` |
| 30 | `theorem` | [compSL_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/compsl-apply--27f4051b805a3c38c2c00376.md) | 278 | `result-track:27f4051b805a3c38c2c0037690dd567bf36abba54ae1d46274647a4c77cfe713` |
| 31 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.OpNormExt.Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.Continuous.const_clm_comp](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/root-grwtsk-topology-generaltopology-opnormext-variantdd855be4fefb75fe1f--215c463601eb4df37ad1780b.md) | 281 | `result-track:215c463601eb4df37ad1780bb7aeb25b5275dcb7e27b87ced9c7c6fdd6c83726` |
| 32 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.OpNormExt.Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.Continuous.clm_comp_const](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/root-grwtsk-topology-generaltopology-opnormext-variantdd855be4fefb75fe1f--bb5ac61b47c684e4ce984104.md) | 287 | `result-track:bb5ac61b47c684e4ce984104683d05633c61e8f90a281967d94f121b4c2e4ac7` |
| 33 | `def` | [compL](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/compl--2e1fec32315930859f06f94b.md) | 296 | `declaration-track:2e1fec32315930859f06f94b699e391c543c3ce7a58ed273db85498d0451db1a` |
| 34 | `theorem` | [norm_compL_le](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/norm-compl-le--c9f585c1a33aa3e6da7519a1.md) | 299 | `result-track:c9f585c1a33aa3e6da7519a1798a5e7bd9983af9b19c6793fa50b5450461ec0a` |
| 35 | `theorem` | [compL_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/compl-apply--172984902ff0b0508e0b3ab7.md) | 303 | `result-track:172984902ff0b0508e0b3ab701b56a0999f2540cdd58b597a55a124d8b5360de` |
| 36 | `def` | [precompR](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/precompr--780510e159088c09c67148c8.md) | 310 | `declaration-track:780510e159088c09c67148c8049de8eaa40f282f7150e9a9b1467167872e002e` |
| 37 | `def` | [precompL](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/precompl--42970298e599c4089149d410.md) | 314 | `declaration-track:42970298e599c4089149d4101230e70bc237b7c23870442875c2915238ce9b60` |
| 38 | `lemma` | [precompL_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/precompl-apply--4ba8e848aacc45280c92f1ac.md) | 317 | `result-track:4ba8e848aacc45280c92f1acec4df421f5d9344fc86d2470b919939f89022717` |
| 39 | `theorem` | [norm_precompR_le](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/norm-precompr-le--a1782e0c717c468863d75ca4.md) | 320 | `result-track:a1782e0c717c468863d75ca40fdf5bc321fc75d3d68a76851def978ceedfc18b` |
| 40 | `theorem` | [norm_precompL_le](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/norm-precompl-le--4ada8c29648fc85474821f0c.md) | 326 | `result-track:4ada8c29648fc85474821f0c2ac5a38fe6b3144c94d682f47308b481acb9d76f` |
| 41 | `def` | [bilinearComp](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/bilinearcomp--f28919a88ad3513c6cdb7e51.md) | 344 | `declaration-track:f28919a88ad3513c6cdb7e51b0dec83780eb381147b6f26a170144a203223f65` |
| 42 | `theorem` | [bilinearComp_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/bilinearcomp-apply--f4032335855fbcf4c8602434.md) | 349 | `result-track:f4032335855fbcf4c8602434665b50991132faa48f4fde7d99c7482b1d81941b` |
| 43 | `def` | [deriv₂](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/deriv--2e1da9afaa87dc2bf8f9360d.md) | 357 | `declaration-track:2e1da9afaa87dc2bf8f9360debd5a330b68feca1cc4316272555972eaf1feedc` |
| 44 | `theorem` | [coe_deriv₂](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/coe-deriv--5437b215362e7c9cf8d7c1b5.md) | 361 | `result-track:5437b215362e7c9cf8d7c1b5a58da1722db0590a970ea46037403d13f1ae5765` |
| 45 | `theorem` | [map_add_add](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/map-add-add--675653b2f762c661ed28818a.md) | 365 | `result-track:675653b2f762c661ed28818a9250c6132feaa1e4f2db9811fcb9fb8bca65bd24` |
| 46 | `theorem` | [norm_smulRight_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/norm-smulright-apply--757db9a01e7406d95d36123f.md) | 373 | `result-track:757db9a01e7406d95d36123f0aa9796dc2fae400a9182bfb68b2337a08c12fa1` |
| 47 | `theorem` | [nnnorm_smulRight_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/nnnorm-smulright-apply--5dc9512a3304341c70545153.md) | 393 | `result-track:5dc9512a3304341c70545153d8ec415d57b82e1fbfd279a7304bf08060754c6d` |
| 48 | `def` | [smulRightL](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/smulrightl--f12dfbf6aeda0855bfffb680.md) | 399 | `declaration-track:f12dfbf6aeda0855bfffb680f53aea4afc4e1bbae49c25408d48f42286706c51` |
| 49 | `theorem` | [norm_smulRightL_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/norm-smulrightl-apply--836ec0f933e64d1fd6ea07d7.md) | 415 | `result-track:836ec0f933e64d1fd6ea07d71248da8e2983d5086f3ba418092421a78410365f` |
| 50 | `def` | [bilinearRestrictScalars](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/bilinearrestrictscalars--3ea3744b2fccf6910ed20013.md) | 433 | `declaration-track:3ea3744b2fccf6910ed20013ebf19fa94d0bad14eae009e9634ab9c35d9dcd4a` |
| 51 | `theorem` | [bilinearRestrictScalars_eq_restrictScalarsL_comp_restrictScalars](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/bilinearrestrictscalars-eq-restrictscalarsl-comp-restrictscalars--ceeb0c5353c380a101202f3b.md) | 438 | `result-track:ceeb0c5353c380a101202f3b4a9ef0a68ac4d3de766e068ba17610f6f1a987f1` |
| 52 | `theorem` | [bilinearRestrictScalars_eq_restrictScalars_restrictScalarsL_comp](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/bilinearrestrictscalars-eq-restrictscalars-restrictscalarsl-comp--c6856518aca9256198863ec2.md) | 441 | `result-track:c6856518aca9256198863ec27c8afff86aaaf792191475ccec90db6a9bb89454` |
| 53 | `theorem` | [bilinearRestrictScalars_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/bilinearrestrictscalars-apply-apply--55cc0352751b9d9e1ce01419.md) | 446 | `result-track:55cc0352751b9d9e1ce014197912eb555e6fb869c433187ac2c3572587f8e9db` |
| 54 | `theorem` | [norm_bilinearRestrictScalars](../../../../../mathematics/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/declarations/norm-bilinearrestrictscalars--6895edb233ea40bd7e52a48f.md) | 449 | `result-track:6895edb233ea40bd7e52a48fb62aa5f5601dcaa5e33c38a8d959ca5f2bf0c7f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
