# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuasiIso.Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "183336563c2f76d319f6532ded3662e1357a2a21",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `183336563c2f76d319f6532ded3662e1357a2a21`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Homology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/quasiiso--4efd0a26d111bc274f7be0ef.md) | 46 | `declaration-track:4efd0a26d111bc274f7be0ef2f48b0fb648ae491b9e9a1733b356db6378654bf` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/instance--11f652093b25f1b2fc637c36.md) | 52 | `declaration-track:11f652093b25f1b2fc637c362486c0a29bbb6c88abc9f0f6e4eadd8e932788cb` |
| 3 | `instance` | [quasiIso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/quasiiso-comp--07fe2cea9670607646ec6984.md) | 58 | `declaration-track:07fe2cea9670607646ec69844ce109e00993a978c24a81dd089edd6c03eebc07` |
| 4 | `theorem` | [quasiIso_of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/quasiiso-of-comp-left--fd1696cbe8e494d745982d4f.md) | 64 | `result-track:fd1696cbe8e494d745982d4f1a2fdf4a8e11cb38b53c7703637929ce83f62fdf` |
| 5 | `theorem` | [quasiIso_of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/quasiiso-of-comp-right--a253ed086aaee9be06e0a2b2.md) | 69 | `result-track:a253ed086aaee9be06e0a2b25cc9706d116df06e6ffcb0bfe0ebb61a1c790489` |
| 6 | `theorem` | [toQuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/toquasiiso--41b2c24aafecb7ad53c9ddd2.md) | 82 | `result-track:41b2c24aafecb7ad53c9ddd258186dfb8839c8e23c487eeb27b60a2444e38433` |
| 7 | `theorem` | [toQuasiIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/toquasiiso-inv--d3e17bc2e78a8572f6a4909e.md) | 90 | `result-track:d3e17bc2e78a8572f6a4909eece3775a518254a42038f40e35244baad4a4f0c6` |
| 8 | `def` | [toSingle₀CokernelAtZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/tosingle-cokernelatzeroiso--0a2cc96466487117c3fc3032.md) | 114 | `declaration-track:0a2cc96466487117c3fc3032ef4bd46bbd8d598c56eeb9e71d69fafb8860ecf2` |
| 9 | `theorem` | [toSingle₀CokernelAtZeroIso_hom_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/tosingle-cokernelatzeroiso-hom-eq--e95a8c4aa2e0d4380d6ec47c.md) | 119 | `result-track:e95a8c4aa2e0d4380d6ec47c06a428d331988587230cd5a55dedf485a27a4e14` |
| 10 | `theorem` | [to_single₀_epi_at_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/to-single-epi-at-zero--73067bfa2d30cd13c49a3207.md) | 130 | `result-track:73067bfa2d30cd13c49a320798aca4de0f22e349489d3791f661ee3a0ae7314c` |
| 11 | `theorem` | [to_single₀_exact_d_f_at_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/to-single-exact-d-f-at-zero--d29b17952bd450887e5cb52b.md) | 138 | `result-track:d29b17952bd450887e5cb52b910ff656753e6923b79e914572bc199e08b85c0c` |
| 12 | `theorem` | [to_single₀_exact_at_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/to-single-exact-at-succ--1afd56432536a218e4ec486a.md) | 148 | `result-track:1afd56432536a218e4ec486a4d0f36fcaeaf1f430c92c67b33222cfcdefa789f` |
| 13 | `def` | [fromSingle₀KernelAtZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/fromsingle-kernelatzeroiso--cceb7b5cb381b064d4621d16.md) | 164 | `declaration-track:cceb7b5cb381b064d4621d169614252073a574a5ca59d5a45c8e774b6eb2bdfb` |
| 14 | `theorem` | [fromSingle₀KernelAtZeroIso_inv_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/fromsingle-kernelatzeroiso-inv-eq--53a43139b746ca6ae2566f0d.md) | 169 | `result-track:53a43139b746ca6ae2566f0d4e96eae3ea3d3257c24622dc815b9492efe3ac33` |
| 15 | `theorem` | [from_single₀_mono_at_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/from-single-mono-at-zero--9152c3d49281ee53af1ea868.md) | 183 | `result-track:9152c3d49281ee53af1ea868aed460c799148b30bf5611b8b4805063d83fb4d6` |
| 16 | `theorem` | [from_single₀_exact_f_d_at_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/from-single-exact-f-d-at-zero--fa726d829a90479498704798.md) | 191 | `result-track:fa726d829a904794987047989f4f265d875f8611ab06768ef6418afeb8c5bca5` |
| 17 | `theorem` | [from_single₀_exact_at_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/from-single-exact-at-succ--6c243147eb3b84cf43a823d2.md) | 201 | `result-track:6c243147eb3b84cf43a823d2d4f3d991fe61616756ad8243f7049a9e7d3f2318` |
| 18 | `theorem` | [CategoryTheory.Functor.quasiIso_of_map_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/declarations/categorytheory-functor-quasiiso-of-map-quasiiso--315a84fe451f0257f5a05e44.md) | 218 | `result-track:315a84fe451f0257f5a05e44641d6a666b94584da5d8152e9c6ea55f09ac8859` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
