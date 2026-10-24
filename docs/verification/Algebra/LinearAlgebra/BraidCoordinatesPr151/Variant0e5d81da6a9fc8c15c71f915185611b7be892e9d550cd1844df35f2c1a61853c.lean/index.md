# Verification target: GRWTSK.Algebra.LinearAlgebra.BraidCoordinatesPr151.Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fbf5617e1a009bee0216725dc038fbcb33cb7db",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fbf5617e1a009bee0216725dc038fbcb33cb7db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.Plucker24` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Weights](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/weights--08a5c9846dc697e8d0b2f2c8.md) | 18 | `declaration-track:08a5c9846dc697e8d0b2f2c81fd5c59bd68250e70d98bd1eaa444df3e2f3359e` |
| 2 | `def` | [Weights.Positive](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/weights-positive--ad7cfe46091c6b92829e1f19.md) | 27 | `declaration-track:ad7cfe46091c6b92829e1f190b43b69db5156bb03cdcf394bd42248b19f1d467` |
| 3 | `def` | [mutate](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/mutate--e79b6388c6871bee446c3c63.md) | 30 | `declaration-track:e79b6388c6871bee446c3c635f74c005a6fa02a6c27c663a6cfeb20db217cc2b` |
| 4 | `theorem` | [mutate_endpoint_sum](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/mutate-endpoint-sum--53bf4688a1594f525c03c013.md) | 34 | `result-track:53bf4688a1594f525c03c01370d729fa115cf909651685f67a7424cf61261572` |
| 5 | `theorem` | [mutate_positive](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/mutate-positive--551a549e1aad61c5992a7ad4.md) | 41 | `result-track:551a549e1aad61c5992a7ad4e6d16e1ec25d2b8626deda8bedd02079e190e1bc` |
| 6 | `theorem` | [mutate_involutive](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/mutate-involutive--25d9559c23ca77ff47e1d113.md) | 47 | `result-track:25d9559c23ca77ff47e1d113c6548f0d5314c67807f3fd6d9ffe655fba4da909` |
| 7 | `def` | [x₁](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/x--f31eb31816fb3265bfa48b74.md) | 64 | `declaration-track:f31eb31816fb3265bfa48b7439d85b3ab8d80aacec5e480f94abdf5702c6f8e7` |
| 8 | `def` | [x₂](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/x--967a387de737c0540139f226.md) | 67 | `declaration-track:967a387de737c0540139f226bfde30310b80b55e58833766eb99659b9a86d61d` |
| 9 | `theorem` | [weighted_braid](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/weighted-braid--ff581c60545cffffaf3b767e.md) | 70 | `result-track:ff581c60545cffffaf3b767ef0d3d704a4018891a2f97558bbc493fad1a10dd2` |
| 10 | `def` | [relativeHalf](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/relativehalf--c4d6ab8205e6f3e22024772b.md) | 80 | `declaration-track:c4d6ab8205e6f3e22024772ba5d720a5dd9b7dbcef1ff7c2daf723117f67b977` |
| 11 | `theorem` | [relativeHalf_bounds](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/relativehalf-bounds--c4f469ece593fb73aef903d5.md) | 83 | `result-track:c4f469ece593fb73aef903d55d196d06ba1a8743901d53e013cb1dfd72915f89` |
| 12 | `theorem` | [relativeHalf_mutate](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/relativehalf-mutate--7f794589728741f115ec6fb5.md) | 93 | `result-track:7f794589728741f115ec6fb52a2816636efa61f6f1686251cbe8093f2f7187bf` |
| 13 | `theorem` | [centered_relativeHalf_mutate](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/centered-relativehalf-mutate--d2c97ee8ece766e27d703abd.md) | 105 | `result-track:d2c97ee8ece766e27d703abddcbc30e27f308841f2fede89d8764fe8ebce6821` |
| 14 | `theorem` | [relativeHalf_eq_half_iff](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/relativehalf-eq-half-iff--817cf9b7d80f6bf0997ae040.md) | 111 | `result-track:817cf9b7d80f6bf0997ae040d0444d7186d6b805e0c125cb9b946e721df4ec21` |
| 15 | `theorem` | [boundary_not_involutive](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/boundary-not-involutive--7c4ed0b0a4071e6a1fba79d9.md) | 118 | `result-track:7c4ed0b0a4071e6a1fba79d91f65ef161e3733849763cf05381673ea1a90d84d` |
| 16 | `theorem` | [relative_midpoint_not_full_fixed_point](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/relative-midpoint-not-full-fixed-point--cc56f3c1ba165b1b7b547633.md) | 125 | `result-track:cc56f3c1ba165b1b7b547633606dabc431f2190eba2c946b6482f0997f827f14` |
| 17 | `def` | [burauBlock](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/buraublock--fc40c4bd6734709fc8daca32.md) | 135 | `declaration-track:fc40c4bd6734709fc8daca32a9190e5a701740ff0642dfa698128064e1e6219e` |
| 18 | `theorem` | [burauBlock_det](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/buraublock-det--033d57490bd95c6a7b3a944b.md) | 138 | `result-track:033d57490bd95c6a7b3a944b6c9b1efef1fa86d5c5f92d59f7c60e190be341dd` |
| 19 | `theorem` | [burauBlock_det_negative](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/buraublock-det-negative--4f91a8875df29ffa0d106fbd.md) | 142 | `result-track:4f91a8875df29ffa0d106fbd993cb7a89fd38b461e02121e6c238f5b31dc892a` |
| 20 | `theorem` | [burauBlock_one_square](../../../../../mathematics/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variant0e5d81da6a9fc8c15c71f915185611b7be892e9d550cd1844df35f2c1a61853c.lean/declarations/buraublock-one-square--630d09aea0a7bf3c1172064b.md) | 147 | `result-track:630d09aea0a7bf3c1172064b27a217d9f4022153cc82ea948799745cc057cd5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
