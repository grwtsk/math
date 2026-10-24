# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Convex.Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45cff4aebae83638a2790b3f32718d471f720110",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45cff4aebae83638a2790b3f32718d471f720110`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convexOn_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convexon-norm--ad184b72930886d0fc4deca2.md) | 37 | `result-track:ad184b72930886d0fc4deca2db359aed696f34d81be32751b6002f2690572a02` |
| 2 | `theorem` | [convexOn_univ_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convexon-univ-norm--dc7b5d11c23309b6c17c6f01.md) | 46 | `result-track:dc7b5d11c23309b6c17c6f012685c800dadecbb687baff5c819fb1ee146e0321` |
| 3 | `theorem` | [convexOn_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convexon-dist--07dfaa469ffc6b49a6b2bd5e.md) | 49 | `result-track:07dfaa469ffc6b49a6b2bd5eb5b70e1b970eca52afdbb7adba98598298f6c99c` |
| 4 | `theorem` | [convexOn_univ_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convexon-univ-dist--e26cfe6775c493add1816c6c.md) | 53 | `result-track:e26cfe6775c493add1816c6c280ebd4ab05c91b061f285ada3072e19d14cf17b` |
| 5 | `theorem` | [convex_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convex-ball--b84d450054f68773365550f8.md) | 56 | `result-track:b84d450054f68773365550f83a8c61e5eb594a1129af88fd7919dfa5558ddb51` |
| 6 | `theorem` | [convex_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convex-closedball--c69c8de55256066016715f7a.md) | 59 | `result-track:c69c8de55256066016715f7a12c1f8d52678a56b341ce366e4fc2327bd84aff4` |
| 7 | `theorem` | [convexHull_exists_dist_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convexhull-exists-dist-ge--af747a8529deb1107259cb81.md) | 64 | `result-track:af747a8529deb1107259cb81de8e60081035fe9cddd4a9c112b24b54177fcbb7` |
| 8 | `theorem` | [Convex.thickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convex-thickening--33e09f0b9fdd916abb8b1f58.md) | 68 | `result-track:33e09f0b9fdd916abb8b1f5813d565cd7099274099923ce99043038b71f2e2bf` |
| 9 | `theorem` | [Convex.cthickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convex-cthickening--6b3f0c9cb6f5dca39f8ee3df.md) | 72 | `result-track:6b3f0c9cb6f5dca39f8ee3df26fe90f5ef77ae0df14fea605cdd1766de3d0ffb` |
| 10 | `theorem` | [convexHull_exists_dist_ge2](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convexhull-exists-dist-ge2--81fe97edacf552cc94c22c80.md) | 81 | `result-track:81fe97edacf552cc94c22c80e7613e3c89656c7cc02f91c70488999330bf8089` |
| 11 | `theorem` | [convexHull_ediam](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convexhull-ediam--8d09bfe98df973dd5d3e4c21.md) | 90 | `result-track:8d09bfe98df973dd5d3e4c214648069d49b86b935235fa213bc1db802d2fe2b7` |
| 12 | `theorem` | [convexHull_diam](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/convexhull-diam--d5c41bfa5a104963ec142654.md) | 100 | `result-track:d5c41bfa5a104963ec14265452336c6e3f56ca9af049a489361029208e90cfe7` |
| 13 | `theorem` | [isBounded_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/isbounded-convexhull--ad818c8ac4d1a6ad31a67d10.md) | 105 | `result-track:ad818c8ac4d1a6ad31a67d10d5e803e403b4cf655edebaf4a2e3b941bfb8a343` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/instance--5478de674f66a76582d9999e.md) | 109 | `declaration-track:5478de674f66a76582d9999e52a1cd0a8d36bd3fa64afce56317f76cb1fa351e` |
| 15 | `theorem` | [isConnected_setOf_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/isconnected-setof-sameray--539bf96f4cfb8129d1a74321.md) | 113 | `result-track:539bf96f4cfb8129d1a74321aeb24f952311df831e3c735159a7fa5423d6068e` |
| 16 | `theorem` | [isConnected_setOf_sameRay_and_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/isconnected-setof-sameray-and-ne-zero--9fadad09b254adecbe711dbf.md) | 119 | `result-track:9fadad09b254adecbe711dbf8b54bbf3aa372768a3881b60b9ff5371401029e0` |
| 17 | `lemma` | [norm_sub_le_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variantd77fdc7b7dae397d8de879c038c1f20253d52ef850cc9c93c9c734ae6d9c8769.lean/declarations/norm-sub-le-of-mem-segment--bfbd38681547c3205b093f58.md) | 124 | `result-track:bfbd38681547c3205b093f589e56000ccc1b62e9151ab2fbad9d88ebf227c76c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
