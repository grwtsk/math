# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c862c045ef6a058a43ef81cf819c94b4eb7dcfce",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c862c045ef6a058a43ef81cf819c94b4eb7dcfce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.EffectiveEpi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.EffectiveEpi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.SheafComparison` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/declarations/equivalence--b77ab0fcdf95ca3ca30477d6.md) | 46 | `declaration-track:b77ab0fcdf95ca3ca30477d6ec1525033bd2e3251cce1be75358c705ea1c6472` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/declarations/instance--56cf83598efce41001024e69.md) | 55 | `declaration-track:56cf83598efce41001024e691fe8cc53b0e529f66362297b6b56af5b5d734350` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/declarations/instance--5df97736683d2bafd4e38185.md) | 59 | `declaration-track:5df97736683d2bafd4e38185ae9a71799ab7d88907766489d192a0322921b07b` |
| 4 | `def` | [stoneanToProfiniteEffectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/declarations/stoneantoprofiniteeffectivepresentation--129e41f3119b6a539a2d0509.md) | 66 | `declaration-track:129e41f3119b6a539a2d0509c694d0d7a422a166b2ccb5d8022efdd121118bd1` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/declarations/instance--65166f4de5ccefad0769ac01.md) | 72 | `declaration-track:65166f4de5ccefad0769ac01b9a987b3dbc861758e02004946b5c1eafeac979b` |
| 6 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/declarations/equivalence--5fe61a67992b153cd3a91084.md) | 77 | `declaration-track:5fe61a67992b153cd3a91084727608b307b201b524cacc9fc7c3066b1b41868e` |
| 7 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/declarations/equivalence--26fffdb46ed6f9320b522b8c.md) | 89 | `declaration-track:26fffdb46ed6f9320b522b8c403ef733e4abe7a9b8710bd18bff5494d784bafc` |
| 8 | `lemma` | [isSheafProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/declarations/issheafprofinite--2da83b69dd32c560a7938e29.md) | 98 | `result-track:2da83b69dd32c560a7938e29a887234c0273e5738d28d20fe49f15570c75dad9` |
| 9 | `lemma` | [isSheafStonean](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant20c7ad2338469041f780e0819e699d4590d20f52bdaa63c938986c46f555ec3f.lean/declarations/issheafstonean--a6e89d8ac9fa8301e3de5de9.md) | 104 | `result-track:a6e89d8ac9fa8301e3de5de9c9d4e411fb1c0931352fe8db38fbf8464efb2528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
