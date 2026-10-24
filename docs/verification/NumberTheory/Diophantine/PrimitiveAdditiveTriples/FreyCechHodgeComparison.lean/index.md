# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHodgeComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca8915edf7628cef9eb8cfd5b2749738396a9a76",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca8915edf7628cef9eb8cfd5b2749738396a9a76`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.LinearAlgebra.ThreeCellHodgeGauge`](../../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHeat`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hodge](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/hodge--9f1da79b1f512d00323a4368.md) | 25 | `declaration-track:9f1da79b1f512d00323a436882cfd65820f418796337e5048faaeb9025b309af` |
| 2 | `theorem` | [tree_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/tree-agrees--105853033a312c9dd8f448b9.md) | 29 | `result-track:105853033a312c9dd8f448b9cb78d6993248ceed59e5f66b308180d2764fdf9d` |
| 3 | `theorem` | [hodge_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/hodge-agrees--a2f156ad5a8e7ad41566c7dc.md) | 33 | `result-track:a2f156ad5a8e7ad41566c7dc0ffca34f7b004d2e2f86542d220c1c8ce1ee3a48` |
| 4 | `def` | [gauge](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/gauge--dcf536fee780ae52e91c2698.md) | 37 | `declaration-track:dcf536fee780ae52e91c2698fbb431e3df41f665557b728c28621a1c5cc2430b` |
| 5 | `theorem` | [gauge_mean_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/gauge-mean-zero--19d69b0b3cc79f72e0f14e34.md) | 40 | `result-track:19d69b0b3cc79f72e0f14e34103e63c517d1a068eb9d18f64d80c1033ad72714` |
| 6 | `theorem` | [tree_hodge_comparison](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/tree-hodge-comparison--83583a69452c14077fcaaf47.md) | 45 | `result-track:83583a69452c14077fcaaf4735c40f1524c7443f5849f93581fa943a1f8dc660` |
| 7 | `theorem` | [same_reduced_evolution](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/same-reduced-evolution--a3729a8960203557e8e2dad6.md) | 52 | `result-track:a3729a8960203557e8e2dad64ea67b9cf5f09f315ff599ab078a726e4b32348d` |
| 8 | `theorem` | [hodge_mismatch](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/hodge-mismatch--6ac50b46243da6b90b30fc95.md) | 57 | `result-track:6ac50b46243da6b90b30fc95766720f8abf2de4417b5e55b21d79295f186eeb6` |
| 9 | `theorem` | [hodge_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/hodge-zero--f5d0e2f7e60234494df1274a.md) | 62 | `result-track:f5d0e2f7e60234494df1274a30ca834f0904a890bc0858ea9396c8c522aecd0a` |
| 10 | `theorem` | [hodge_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/hodge-add--9e2aab453020cef88e2c1ca0.md) | 65 | `result-track:9e2aab453020cef88e2c1ca0b1f79611544ac8504668983f64c60d7738bd4fdd` |
| 11 | `theorem` | [hodge_matching_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/hodge-matching-iff--0a90657660fb988fa1f18233.md) | 70 | `result-track:0a90657660fb988fa1f18233d3a6e5731eeb13d7c98d13b65cf6854dd05ebb8d` |
| 12 | `theorem` | [port_hodge](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/port-hodge--c36d97d103c6edc67cf0ee3b.md) | 78 | `result-track:c36d97d103c6edc67cf0ee3bc6eeb19394a1cb8611109f5525142bcdeb98fb6a` |
| 13 | `theorem` | [port_gauge](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/port-gauge--66bafb8b045af0acc1170dcb.md) | 85 | `result-track:66bafb8b045af0acc1170dcb53b3b93a09f19d5c73d7f26e794e4ed4a86575f7` |
| 14 | `def` | [coordinateMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/coordinatemap--6d7b952b80d0d82f7d66d3b5.md) | 92 | `declaration-track:6d7b952b80d0d82f7d66d3b5c5412245a7e55ca2ff536c0db7c65b7e879bdbae` |
| 15 | `def` | [coefficientCell](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/coefficientcell--49dbe0b2c1ce258e77985072.md) | 97 | `declaration-track:49dbe0b2c1ce258e77985072d748129fa61974c8c736501d9eef1b79668b06e8` |
| 16 | `theorem` | [coefficient_hodge](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/coefficient-hodge--a586865c83f1577c7d54f69c.md) | 100 | `result-track:a586865c83f1577c7d54f69cb89609a937e31dcfa610f5d70f212c44beb3b8d3` |
| 17 | `theorem` | [vertex_coordinate_ode](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/vertex-coordinate-ode--d8aa3357fcfd302e60a7fc62.md) | 106 | `result-track:d8aa3357fcfd302e60a7fc622335e335c8f39509daba8009cd4c8cda5e022c80` |
| 18 | `theorem` | [edge_coordinate_ode](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/edge-coordinate-ode--8e00e045505bbb5d70cf1320.md) | 114 | `result-track:8e00e045505bbb5d70cf13207ef588d609b981f233d71cf36790d31edd1f8262` |
| 19 | `def` | [sixEnergy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/sixenergy--d23101d9fec7435576a1a4a4.md) | 122 | `declaration-track:d23101d9fec7435576a1a4a48f5396eec5e84c84f48132b5d210d111143877c6` |
| 20 | `theorem` | [sixEnergy_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/sixenergy-agrees--63f0187aa785e4a5591620ae.md) | 126 | `result-track:63f0187aa785e4a5591620ae5e6ed5a107cc08c1390d7d0f0e32f902d5ca07cb` |
| 21 | `theorem` | [hodge_sixEnergy_contraction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHodgeComparison.lean/declarations/hodge-sixenergy-contraction--a99aeea28e039e1d91a86504.md) | 135 | `result-track:a99aeea28e039e1d91a86504e01a12595f4d55a61653d7baff3c1d71abd94754` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
