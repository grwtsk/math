# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KernelPair.Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6b5f67950d5f60403f8cdecd9ee2b6fd72537bb",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6b5f67950d5f60403f8cdecd9ee2b6fd72537bb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/iskernelpair--3b463088b851b12da1286b84.md) | 59 | `declaration-track:3b463088b851b12da1286b8475e672cae77d598d10db5c198a92a18504167e88` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/instance--ab52793c28728b62601579bf.md) | 65 | `declaration-track:ab52793c28728b62601579bf881105fdaf324f2d1b17126167fee58f3f4a4f4f` |
| 3 | `theorem` | [id_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/id-of-mono--274ab5e44542eb499f6488d7.md) | 72 | `result-track:274ab5e44542eb499f6488d732c5b8117bf8bcf1d2b797431a2fe6a491105dde` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/instance--720f3c4c2d26efd89f66d355.md) | 75 | `declaration-track:720f3c4c2d26efd89f66d355fa4a748438315c4083ba206158deb56c18ee34cf` |
| 5 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/lift--9b9f54835aa1fb32b561b85c.md) | 85 | `declaration-track:9b9f54835aa1fb32b561b85c2689e839ebfcc6b74a6a0c83c513ab246a349093` |
| 6 | `lemma` | [lift_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/lift-fst--8cf7d7cd789c61abcdd55f98.md) | 90 | `result-track:8cf7d7cd789c61abcdd55f9871b7ea561d730ef8a99305ba284f46e88cce7900` |
| 7 | `lemma` | [lift_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/lift-snd--20526dfdeee75bca0d6605ee.md) | 95 | `result-track:20526dfdeee75bca0d6605eec3a094ef56fb27f7f2f132339016d6f2fcd490c4` |
| 8 | `def` | [lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/lift--162de8472db568736d7bd6b4.md) | 103 | `declaration-track:162de8472db568736d7bd6b4802ac32a164413d16eda452032590e513fd3d55c` |
| 9 | `theorem` | [cancel_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/cancel-right--e3cdb36cb14771f0a53196a5.md) | 113 | `result-track:e3cdb36cb14771f0a53196a59080b50ebf7fb554a1735c1e763b8dcd3bfb90f2` |
| 10 | `theorem` | [cancel_right_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/cancel-right-of-mono--3f1dbf1acddc774295aecd57.md) | 132 | `result-track:3f1dbf1acddc774295aecd57a714869dcb23dac6bfc33846e857d1a37bf8917a` |
| 11 | `theorem` | [comp_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/comp-of-mono--8b5f52a86e1e1e1ccc215741.md) | 140 | `result-track:8b5f52a86e1e1e1ccc215741123fd35bd366f502abc0324755269c514b053db7` |
| 12 | `def` | [toCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/tocoequalizer--966c28b992908c72c5b0ef6e.md) | 157 | `declaration-track:966c28b992908c72c5b0ef6e4b09689590e5b399a0a82a1adf824d61df49e7af` |
| 13 | `theorem` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/pullback--3efee15e38651a9957279ae9.md) | 171 | `result-track:3efee15e38651a9957279ae9f15f6259daa14e0dd93efa42d3f98d0b86021718` |
| 14 | `theorem` | [mono_of_isIso_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/mono-of-isiso-fst--6910e3c7bf52152cb244473c.md) | 197 | `result-track:6910e3c7bf52152cb244473c813a780d0c1ff91ef17d7285dcaffe4c39ee814e` |
| 15 | `theorem` | [isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/isiso-of-mono--0782586faceafe9db9c3ea2a.md) | 206 | `result-track:0782586faceafe9db9c3ea2ab6b4dd3d032750a1aaefc36d7b797444ce4f100f` |
| 16 | `theorem` | [of_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1ba73b655aab184d62e52cf54842718fbe72a9b8cf3e7fad208964f36de51f53.lean/declarations/of-isiso-of-mono--b1bf8ac5accb0083ce6bb869.md) | 214 | `result-track:b1bf8ac5accb0083ce6bb8694d8aa6bda7850d105331e78e35497059992dade8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
