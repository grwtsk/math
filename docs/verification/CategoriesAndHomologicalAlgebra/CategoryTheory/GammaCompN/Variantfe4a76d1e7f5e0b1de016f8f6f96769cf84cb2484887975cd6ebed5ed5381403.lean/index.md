# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GammaCompN.Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ef04695fa2d64e2ac1e8d15d65260ce0e6505c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ef04695fa2d64e2ac1e8d15d65260ce0e6505c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.FunctorGamma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.HomologicalComplex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Γ₀NondegComplexIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/nondegcomplexiso--e71cb3340f21c097bed741d7.md) | 35 | `declaration-track:e71cb3340f21c097bed741d7da8d9ab0c5c7d55b19c66d7ea3336cfbc8e6aea2` |
| 2 | `def` | [Γ₀'CompNondegComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/compnondegcomplexfunctor--d50acc01001122e13aff5f8c.md) | 59 | `declaration-track:d50acc01001122e13aff5f8c46c8a6a848570d6e50f65a70c12db220a83ca4a9` |
| 3 | `def` | [N₁Γ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n--f0b2d00e781f175e6753f71e.md) | 64 | `declaration-track:f0b2d00e781f175e6753f71e9e15d4aaa2857d47f71b7e8e12dfb7caf53ed6bb` |
| 4 | `theorem` | [N₁Γ₀_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n-app--2a6f29382f76e8184bd98931.md) | 75 | `result-track:2a6f29382f76e8184bd989313d7495a7f47df224e497520c43620ef641fc47b6` |
| 5 | `theorem` | [N₁Γ₀_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n-hom-app--2b036679c77f89ed1ba92971.md) | 85 | `result-track:2b036679c77f89ed1ba92971df689493eb60401bd18fc70191ffe4250a2d8826` |
| 6 | `theorem` | [N₁Γ₀_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n-inv-app--530d8f1009efbfdab723a1af.md) | 94 | `result-track:530d8f1009efbfdab723a1aff9a0fb25da164b196a65611ccb023b5f072a88aa` |
| 7 | `theorem` | [N₁Γ₀_hom_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n-hom-app-f-f--4cccd5a89912c10f963c62c5.md) | 104 | `result-track:4cccd5a89912c10f963c62c5083fd611975f9f0dd817fd810b79944dc8cba4ec` |
| 8 | `theorem` | [N₁Γ₀_inv_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n-inv-app-f-f--0b6c72d48f9ee2b5f418aa85.md) | 112 | `result-track:0b6c72d48f9ee2b5f418aa85c0bacef123cc2e940a6243c386f5d9920d0a1a22` |
| 9 | `theorem` | [N₂Γ₂_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n-tokaroubi--4f79f9cf2ee0f87daa5681de.md) | 122 | `result-track:4f79f9cf2ee0f87daa5681de91cc38641aaf10594fe3bf361f5ae93aa08dfd7f` |
| 10 | `def` | [N₂Γ₂ToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n-tokaroubiiso--3118add19eef4a89c2cbceca.md) | 135 | `declaration-track:3118add19eef4a89c2cbceca03899ae37d99d25aede91eb4794f41950b8b1af1` |
| 11 | `def` | [N₂Γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n--1f593bb435fd1e38db232b55.md) | 144 | `declaration-track:1f593bb435fd1e38db232b55b4f7d5a0011e5d07892f1d8086bcb5eabc3958fd` |
| 12 | `theorem` | [N₂Γ₂_inv_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n-inv-app-f-f--beaa15bae6b2471ef4610fbd.md) | 151 | `result-track:beaa15bae6b2471ef4610fbdf5053c22a6db44b1384700e8abef3656f53efc89` |
| 13 | `lemma` | [whiskerLeft_toKaroubi_N₂Γ₂_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/whiskerleft-tokaroubi-n-hom--6fd723957c49927acb6cf252.md) | 168 | `result-track:6fd723957c49927acb6cf2526424dbf0c0fbb88e8d3bb077a2346b29cb1b7b28` |
| 14 | `theorem` | [N₂Γ₂_compatible_with_N₁Γ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/declarations/n-compatible-with-n--a22ad46ed8f2bb427fe56379.md) | 179 | `result-track:a22ad46ed8f2bb427fe5637902e06fb7a1cb637083816aa2cb15653e44cc22b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
