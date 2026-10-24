# Verification target: GRWTSK.Analysis.SurfaceScope.Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dd07a88aeb6f083754cc62e9847e0f79a2c45e1",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/index.md) · [Full source](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dd07a88aeb6f083754cc62e9847e0f79a2c45e1`.

Source path: `GRWTSK/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DescendsThroughOn](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/descendsthroughon--c67ad64ebbe3421d409ba3e0.md) | 19 | `declaration-track:c67ad64ebbe3421d409ba3e0394fbf0badb58bc0785735d448ced4953b2abe7e` |
| 2 | `theorem` | [descendsThroughOn_iff_subtype](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/descendsthroughon-iff-subtype--22fc050465568c08617eecfb.md) | 24 | `result-track:22fc050465568c08617eecfbb565b2caa4f52115a621e9d9923f8defd07f492b` |
| 3 | `theorem` | [DescendsThroughOn.mono](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/descendsthroughon-mono--1e837fb9aff777259e6d7adf.md) | 35 | `result-track:1e837fb9aff777259e6d7adf29ccbab13c24e83d2575546c48f69319ce467619` |
| 4 | `theorem` | [descendsThroughOn_univ_iff](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/descendsthroughon-univ-iff--2fb0cde58dee443fd2ebdbe1.md) | 41 | `result-track:2fb0cde58dee443fd2ebdbe1ad4e8cb2ffe71b9d656172116cc4592e46304e00` |
| 5 | `structure` | [DescentObstructionOn](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/descentobstructionon--34d1efc63d744bd5a8f29791.md) | 50 | `declaration-track:34d1efc63d744bd5a8f297914e4bc34468a9d53577e09df9029bf7632399aa28` |
| 6 | `def` | [DescentObstructionOn.toSubtype](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/descentobstructionon-tosubtype--190275a8875e9997fd3f0375.md) | 66 | `declaration-track:190275a8875e9997fd3f0375d67f390f4206fa097f4bfc92ff52875d1f412856` |
| 7 | `theorem` | [DescentObstructionOn.notDescends](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/descentobstructionon-notdescends--b72eebae459a278fe81417f1.md) | 75 | `result-track:b72eebae459a278fe81417f16b5b967cae50d48c0429757d3ec596b63cf15540` |
| 8 | `theorem` | [boolean_singleton_scoped_descent](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/boolean-singleton-scoped-descent--1631196d77a381c1755ca351.md) | 83 | `result-track:1631196d77a381c1755ca351b12b127080770d47032d52faf7fa08e4f4b45e5b` |
| 9 | `def` | [booleanUnrestrictedScopeObstruction](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/booleanunrestrictedscopeobstruction--f276e748b34ee3baec9ef9ba.md) | 91 | `declaration-track:f276e748b34ee3baec9ef9ba917b834479e4c3b319b5d670fb60097a3b2fa640` |
| 10 | `theorem` | [boolean_unrestricted_scope_not_descends](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/boolean-unrestricted-scope-not-descends--4f37bda2eb0c5e891fd8f9bd.md) | 101 | `result-track:4f37bda2eb0c5e891fd8f9bd0a99b5d02fbc4df36e90e1377900b72e1e76f759` |
| 11 | `abbrev` | [PositiveRadius](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/positiveradius--553bd28c61e1988a5249897d.md) | 108 | `declaration-track:553bd28c61e1988a5249897d56a5fafab8a31401a388972c8346a300d392c1b7` |
| 12 | `def` | [sphereVolumeFormula](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/spherevolumeformula--228a6c8ae8ee9759cb4bcfde.md) | 111 | `declaration-track:228a6c8ae8ee9759cb4bcfdead3a2411d2b237aa2bc5575ba2ac1fd28f151f3a` |
| 13 | `def` | [sphereAreaFormula](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphereareaformula--6aa1251cd6672dbd71d587c8.md) | 115 | `declaration-track:6aa1251cd6672dbd71d587c821a5bc67a0557ac50dda0bb1a8b518fe56ec5955` |
| 14 | `def` | [sphereSumCurvatureFormula](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/spheresumcurvatureformula--5846438dfd141a4e6f8d5bac.md) | 119 | `declaration-track:5846438dfd141a4e6f8d5bac62f85395b7d3f4f1145f4dd2c9c251d280732456` |
| 15 | `def` | [spherePressureFormula](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/spherepressureformula--621bf73d3de1d4e9aba272b9.md) | 123 | `declaration-track:621bf73d3de1d4e9aba272b9db01d18fb1306b3fe914faf58a2693e9f50e4099` |
| 16 | `def` | [sphereEnergyFormula](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphereenergyformula--3238efecc0275ee34aadceda.md) | 127 | `declaration-track:3238efecc0275ee34aadcedae42217a1f065eaf9e6f6091c3323468af7ceb8e7` |
| 17 | `theorem` | [sphereVolumeFormula_injective](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/spherevolumeformula-injective--8954702cf828635d457f920f.md) | 131 | `result-track:8954702cf828635d457f920fb34934a0522a381c02ca5d9eef29ea5821e772e2` |
| 18 | `theorem` | [sphere_radius_target_descends](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphere-radius-target-descends--da6688d92dbf99155c9654f4.md) | 140 | `result-track:da6688d92dbf99155c9654f4d64b7d93706d94a420989f602f838f175ef6a96d` |
| 19 | `theorem` | [sphere_area_formula_descends](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphere-area-formula-descends--bb80e4c0b87fb64703ff22d2.md) | 145 | `result-track:bb80e4c0b87fb64703ff22d2c6a90dd20f2396e1d0b44414e16d8e4d9ac03bf0` |
| 20 | `theorem` | [sphere_sum_curvature_formula_descends](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphere-sum-curvature-formula-descends--4353d31065514d240267840e.md) | 150 | `result-track:4353d31065514d240267840eefc731f7b415095437f7c1e2b8da7c5fe7276b4f` |
| 21 | `theorem` | [sphere_pressure_formula_descends](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphere-pressure-formula-descends--ad8c0c8bd942ebe139568282.md) | 155 | `result-track:ad8c0c8bd942ebe1395682826a0e9ba5c7b72b294c042c157051d79ae5c1ea5d` |
| 22 | `theorem` | [sphere_energy_formula_descends](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphere-energy-formula-descends--44d06f2b273ed4c10ccd0b42.md) | 160 | `result-track:44d06f2b273ed4c10ccd0b42332c6c80b34366067e3263f10abbe6c80587caf0` |
| 23 | `theorem` | [sphere_volume_formula_pos](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphere-volume-formula-pos--9587966c26c4274b873901d0.md) | 165 | `result-track:9587966c26c4274b873901d06d3d5bb7d092158ae13020cb023efe20403b490c` |
| 24 | `def` | [isoperimetricDefectFormula](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/isoperimetricdefectformula--ba44a3fdfb5f0e8dd8279232.md) | 170 | `declaration-track:ba44a3fdfb5f0e8dd8279232249e1a335246d3509b544ba50fbb97106ab9a7fa` |
| 25 | `theorem` | [isoperimetric_defect_formula_nonneg](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/isoperimetric-defect-formula-nonneg--3a68a07a536d9f8044b77417.md) | 175 | `result-track:3a68a07a536d9f8044b77417726a3a03ea5d8fe29cfc18f3e42acf8f48f2db6b` |
| 26 | `theorem` | [sphere_isoperimetric_defect_formula_zero](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphere-isoperimetric-defect-formula-zero--3e9fe3c6251725baa9f3a4c0.md) | 182 | `result-track:3e9fe3c6251725baa9f3a4c0d1b04a5dd026f45fe662ebed23ccaf5ec2ad2bcf` |
| 27 | `theorem` | [sphere_area_cube_formula](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphere-area-cube-formula--2f13f0c564620a18a4640ca5.md) | 190 | `result-track:2f13f0c564620a18a4640ca5253ca0f9ceb43bf8b87aff1dd72270c8d9b37b7c` |
| 28 | `def` | [surfaceEnergyExcessFormula](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/surfaceenergyexcessformula--2c030d692a36fade6f60fed6.md) | 196 | `declaration-track:2c030d692a36fade6f60fed65e1bf478239c0ba1c3e24822c5f795d205b0a7ea` |
| 29 | `theorem` | [surface_energy_excess_formula_nonneg](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/surface-energy-excess-formula-nonneg--303b1be88e5aeda19e580bc7.md) | 201 | `result-track:303b1be88e5aeda19e580bc730cd13b357c9ed5ba0076f14b6f5deb39566551f` |
| 30 | `theorem` | [sphere_reference_energy_excess_formula_nonneg](../../../../mathematics/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean/declarations/sphere-reference-energy-excess-formula-nonneg--abb093b5c5897553caebcff5.md) | 209 | `result-track:abb093b5c5897553caebcff5e00290e2e72dd0abe26e35a9e58ef11f4e39dd6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
