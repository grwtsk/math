# Verification target: GRWTSK.Algebra.LinearAlgebra.SchurComplement.Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e677c02d658b0a799aee2f190b95b3ad631cd1dd",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e677c02d658b0a799aee2f190b95b3ad631cd1dd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fromBlocks_eq_of_invertible₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/fromblocks-eq-of-invertible--ce2bfe3dfdba807e7a40bb40.md) | 58 | `result-track:ce2bfe3dfdba807e7a40bb40f3eea2fbe24cb981ac3dba143bbc265da80ee3bf` |
| 2 | `theorem` | [fromBlocks_eq_of_invertible₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/fromblocks-eq-of-invertible--e7461a2cb17a972b89373524.md) | 69 | `result-track:e7461a2cb17a972b89373524dddb8104a96ebca469c6fdbe30eddccd1f289f76` |
| 3 | `def` | [fromBlocksZero₂₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/fromblockszero-invertible--86b17377653eaa10ddb06955.md) | 85 | `declaration-track:86b17377653eaa10ddb069559b259b1b32008894f35e9958c138a6b2e92af2dd` |
| 4 | `def` | [fromBlocksZero₁₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/fromblockszero-invertible--711cd9fd15f117d596a92489.md) | 93 | `declaration-track:711cd9fd15f117d596a9248913520026a9d5dc48e460c8e894e6732d7c5dc74a` |
| 5 | `theorem` | [invOf_fromBlocks_zero₂₁_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invof-fromblocks-zero-eq--66bff6aa101df3a1ac806bd2.md) | 102 | `result-track:66bff6aa101df3a1ac806bd26df9448b67d087a3e91f04d6cc35ea88d342d1d4` |
| 6 | `theorem` | [invOf_fromBlocks_zero₁₂_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invof-fromblocks-zero-eq--47a97e962ac2c61c75544d85.md) | 108 | `result-track:47a97e962ac2c61c75544d85036238733c5b21c558788eb62f831a145001670b` |
| 7 | `def` | [invertibleOfFromBlocksZero₂₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invertibleoffromblockszero-invertible--055deaed1a41a1ced0528627.md) | 116 | `declaration-track:055deaed1a41a1ced0528627e2579181a71957a6590b8c348ffb3d3903531f36` |
| 8 | `def` | [invertibleOfFromBlocksZero₁₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invertibleoffromblockszero-invertible--19cede8cde90620d46521f42.md) | 135 | `declaration-track:19cede8cde90620d46521f4262f797533e65e1d5b4a99bf9aef6a284aec9b237` |
| 9 | `def` | [fromBlocksZero₂₁InvertibleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/fromblockszero-invertibleequiv--29a6d9b51110bde1438ce2c6.md) | 154 | `declaration-track:29a6d9b51110bde1438ce2c6b70e07808f1950dcf1e0fa55f99af41f6764bfbf` |
| 10 | `def` | [fromBlocksZero₁₂InvertibleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/fromblockszero-invertibleequiv--a4bdb5395d4c4d5ffdb8e846.md) | 166 | `declaration-track:a4bdb5395d4c4d5ffdb8e8469417c13bf8a6ad4e2a910cd8b87a481513cd70d1` |
| 11 | `theorem` | [isUnit_fromBlocks_zero₂₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/isunit-fromblocks-zero--24e1af98d55d4b7be0021e76.md) | 180 | `result-track:24e1af98d55d4b7be0021e7685fd77d85eb691999d38f7a3a8f1d2c0e9d73381` |
| 12 | `theorem` | [isUnit_fromBlocks_zero₁₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/isunit-fromblocks-zero--02dcdc1b026170fc3eef80d4.md) | 189 | `result-track:02dcdc1b026170fc3eef80d4dc467ec26f1f870084f2ffd0ad0bb141ee6eacae` |
| 13 | `theorem` | [inv_fromBlocks_zero₂₁_of_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/inv-fromblocks-zero-of-isunit-iff--b45b7535384f371614bdc685.md) | 196 | `result-track:b45b7535384f371614bdc6854a3073bb235dca56220f4794fa82eae737755ef9` |
| 14 | `theorem` | [inv_fromBlocks_zero₁₂_of_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/inv-fromblocks-zero-of-isunit-iff--f1e6a86529b2e184b2bbb931.md) | 213 | `result-track:f1e6a86529b2e184b2bbb9314d987bb933f98db388846b716b733cc75703e81d` |
| 15 | `def` | [fromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/fromblocks-invertible--afb974aaa01d3d3e54820a79.md) | 240 | `declaration-track:afb974aaa01d3d3e54820a797ce5d86667d63a4724813d01822ab2057c67426b` |
| 16 | `def` | [fromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/fromblocks-invertible--ca10cf6bc4a1eabbdec26437.md) | 267 | `declaration-track:ca10cf6bc4a1eabbdec26437b36dd04d0b72d8574d2bf912bc63bb096eaf3868` |
| 17 | `theorem` | [invOf_fromBlocks₂₂_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invof-fromblocks-eq--26e631092fbe1a3b4d0890fc.md) | 281 | `result-track:26e631092fbe1a3b4d0890fccbb75f62b7e6719af680da4e60a0348ec23c3696` |
| 18 | `theorem` | [invOf_fromBlocks₁₁_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invof-fromblocks-eq--cca46d7f4455f7d49875ed2c.md) | 290 | `result-track:cca46d7f4455f7d49875ed2c9951ac756487a126c5a687ad0eec557d1182626b` |
| 19 | `def` | [invertibleOfFromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invertibleoffromblocks-invertible--e575f8d6395807e65fee1523.md) | 301 | `declaration-track:e575f8d6395807e65fee15233ccc9764d44fce8dd5355e65871475808df1ce5e` |
| 20 | `def` | [invertibleOfFromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invertibleoffromblocks-invertible--ecae2b37e62ebb75c638530b.md) | 318 | `declaration-track:ecae2b37e62ebb75c638530b3bd41385d0e6b0a568b64d38f30277eb2fbd0eb3` |
| 21 | `def` | [invertibleEquivFromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invertibleequivfromblocks-invertible--d369daf625b454622ddd9eca.md) | 329 | `declaration-track:d369daf625b454622ddd9ecadbc9468ea8175ecfec2ccaf6dd8f418d545532ab` |
| 22 | `def` | [invertibleEquivFromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/invertibleequivfromblocks-invertible--9cf19753f173b9f7f3731de8.md) | 339 | `declaration-track:9cf19753f173b9f7f3731de8b2a4d3c82a59c4a5ba56bc8b3e2cf7bf7de5f21b` |
| 23 | `theorem` | [isUnit_fromBlocks_iff_of_invertible₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/isunit-fromblocks-iff-of-invertible--47851484edeab30ea86b990e.md) | 349 | `result-track:47851484edeab30ea86b990eaa7cf81952404da2adde8f9323078db29ac517aa` |
| 24 | `theorem` | [isUnit_fromBlocks_iff_of_invertible₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/isunit-fromblocks-iff-of-invertible--681f363eb259068731ebfc25.md) | 357 | `result-track:681f363eb259068731ebfc25d2ed05ccd6d90853a82b2c59da508ae18f1c6837` |
| 25 | `theorem` | [det_fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-fromblocks--d40fea6ef0fdf454171f1a6d.md) | 372 | `result-track:d40fea6ef0fdf454171f1a6db69fb67e62af6adaaab486eefd73969a43c963cd` |
| 26 | `theorem` | [det_fromBlocks_one₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-fromblocks-one--86f2cd9c09f74551f71f0114.md) | 379 | `result-track:86f2cd9c09f74551f71f01140f3ed96e0de7f621c60d3b93e8bd6828e4e69137` |
| 27 | `theorem` | [det_fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-fromblocks--cce8e842ca91db741c845d14.md) | 386 | `result-track:cce8e842ca91db741c845d14485603b696b923895c9d323dc53efd91816854a4` |
| 28 | `theorem` | [det_fromBlocks_one₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-fromblocks-one--1c554f94055910190d706ab5.md) | 396 | `result-track:1c554f94055910190d706ab537bf2aad0b7eb6f5c911e972ff82be5fd4278d2d` |
| 29 | `theorem` | [det_one_add_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-one-add-mul-comm--6ae573459bb8ba84fae0ad3c.md) | 403 | `result-track:6ae573459bb8ba84fae0ad3c50a082f2dc0827a0e31bc1c95417e5fa09f6a3b9` |
| 30 | `theorem` | [det_mul_add_one_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-mul-add-one-comm--1d5d4a93901fa4392657169d.md) | 411 | `result-track:1d5d4a93901fa4392657169d957b27b27c5a0f408472b16a8d059441d76b83e3` |
| 31 | `theorem` | [det_one_sub_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-one-sub-mul-comm--222cf432d0fa7890e3b8eb54.md) | 414 | `result-track:222cf432d0fa7890e3b8eb54e926e78ec1cd1782df16c69d080a777a8ca47c37` |
| 32 | `theorem` | [det_one_add_replicateCol_mul_replicateRow](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-one-add-replicatecol-mul-replicaterow--709a4877444930accd6fb9d4.md) | 419 | `result-track:709a4877444930accd6fb9d49fb08d0bedb93b8dfbd732071638c3394211ef30` |
| 33 | `theorem` | [det_add_replicateCol_mul_replicateRow](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-add-replicatecol-mul-replicaterow--6f0b2453b30c207890dc9d99.md) | 433 | `result-track:6f0b2453b30c207890dc9d993c129d60d67ee0528934375cde41076e113cee1f` |
| 34 | `theorem` | [det_add_mul](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/det-add-mul--403e021df8e2fca900afca2f.md) | 445 | `result-track:403e021df8e2fca900afca2f8ec2fceeb4fb6839c649114cefff6b4fa6234ea6` |
| 35 | `theorem` | [schur_complement_eq₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/schur-complement-eq--1c656212c8c269e7c5279332.md) | 466 | `result-track:1c656212c8c269e7c52793323197be84a938566a888967a1e25fb07c2a5849c3` |
| 36 | `theorem` | [schur_complement_eq₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/schur-complement-eq--792286606f6f1bff01235d44.md) | 477 | `result-track:792286606f6f1bff01235d440c8e82fbfaed08b15f9d2b94e5b6dabd7db8707c` |
| 37 | `theorem` | [IsHermitian.fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/ishermitian-fromblocks--0dc8d3e0ce53aec2f94ae3b1.md) | 488 | `result-track:0dc8d3e0ce53aec2f94ae3b1d54e2549a60c0b45d169d1de2d8ee147fd3e2018` |
| 38 | `theorem` | [IsHermitian.fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/ishermitian-fromblocks--8adee76350c821033e50863f.md) | 503 | `result-track:8adee76350c821033e50863f5eac84310c3af2dd22e7161aa1c548714c503ad5` |
| 39 | `theorem` | [PosSemidef.fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/possemidef-fromblocks--b881f7f7ff3118e18a1b6a7f.md) | 512 | `result-track:b881f7f7ff3118e18a1b6a7f4e61a7843d03a877fd2af7f9738fc126b20ef55d` |
| 40 | `theorem` | [PosSemidef.fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/declarations/possemidef-fromblocks--a1d6fbf881fab80bd6633055.md) | 530 | `result-track:a1d6fbf881fab80bd6633055dbb8215ac209e9a0a2504fe5e80b2e4d988eec27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
