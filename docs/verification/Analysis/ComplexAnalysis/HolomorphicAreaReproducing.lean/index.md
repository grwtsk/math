# Verification target: GRWTSK.Analysis.Complex.HolomorphicAreaReproducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5995c524690bdc3f97da887d9759f6990cde08de",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicAreaReproducing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5995c524690bdc3f97da887d9759f6990cde08de`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicAreaReproducing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicAreaReproducing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicAreaComplete`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaComplete.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AreaCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/areacompletion--1c4f55716b7b1affa1d1568d.md) | 42 | `declaration-track:1c4f55716b7b1affa1d1568d94f7d6862eba724cc467ec66756903a1b973f7c4` |
| 2 | `def` | [completedEvaluation](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/completedevaluation--b421a79cbde25f1be851809c.md) | 46 | `declaration-track:b421a79cbde25f1be851809c48057b859c4f029d45ad27d06ed5c8eb5ad83fc1` |
| 3 | `theorem` | [completedEvaluation_toCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/completedevaluation-tocompletion--c97edf7de4455fb4be192013.md) | 50 | `result-track:c97edf7de4455fb4be192013004b25899ec070e7e18d25e1b00f75cb6a844e6c` |
| 4 | `theorem` | [completedEvaluation_eq_value](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/completedevaluation-eq-value--a2dc3e1a6116ecc0fc44cc2c.md) | 58 | `result-track:a2dc3e1a6116ecc0fc44cc2c1387bcf348e1a175573f83a90f38f2d658f930df` |
| 5 | `theorem` | [completedEvaluation_bound](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/completedevaluation-bound--10b07fea00549c2aadd36032.md) | 66 | `result-track:10b07fea00549c2aadd36032d9432acbccf010b16677c67b3aab558ce8581c67` |
| 6 | `theorem` | [completedEvaluation_norm_le](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/completedevaluation-norm-le--fc42f5e556595b2925fd6dd9.md) | 73 | `result-track:fc42f5e556595b2925fd6dd922bba1171bb85889b9612f01902404549949a327` |
| 7 | `theorem` | [completedEvaluation_congr](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/completedevaluation-congr--4e0b426ee5e24cc737eefa52.md) | 79 | `result-track:4e0b426ee5e24cc737eefa52d86e265b0d39aff03c95885ff62864172a5057c6` |
| 8 | `def` | [evaluationAt](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/evaluationat--96389e684fea630f55c115b3.md) | 86 | `declaration-track:96389e684fea630f55c115b377b03975507d26967ade3906a8e30c8f038a05c5` |
| 9 | `theorem` | [evaluationAt_eq_value](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/evaluationat-eq-value--8481f054011ece4a152ea56e.md) | 89 | `result-track:8481f054011ece4a152ea56e116fc3fba8974e2e9e8f1bf3cc804bbd18e8bb4e` |
| 10 | `theorem` | [evaluationAt_eq_completedEvaluation](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/evaluationat-eq-completedevaluation--30b51727d180dc96745ef791.md) | 95 | `result-track:30b51727d180dc96745ef791f722e1c6195799b05636951e8ce229bd06855fc3` |
| 11 | `theorem` | [evaluationAt_toCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/evaluationat-tocompletion--1561f8a6d9db9c1cca8a0d5d.md) | 100 | `result-track:1561f8a6d9db9c1cca8a0d5d5002510a51deb9dad0edc0255c5faae7993f3012` |
| 12 | `theorem` | [realization_multiplier](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/realization-multiplier--8f4fc1d749d62e094c006383.md) | 107 | `result-track:8f4fc1d749d62e094c0063834f3133d149fa73a01a8dc3e232e6893b6d940f64` |
| 13 | `theorem` | [completedRealization_multiplier](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/completedrealization-multiplier--b818a6f77847a73c5b449061.md) | 118 | `result-track:b818a6f77847a73c5b4490611bdf569b68228de11543fbaa5c898ba74ca6f2ac` |
| 14 | `theorem` | [evaluationAt_multiplier](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/evaluationat-multiplier--37cfe1a0f066be146b3dd576.md) | 128 | `result-track:37cfe1a0f066be146b3dd5769dff5f5137afefc38c85fdd55cda90539c6b3a85` |
| 15 | `def` | [kernelVector](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernelvector--1ef2db7579b2edce64aaef9b.md) | 137 | `declaration-track:1ef2db7579b2edce64aaef9b610194c98beeb5d6f3d4b137c561a31f24b85beb` |
| 16 | `theorem` | [kernelVector_evaluation](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernelvector-evaluation--8bfb04fce9caec960517af43.md) | 140 | `result-track:8bfb04fce9caec960517af434ba0b1240908981b852afbd8b0b06ab1751098b5` |
| 17 | `theorem` | [kernelVector_reproduces](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernelvector-reproduces--968091eab73a2e1faec4dd39.md) | 145 | `result-track:968091eab73a2e1faec4dd39ea8f99263709e38d6ea2153938e63132a9615ac9` |
| 18 | `theorem` | [kernelVector_unique](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernelvector-unique--95d88a535d018d18592d6a4d.md) | 151 | `result-track:95d88a535d018d18592d6a4de04c11bfd400dc14d0fecf86b49c1ec4327829f5` |
| 19 | `theorem` | [kernelVector_norm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernelvector-norm--e91480a27a32c21a2ddb69e3.md) | 157 | `result-track:e91480a27a32c21a2ddb69e33b7dbd8efc70da58a8e139948293467f20d73191` |
| 20 | `theorem` | [kernelVector_energy](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernelvector-energy--48ddb8ca0e01c3bf56db8099.md) | 162 | `result-track:48ddb8ca0e01c3bf56db8099ea4851aa1f6a6456ae1bcb93f6729bb2adb84f47` |
| 21 | `def` | [kernel](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernel--bb64f41d5618aae7c69c5ed9.md) | 168 | `declaration-track:bb64f41d5618aae7c69c5ed9d6f19b1983329a04e3223f5f5aff7da900275608` |
| 22 | `theorem` | [kernel_eq_inner](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernel-eq-inner--a384dbcb8f5a50e66e4a169b.md) | 171 | `result-track:a384dbcb8f5a50e66e4a169bd702a142aa0f38aa5293614d01ba58e3ae1266f6` |
| 23 | `theorem` | [kernel_holomorphic](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernel-holomorphic--e41dc5845d6cdf800e8a47a8.md) | 176 | `result-track:e41dc5845d6cdf800e8a47a8899edddb2b7c57ce80ec27253ed6272f32b3d41b` |
| 24 | `theorem` | [kernel_conj_symm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernel-conj-symm--38119ad255f72051508c9d41.md) | 180 | `result-track:38119ad255f72051508c9d418dcee4aa1a556097f0301193b10d7588a155e9df` |
| 25 | `theorem` | [kernel_diagonal](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernel-diagonal--d94d2aedd3dc6ecb147633a2.md) | 185 | `result-track:d94d2aedd3dc6ecb147633a27418e9d4338ee86aa4843bb7b3b3e8dfa4dc6221` |
| 26 | `theorem` | [kernel_diagonal_bound](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernel-diagonal-bound--50d9dc9a986bfc715a2291a2.md) | 189 | `result-track:50d9dc9a986bfc715a2291a2141dd428301229595477ed929fe387e118d32aeb` |
| 27 | `theorem` | [kernel_gram](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernel-gram--85be83a58ec252185c57d7ce.md) | 198 | `result-track:85be83a58ec252185c57d7cea9a7270ea1eb96f2a0555563f74e16d9384164da` |
| 28 | `theorem` | [kernel_gram_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernel-gram-nonneg--507a81c4588074aeb62b3b70.md) | 206 | `result-track:507a81c4588074aeb62b3b70e03fc0bb7dad091017802c57f8d77883e47e6c09` |
| 29 | `theorem` | [evaluationAt_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/evaluationat-ne-zero--7816c5a8eec576292f378470.md) | 213 | `result-track:7816c5a8eec576292f3784708c5897a54be0eb83eb654979aabed0abeec1b8b8` |
| 30 | `theorem` | [kernelVector_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernelvector-ne-zero--e290737a36ba4904295038ed.md) | 227 | `result-track:e290737a36ba4904295038ed6963d0829827b856be9b019098fd32cd7753ac57` |
| 31 | `theorem` | [kernel_diagonal_pos](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/kernel-diagonal-pos--63dde658017444858e9ce993.md) | 237 | `result-track:63dde658017444858e9ce99380f696b4aa934548e6d93e0b88e2d9c7f8a93326` |
| 32 | `theorem` | [adjoint_multiplier_kernel](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/adjoint-multiplier-kernel--ede551d7cca4a4c51c2720ec.md) | 244 | `result-track:ede551d7cca4a4c51c2720ec95826f87e985eb4c78fa53d6f3354c9bf797dbaa` |
| 33 | `theorem` | [phase_kernel](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/phase-kernel--528136a5bdb955c4db3f92fe.md) | 258 | `result-track:528136a5bdb955c4db3f92fed2a7d9d0c1706ab5268758062cbcb409ee63cc26` |
| 34 | `theorem` | [phase_wrong_sign](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/phase-wrong-sign--cf6c3ae68f5a0702bda941a9.md) | 265 | `result-track:cf6c3ae68f5a0702bda941a9e8c825334d0f74879e785a3a6796a6afba5ab090` |
| 35 | `theorem` | [disk_phase_wrong_sign](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/disk-phase-wrong-sign--947d63b5e6317bfc913328a0.md) | 285 | `result-track:947d63b5e6317bfc913328a0017be1ff779466b665b01965e0b841419b74dd8a` |
| 36 | `theorem` | [empty_gram](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/declarations/empty-gram--0696a85851133ed4d7cffa23.md) | 295 | `result-track:0696a85851133ed4d7cffa2339a89d7c777aca5d2ab1e51d769ec07d635b9003` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
