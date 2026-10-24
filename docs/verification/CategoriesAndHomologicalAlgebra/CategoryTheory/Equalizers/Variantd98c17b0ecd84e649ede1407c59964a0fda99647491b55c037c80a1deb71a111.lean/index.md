# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cb142eb4d8167117374ce7e3e0b7fc95075cdb0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cb142eb4d8167117374ce7e3e0b7fc95075cdb0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.NormalMono.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/pullback-of-mono--14cef2049fe0f3b7be4a6299.md) | 30 | `declaration-track:14cef2049fe0f3b7be4a62999a9d1242a14138b89f6a3cb364f23b394baee486` |
| 2 | `abbrev` | [P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/p--4c612de7c82c1ea0e0675061.md) | 99 | `declaration-track:4c612de7c82c1ea0e06750610bf8789fcade4b92c7a9c7a0af9e6060c441beb8` |
| 3 | `def` | [hasLimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/haslimit-parallelpair--dd9ed85954abe73e9ce52642.md) | 106 | `declaration-track:dd9ed85954abe73e9ce526429d505298948eeff884b5e6b96555955fe225d6de` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/instance--f7c6f8cd60a9f39240ce9018.md) | 141 | `declaration-track:f7c6f8cd60a9f39240ce901845858e16a8b86f0508626ded75a436e53c67369a` |
| 5 | `theorem` | [epi_of_zero_cokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/epi-of-zero-cokernel--b5568f2760e47f562bfdb751.md) | 147 | `result-track:b5568f2760e47f562bfdb75102b35629646adca3c9e5d061cd5f9e61da589d7b` |
| 6 | `theorem` | [epi_of_zero_cancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/epi-of-zero-cancel--240f28c63c12c183908781e6.md) | 166 | `result-track:240f28c63c12c183908781e64401f8a663366dc52555f8a43d0828a7dcf9ca7f` |
| 7 | `def` | [pushout_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/pushout-of-epi--55dd5d5b63d75facc7d6fcba.md) | 180 | `declaration-track:55dd5d5b63d75facc7d6fcba7a68fd29efcfd50806f1401361ef72de9b8f6680` |
| 8 | `abbrev` | [Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/q--441a46781a5b3f70552692d0.md) | 256 | `declaration-track:441a46781a5b3f70552692d0f13c9e42ed9261f13a010254ace24812c586f361` |
| 9 | `def` | [hasColimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/hascolimit-parallelpair--3f8c476feba620dfb66c71dd.md) | 262 | `declaration-track:3f8c476feba620dfb66c71dd6faad9fcf9c1d0a567412cf63f176346ece946ea` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/instance--f03f6c25ab22e6f23ce7c8bb.md) | 299 | `declaration-track:f03f6c25ab22e6f23ce7c8bb3ad330a42e6aa184bbcd1a7e161e381c717985f3` |
| 11 | `theorem` | [mono_of_zero_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/mono-of-zero-kernel--3bac080f133d141bfb5ebb42.md) | 305 | `result-track:3bac080f133d141bfb5ebb42513fb9880a8418ec4ae8685a14be57d2b4c25844` |
| 12 | `theorem` | [mono_of_cancel_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/declarations/mono-of-cancel-zero--524041e97167d184b248d662.md) | 327 | `result-track:524041e97167d184b248d662e1d95fdbebfc5be21e3ca2f376cea65e7f02eaa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
