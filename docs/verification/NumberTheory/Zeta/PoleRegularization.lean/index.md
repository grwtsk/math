# Verification target: GRWTSK.NumberTheory.Zeta.PoleRegularization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "378527073faffc80c4241eabbda7e70a57d59dd3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/PoleRegularization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `378527073faffc80c4241eabbda7e70a57d59dd3`.

Source path: `GRWTSK/NumberTheory/Zeta/PoleRegularization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/PoleRegularization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawZetaProduct](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/rawzetaproduct--373e7929ad4e2577847fe404.md) | 29 | `declaration-track:373e7929ad4e2577847fe404c4e803d58a03934a3d5f207f8e4d19fc2895f445` |
| 2 | `def` | [regularizedZeta](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularizedzeta--15c1cff4c531b07de90ef08d.md) | 31 | `declaration-track:15c1cff4c531b07de90ef08d5bdb49db5408d9568ca52bbf789da4e0c1cdba48` |
| 3 | `theorem` | [raw_product_at_one](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/raw-product-at-one--ae6fa4b5c3433c5c4bc497d3.md) | 33 | `result-track:ae6fa4b5c3433c5c4bc497d311bbef5c526b37884b6398ca7bf2142c5cd0de45` |
| 4 | `theorem` | [regularized_zeta_at_one](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-zeta-at-one--a6b14a36fe2062b6b309fe67.md) | 36 | `result-track:a6b14a36fe2062b6b309fe6717d6b9a7782ab74488d1df8ae82c2de42bf4947c` |
| 5 | `theorem` | [regularized_zeta_of_ne_one](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-zeta-of-ne-one--f4a3f0aea62fddf878e15cc7.md) | 39 | `result-track:f4a3f0aea62fddf878e15cc78a24cf65c1da0dd42c34690c359426a093379b4b` |
| 6 | `theorem` | [raw_product_residue_one](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/raw-product-residue-one--0eb5f11e052b8114c0975b98.md) | 44 | `result-track:0eb5f11e052b8114c0975b9867466ee1f6db361a569302d5c5b893aa9c506100` |
| 7 | `theorem` | [raw_product_not_continuousAt_one](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/raw-product-not-continuousat-one--059fa7ab017acb070bc98b0d.md) | 48 | `result-track:059fa7ab017acb070bc98b0d261c0ea982b1d3cb18a7dd561ef21b8769705460` |
| 8 | `theorem` | [regularized_zeta_continuousAt_one](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-zeta-continuousat-one--e01ebc13cf7d22db293d781e.md) | 55 | `result-track:e01ebc13cf7d22db293d781e29cc4207285cae1de8123c86970327d8c2e02ced` |
| 9 | `theorem` | [raw_product_differentiableAt_of_ne_one](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/raw-product-differentiableat-of-ne-one--c5e812f2fe689fbefee2183e.md) | 59 | `result-track:c5e812f2fe689fbefee2183eb0ed71bac1bd6fc4b7885f86477acf1de17aa630` |
| 10 | `theorem` | [regularized_zeta_differentiableAt_of_ne_one](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-zeta-differentiableat-of-ne-one--81742fbbd7d78a2b7d3d938c.md) | 63 | `result-track:81742fbbd7d78a2b7d3d938c1cc5b8038b65a7ce3483817a30f3c241d4d3899f` |
| 11 | `theorem` | [regularized_zeta_analyticAt_one](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-zeta-analyticat-one--e00e23fd58adbd16776f7431.md) | 71 | `result-track:e00e23fd58adbd16776f743169f72f221f44edd72b97d93578307a1ab8cad0ad` |
| 12 | `theorem` | [regularized_zeta_differentiable](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-zeta-differentiable--a76f0a0a8c93baa24d69e592.md) | 77 | `result-track:a76f0a0a8c93baa24d69e592add256d560da20a53a0356e02d935ec98aaaf6ac` |
| 13 | `theorem` | [regularized_zeta_analyticOnNhd](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-zeta-analyticonnhd--1eb7f051a21351438b3c17f3.md) | 83 | `result-track:1eb7f051a21351438b3c17f3dbef4cdcff086cedbf7a2d14a29de25bc5c6eaaf` |
| 14 | `theorem` | [regularized_zeta_analyticAt](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-zeta-analyticat--7d79bd7b9b5567a1b2e5aac0.md) | 86 | `result-track:7d79bd7b9b5567a1b2e5aac0bc2bcceac4a92b1fe3a960dc959e436c8d7da9a7` |
| 15 | `def` | [rightHalfPlane](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/righthalfplane--44b101b5f0291557c639b142.md) | 92 | `declaration-track:44b101b5f0291557c639b142ac822dc6798d3ead0a326067d69c42e5db16cfe6` |
| 16 | `def` | [InitialReciprocalIdentity](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/initialreciprocalidentity--08e5969fe8f2a0ee81b9d2b0.md) | 94 | `declaration-track:08e5969fe8f2a0ee81b9d2b05db31e4db9fbeaa4b094f956bba9dee5a22409ad` |
| 17 | `def` | [regularizedProduct](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularizedproduct--ca2d751cd790ce8842e89e3d.md) | 98 | `declaration-track:ca2d751cd790ce8842e89e3dc6988a9f1c3667f847c25ef07f6db81f9dcf8912` |
| 18 | `theorem` | [right_half_plane_isOpen](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/right-half-plane-isopen--ff94882dbe3f67f4baad27c9.md) | 101 | `result-track:ff94882dbe3f67f4baad27c96b5270ecaf13997e0c7831774f16f796c778fc69` |
| 19 | `theorem` | [right_half_plane_isPreconnected](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/right-half-plane-ispreconnected--215e8c526b5fe41191708182.md) | 104 | `result-track:215e8c526b5fe411917081827bdb72e221f986f370f89e6278e7fece2873fce5` |
| 20 | `theorem` | [regularized_product_analyticOnNhd](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-product-analyticonnhd--c14d611ac406823e7b1d8607.md) | 109 | `result-track:c14d611ac406823e7b1d8607db3e46ff52b3c9b5bb5b4c1014057c08a64511f2` |
| 21 | `theorem` | [regularized_product_initial](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-product-initial--c5e767fff61ac17c2390e144.md) | 121 | `result-track:c5e767fff61ac17c2390e14451503a7fb541be11e97d8da87e7f97095245a736` |
| 22 | `theorem` | [regularized_product_identity](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/regularized-product-identity--c6cadaaa0b750303b3b59f35.md) | 139 | `result-track:c6cadaaa0b750303b3b59f3541524bd65c75f3bb6e83cb5de10dd4ac5ddee2f7` |
| 23 | `theorem` | [zeta_ne_zero_right_of_holomorphic_reciprocal](../../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/declarations/zeta-ne-zero-right-of-holomorphic-reciprocal--0aa2c57138ed1e64fc5d07ac.md) | 151 | `result-track:0aa2c57138ed1e64fc5d07ac29f50d0aee7a0285569c3896056a849028cd9e2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
