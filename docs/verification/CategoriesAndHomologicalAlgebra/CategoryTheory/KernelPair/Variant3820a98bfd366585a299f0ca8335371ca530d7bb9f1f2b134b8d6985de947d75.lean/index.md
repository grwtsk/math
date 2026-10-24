# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KernelPair.Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5004afbe650475643ef54d788dcd72c2883777a3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5004afbe650475643ef54d788dcd72c2883777a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.CommSq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/iskernelpair--10868b4e520649d577c7eb7a.md) | 62 | `declaration-track:10868b4e520649d577c7eb7a8c938edcde36c40f54950457c1deee05b26230a6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/instance--8224a036871d3e4f87582e8b.md) | 69 | `declaration-track:8224a036871d3e4f87582e8be1f471d99016e0bc1acd11bc8a018ecf36a4abe5` |
| 3 | `theorem` | [id_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/id-of-mono--60f9dc773a73c871c7a8f38c.md) | 76 | `result-track:60f9dc773a73c871c7a8f38c888706c5dbdc4d69d49d5a90d389d235fb5714ba` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/instance--9750581f56342f30e8dedb53.md) | 80 | `declaration-track:9750581f56342f30e8dedb5378d08271ac1d71da92b9c592693dfd16606e224e` |
| 5 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/lift--1be8cbcfef9241bd60124532.md) | 90 | `declaration-track:1be8cbcfef9241bd60124532711158d17b0fd18d9524cf990d0ff0047dcbcbf1` |
| 6 | `lemma` | [lift_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/lift-fst--d1f029e3680282cf44ebbb65.md) | 95 | `result-track:d1f029e3680282cf44ebbb65a07fd93bcedf9dd0aca1af374b8c1d7a965580f4` |
| 7 | `lemma` | [lift_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/lift-snd--868e5ca6502dc6f362159686.md) | 100 | `result-track:868e5ca6502dc6f362159686e6ef4858296bf3ec3adba10d80e86086fdecc51c` |
| 8 | `def` | [lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/lift--f1f8bc1c61e747e7c501251b.md) | 108 | `declaration-track:f1f8bc1c61e747e7c501251b04071079afc2622a0764e605d5f90f828e87c024` |
| 9 | `theorem` | [cancel_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/cancel-right--09468992abf8b1c4226f42c7.md) | 119 | `result-track:09468992abf8b1c4226f42c7067554d4cabffe7f5b9a746ac81db8ff9772ed24` |
| 10 | `theorem` | [cancel_right_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/cancel-right-of-mono--c345b859f8a4edbaad4ec4b1.md) | 139 | `result-track:c345b859f8a4edbaad4ec4b100f9061c2de684def0e57acf1e534c6d862b9bc0` |
| 11 | `theorem` | [comp_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/comp-of-mono--4ae857ba869290608b2bf81a.md) | 148 | `result-track:4ae857ba869290608b2bf81a337e189e7fce55f0253f3e7692930e0f0865b91e` |
| 12 | `def` | [toCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/tocoequalizer--978ce04a229e47926c8100a6.md) | 166 | `declaration-track:978ce04a229e47926c8100a60816407b15a1fa73d6882e86c5b38a82f33316e7` |
| 13 | `theorem` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/pullback--425a7c619c7ead1dbc776f39.md) | 181 | `result-track:425a7c619c7ead1dbc776f39979d9e85033c09dd9ac0512ccd65144c4248fe0f` |
| 14 | `theorem` | [mono_of_isIso_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/mono-of-isiso-fst--1980614e6672fc6b4ee2a15c.md) | 203 | `result-track:1980614e6672fc6b4ee2a15c98c68c1a911a0baf0108c6287047faea11a193c4` |
| 15 | `theorem` | [isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/isiso-of-mono--6e018beb3c78c90f648417b3.md) | 213 | `result-track:6e018beb3c78c90f648417b3385bca89867df5c1690e872de7a76bc9a1b984f2` |
| 16 | `theorem` | [of_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant3820a98bfd366585a299f0ca8335371ca530d7bb9f1f2b134b8d6985de947d75.lean/declarations/of-isiso-of-mono--167859e37c259950c415afc7.md) | 222 | `result-track:167859e37c259950c415afc764b92110b9823d3a0af89b3caae74400315f3592` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
