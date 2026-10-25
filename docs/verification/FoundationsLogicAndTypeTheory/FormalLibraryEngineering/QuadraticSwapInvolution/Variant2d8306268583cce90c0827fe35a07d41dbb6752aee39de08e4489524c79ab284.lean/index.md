# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuadraticSwapInvolution.Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d1e8a24ddd62f88172f633387e09513ed028608",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d1e8a24ddd62f88172f633387e09513ed028608`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [swapInvolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapinvolution--2838d6d503caa9e3b31a228c.md) | 46 | `declaration-track:2838d6d503caa9e3b31a228ca343c539ef53782c38a2cfc7c76327bd33776dbd` |
| 2 | `theorem` | [swapInvolution_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapinvolution-apply--b9f227a87d77e13efa56e052.md) | 54 | `result-track:b9f227a87d77e13efa56e052d6d07fe391b643b4b9bdc7ce56c929f80f892d70` |
| 3 | `theorem` | [swapInvolution_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapinvolution-sq--37cca1ec518149c9f07b0262.md) | 60 | `result-track:37cca1ec518149c9f07b02620eb4ddde0dd27d8ee426ea4b67ca57fffe838720` |
| 4 | `theorem` | [swapInvolution_comp_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapinvolution-comp-self--96a98370837431c06faf841a.md) | 65 | `result-track:96a98370837431c06faf841a8ab047bd36ad495819cbb7a11a08bba5df3eb3bf` |
| 5 | `def` | [swapSymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapsymmetricprojection--c1f693b060574b4374cc51f0.md) | 71 | `declaration-track:c1f693b060574b4374cc51f0e8dfb731a7f4278e4041b1aadf47170420550e83` |
| 6 | `def` | [swapAntisymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapantisymmetricprojection--6412bb0be8d1ed9c1fb2d57e.md) | 75 | `declaration-track:6412bb0be8d1ed9c1fb2d57e6421defea3eca99af7cfc25afa1809d11112996b` |
| 7 | `theorem` | [swapSymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapsymmetricprojection-apply--4977c8f7724023d792224aa4.md) | 79 | `result-track:4977c8f7724023d792224aa42797ebb1f6d5699f5a168f38d74f621c5632cf57` |
| 8 | `theorem` | [swapAntisymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapantisymmetricprojection-apply--96325e44d1aff46db29036bb.md) | 86 | `result-track:96325e44d1aff46db29036bb45016b70fe82bfd21e98cf12c383b43e6bc000d5` |
| 9 | `theorem` | [swap_projection_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swap-projection-decomposition--8779b3530bbafcdec9baa2b8.md) | 93 | `result-track:8779b3530bbafcdec9baa2b89478c0ba4e8ecb302e314d7c10c2f1187611356d` |
| 10 | `theorem` | [swapSymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapsymmetricprojection-idempotent--e8b918b67537aad4c10ec9e6.md) | 98 | `result-track:e8b918b67537aad4c10ec9e667c5973e35e6e97abf77092d2e5fcc2b1b05078e` |
| 11 | `theorem` | [swapAntisymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapantisymmetricprojection-idempotent--315f1af0d99af7e74bfbb642.md) | 104 | `result-track:315f1af0d99af7e74bfbb642abc4993aee05db82d715450996615f48a8207c93` |
| 12 | `theorem` | [swapSymmetric_after_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapsymmetric-after-antisymmetric--ab1ec8285dbc89759591f6e5.md) | 110 | `result-track:ab1ec8285dbc89759591f6e5946f4b3ac57d51cb64ad161fee344c096989445e` |
| 13 | `theorem` | [swapAntisymmetric_after_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapantisymmetric-after-symmetric--c4774f111a38c647e9466c26.md) | 115 | `result-track:c4774f111a38c647e9466c2658dfe7be7978bcdd0df5350fb089c951c83f2da2` |
| 14 | `theorem` | [swap_on_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swap-on-symmetric--6bb7baec65c8d2889965e32d.md) | 120 | `result-track:6bb7baec65c8d2889965e32d762848e12842b14a86e9a285f22b556877c929a6` |
| 15 | `theorem` | [swap_on_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swap-on-antisymmetric--1696b8eab77b335699fdaa73.md) | 126 | `result-track:1696b8eab77b335699fdaa73f698e5dbcf51ecf22dc90b0b60dd31dfb644502f` |
| 16 | `theorem` | [swap_sector_reconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swap-sector-reconstruction--28b9c7522314e3953292a4bf.md) | 132 | `result-track:28b9c7522314e3953292a4bf77dfe7d5f997e02d027675f5817b9d7ef4e83248` |
| 17 | `def` | [doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/doublednormsq--a8e92ee79dfb1e2365d1ec52.md) | 142 | `declaration-track:a8e92ee79dfb1e2365d1ec52bd4aa8254188691f62501aed383fd937b8d63111` |
| 18 | `theorem` | [swapAntisymmetricProjection_doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapantisymmetricprojection-doublednormsq--cdebdee839dc9d26ea173caa.md) | 146 | `result-track:cdebdee839dc9d26ea173caa1fdd2e9373b91783941cd23b37228d3add92b0ac` |
| 19 | `def` | [swapDefect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapdefect--d26680c65e9ac26cf4276003.md) | 159 | `declaration-track:d26680c65e9ac26cf4276003a7ac705f75e48133e24afdfc44bbb7a24e46a24b` |
| 20 | `theorem` | [swapDefect_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapdefect-eq--6e709ad813990d6dea9759b7.md) | 163 | `result-track:6e709ad813990d6dea9759b72a87a49dafc1a6442c04b86ae087c6cbe3937c4e` |
| 21 | `theorem` | [swapDefect_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapdefect-nonnegative--1ac7bb9218f642263504a05b.md) | 169 | `result-track:1ac7bb9218f642263504a05b3f2ac86c5fcad3369d409cb2a51e5233b18df2a2` |
| 22 | `theorem` | [swapDefect_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variant2d8306268583cce90c0827fe35a07d41dbb6752aee39de08e4489524c79ab284.lean/declarations/swapdefect-eq-zero-iff--e58b36db0472071caff48f48.md) | 176 | `result-track:e58b36db0472071caff48f482b00bc37767d6c441429b3a8ce81c12533e2d4cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
