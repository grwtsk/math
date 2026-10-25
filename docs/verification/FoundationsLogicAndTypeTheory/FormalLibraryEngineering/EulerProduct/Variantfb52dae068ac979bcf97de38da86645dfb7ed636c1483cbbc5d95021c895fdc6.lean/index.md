# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerProduct.Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8104bc5d7248bc59e812919217a54b6aa8e8f475",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8104bc5d7248bc59e812919217a54b6aa8e8f475`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.DirichletSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Number.EulerProduct` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InfiniteEulerProductAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6.lean/declarations/infiniteeulerproductauthority--f1abf107d360309cb164b166.md) | 14 | `declaration-track:f1abf107d360309cb164b166a0b630726e8010bc3e1a2bdec5be2c9efab62645` |
| 2 | `theorem` | [infinite_euler_product_requires_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6.lean/declarations/infinite-euler-product-requires-authority--67184c7fe2067ea83024ca02.md) | 23 | `result-track:67184c7fe2067ea83024ca02ea27a44a8636358dd9e1547f2d63e4490ca15530` |
| 3 | `def` | [FiniteEulerWindowProvesInfiniteEulerProduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6.lean/declarations/finiteeulerwindowprovesinfiniteeulerproduct--93c5d9ca1e64975593dc544b.md) | 33 | `declaration-track:93c5d9ca1e64975593dc544b10816be189fa3b6d55db8847582836320514059e` |
| 4 | `theorem` | [finite_euler_window_not_infinite_product](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6.lean/declarations/finite-euler-window-not-infinite-product--7496f436adb66ca017f0c332.md) | 37 | `result-track:7496f436adb66ca017f0c3325c4a548e46b2cae9881fc9d77701069bc4786c49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
