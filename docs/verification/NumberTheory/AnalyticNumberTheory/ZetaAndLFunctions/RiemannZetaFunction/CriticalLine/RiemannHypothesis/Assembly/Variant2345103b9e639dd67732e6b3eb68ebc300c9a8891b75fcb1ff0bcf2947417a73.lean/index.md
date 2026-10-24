# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Assembly.Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "800f4ced3575e62484eaaef1af4a74a32d280f0f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `800f4ced3575e62484eaaef1af4a74a32d280f0f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.CertificateFn` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.FinalMult` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gzMoments_of_transfer](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/gzmoments-of-transfer--5d90b15091ef077edb3e00ab.md) | 45 | `result-track:5d90b15091ef077edb3e00ab0fccc7817d449e614781790bd6a7b3456ab55be1` |
| 2 | `theorem` | [kappa_nonneg_of_coeffMoments](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/kappa-nonneg-of-coeffmoments--9f4dbfa5a903854f1abce19a.md) | 78 | `result-track:9f4dbfa5a903854f1abce19a82e9925251127eb8681943bcfc554dbcbfceee9f` |
| 3 | `theorem` | [kappa_nonneg_of_gzMoments](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/kappa-nonneg-of-gzmoments--05a3ededc850bbaa552d7c4a.md) | 94 | `result-track:05a3ededc850bbaa552d7c4a8298d3a73e15892ba9d052febe7fa53b67be189a` |
| 4 | `theorem` | [eventually_tailPackage_of_rvm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/eventually-tailpackage-of-rvm--4d89a679430f200bcd125b8d.md) | 118 | `result-track:4d89a679430f200bcd125b8d77b514a696a20fa514d717e84b3f509f7ae2d6c7` |
| 5 | `theorem` | [eventually_side_conditions_of_rvm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/eventually-side-conditions-of-rvm--401eb66667bc661c2ec37867.md) | 136 | `result-track:401eb66667bc661c2ec37867ec8ab735a6a7633949edacabcd07bce7e0745342` |
| 6 | `theorem` | [simple_bound_of_gzMoments](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/simple-bound-of-gzmoments--c2d4ffaeaa75e56ae359e3b2.md) | 148 | `result-track:c2d4ffaeaa75e56ae359e3b21a29708d1c0d7250f003341674332f16d713089b` |
| 7 | `theorem` | [dist_bound_of_gzMoments](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/dist-bound-of-gzmoments--bc4307cdb6bc3a6a8619efb1.md) | 209 | `result-track:bc4307cdb6bc3a6a8619efb12b3f7324aeccec0f5893bdbf6e70cc64ea391907` |
| 8 | `structure` | [WindowZeroSide](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/windowzeroside--342d771c495e6caf0c8e487e.md) | 285 | `declaration-track:342d771c495e6caf0c8e487ed959e5716ca89adcc3d8d6795506e2010f21a6db` |
| 9 | `theorem` | [windowZeroSide_flat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/windowzeroside-flat--f685efb7a24a380307e52d33.md) | 294 | `result-track:f685efb7a24a380307e52d3399de7bc275db36a81af1966ce15b3a15f9554f29` |
| 10 | `theorem` | [family_tail_package](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/family-tail-package--894a089d9b219a4d5b87351f.md) | 315 | `result-track:894a089d9b219a4d5b87351fc996b264fe5a5baebe5303815fa050c3b0f3d55e` |
| 11 | `theorem` | [simple_bound_of_gzMoments_family](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/simple-bound-of-gzmoments-family--e259b5416f36459da640fce6.md) | 351 | `result-track:e259b5416f36459da640fce6bbd57646d40c1a4ef85908cebff239adcc54383c` |
| 12 | `theorem` | [dist_bound_of_gzMoments_family](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/dist-bound-of-gzmoments-family--a4fd2183d86c54778f7a90ff.md) | 387 | `result-track:a4fd2183d86c54778f7a90ff6c8e9049557b44894c8ddfce58bbd26c6121329e` |
| 13 | `theorem` | [fixedLam_flat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/fixedlam-flat--b0f2d78a3b9346e50197835b.md) | 428 | `result-track:b0f2d78a3b9346e50197835b2b52f25ea2c5e9f6da3a095ee9a9ba0efa0a6dd9` |
| 14 | `theorem` | [fixedLam_family](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/fixedlam-family--1e8cd32bc717afaf6864414d.md) | 451 | `result-track:1e8cd32bc717afaf6864414d692f2cb5199bc3539af7871327a1cbf6e7aa4900` |
| 15 | `theorem` | [headline_of_strict](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/headline-of-strict--0a348a82eca28a7748de3852.md) | 475 | `result-track:0a348a82eca28a7748de3852f897078e075f6a1978ffc088254e7095cc8fc1dc` |
| 16 | `lemma` | [Ncount_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/ncount-add--399b3c7f2a7c042496f71fb0.md) | 496 | `result-track:399b3c7f2a7c042496f71fb0caeb0b22b3e6295b93989e4f6db526723897ba28` |
| 17 | `lemma` | [N0simple_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/n0simple-add--99ba30962a6faad1a4b43a72.md) | 501 | `result-track:99ba30962a6faad1a4b43a72af3e92f58ef78856a608f5813d6222864bb283d1` |
| 18 | `lemma` | [Ndist_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/ndist-add--9eef773e945e3c636835ee7f.md) | 506 | `result-track:9eef773e945e3c636835ee7f67f47564667e1c6047dd8e6f3f79160ecdfc5d1a` |
| 19 | `lemma` | [tendsto_Ncount_zero_atTop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/tendsto-ncount-zero-attop--85a57f636938e77100005883.md) | 511 | `result-track:85a57f636938e77100005883ad0b3f99f7c2f9654629406cc9eb44a48f662786` |
| 20 | `theorem` | [cumulative_of_dyadic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/cumulative-of-dyadic--dcde5fc657dc3e619ef7b635.md) | 525 | `result-track:dcde5fc657dc3e619ef7b635e18b444d1b26bf84d31555999e84877f792f21cb` |
| 21 | `theorem` | [cumulative_of_fixedLam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/cumulative-of-fixedlam--c37f1e342249bada356e1cc6.md) | 538 | `result-track:c37f1e342249bada356e1cc6d047ef0fb07eecfbb5a1ce85eefd46d01c36260c` |
| 22 | `theorem` | [fixedLam_family_W](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant2345103b9e639dd67732e6b3eb68ebc300c9a8891b75fcb1ff0bcf2947417a73.lean/declarations/fixedlam-family-w--7c884b4388dd2d277d073ab4.md) | 567 | `result-track:7c884b4388dd2d277d073ab4aea5f6f44f3472eab999de15653960feade468ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
