# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Quartic.Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4af68999694eed7a92ae7ce5929aa3a6582582b6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4af68999694eed7a92ae7ce5929aa3a6582582b6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.QuarticWindow.ModWindow` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow.Params` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Certificate.Poly` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/fq--aeb0e4f9457a75301175f512.md) | 29 | `declaration-track:aeb0e4f9457a75301175f5121c0e6a749a305fa9d32f5bc6b0b35ec4f4eb48fc` |
| 2 | `def` | [hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/hq--69cf0f8b3ce62c79a90ff8c8.md) | 32 | `declaration-track:69cf0f8b3ce62c79a90ff8c8d3981d19d9baf8e6557eed5ed10f391c96422728` |
| 3 | `lemma` | [hQ_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/hq-eq--f27d68343738506ebc8e9ce3.md) | 34 | `result-track:f27d68343738506ebc8e9ce3d4d773a616454ed254d66a436c220e5f3f416f00` |
| 4 | `lemma` | [vQuartic_pos_of_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/vquartic-pos-of-abs-le--b7636ec8bb7658ab7ee6380a.md) | 38 | `result-track:b7636ec8bb7658ab7ee6380aa7c1f0cb1eb46f1e702ec986ff15eec649907a97` |
| 5 | `lemma` | [vQuartic_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/vquartic-antitoneon--2abbbc26dc3af63cc2052158.md) | 48 | `result-track:2abbbc26dc3af63cc20521583d1ab3528af0b09116cc1d67ee797e39256e258f` |
| 6 | `lemma` | [fQ_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/fq-even--a6201b9ee916b57c82959010.md) | 58 | `result-track:a6201b9ee916b57c8295901049cd3130c568cd0afe3e99e0de1fc39368bf1624` |
| 7 | `lemma` | [fQ_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/fq-nonneg--28ee4b742698364bf543f34d.md) | 61 | `result-track:28ee4b742698364bf543f34dc8541bc1923832ea61341ce84cb74e772bb4b768` |
| 8 | `lemma` | [fQ_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/fq-le-one--60f3a45f621d3bd2d2664a4e.md) | 63 | `result-track:60f3a45f621d3bd2d2664a4ecd6c1f1cf62e22f5c4b722df1844a2b6d2899fdd` |
| 9 | `lemma` | [core_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/core-mem--4ffbda3c77f80a6828027f89.md) | 69 | `result-track:4ffbda3c77f80a6828027f89e00424f19e101ab38fb79258ab3e3ace92420ac3` |
| 10 | `lemma` | [hQ_core_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/hq-core-ge--8fbebf9d6cc7d97082647352.md) | 75 | `result-track:8fbebf9d6cc7d970826473524840558e454946cbe55ef6861d5a71fa8d63f55f` |
| 11 | `lemma` | [fQ_core_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/fq-core-ge--2477f650563deb63c6a7f62f.md) | 79 | `result-track:2477f650563deb63c6a7f62f2f61811cf3c72e6fa24a6fdbc73b4bbdd171ce00` |
| 12 | `lemma` | [hQ_pos_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/hq-pos-of-mem--7204f659202531b1b9707fac.md) | 87 | `result-track:7204f659202531b1b9707facee02a0a75262a0c79a2a25badc0186bb5f0fa8b1` |
| 13 | `lemma` | [fQ_eq_sqrt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/fq-eq-sqrt-of-mem--b01cf95349ba9a0f3cd89004.md) | 93 | `result-track:b01cf95349ba9a0f3cd89004437c7d8d2d144243b0d5559520f970a1d6861b5a` |
| 14 | `lemma` | [hQ_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/hq-contdiff--c1ba13e76af6b2d69cc32577.md) | 98 | `result-track:c1ba13e76af6b2d69cc325771219ec26d83817005e6ef436ee2e9934bac675e8` |
| 15 | `lemma` | [fQ_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/fq-contdiffon--298d0d964dd7d1636c7a23a3.md) | 102 | `result-track:298d0d964dd7d1636c7a23a3461afe5fd198e19e53d947473e350e2e48e8a7aa` |
| 16 | `lemma` | [fQ_mul_self_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/fq-mul-self-of-mem--4c2698553545b164902c698b.md) | 109 | `result-track:4c2698553545b164902c698b652a9885afc5bf971efb4352538f620b2c8b0ce1` |
| 17 | `lemma` | [hasDerivAt_hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/hasderivat-hq--69b737460970e0c1b0044c16.md) | 115 | `result-track:69b737460970e0c1b0044c1641defe7e82fc2c3c775d0c27e03b16523bb7c598` |
| 18 | `lemma` | [deriv_hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/deriv-hq--190789bdb30bd382ab3cb062.md) | 124 | `result-track:190789bdb30bd382ab3cb0621386f4a84fafb48afc5cc7278be252c7d14612d2` |
| 19 | `lemma` | [hasDerivAt_deriv_hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/hasderivat-deriv-hq--497fd545dd43e13e806600a1.md) | 127 | `result-track:497fd545dd43e13e806600a1927cbd8df2b19e030ede31f47ad9f559fd50a79f` |
| 20 | `lemma` | [deriv2_hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/deriv2-hq--3b841bc64e5b9a530df5b13b.md) | 142 | `result-track:3b841bc64e5b9a530df5b13b1e8c80bd208149e82959db57b5de3279b250646e` |
| 21 | `lemma` | [abs_deriv_hQ_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/abs-deriv-hq-le--638d6f4bfaf83fd2fd418d61.md) | 146 | `result-track:638d6f4bfaf83fd2fd418d61e5a37b8790a62b51f7c2ec31adf62f777b680939` |
| 22 | `lemma` | [abs_deriv2_hQ_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/abs-deriv2-hq-le--34e1f1d40609d84ec7237158.md) | 168 | `result-track:34e1f1d40609d84ec723715818cbcdb83757f5aef1ea66654049fbcc9ef37b35` |
| 23 | `lemma` | [abs_deriv_fQ_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/abs-deriv-fq-le--5ab72f57ea04fa988cb8b1a3.md) | 193 | `result-track:5ab72f57ea04fa988cb8b1a30b60dea2a6792010ef5e2b9b3a9a4b7b19d92007` |
| 24 | `lemma` | [abs_deriv2_fQ_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/abs-deriv2-fq-le--ca44158cf3e89c7b2004d5ed.md) | 215 | `result-track:ca44158cf3e89c7b2004d5ed62f5a73cd65b782154cb529b845935b1495379de` |
| 25 | `theorem` | [modFactor_fQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/modfactor-fq--01dad36d082cca8eac8b33e3.md) | 257 | `result-track:01dad36d082cca8eac8b33e37fce7d363768261face567ba17d543dcbb9c2f47` |
| 26 | `def` | [cQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/cq--16c4486aca2136267867b346.md) | 275 | `declaration-track:16c4486aca2136267867b346f998193710e2a6d814554e58e18ec795c92bbddb` |
| 27 | `theorem` | [phiV_quartic_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/phiv-quartic-eq--d0b4130502603bafc7424fc2.md) | 278 | `result-track:d0b4130502603bafc7424fc2392786e69760cfdcdfa227122fdf7da8683c6fc0` |
| 28 | `theorem` | [admWindow_phiV_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/declarations/admwindow-phiv-quartic--5e66782e43d3b0b340ab75bc.md) | 281 | `result-track:5e66782e43d3b0b340ab75bcfbf2b06f864242f86dc80613eea8b86c4baadd7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
