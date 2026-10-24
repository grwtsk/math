# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Univ.Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f026d3c269dffe477a8acd88079f03a43353d53b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f026d3c269dffe477a8acd88079f03a43353d53b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Homogeneous` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [univ](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/declarations/univ--5a2d23c40f6261d85ca6d030.md) | 56 | `declaration-track:5a2d23c40f6261d85ca6d03009beada75aabda7de64bfd2b6561cc4e7d8e9315` |
| 2 | `lemma` | [univ_map_eval₂Hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/declarations/univ-map-eval-hom--12ccc84de1eca0b37bca4c4a.md) | 61 | `result-track:12ccc84de1eca0b37bca4c4a71b44a106cbc00a7bf97e3e2289822db2f641b2b` |
| 3 | `lemma` | [univ_map_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/declarations/univ-map-map--f8edfc49b99a8ffcf0bac388.md) | 66 | `result-track:f8edfc49b99a8ffcf0bac3885eef06a8f1017f8d053cd7bf69e90b08767afb90` |
| 4 | `lemma` | [univ_coeff_eval₂Hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/declarations/univ-coeff-eval-hom--78fe495bc1b0c4818605ddcc.md) | 71 | `result-track:78fe495bc1b0c4818605ddcc90ecaf9ece1469194bf41a4519933c10fdc1246b` |
| 5 | `lemma` | [univ_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/declarations/univ-monic--d28c0d470453ef46b090f412.md) | 78 | `result-track:d28c0d470453ef46b090f4125edca0de0afdfbbe1ed341fc694d86392d888b9c` |
| 6 | `lemma` | [univ_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/declarations/univ-natdegree--778b23e2fbfe1d6eb2d3f7b5.md) | 80 | `result-track:778b23e2fbfe1d6eb2d3f7b586195028ead72c125ef53e28828e662af621a6f7` |
| 7 | `lemma` | [univ_coeff_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/declarations/univ-coeff-card--2d7aece708fbf63d9fdb48c7.md) | 84 | `result-track:2d7aece708fbf63d9fdb48c701f45552dc9b71cef78495bd06e831337e1b0743` |
| 8 | `lemma` | [optionEquivLeft_symm_univ_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/declarations/optionequivleft-symm-univ-ishomogeneous--2654b233361c97311ccff939.md) | 91 | `result-track:2654b233361c97311ccff939c81ef80797235057b1575565894589f2ad2a14ea` |
| 9 | `lemma` | [univ_coeff_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656.lean/declarations/univ-coeff-ishomogeneous--c18452594f6f34817f526fba.md) | 108 | `result-track:c18452594f6f34817f526fbaed8788b249cb3d3c7cb30075a6b6b5ca70198f97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
