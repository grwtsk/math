# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EndoFunctor.Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4aa2eb8da5adb77a426a834d31fe5ac352e3312c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4aa2eb8da5adb77a426a834d31fe5ac352e3312c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endofunctor.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Endofunctor.algebraPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean/declarations/endofunctor-algebrapreadditive--55385282625ff0cd035d1392.md) | 38 | `declaration-track:55385282625ff0cd035d1392d2529f1da940128483a8d63a34d0bdf2b6992013` |
| 2 | `instance` | [Algebra.forget_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean/declarations/algebra-forget-additive--f27363f5e909d0ae7a13aef7.md) | 112 | `declaration-track:f27363f5e909d0ae7a13aef76c0e168cddee7e71aee072813be5291a5a1feedc` |
| 3 | `instance` | [Endofunctor.coalgebraPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean/declarations/endofunctor-coalgebrapreadditive--312d19cf760ccf7ae18fbcbb.md) | 115 | `declaration-track:312d19cf760ccf7ae18fbcbb300f68ad25c37b714022fb275017b5c8c0eca23e` |
| 4 | `instance` | [Coalgebra.forget_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean/declarations/coalgebra-forget-additive--d38845ef792b1a57d25bfb70.md) | 189 | `declaration-track:d38845ef792b1a57d25bfb70497b34a2aaeba3e6966504aa0d80b07b3045d031` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
