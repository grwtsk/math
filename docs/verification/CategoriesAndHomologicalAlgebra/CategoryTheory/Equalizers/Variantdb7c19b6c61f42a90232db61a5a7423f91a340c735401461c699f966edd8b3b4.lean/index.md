# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ca207bbc3960f18fd20f63198a2343d73a645c6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ca207bbc3960f18fd20f63198a2343d73a645c6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean.json)

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
| 1 | `def` | [pullback_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/pullback-of-mono--f74816e574357a5051b6c65d.md) | 40 | `declaration-track:f74816e574357a5051b6c65d75301cb2c80c19ebfaf7d11bad83c007c674ee03` |
| 2 | `abbrev` | [P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/p--4e7dfee088380e678331ecdb.md) | 113 | `declaration-track:4e7dfee088380e678331ecdbcf242bb20328b1c9845e2eb61432e840ca0f71ce` |
| 3 | `def` | [hasLimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/haslimit-parallelpair--5e10aee4179c9ace65af50cb.md) | 120 | `declaration-track:5e10aee4179c9ace65af50cba15c21d881c879607a1a8fe35c00fc338d9b681a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/instance--113530c1845d10767bf2ffab.md) | 156 | `declaration-track:113530c1845d10767bf2ffab31508219529a5da2a244a345ff86effeb22ecc6a` |
| 5 | `theorem` | [epi_of_zero_cokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/epi-of-zero-cokernel--a2d151222008031bf94cbecc.md) | 163 | `result-track:a2d151222008031bf94cbecccb4f319fd8a5294119936c4cb6ceac52c7ce60cc` |
| 6 | `theorem` | [epi_of_zero_cancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/epi-of-zero-cancel--f958f2b84875946dfe5d84ab.md) | 183 | `result-track:f958f2b84875946dfe5d84ab24558d799a01f0c0450f0793e78121deaed26a28` |
| 7 | `def` | [pushout_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/pushout-of-epi--3f93945bd341550f92906c82.md) | 198 | `declaration-track:3f93945bd341550f92906c827b8913dee690087e35dafffe6d3889c10fb083bf` |
| 8 | `abbrev` | [Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/q--6127768c69b5a543a1bcad35.md) | 277 | `declaration-track:6127768c69b5a543a1bcad35041f63428d33a496b1742ac00e0cf86c4b40cfb1` |
| 9 | `def` | [hasColimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/hascolimit-parallelpair--2f3857c6e97896b0580590f9.md) | 283 | `declaration-track:2f3857c6e97896b0580590f98a419d5e76ba6086d2855f4133e1280a9b443c50` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/instance--7dee658cf5839a3adbe2f788.md) | 321 | `declaration-track:7dee658cf5839a3adbe2f788e895c992a2279bd4dfcb969a956b1e7a18e73454` |
| 11 | `theorem` | [mono_of_zero_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/mono-of-zero-kernel--98eb7a34cded1543545a0e02.md) | 328 | `result-track:98eb7a34cded1543545a0e023cc473126ce89fbb35c5c1f684b94d3f5ea14d94` |
| 12 | `theorem` | [mono_of_cancel_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/declarations/mono-of-cancel-zero--73fc27c1e125b32a08ed5065.md) | 351 | `result-track:73fc27c1e125b32a08ed5065bb0f2137738bd4025ac2e57cb089dde9a2d4ca6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
