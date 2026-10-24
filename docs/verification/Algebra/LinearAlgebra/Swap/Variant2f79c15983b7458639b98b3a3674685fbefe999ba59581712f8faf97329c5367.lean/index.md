# Verification target: GRWTSK.Algebra.LinearAlgebra.Swap.Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53f4d762516f88e1c83266b0265e65f30103cd8a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53f4d762516f88e1c83266b0265e65f30103cd8a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Permutation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.PEquiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/swap--23f34549f6a9435a81f4e817.md) | 42 | `declaration-track:23f34549f6a9435a81f4e817e12c9e86a2238f819428f6ba60efb0a4d543ee24` |
| 2 | `lemma` | [swap_comm](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/swap-comm--ffeb097cbad39b35643f86b8.md) | 45 | `result-track:ffeb097cbad39b35643f86b8cfe82e2d9315a42c9d7a60252673b0cceeb8c70d` |
| 3 | `lemma` | [transpose_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/transpose-swap--d0cfcd3daa6285ac665fff90.md) | 50 | `result-track:d0cfcd3daa6285ac665fff90b2fea0464a56e03e5f13cd902587b8df0af36a03` |
| 4 | `lemma` | [conjTranspose_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/conjtranspose-swap--dd9f2e66e58556535d5b6df6.md) | 54 | `result-track:dd9f2e66e58556535d5b6df6b2753c0ed5c21164c281b352254a107b493c2113` |
| 5 | `lemma` | [map_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/map-swap--30da76d9d605abd55eeffdda.md) | 64 | `result-track:30da76d9d605abd55eeffdda40f2f081396ea56655b6934a95d7cb9af0e4c799` |
| 6 | `lemma` | [swap_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/swap-mulvec--b05fce0f131be615cc2a78fe.md) | 70 | `result-track:b05fce0f131be615cc2a78fefb12f1b599826f9878fc606a43d38ef8ce031139` |
| 7 | `lemma` | [vecMul_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/vecmul-swap--bbca2ffd557549284e0e62b5.md) | 74 | `result-track:bbca2ffd557549284e0e62b5e8772557872913a0e0cfcf2e3bb540052ead39be` |
| 8 | `lemma` | [swap_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/swap-mulvec-apply--e6319bb2b0940f25916234b3.md) | 79 | `result-track:e6319bb2b0940f25916234b3e248ad664f18415bcaf4db6c19b6c12aa6b2b6bb` |
| 9 | `lemma` | [vecMul_swap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/vecmul-swap-apply--92921191fd011631a5d4547c.md) | 84 | `result-track:92921191fd011631a5d4547c108abcdaee5e7bf46b9fa89e85f478d717c99148` |
| 10 | `lemma` | [swap_mul_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/swap-mul-apply-left--ce1dc97c4d513835902d0f79.md) | 90 | `result-track:ce1dc97c4d513835902d0f7986bfa97571cdb6793333d55729ca6952661ce0d7` |
| 11 | `lemma` | [swap_mul_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/swap-mul-apply-right--fc32b3fda9205f091ccca648.md) | 96 | `result-track:fc32b3fda9205f091ccca648d882f8f8a93145c6b61b6274ac609a84b0289f0f` |
| 12 | `lemma` | [swap_mul_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/swap-mul-of-ne--780582920afc626a67284144.md) | 100 | `result-track:780582920afc626a672841442367f635e5c96b30ccae5bd4d124ab16d0e1f0ab` |
| 13 | `lemma` | [mul_swap_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/mul-swap-apply-left--3bad6ab79b4a6fa1165ea913.md) | 106 | `result-track:3bad6ab79b4a6fa1165ea9131312350c9dffd84125750cc629b44ef7a27a3af0` |
| 14 | `lemma` | [mul_swap_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/mul-swap-apply-right--51fb973abce78f5c8c70cf42.md) | 112 | `result-track:51fb973abce78f5c8c70cf42e260198ca9256de7272ffc0f56ed9dbc260fd5e0` |
| 15 | `lemma` | [mul_swap_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/mul-swap-of-ne--2e80a9c75038eaa24a8167bb.md) | 116 | `result-track:2e80a9c75038eaa24a8167bb289d4419c6fbbd954f343897dc6418f357158472` |
| 16 | `lemma` | [swap_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/swap-mul-self--2e4aa16f6ea53db4ead17d6b.md) | 121 | `result-track:2e4aa16f6ea53db4ead17d6bd86a9674748e94e9489cc5b44242a948c609dffd` |
| 17 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/swap--79070e675761e1581ff86f3b.md) | 133 | `declaration-track:79070e675761e1581ff86f3be3770abf14823f0b56d9f3007cb1569d5e6571ed` |
| 18 | `lemma` | [map_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367.lean/declarations/map-swap--eeeed551fabd76600e74e64f.md) | 142 | `result-track:eeeed551fabd76600e74e64fcdbff558a111be7fd597274fc2399da27322161f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
