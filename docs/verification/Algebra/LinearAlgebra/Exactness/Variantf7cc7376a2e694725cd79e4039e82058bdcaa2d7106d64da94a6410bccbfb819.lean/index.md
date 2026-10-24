# Verification target: GRWTSK.Algebra.LinearAlgebra.Exactness.Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65f958b008f7e8d176f5624bc1d76f0a250024b9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65f958b008f7e8d176f5624bc1d76f0a250024b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Submodule` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.AtPrime` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Away` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/injective-of-islocalized-maximal--df7b1450e2774ee4c660ab21.md) | 47 | `result-track:df7b1450e2774ee4c660ab2126af2f602cdcb1e26990dd74e229e342abdc418f` |
| 2 | `theorem` | [surjective_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/surjective-of-islocalized-maximal--c8b75fc5ca788a547f581302.md) | 52 | `result-track:c8b75fc5ca788a547f581302a56a6dce7b461eef0d74a9449f9b4e53101ae1f9` |
| 3 | `theorem` | [bijective_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/bijective-of-islocalized-maximal--c9e85be7257d2ae6018dc836.md) | 59 | `result-track:c9e85be7257d2ae6018dc836d25528d8c755b87e884d4fec7d37aed58fb502ba` |
| 4 | `theorem` | [exact_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/exact-of-islocalized-maximal--286385f5cede4b5ef91818dc.md) | 65 | `result-track:286385f5cede4b5ef91818dc82f59fd4fd284df54281ef6e293e0ad39242c3bb` |
| 5 | `theorem` | [injective_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/injective-of-localized-maximal--6db88ea2145865a2470b000e.md) | 85 | `result-track:6db88ea2145865a2470b000e34172810401b5a00761da7eb82c9766389d91578` |
| 6 | `theorem` | [surjective_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/surjective-of-localized-maximal--47c2187073ec734e21d73f2f.md) | 90 | `result-track:47c2187073ec734e21d73f2f32e1d99f24e6a58ca2cf4b30c30f1ef22294bc27` |
| 7 | `theorem` | [bijective_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/bijective-of-localized-maximal--777c3ed3df181dff26923ef1.md) | 95 | `result-track:777c3ed3df181dff26923ef18b8f7f23f7722190d3901edc091ca5dc6d50f017` |
| 8 | `theorem` | [exact_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/exact-of-localized-maximal--602418880ea0f4d6344457af.md) | 101 | `result-track:602418880ea0f4d6344457afcbcb4f21c4709d677450e55a3b9b2d63e6ba6785` |
| 9 | `theorem` | [injective_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/injective-of-islocalized-span--c2d5731eec3d6cffc0b52d37.md) | 135 | `result-track:c2d5731eec3d6cffc0b52d373b5932857fe23dca987ffe59724bf1aa6885303d` |
| 10 | `theorem` | [surjective_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/surjective-of-islocalized-span--71a99195ad4a0f27c747512a.md) | 140 | `result-track:71a99195ad4a0f27c747512a48a4b9cb96cb6b307315349079daecf10591fc48` |
| 11 | `theorem` | [bijective_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/bijective-of-islocalized-span--45d336c3cf2d89ab578b392d.md) | 146 | `result-track:45d336c3cf2d89ab578b392d0205fae4b956c2d67718cb5db22bb8fecad4816e` |
| 12 | `lemma` | [exact_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/exact-of-islocalized-span--b90c7e0d24bd80225519141b.md) | 152 | `result-track:b90c7e0d24bd80225519141b75d3e1f88f823422b2b719bf22c36da9f347baab` |
| 13 | `theorem` | [injective_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/injective-of-localized-span--1962ea81ec3391524c99e2d0.md) | 174 | `result-track:1962ea81ec3391524c99e2d0abf6a31de72c5d2aa8163fe1715630e3af8adeda` |
| 14 | `theorem` | [surjective_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/surjective-of-localized-span--3997d7315e59c0d5405c5ddc.md) | 179 | `result-track:3997d7315e59c0d5405c5ddcf14ea9e2abaa4692ec3ecbbd207c79b7c771fe1c` |
| 15 | `theorem` | [bijective_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/bijective-of-localized-span--566d912cfa562f56ccf133fa.md) | 184 | `result-track:566d912cfa562f56ccf133faca60e81edd0d66744935d8ae0c4384090bfade32` |
| 16 | `lemma` | [exact_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/declarations/exact-of-localized-span--8c929549ba347700fa820ad0.md) | 190 | `result-track:8c929549ba347700fa820ad00c805dcbabe54c9222cc33d56c58936ea8c1b962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
