# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Noetherian.Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "954528bcb72ec7c24a03373665bcc222a5effcd6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `954528bcb72ec7c24a03373665bcc222a5effcd6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Simple` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/noetherianobject--68efc633a84aab79e9f83886.md) | 35 | `declaration-track:68efc633a84aab79e9f83886b2eb3357cd9909dcc0fa9a585987afe2fa54bb41` |
| 2 | `lemma` | [NoetherianObject.subobject_gt_wellFounded](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/noetherianobject-subobject-gt-wellfounded--203be93290adb85172a58e7f.md) | 38 | `result-track:203be93290adb85172a58e7f19e57b4554e086e5dc4a5c1e8d5443aa1efc17b2` |
| 3 | `class` | [ArtinianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/artinianobject--c8ed85a4dce08f9cc9548ae5.md) | 45 | `declaration-track:c8ed85a4dce08f9cc9548ae58791204e165010805295cdd39a2a498b258b3211` |
| 4 | `lemma` | [ArtinianObject.subobject_lt_wellFounded](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/artinianobject-subobject-lt-wellfounded--73667d4d09ce22dc71a23fee.md) | 48 | `result-track:73667d4d09ce22dc71a23fee12e7a5e75522ce569d5c80ef700d01771fcb99a9` |
| 5 | `class` | [Noetherian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/noetherian--d6e91b240e957ab3ca2dce4c.md) | 55 | `declaration-track:d6e91b240e957ab3ca2dce4c75cfbb7de2ddebd57e688f44a972be42853b82b6` |
| 6 | `class` | [Artinian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/artinian--93e29e17d813d4e0943cd908.md) | 61 | `declaration-track:93e29e17d813d4e0943cd908a8a97bc63fb5da2d85778ff986c15c6e015d605b` |
| 7 | `theorem` | [exists_simple_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/exists-simple-subobject--1af8ac433dea1aa89496b328.md) | 72 | `result-track:1af8ac433dea1aa89496b328499f2990c479283f9a09ec9529e5cc9596525138` |
| 8 | `def` | [simpleSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/simplesubobject--efb0baaa9bb18c4e6be830a0.md) | 80 | `declaration-track:efb0baaa9bb18c4e6be830a0d59f20214530e9abae478982d872c83a428a443c` |
| 9 | `def` | [simpleSubobjectArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/simplesubobjectarrow--b5cb5de9e0818761b274f82c.md) | 84 | `declaration-track:b5cb5de9e0818761b274f82c329e8d822e6211f2e6a906d3c8265b9118b04725` |
| 10 | `instance` | [mono_simpleSubobjectArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/mono-simplesubobjectarrow--3c3b08299281235d5745a150.md) | 88 | `declaration-track:3c3b08299281235d5745a1503dd5e69d838ec9c9df6e027339e2c487c8c4e77a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variantffab8683ca6b116c9e9e0bd69554b158c1448a364a78b384aa4643d5416062f6.lean/declarations/instance--300bee4ffa0006eb55addc04.md) | 93 | `declaration-track:300bee4ffa0006eb55addc04a0723cb273b9c60d4752af3ba54e5f2588b2da3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
