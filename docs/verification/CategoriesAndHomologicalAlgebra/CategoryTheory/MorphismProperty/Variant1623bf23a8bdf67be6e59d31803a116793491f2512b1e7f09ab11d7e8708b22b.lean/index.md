# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismProperty.Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fea6adc96fdf6d000b378059ec969986add12e20",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fea6adc96fdf6d000b378059ec969986add12e20`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.PathCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [morphismProperty_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/declarations/morphismproperty-eq-top--d0fb2e5980bb883db14a16f5.md) | 33 | `result-track:d0fb2e5980bb883db14a16f5d43e24ee3955cc21a448888b4e359de67c02f82c` |
| 2 | `lemma` | [morphismProperty_eq_top'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/declarations/morphismproperty-eq-top--0c4d13000cc0c19b81704e52.md) | 44 | `result-track:0c4d13000cc0c19b81704e5270eb24180ec161503f9a53aa86b7b6cea7c2d971` |
| 3 | `lemma` | [morphismProperty_eq_top_of_isMultiplicative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/declarations/morphismproperty-eq-top-of-ismultiplicative--87058f1b966c76564fe4ffcf.md) | 54 | `result-track:87058f1b966c76564fe4ffcf1d0125ca9435505a936311b5f5c714ba72d6c444` |
| 4 | `def` | [liftNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/declarations/liftnattrans--ac51ded8f283f3f541c14937.md) | 66 | `declaration-track:ac51ded8f283f3f541c149374c1b84fd96da9ddf8cd05216ce9b052ac72b0951` |
| 5 | `def` | [liftNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/declarations/liftnatiso--0e414171bd783f8d814baae7.md) | 78 | `declaration-track:0e414171bd783f8d814baae703b168fc5106a888ca99deb30969b59121fe5bd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
