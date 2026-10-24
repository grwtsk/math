# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2b55cb768a23982882f77830302e0bed02293ac",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2b55cb768a23982882f77830302e0bed02293ac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Adjunctions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.FilteredColimits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Abelian` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Adjunction` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Equivalence` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LightCondMod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/declarations/lightcondmod--8e18b051b7679f74384046e6.md) | 47 | `declaration-track:8e18b051b7679f74384046e6c4a9a222a888aa46a4f13e09784d23fadf709781` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/declarations/instance--9ad17d35c95b9e836c47fb4a.md) | 49 | `declaration-track:9ad17d35c95b9e836c47fb4a32bebf54b5b3219abdda2c1f04d7b85220e22299` |
| 3 | `def` | [LightCondensed.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/declarations/lightcondensed-forget--fa159ba92bf60b78b02db188.md) | 52 | `declaration-track:fa159ba92bf60b78b02db188a3c42fbaf5f2d3f4e8bbaf24624ddd62dfe306a8` |
| 4 | `def` | [LightCondensed.free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/declarations/lightcondensed-free--322efd1e93ead07dc3a7e503.md) | 59 | `declaration-track:322efd1e93ead07dc3a7e503e84024f0ce45ab91189af51a4b6921158ea80ed9` |
| 5 | `def` | [LightCondensed.freeForgetAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/declarations/lightcondensed-freeforgetadjunction--0b45a12c77bca874e512ce2f.md) | 64 | `declaration-track:0b45a12c77bca874e512ce2fb34c69587f7007da2fa025e5849c61a1370e391f` |
| 6 | `abbrev` | [LightCondAb](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/declarations/lightcondab--cbcc828ba615920cc791515a.md) | 70 | `declaration-track:cbcc828ba615920cc791515af8528a4b773244d36fc52722b84005044e179fa1` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/declarations/example--5b3018b4ef19c27b1754084c.md) | 72 | `declaration-track:5b3018b4ef19c27b1754084c6d156cdc48fad111d636200bd616da82b293662f` |
| 8 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e.lean/declarations/hom-naturality-apply--f7c38fb77a563dbdc0de7c20.md) | 76 | `result-track:f7c38fb77a563dbdc0de7c20349f9a50feaba3f8c2bc0af05eb232c076dd3780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
