# Verification target: GRWTSK.Analysis.FunctionalAnalysis.MeanInequalitiesPow.Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58710edb94b13cf2899d5b1d881fcd05440635d2",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58710edb94b13cf2899d5b1d881fcd05440635d2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/pow-arith-mean-le-arith-mean-pow--5bab7982d93497fbdb5b5e10.md) | 58 | `result-track:5bab7982d93497fbdb5b5e100d5c66ce53034d0dd65f0739d894701d13ed8fdf` |
| 2 | `theorem` | [pow_arith_mean_le_arith_mean_pow_of_even](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/pow-arith-mean-le-arith-mean-pow-of-even--f57a6d837cfcd78b8b768324.md) | 63 | `result-track:f57a6d837cfcd78b8b7683246d2453f73b53ee1b6eee27d99a6ed533651168a6` |
| 3 | `theorem` | [zpow_arith_mean_le_arith_mean_zpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/zpow-arith-mean-le-arith-mean-zpow--c1dfdd39bbcac029fa5f6889.md) | 68 | `result-track:c1dfdd39bbcac029fa5f6889d3214b5f1b05c5d82a62399c8e9cb289278049e3` |
| 4 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--c16d649a3b0c2e2dffc3d2a5.md) | 73 | `result-track:c16d649a3b0c2e2dffc3d2a59946ce5aaa5da5b2d43c92e24b6a1b7c1375d4e7` |
| 5 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/arith-mean-le-rpow-mean--90512511f3c80ae7337003e3.md) | 78 | `result-track:90512511f3c80ae7337003e31cf6f81f8ba3fb76872902dc04ce4d0cd2aab90b` |
| 6 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/pow-arith-mean-le-arith-mean-pow--f236d54b13aa5fb84b3b0043.md) | 95 | `result-track:f236d54b13aa5fb84b3b0043abcb99c8fc76af4570c24ee4941c4fc9ad872864` |
| 7 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--308885bed7eeac49472537cb.md) | 103 | `result-track:308885bed7eeac49472537cbc6efd22be2141329ab126f01d53d058be3bf3c4a` |
| 8 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--579dea8757b8f497aff69099.md) | 110 | `result-track:579dea8757b8f497aff6909929ae19db8700ae50596772e46537c2abf6755a42` |
| 9 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-le-mul-rpow-add-rpow--d1077353662b7f7c32848d6e.md) | 117 | `result-track:d1077353662b7f7c32848d6ea70bc3cff87e018a169cf3795b234a6edb4078e3` |
| 10 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/arith-mean-le-rpow-mean--23eb32a896393f5fb0041dd4.md) | 131 | `result-track:23eb32a896393f5fb0041dd470d1367e8cb8fe175aa3be9bd666debacbed23b5` |
| 11 | `theorem` | [add_rpow_le_one_of_add_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/add-rpow-le-one-of-add-le-one--df48f107308ec381232f5471.md) | 137 | `result-track:df48f107308ec381232f5471a17efe24a6d96b758dce5bf4e28f1ea1c37805a8` |
| 12 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/add-rpow-le-rpow-add--6fe0924f5ffe853d9e04c4e4.md) | 144 | `result-track:6fe0924f5ffe853d9e04c4e452527585a7389e970ebde0a6bbfdfea6e1f740b4` |
| 13 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-rpow-le-add--00ad6281bbb1960eff8f9b8a.md) | 158 | `result-track:00ad6281bbb1960eff8f9b8add5c9af01eb65da880f0f0ac0ce3244e3c85b82d` |
| 14 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-rpow-le--8800109e9fa77e31afd21ed6.md) | 164 | `result-track:8800109e9fa77e31afd21ed6fc2064c218537ae277be4ddbfecd7983a2a88ed6` |
| 15 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-le-add-rpow--0bcf5411a18c0d0c6f9ff42e.md) | 177 | `result-track:0bcf5411a18c0d0c6f9ff42e1bdfb5db39b546cace784a2b09b57a5c33857b23` |
| 16 | `lemma` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/add-rpow-le-rpow-add--7bd402b5b03268fd4ca306f2.md) | 190 | `result-track:7bd402b5b03268fd4ca306f2c7d5fe0a0f34a40e6e931ac6ed8469ec2e0948e0` |
| 17 | `lemma` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-rpow-le-add--7f39080c759cc5984a2fb18c.md) | 196 | `result-track:7f39080c759cc5984a2fb18c375641201b97d4ac1e222b2bee8e30a38bd8ece3` |
| 18 | `lemma` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-rpow-le--ae0df90ded3c8030ec09ab1c.md) | 202 | `result-track:ae0df90ded3c8030ec09ab1cc205675440114a10509910cfb7512f853bfc730d` |
| 19 | `lemma` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-le-add-rpow--579b21efe9f09b94f69f9d09.md) | 209 | `result-track:579b21efe9f09b94f69f9d09e513e4d235fa16be9f1b68e44d79f53efc8ed460` |
| 20 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--7ca47b90b3bcfa190fe2a976.md) | 222 | `result-track:7ca47b90b3bcfa190fe2a9766fb2ec06ee16cabf71cce5c689d066e5d5efe495` |
| 21 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--670300d3303828e9895fc3dd.md) | 265 | `result-track:670300d3303828e9895fc3ddf526d5cad9c0b61f778a94e1cc84fb10c37b66fc` |
| 22 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-le-mul-rpow-add-rpow--685a77d3b9ae31db75342a05.md) | 272 | `result-track:685a77d3b9ae31db75342a05c5b79c5f4fd49a1289f47cdf16bd0d749060ebc3` |
| 23 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/add-rpow-le-rpow-add--3148aea1f6ef463121c7dbfd.md) | 282 | `result-track:3148aea1f6ef463121c7dbfddf2c234a70bec41bff93cb0bd43245665bbc1ff5` |
| 24 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-rpow-le-add--b43fad82834c665d5ddeb28b.md) | 294 | `result-track:b43fad82834c665d5ddeb28b7597e36fe6a0a03700305e068a4ad0de0af6616d` |
| 25 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-rpow-le--cd18daeb9f4ece2dc141dc6f.md) | 300 | `result-track:cd18daeb9f4ece2dc141dc6f92155d276e6963d288fbf6d7e781c61ec3bfa705` |
| 26 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-le-add-rpow--2ac893e8fd18211546e8d712.md) | 312 | `result-track:2ac893e8fd18211546e8d712bb131c619f2b7b46659069e55d3886d0d1943f7b` |
| 27 | `def` | [LpAddConst](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/lpaddconst--be8bd65292f80ddcf0f2649d.md) | 323 | `declaration-track:be8bd65292f80ddcf0f2649d886d9acf05244aa19ac20fa1d1295fe77c28182b` |
| 28 | `theorem` | [LpAddConst_of_one_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/lpaddconst-of-one-le--f02af995aa1f3fd1e8097019.md) | 326 | `result-track:f02af995aa1f3fd1e8097019f8fa86d9688e9ee37bded44e27fa1fad3b961694` |
| 29 | `theorem` | [LpAddConst_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/lpaddconst-zero--6f071594112aa2b497b52bfc.md) | 331 | `result-track:6f071594112aa2b497b52bfc7713facb4a812abe72475e1d8c2eb6784ce0030a` |
| 30 | `theorem` | [LpAddConst_lt_top](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/lpaddconst-lt-top--12eb23344ec9a946f9396ba4.md) | 336 | `result-track:12eb23344ec9a946f9396ba43f049d71279e5fd256e294d6c4444896212ac66a` |
| 31 | `theorem` | [LpAddConst_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/lpaddconst-ne-zero--a60ab69bd22710a5c48f51e0.md) | 344 | `result-track:a60ab69bd22710a5c48f51e0a7c96259758aa70de6d6e7b8c5f7e643020679de` |
| 32 | `theorem` | [rpow_add_le_mul_rpow_add_rpow'](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-le-mul-rpow-add-rpow--6b13e645574150e841675194.md) | 351 | `result-track:6b13e645574150e841675194674abb349b1d6cdeb539b2077878a3adb01f83f3` |
| 33 | `theorem` | [rpow_add_le_mul_rpow_add_rpow''](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant70e675f7a2524ac3a83ae7325abcee048a5c433cc8982c6d05054fc20977ec12.lean/declarations/rpow-add-le-mul-rpow-add-rpow--e7c3a59726d9ef3e2fdf9800.md) | 369 | `result-track:e7c3a59726d9ef3e2fdf9800228652c1201ff76610211c6945139ae5b411114c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
