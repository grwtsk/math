# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ConductorThreeTypeIIBlockNorms.Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c671112b21e31264fb82ae7f977de5bb083e7d0c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c671112b21e31264fb82ae7f977de5bb083e7d0c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockRightIndexFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/blockrightindexfinset--4eef301c54a08a30750cdeda.md) | 39 | `declaration-track:4eef301c54a08a30750cdedaf00ae65145fcd2d5be6f4930d918de702d4b8054` |
| 2 | `theorem` | [blockRightIndexFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/blockrightindexfinset-subset--b357f4d17fb69a6cc0eed65f.md) | 43 | `result-track:b357f4d17fb69a6cc0eed65fb9a00bbb2fb2d5e5ce5e4317f88d443518b2aa13` |
| 3 | `theorem` | [sum_blockRight_eq_indexFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/sum-blockright-eq-indexfinset--31b04f796e391e8c40974fa9.md) | 51 | `result-track:31b04f796e391e8c40974fa96e2be92387c38b50bc79db4466aa66fcb759d66a` |
| 4 | `theorem` | [blockRightCoefficient_norm_sq_le_arithmetic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/blockrightcoefficient-norm-sq-le-arithmetic--a0227aaf4bcdc06f8e132d39.md) | 62 | `result-track:a0227aaf4bcdc06f8e132d39d2e309a5410a7da971c4b424c844ccf142a34c43` |
| 5 | `theorem` | [blockRight_norm_sq_le_secondMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/blockright-norm-sq-le-secondmoment--cae5c3d4613e320811a5e63a.md) | 77 | `result-track:cae5c3d4613e320811a5e63a6555d181aef95431954c3b54860ffb3960d7fbc5` |
| 6 | `theorem` | [conductorThreeVaughanRight_block_l2_harmonic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/conductorthreevaughanright-block-l2-harmonic--c63876f8e8f9b3a728643713.md) | 116 | `result-track:c63876f8e8f9b3a7286437136a5fe5bc5eae342ebcc722e8c2b47c98c72ae887` |
| 7 | `theorem` | [blockRight_norm_sq_le_harmonic_cube](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/blockright-norm-sq-le-harmonic-cube--2d212f23a42513065ae92d55.md) | 139 | `result-track:2d212f23a42513065ae92d5578f6d486ff3c0f08744d8fecf9c959977a0e3fbf` |
| 8 | `theorem` | [conductorThreeVaughanRight_block_l2_harmonic_cube](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/conductorthreevaughanright-block-l2-harmonic-cube--0b5d7258d3e0f5b4031b65e3.md) | 152 | `result-track:0b5d7258d3e0f5b4031b65e38223403e2426dc6f07f04254954dc0c730dfd6bc` |
| 9 | `def` | [shellBlockLeftEuclideanCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellblocklefteuclideancoefficient--5fd4338a6a1a53b7098320a9.md) | 174 | `declaration-track:5fd4338a6a1a53b7098320a936f36d8f089b0c7b2780b8a3b722750bae17854b` |
| 10 | `def` | [shellBlockRightEuclideanCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellblockrighteuclideancoefficient--908103943e69921bfd2e3e07.md) | 180 | `declaration-track:908103943e69921bfd2e3e07b98b806b8b4b1486d4cddcbab9940c4d30bc6693` |
| 11 | `def` | [shellLeftOffset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellleftoffset--64d25ddab4628aa4a23498b4.md) | 184 | `declaration-track:64d25ddab4628aa4a23498b412bfc94f93b85ada407e019e2d2d0b0a928d2ef3` |
| 12 | `theorem` | [shellLeftOffset_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellleftoffset-injective--5c891998a2f45028fb22210a.md) | 193 | `result-track:5c891998a2f45028fb22210a908e920cc234d37bc3b41b48b99fe141f7790af5` |
| 13 | `theorem` | [shellBlockLeft_card_le_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellblockleft-card-le-pow--924e4e28e47c6c6f8d16de47.md) | 211 | `result-track:924e4e28e47c6c6f8d16de4700e25f08f8c548d307b6b387c5b87a92613995f5` |
| 14 | `theorem` | [abs_conductorThreeIntegerValue_cast_le_one_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/abs-conductorthreeintegervalue-cast-le-one-shell--69fe00406066f7ad9e4239c2.md) | 217 | `result-track:69fe00406066f7ad9e4239c2786c77e202e9594344e74d0f80a4b72a78af0b02` |
| 15 | `theorem` | [shellLeft_log_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellleft-log-nonneg--24c637f9fd606e0bce6abd19.md) | 226 | `result-track:24c637f9fd606e0bce6abd19b8b49d3f1d95dac5b0a683b00b9a79cb5995adfe` |
| 16 | `theorem` | [shellBlockLeftCoefficient_norm_le_log_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellblockleftcoefficient-norm-le-log-pow--5fc2d5e4baf18ea46baacfbc.md) | 234 | `result-track:5fc2d5e4baf18ea46baacfbc16681c4cd58bd2f9017c1becc077cabbe2c31ab9` |
| 17 | `theorem` | [shellBlockLeft_energy_le_pow_mul_log_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellblockleft-energy-le-pow-mul-log-sq--2fa9376a271175a20a931cc4.md) | 263 | `result-track:2fa9376a271175a20a931cc421369c98dd6f5c21d01242fc9ff734787c63afb9` |
| 18 | `theorem` | [shellBlockLeft_norm_sq_le_pow_mul_log_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellblockleft-norm-sq-le-pow-mul-log-sq--41efff9a7ee5bdc3143713aa.md) | 285 | `result-track:41efff9a7ee5bdc3143713aa0b7e91d442dc0ee154b1e73b9a85525f8e020bfb` |
| 19 | `def` | [shellRightIndexFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellrightindexfinset--da26364c1a2dfd16de815824.md) | 293 | `declaration-track:da26364c1a2dfd16de8158240da21a97eee832f23f3fca7cb9c916a71eba4b7b` |
| 20 | `theorem` | [shellRightIndexFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellrightindexfinset-subset--d85e3cdec7b2318fc14d0bf3.md) | 297 | `result-track:d85e3cdec7b2318fc14d0bf3ae051efc785c550f69e533d523a251f01ef5d4be` |
| 21 | `theorem` | [sum_shellRight_eq_indexFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/sum-shellright-eq-indexfinset--3e914c2fe8073bed5c79209b.md) | 308 | `result-track:3e914c2fe8073bed5c79209b19852a74f7be21d67a01eff76f46c3dabcbdbc0c` |
| 22 | `theorem` | [shellRightCoefficient_norm_sq_eq_arithmetic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellrightcoefficient-norm-sq-eq-arithmetic--f0b85d090942fe3ed257f085.md) | 319 | `result-track:f0b85d090942fe3ed257f085d28e84a2e6bfdffff1604fe746693c7406793de8` |
| 23 | `theorem` | [shellBlockRight_energy_le_secondMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellblockright-energy-le-secondmoment--f1a65485e29cef139d25a718.md) | 331 | `result-track:f1a65485e29cef139d25a718127c920472dffe17eca08e46d048ebcc099a7655` |
| 24 | `theorem` | [shellBlockRight_energy_le_pow_mul_harmonic_cube](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellblockright-energy-le-pow-mul-harmonic-cube--0212551052d22500e631fe03.md) | 366 | `result-track:0212551052d22500e631fe037375e3219ce56c9b004b5dac654c2a28aef5ef11` |
| 25 | `theorem` | [shellBlockRight_norm_sq_le_pow_mul_harmonic_cube](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/declarations/shellblockright-norm-sq-le-pow-mul-harmonic-cube--19c66bd7de3272bc24b33d9f.md) | 377 | `result-track:19c66bd7de3272bc24b33d9f2de43154b02debb82a5caa271fab25e727b7b3d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
