# Verification target: GRWTSK.Analysis.SurfaceScope.Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c9fb8c12ef74ae36659aa8e5b14b102342d838d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/index.md) · [Full source](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c9fb8c12ef74ae36659aa8e5b14b102342d838d`.

Source path: `GRWTSK/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DescendsThroughOn](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/descendsthroughon--975cfc64238658f786591ae8.md) | 27 | `declaration-track:975cfc64238658f786591ae8ddfecdd82dbcd0a15f5453001a98a3a3c0151591` |
| 2 | `theorem` | [descendsThroughOn_iff_subtype](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/descendsthroughon-iff-subtype--06134aaa00ec5c9ecb9b9d2b.md) | 32 | `result-track:06134aaa00ec5c9ecb9b9d2b4d3fef2f473e24ba0aff1012e656b32cc6a3ea01` |
| 3 | `theorem` | [DescendsThroughOn.mono](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/descendsthroughon-mono--ae94eded50c303ab501f348c.md) | 43 | `result-track:ae94eded50c303ab501f348cc1b71a3728978e34a0fac52ba6e798208b2bff8a` |
| 4 | `theorem` | [descendsThroughOn_univ_iff](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/descendsthroughon-univ-iff--faae236d98a3318f57935993.md) | 49 | `result-track:faae236d98a3318f5793599353dc3a2e551b9f71d7516bf2104f64322b291761` |
| 5 | `structure` | [DescentObstructionOn](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/descentobstructionon--b88fd570844c91c3f102bd74.md) | 58 | `declaration-track:b88fd570844c91c3f102bd74069340860072f34fa1486d04db7f7b8554a1804c` |
| 6 | `def` | [DescentObstructionOn.toSubtype](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/descentobstructionon-tosubtype--0e766e41b02f1bfdba1c54ba.md) | 74 | `declaration-track:0e766e41b02f1bfdba1c54ba17a7a25069dcc83768cc66046b4a4ad54e47ed03` |
| 7 | `theorem` | [DescentObstructionOn.notDescends](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/descentobstructionon-notdescends--d46883fe669b1fd54f175c21.md) | 83 | `result-track:d46883fe669b1fd54f175c21fac06dc130230fa996344f32f5bf97f42e90e55e` |
| 8 | `theorem` | [boolean_singleton_scoped_descent](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/boolean-singleton-scoped-descent--d5519c5ffad6864d909e5b12.md) | 91 | `result-track:d5519c5ffad6864d909e5b12142286cfaf4dc55beadc9638a42d82388a2ab222` |
| 9 | `def` | [booleanUnrestrictedScopeObstruction](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/booleanunrestrictedscopeobstruction--6d1ef6f2ad97c9a0518f5374.md) | 99 | `declaration-track:6d1ef6f2ad97c9a0518f537488b694f91528a161d50d1730d7dc2dccad1b0e5d` |
| 10 | `theorem` | [boolean_unrestricted_scope_not_descends](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/boolean-unrestricted-scope-not-descends--988b4eeee77ed5b32e498e19.md) | 109 | `result-track:988b4eeee77ed5b32e498e19673205a0628a8aab49d66f922f52963d9542baa8` |
| 11 | `abbrev` | [PositiveRadius](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/positiveradius--1c38d34d61eabaa7ce19aac1.md) | 116 | `declaration-track:1c38d34d61eabaa7ce19aac1ae1e2ca922bf0395ef3d7cf98a7bfc434445e5ee` |
| 12 | `def` | [sphereVolumeFormula](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/spherevolumeformula--9fb0daa1b8b49e7b770ddfc4.md) | 119 | `declaration-track:9fb0daa1b8b49e7b770ddfc44d0039f2651d17239c3a35b2db409be3f7e4568c` |
| 13 | `def` | [sphereAreaFormula](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphereareaformula--c4209ab5bf10d8e106eab68f.md) | 123 | `declaration-track:c4209ab5bf10d8e106eab68fe59de535e4bb5fcee2a7204aa75d776df8a16def` |
| 14 | `def` | [sphereSumCurvatureFormula](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/spheresumcurvatureformula--decfed0933b6ea72e1cad5c6.md) | 127 | `declaration-track:decfed0933b6ea72e1cad5c651c10f852a92ee308d3188aaf2add7b9ac30a98d` |
| 15 | `def` | [spherePressureFormula](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/spherepressureformula--7dec47f2d2277bb7a80d6392.md) | 131 | `declaration-track:7dec47f2d2277bb7a80d6392cdf5e269c3a1a66cbb4b5f70cdf26e3e006d2ba6` |
| 16 | `def` | [sphereEnergyFormula](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphereenergyformula--d1de3e413d71d400bbfccd9c.md) | 135 | `declaration-track:d1de3e413d71d400bbfccd9cac25848cf427f740c565081ed9d839ab3b940135` |
| 17 | `theorem` | [sphereVolumeFormula_injective](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/spherevolumeformula-injective--7f533d4e1abe8cd05ae8991d.md) | 139 | `result-track:7f533d4e1abe8cd05ae8991d2a22f979bdcea711c9885ce215d3329207414c83` |
| 18 | `theorem` | [sphere_radius_target_descends](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphere-radius-target-descends--5e638c3e90c2dcbe44eb4811.md) | 148 | `result-track:5e638c3e90c2dcbe44eb481171090e94c84112b9d5273b917bc19e5c691c297c` |
| 19 | `theorem` | [sphere_area_formula_descends](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphere-area-formula-descends--01e2bfe00d00afdd7ab5af68.md) | 153 | `result-track:01e2bfe00d00afdd7ab5af68380ae61d06f6c7fa5256d3d0100f244b8bf15657` |
| 20 | `theorem` | [sphere_sum_curvature_formula_descends](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphere-sum-curvature-formula-descends--f8ccf2a0d376a38109a527e2.md) | 158 | `result-track:f8ccf2a0d376a38109a527e28c6dfdae9fea6a3e91e00ef1079ea324a6886971` |
| 21 | `theorem` | [sphere_pressure_formula_descends](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphere-pressure-formula-descends--2c7df02ea45f9bb7ee599035.md) | 163 | `result-track:2c7df02ea45f9bb7ee599035294e17eba078e2a9fe897b9e990d3ff3247e4615` |
| 22 | `theorem` | [sphere_energy_formula_descends](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphere-energy-formula-descends--f4e52348008109c665dcb964.md) | 168 | `result-track:f4e52348008109c665dcb964a7df01d30c2b63731c9ff61e015b3206a1089134` |
| 23 | `theorem` | [sphere_volume_formula_pos](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphere-volume-formula-pos--bf20ed2e250fa95d572b398e.md) | 173 | `result-track:bf20ed2e250fa95d572b398eb3b66fa89800350f5c39b03de4505c384b413433` |
| 24 | `def` | [isoperimetricDefectFormula](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/isoperimetricdefectformula--dfa2f9e0b710277ff66424a4.md) | 178 | `declaration-track:dfa2f9e0b710277ff66424a489246be22e907090d16ec747cc658cc1fec85acd` |
| 25 | `theorem` | [isoperimetric_defect_formula_nonneg](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/isoperimetric-defect-formula-nonneg--8153723a20a1bd01395f457e.md) | 183 | `result-track:8153723a20a1bd01395f457e3ebf28209899a91df7d917ff11c6bd3447400b47` |
| 26 | `theorem` | [sphere_isoperimetric_defect_formula_zero](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphere-isoperimetric-defect-formula-zero--e42442fc93cda04de3c0004a.md) | 190 | `result-track:e42442fc93cda04de3c0004a2d3576e59744d8585f4bb96b543fb8bcdcf00265` |
| 27 | `theorem` | [sphere_area_cube_formula](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphere-area-cube-formula--528a88a73c689743aea35d12.md) | 198 | `result-track:528a88a73c689743aea35d1229918781b22b1543f594710166319e9f8b10cf26` |
| 28 | `def` | [surfaceEnergyExcessFormula](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/surfaceenergyexcessformula--c2c900b0772c1050c0b13ade.md) | 204 | `declaration-track:c2c900b0772c1050c0b13adeeecde37e00d769e3d2d72b632134bb77aa3804a1` |
| 29 | `theorem` | [surface_energy_excess_formula_nonneg](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/surface-energy-excess-formula-nonneg--e9da5583368960e63457d8b1.md) | 209 | `result-track:e9da5583368960e63457d8b15ec9073b5134f82ce6ddbe2765ba6661f67fac70` |
| 30 | `theorem` | [sphere_reference_energy_excess_formula_nonneg](../../../../mathematics/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/declarations/sphere-reference-energy-excess-formula-nonneg--251d062ca7f5d7ab8e011752.md) | 217 | `result-track:251d062ca7f5d7ab8e01175252af3b0dd11febcda222c5de30fba8cd2122ab4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
