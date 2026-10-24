# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Fractions.Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdeecc4d17a8ccd2b038bb7bf13c1e1ebd681cbb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdeecc4d17a8ccd2b038bb7bf13c1e1ebd681cbb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.HomologySequence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.CochainComplex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/declarations/instance--229b6da295e595377e8741be.md) | 38 | `declaration-track:229b6da295e595377e8741be56d74e2a0f152b744a8ab20eb862f9284b7e610a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/declarations/instance--19ddd5509be9bade3613b49b.md) | 42 | `declaration-track:19ddd5509be9bade3613b49bcb43d283d2e0233c48b39543ec652fa24b67d401` |
| 3 | `lemma` | [right_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/declarations/right-fac--d2bc4f89044cc35ce845daab.md) | 48 | `result-track:d2bc4f89044cc35ce845daab0eb6395ff09f352dfb49e5e406b9e266af53ef48` |
| 4 | `lemma` | [left_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/declarations/left-fac--b7b05c3cb176cb07fe807bd1.md) | 61 | `result-track:b7b05c3cb176cb07fe807bd1b2370d63346741ab6d71244bb22ba6332d1d5962` |
| 5 | `lemma` | [right_fac_of_isStrictlyLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/declarations/right-fac-of-isstrictlyle--1c3375e5e6961845af4b9d05.md) | 75 | `result-track:1c3375e5e6961845af4b9d058be22f7b9bef859c03f113350abf51597eb4b541` |
| 6 | `lemma` | [left_fac_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/declarations/left-fac-of-isstrictlyge--29068354fd58b5d59c163874.md) | 97 | `result-track:29068354fd58b5d59c163874968317ee1de3ef0470f4b01bf95f6c0de5cc3fdc` |
| 7 | `lemma` | [right_fac_of_isStrictlyLE_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/declarations/right-fac-of-isstrictlyle-of-isstrictlyge--8ac8783c4c5ea9d6bfa8331e.md) | 121 | `result-track:8ac8783c4c5ea9d6bfa8331e5d7a67ef47a80576ed0581788a48ee58d14dc298` |
| 8 | `lemma` | [left_fac_of_isStrictlyLE_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/declarations/left-fac-of-isstrictlyle-of-isstrictlyge--1ec620fe115d11ee302fb4a8.md) | 147 | `result-track:1ec620fe115d11ee302fb4a8018b0db05d1bd9221745bdfb4ec8a40d221c84d2` |
| 9 | `lemma` | [subsingleton_hom_of_isStrictlyLE_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0d472c955315ad83c289fc5f9f5fd8899ded5c87ce80797e1e1501f525bbc22a.lean/declarations/subsingleton-hom-of-isstrictlyle-of-isstrictlyge--88d203a25ea99255d2cabbbf.md) | 169 | `result-track:88d203a25ea99255d2cabbbf5e3f2b92ab06243a1738016ca198271882053be4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
