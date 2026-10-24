# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59f22321b3ae1c08197af8ed4f62375e29017bc6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59f22321b3ae1c08197af8ed4f62375e29017bc6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.NormalMono.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/pullback-of-mono--5a58a17ea2ffc73bab90da61.md) | 38 | `declaration-track:5a58a17ea2ffc73bab90da61ae2887545e762b8b3527403b99f280db20d851d1` |
| 2 | `abbrev` | [P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/p--da6fafe8c0813355c332f170.md) | 107 | `declaration-track:da6fafe8c0813355c332f170578b8b94f0d4d5aab8f18be2a045ee1c4e526e2c` |
| 3 | `def` | [hasLimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/haslimit-parallelpair--8cf68941afc7d60de573b65c.md) | 114 | `declaration-track:8cf68941afc7d60de573b65c6b5e70a1720bbd415f7ad1b31e609a47e1070c56` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/instance--e7fcd586c6f11cf054ce3a67.md) | 149 | `declaration-track:e7fcd586c6f11cf054ce3a678637fb79b18ed27d4cbb3da0c7529edb711ae391` |
| 5 | `theorem` | [epi_of_zero_cokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/epi-of-zero-cokernel--dcc5e25821229290d3a68971.md) | 155 | `result-track:dcc5e25821229290d3a689712e172463a48fcf117852b0ee0bed3587dd6547e9` |
| 6 | `theorem` | [epi_of_zero_cancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/epi-of-zero-cancel--ac621d671d882c46992f80e8.md) | 174 | `result-track:ac621d671d882c46992f80e8d0c16e2e8cbb36346317b0c3377ca08fcc597923` |
| 7 | `def` | [pushout_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/pushout-of-epi--bfcd2cd2a9f65724ef5e724a.md) | 188 | `declaration-track:bfcd2cd2a9f65724ef5e724a95115e11aaab3b3d027b44523714a18ab6fb1523` |
| 8 | `abbrev` | [Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/q--0970595d0ee98613c9940d7e.md) | 264 | `declaration-track:0970595d0ee98613c9940d7e281d2cf030bf79c409bd50c6eb880d2f2ecb7173` |
| 9 | `def` | [hasColimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/hascolimit-parallelpair--23768c19219810c962b96d31.md) | 270 | `declaration-track:23768c19219810c962b96d31668ef760e93e21dc19f73ec099d352b43c55dca9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/instance--14992959a3f2ccdc45b26e36.md) | 307 | `declaration-track:14992959a3f2ccdc45b26e364a668b147478296a8cd4d99b57bade9abd702849` |
| 11 | `theorem` | [mono_of_zero_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/mono-of-zero-kernel--47ae52917930e888107b7c58.md) | 313 | `result-track:47ae52917930e888107b7c58e4244760c63edf0228b174286e38ebce810af8ba` |
| 12 | `theorem` | [mono_of_cancel_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant86ed22b2ec70bea89355bdc73a64aad794d91924c1d91086ee9b352fb1ddd853.lean/declarations/mono-of-cancel-zero--b72397632f683ef5d947fe7e.md) | 335 | `result-track:b72397632f683ef5d947fe7ef90e66510a64f22ba770e181219b4f68aea97060` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
