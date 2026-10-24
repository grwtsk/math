# Verification target: GRWTSK.Algebra.LinearAlgebra.IndexNSmul.Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fa3168bf3aac31fce0f593b4d93b730843f2ef2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fa3168bf3aac31fce0f593b4d93b730843f2ef2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.ZPowers.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [index_range_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/declarations/index-range-nsmul--27e1bd221c035f3efdff608b.md) | 39 | `result-track:27e1bd221c035f3efdff608b956c5c5d2aafe3f1c76022608b8d9a3bee3d70e9` |
| 2 | `lemma` | [relIndex_map_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/declarations/relindex-map-nsmul--16d333b6665cbbb670546d74.md) | 54 | `result-track:16d333b6665cbbb670546d7428935c7632f3f6f8fac89364d77a54a9380fca89` |
| 3 | `lemma` | [distribSMulToLinearMap_injective_of_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/declarations/distribsmultolinearmap-injective-of-istorsionfree--9a74abeca7a5aecf25922481.md) | 62 | `result-track:9a74abeca7a5aecf25922481416c9c1374b4440ecebd23a0b7f5718cda4471bc` |
| 4 | `lemma` | [nsmulAddMonoidHom_injective_of_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/declarations/nsmuladdmonoidhom-injective-of-istorsionfree--76a7bcca9948da016504c01f.md) | 68 | `result-track:76a7bcca9948da016504c01f3c9498cb8a78f684ead2c43d05eb45d6db5905e8` |
| 5 | `lemma` | [finrank_eq_of_finiteIndex](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/declarations/finrank-eq-of-finiteindex--1cfc8c88ce4ea7cd26e2d36d.md) | 74 | `result-track:1cfc8c88ce4ea7cd26e2d36d1d0aa1b86fad6dc66236ebdf8e311f8da64f9940` |
| 6 | `lemma` | [finrank_eq_of_isFiniteRelIndex](../../../../../mathematics/Algebra/LinearAlgebra/IndexNSmul/Variantbb72f21c37e2acf9f1907fb34e46f68d64c234386ef303b766615d8d25b5fa62.lean/declarations/finrank-eq-of-isfiniterelindex--2938c0c9b2278e5de973ae53.md) | 89 | `result-track:2938c0c9b2278e5de973ae53515e5883a233f0770d2191992d7c72d71f33a958` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
