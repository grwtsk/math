# Verification target: GRWTSK.Algebra.LinearAlgebra.Invertible.Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6307af46e1ed12a806bd9b032a2e6488353f125",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6307af46e1ed12a806bd9b032a2e6488353f125`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invOf_mul_self_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/invof-mul-self-assoc--bef6e067aa43aef43600ca57.md) | 50 | `result-track:bef6e067aa43aef43600ca5754c73ade4a3136fd6fb7eaf9c549a3cd2b9607ee` |
| 2 | `theorem` | [mul_invOf_self_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/mul-invof-self-assoc--74ee56638fb0dd7008803e15.md) | 55 | `result-track:74ee56638fb0dd7008803e15a51c12ea4b27c57a12aaac38924ea974f53922ce` |
| 3 | `theorem` | [mul_invOf_mul_self_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/mul-invof-mul-self-cancel--e848aa81abb722bec276e34f.md) | 60 | `result-track:e848aa81abb722bec276e34ff936528425d0435cfc4a13411cbe09ea4d02fb2e` |
| 4 | `theorem` | [mul_mul_invOf_self_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/mul-mul-invof-self-cancel--36f62fcd7019f47688c8d9e0.md) | 65 | `result-track:36f62fcd7019f47688c8d9e00ff33ec14f48e035f77850a43a22bbca304d36ba` |
| 5 | `instance` | [invertibleConjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/invertibleconjtranspose--bbf1b36f43563626c1780ed3.md) | 78 | `declaration-track:bbf1b36f43563626c1780ed36d8cb0b72a34b06b3b6616f38a3cd46cad9d45bb` |
| 6 | `lemma` | [conjTranspose_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/conjtranspose-invof--1125305ccc15e69b70731cef.md) | 80 | `result-track:1125305ccc15e69b70731cefad44c45d985ae46f68011d0cfcfc27889944b378` |
| 7 | `def` | [invertibleOfInvertibleConjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/invertibleofinvertibleconjtranspose--8591dd0e68dd4300472b29d5.md) | 83 | `declaration-track:8591dd0e68dd4300472b29d5d24095b123f6e6cce70787bae5a262a2b1c944cd` |
| 8 | `lemma` | [isUnit_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/isunit-conjtranspose--dd235be6c2242188df8abdee.md) | 88 | `result-track:dd235be6c2242188df8abdee34c4deb519c55d599da369ef83dd4668419a3f70` |
| 9 | `instance` | [invertibleTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/invertibletranspose--336a814c8f6749a023ba1d96.md) | 99 | `declaration-track:336a814c8f6749a023ba1d96533e01e4ce835b0d5355a342a3bf797de8f56c1f` |
| 10 | `lemma` | [transpose_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/transpose-invof--aed83f5e30d86b1482702940.md) | 105 | `result-track:aed83f5e30d86b1482702940f045d40b77d0c989a9a544ab4b6bd0bbfe355a37` |
| 11 | `def` | [invertibleOfInvertibleTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/invertibleofinvertibletranspose--ec34be05573fd524b768e41d.md) | 110 | `declaration-track:ec34be05573fd524b768e41dbb6f6c5ba1beb644c1bcfa2394f4c9fcc6169d92` |
| 12 | `def` | [transposeInvertibleEquivInvertible](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/transposeinvertibleequivinvertible--42302110689124055109ca5c.md) | 119 | `declaration-track:42302110689124055109ca5ca1142ea121e81aec73030e1f6183109f9c562859` |
| 13 | `lemma` | [isUnit_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantc4c3dfcf90a72892cf95f670796dabdc8e47f03b740afb745e1b7d36acc678a2.lean/declarations/isunit-transpose--73ebf2471c81b8de5375425c.md) | 125 | `result-track:73ebf2471c81b8de5375425c7a205a1fa19e0a6f21095d62c7e463d893b4d417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
