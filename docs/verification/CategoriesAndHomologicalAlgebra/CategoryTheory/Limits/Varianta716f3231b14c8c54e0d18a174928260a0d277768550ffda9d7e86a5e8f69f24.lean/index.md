# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dfe72004c3eb8194c77a9f19abb895eacf1d196",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dfe72004c3eb8194c77a9f19abb895eacf1d196`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/semiringobj--7441f636b2ee6963d38af0f0.md) | 40 | `declaration-track:7441f636b2ee6963d38af0f0832a38994638a5bd2e97c0dd43138273254e12c4` |
| 2 | `instance` | [algebraObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/algebraobj--8c5128672f3c4606a4816533.md) | 43 | `declaration-track:8c5128672f3c4606a48165330b0ef8cce1ba43d65dde64adc6bdd5fee93136bf` |
| 3 | `def` | [sectionsSubalgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/sectionssubalgebra--3a68944598ce06cd2d60a303.md) | 49 | `declaration-track:3a68944598ce06cd2d60a3037b79bc10a724f7e67bce0720217b46e8b8872422` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/instance--3031d0af4ae451dc7c6bfebd.md) | 54 | `declaration-track:3031d0af4ae451dc7c6bfebd0b124b612e2278d903a1c7d5430c334310a1cf2f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/instance--e8de70e480b7b9133fa31d78.md) | 57 | `declaration-track:e8de70e480b7b9133fa31d78dcf1e8eb44942aa789515718b6ea1004caffbc2a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/instance--08f5b7089fc983103d682c85.md) | 62 | `declaration-track:08f5b7089fc983103d682c85779a7e0ba075c65f9b0b1313a093edea7305e249` |
| 7 | `instance` | [limitSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/limitsemiring--13a3bf9d4e84db142d4bc1f6.md) | 65 | `declaration-track:13a3bf9d4e84db142d4bc1f66e5afc9df07bee1a5a5c19fc3e22b212ac4e7ce4` |
| 8 | `instance` | [limitAlgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/limitalgebra--975a88d7a39d9b895c56b027.md) | 69 | `declaration-track:975a88d7a39d9b895c56b0274951bb8e06d11120f6aeba06cb4a830f86e59507` |
| 9 | `def` | [limitπAlgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/limit-alghom--89a10c288ce9f8a0d5879405.md) | 74 | `declaration-track:89a10c288ce9f8a0d5879405642b6ec27cd7e24a078f1cd38a34165247507d81` |
| 10 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/limitcone--eb9b5438159d1b7b212155c8.md) | 97 | `declaration-track:eb9b5438159d1b7b212155c84a54f76ff2d9613132d73dc44da5a1f698ca2eab` |
| 11 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/limitconeislimit--e86e0c46b6f172e4b9fb2f39.md) | 108 | `declaration-track:e86e0c46b6f172e4b9fb2f39d956a3219cf13361c7356bcbf6ce28e726a7d935` |
| 12 | `lemma` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/haslimitsofsize--4e8c286bd515e6903c8ddf25.md) | 147 | `result-track:4e8c286bd515e6903c8ddf2510d93ef85270859086562514821209f6cc735897` |
| 13 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/haslimits--6c5046468e6359fc38bd3986.md) | 153 | `declaration-track:6c5046468e6359fc38bd3986c17a221a6ebc19707226499546dc0cd535a924ae` |
| 14 | `instance` | [forget₂Ring_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/forget-ring-preserveslimitsofsize--a80f23b1851d8576e4267f50.md) | 158 | `declaration-track:a80f23b1851d8576e4267f5076ab8559d39e8dd6a70c6d6ab2012ebf0ffaf425` |
| 15 | `instance` | [forget₂Ring_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/forget-ring-preserveslimits--6b4b1bd593a70d0db3d359d8.md) | 166 | `declaration-track:6b4b1bd593a70d0db3d359d825f804ebfe63167cad515985a90ee8cd9cd4015a` |
| 16 | `instance` | [forget₂Module_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/forget-module-preserveslimitsofsize--4ad9988de9be75d819352f53.md) | 171 | `declaration-track:4ad9988de9be75d819352f530f70c6ae2b3c957512ac3f6bb3b03838dc9de018` |
| 17 | `instance` | [forget₂Module_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/forget-module-preserveslimits--e3a0ac61295d7543fd6cc40a.md) | 179 | `declaration-track:e3a0ac61295d7543fd6cc40adbe12b455fe08fc0d8ed240a2adb1981f6c60671` |
| 18 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/forget-preserveslimitsofsize--c01058c966accd3e52de5160.md) | 185 | `declaration-track:c01058c966accd3e52de51604c95936519deb30bd200649b3467f52d471b1ffe` |
| 19 | `instance` | [forget_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/declarations/forget-preserveslimits--c72543382dd912afb2beefa4.md) | 192 | `declaration-track:c72543382dd912afb2beefa41cadd6f2ea49d45597cc3058e8d2af03c66a2a48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
