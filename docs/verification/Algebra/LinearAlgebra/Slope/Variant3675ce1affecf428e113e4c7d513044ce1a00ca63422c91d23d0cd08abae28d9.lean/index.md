# Verification target: GRWTSK.Algebra.LinearAlgebra.Slope.Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5601f89df9af55c7f873d26bb4a696bf312a601",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5601f89df9af55c7f873d26bb4a696bf312a601`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [slope](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope--aff5f2f57a1a8770b8ea3196.md) | 28 | `declaration-track:aff5f2f57a1a8770b8ea31967ecafca1af50304192b768c4b97d75cb598ebf29` |
| 2 | `theorem` | [slope_fun_def](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-fun-def--ee7478ffa7f1ad4d6fac6881.md) | 31 | `result-track:ee7478ffa7f1ad4d6fac6881a104e76c7657842f26ea659202b6339ced667eb3` |
| 3 | `theorem` | [slope_def_field](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-def-field--d27b40dae4e9e48ac4c35493.md) | 34 | `result-track:d27b40dae4e9e48ac4c35493a171790609975bb5bed78f2532aa8213ec31fd9a` |
| 4 | `theorem` | [slope_fun_def_field](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-fun-def-field--b7cdd80e6e34bf2175906d6c.md) | 37 | `result-track:b7cdd80e6e34bf2175906d6c2b3dc094a13b6b9d756b659fb3fe098561ad8177` |
| 5 | `theorem` | [slope_same](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-same--c17ee3af6359c157c7ce7039.md) | 41 | `result-track:c17ee3af6359c157c7ce703985b9c8e25e6767ba3954017ab86093ff8f0db8b2` |
| 6 | `theorem` | [slope_def_module](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-def-module--8a63f4bc0cea43c19290b277.md) | 44 | `result-track:8a63f4bc0cea43c19290b277f3fb3ec205bb3f796cef53bb5bae017357b8ff8a` |
| 7 | `theorem` | [sub_smul_slope](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/sub-smul-slope--7de326b02542e35cad22c483.md) | 48 | `result-track:7de326b02542e35cad22c483f5fc92e1c274225c72b13c1b96412c93ea8b84e3` |
| 8 | `theorem` | [sub_smul_slope_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/sub-smul-slope-vadd--714f3140cdef2969bee4c087.md) | 53 | `result-track:714f3140cdef2969bee4c087514e7827c91c31832d16b652665927ce7aba5f35` |
| 9 | `theorem` | [slope_vadd_const](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-vadd-const--2718b9606a6ce67e0b7182b8.md) | 57 | `result-track:2718b9606a6ce67e0b7182b852ba00fd25c0949ab92ca62ca35c28ec3794602d` |
| 10 | `theorem` | [slope_sub_smul](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-sub-smul--edcd33368b8aa25a792a21ab.md) | 62 | `result-track:edcd33368b8aa25a792a21ab39520c951a09a4d1ca0a82c84e5deac214586d17` |
| 11 | `theorem` | [eq_of_slope_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/eq-of-slope-eq-zero--7458a573f446612eb809ddb7.md) | 66 | `result-track:7458a573f446612eb809ddb7ea11c2a2952f56f801d5db3338ad949dc2672c6c` |
| 12 | `theorem` | [AffineMap.slope_comp](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/affinemap-slope-comp--9dcac48207c85133d4f9a5e6.md) | 69 | `result-track:9dcac48207c85133d4f9a5e641a61c2c37aca64dc9ef584c8636525839f0b906` |
| 13 | `theorem` | [LinearMap.slope_comp](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/linearmap-slope-comp--3dd9d3d7046b4082920457f1.md) | 73 | `result-track:3dd9d3d7046b4082920457f1a972ad63414d3b5a96faf83ec148042087874eff` |
| 14 | `theorem` | [slope_comm](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-comm--b0fd15f47aa180c94465b1da.md) | 77 | `result-track:b0fd15f47aa180c94465b1da5bd02b58847a3fb4fc3b9b7bbe2311b4c51a78a8` |
| 15 | `lemma` | [slope_neg](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-neg--a99fcbd8ffd3a11c29dbabf7.md) | 80 | `result-track:a99fcbd8ffd3a11c29dbabf750960da5c2e002998a3d07bbed3e0d0c882fd208` |
| 16 | `lemma` | [slope_neg_fun](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/slope-neg-fun--8f92656a50051dd1a2048193.md) | 83 | `result-track:8f92656a50051dd1a2048193ff72c9f7f5414ef991f4ce18f408d8df917bdc78` |
| 17 | `theorem` | [sub_div_sub_smul_slope_add_sub_div_sub_smul_slope](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/sub-div-sub-smul-slope-add-sub-div-sub-smul-slope--fdb9696312cb0c7971020230.md) | 89 | `result-track:fdb9696312cb0c79710202308c3235d5aa522d1659504ae323bb7da9b89df5b3` |
| 18 | `theorem` | [lineMap_slope_slope_sub_div_sub](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/linemap-slope-slope-sub-div-sub--e770c9eaca2ca037b0986f62.md) | 107 | `result-track:e770c9eaca2ca037b0986f625782a4a7126cd63ba085875a45ab3744c7ae1a25` |
| 19 | `theorem` | [lineMap_slope_lineMap_slope_lineMap](../../../../../mathematics/Algebra/LinearAlgebra/Slope/Variant3675ce1affecf428e113e4c7d513044ce1a00ca63422c91d23d0cd08abae28d9.lean/declarations/linemap-slope-linemap-slope-linemap--d1d5eb5812bc2910ff21f3b1.md) | 114 | `result-track:d1d5eb5812bc2910ff21f3b18ac1da8d6f57f44ee227d6e4cf3d126ade77299e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
