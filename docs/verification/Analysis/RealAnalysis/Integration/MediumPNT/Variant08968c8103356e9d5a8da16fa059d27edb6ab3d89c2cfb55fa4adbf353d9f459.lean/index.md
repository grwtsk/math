# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8229744c9aee6a18b980b51f465971925620d030",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8229744c9aee6a18b980b51f465971925620d030`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MellinCalculus` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaConj` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.SmoothExistence` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinInversion` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/psi-eq-sum-range--21c1c8e5891fcee374315f75.md) | 50 | `result-track:21c1c8e5891fcee374315f75fb7dc38c69af62fefcb519ee3d5c548dc42658e1` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/chebyshevpsi--e7ea8bfcbac2b89922ffc39e.md) | 56 | `declaration-track:e7ea8bfcbac2b89922ffc39ef0ec010d87b81ef1da659426620c1abb548cd6e0` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/logderivativedirichlet--4b4d8b538486f29e5197271e.md) | 59 | `result-track:4b4d8b538486f29e5197271ef8cfcf2f6743ee3bec30dd8a3b629cbeb517bf81` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevintegrand--f7caed9d888eca9ab95fcfa8.md) | 70 | `declaration-track:f7caed9d888eca9ab95fcfa861fe507f31723010648379320c6a92554094152a` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshev--36482c579582a2459707a6d3.md) | 75 | `declaration-track:36482c579582a2459707a6d37937feb562dae3d3d7c5f392abc0a580680b3ab6` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevintegrand-conj--8917fc373dc069a93b1fb4de.md) | 81 | `result-track:8917fc373dc069a93b1fb4de5fd3a549d3db8afacf8461c6133c3d8a5dc9249c` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--aedc0dda75ba5e92e62fb41e.md) | 106 | `result-track:aedc0dda75ba5e92e62fb41e95d747b649ce2deb75fc03648e9656713eaaca78` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--ba386afc0e419e1ecd237061.md) | 141 | `result-track:ba386afc0e419e1ecd237061ea867245aca5ef1584a63c91cfc333690639913b` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevdirichlet--ebf5685652a9f51a35fbc469.md) | 212 | `result-track:ebf5685652a9f51a35fbc4694684f77b4d029e53d08aefd84bb04c5e3e23f1bc` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevclose-aux--c6daa2827c7b39560138f214.md) | 311 | `result-track:c6daa2827c7b39560138f2146479b907f3bda45c1df5b891fb540f8fd4f4ef2d` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevclose--300fb445586e1b58b8564536.md) | 614 | `result-track:300fb445586e1b58b8564536172e668aff6b86a968710221fc7a9435a8949c20` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--c3cb47aed5b0894bc6e9b63f.md) | 713 | `declaration-track:c3cb47aed5b0894bc6e9b63f521541a98194315220c48e7ad275ee3dab7205fc` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--d3c1e9a7d4bcd1d42c783a54.md) | 717 | `declaration-track:d3c1e9a7d4bcd1d42c783a54a849fd9366016e5e4050db0dfd3e083e8f3cb420` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--4edb90072d55418c8a6719c3.md) | 721 | `declaration-track:4edb90072d55418c8a6719c37c7d14d42b6bcfa12f680914d5078c9e8d01e1ab` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--411590d8eb3621d2a9d3113f.md) | 725 | `declaration-track:411590d8eb3621d2a9d3113fbb7bf9f5fbbd0a16416462939f75e6c0d8f4cb9c` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--8d4f133407a5eaf05b84b599.md) | 729 | `declaration-track:8d4f133407a5eaf05b84b599d467dbe02dc4bd48e53b2d05d0c4432b73e6eb19` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--e54afe8fba793abd43ff063e.md) | 733 | `declaration-track:e54afe8fba793abd43ff063e8b4513ee81221ab4920b4c4936e1f50f2e68df80` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--58c57e650f980c43f40a284a.md) | 737 | `declaration-track:58c57e650f980c43f40a284ace441dddc6323fd5d7e59e2df4afcbefb8cb709d` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--64b48c3cfb06153cf01ab3d8.md) | 741 | `declaration-track:64b48c3cfb06153cf01ab3d8479cb957d2c02834e313ecdc3f62a3c65cccb90c` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--31770f85504be000b83018ed.md) | 745 | `declaration-track:31770f85504be000b83018edf56b08dd999768318ac5076c8ee9b20400dbf2fc` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i--6fbe35d10f2957fff4c0f3e4.md) | 749 | `declaration-track:6fbe35d10f2957fff4c0f3e46a6dc35a2d9439bdd7f74795d6c7f6a4347c7ca0` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/realdiff-of-complexdiff--cfe5a0c4e1a0590267c8418e.md) | 753 | `result-track:cfe5a0c4e1a0590267c8418e90539d4dd8b6e6c4f3be41a03e1ae24b85c1042e` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/logderivzetahasbound--5d8b24a65dd86eb1ef26058d.md) | 759 | `declaration-track:5d8b24a65dd86eb1ef26058df555f27389df6c67395ceeed58c9ed24dabf8fec` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/logderivzetaisholosmall--c45d11f070a546677959c243.md) | 763 | `declaration-track:c45d11f070a546677959c243eefe02989fdb6c4ca7bdc18b66beb7cd78aa4317` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--303cc985c6478ad13d6633f1.md) | 767 | `result-track:303cc985c6478ad13d6633f190a22a8312176139c187ecacd2051fb62342ec3c` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--0b5a874401f1e08d0436ac44.md) | 772 | `result-track:0b5a874401f1e08d0436ac4401e3c89ca114928ec5124e214730c7b04f740689` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevpull1-aux-integrable--6a2de370d54bf0a3e4f67293.md) | 779 | `result-track:6a2de370d54bf0a3e4f67293587c5f479b384158e7d5e36a895297814f9c5434` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/bddaboveonrect--3600e746023ab98a09975e3d.md) | 841 | `result-track:3600e746023ab98a09975e3ddfa57975626be8a61269db50e83bf06e62c88f5a` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevpull1--5afd4216202290844ce2aa7c.md) | 848 | `result-track:5afd4216202290844ce2aa7cc4f4e3379aa41a3e434be36df92e518208fc965d` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/interval-membership--4beef799f2643a89e7b70d9f.md) | 1019 | `result-track:4beef799f2643a89e7b70d9f1ea19ee2b1360ed1d17d29cb29706a9f0cce3de5` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/verticalintegral-split-three-finite--56976d72520f8bcb6e86bc63.md) | 1028 | `result-track:56976d72520f8bcb6e86bc63814007a5ca47f44db5fe71c58e99e42289307d6a` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/verticalintegral-split-three-finite--6392972bd351ae074fee8ad1.md) | 1044 | `result-track:6392972bd351ae074fee8ad17e1a915acb6329a4f77490195c4e63aa6ebb5472` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevpull2-aux1--221a7fa288ec6ef9358b2dba.md) | 1061 | `result-track:221a7fa288ec6ef9358b2dbad11a7bfe179617cdc613d1221c1baa83074e7455` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/smoothedchebyshevpull2--352e594e79d2a783eac9d4a2.md) | 1080 | `result-track:352e594e79d2a783eac9d4a2122cbc4dbcc711909cd2ca3f196795fd09143919` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/zetaboxeval--cd20d23c17b28b113797f2fc.md) | 1263 | `result-track:cd20d23c17b28b113797f2fc1cc0318a2737085f55f5c7b2bb3960ca1fe57fa2` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/poisson-kernel-integrable--a5b76b4440ceea33f4af79f1.md) | 1283 | `result-track:a5b76b4440ceea33f4af79f17bdbfd68c7122686028caa769734420863a7241d` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/ae-volume-of-contains-compl-singleton-zero--969f488c47c64c3128d5b60c.md) | 1298 | `result-track:969f488c47c64c3128d5b60c797b334f893c3c1c7992dd010f3c703f97018bde` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/integral-evaluation--b0e3e172e4304aac5caa5f7f.md) | 1327 | `result-track:b0e3e172e4304aac5caa5f7fea1b58a1e0f5c4774d3654c4b17106dabdd5442c` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/ibound-aux1--8542cca61211574ca732e665.md) | 1399 | `result-track:8542cca61211574ca732e665d8ae9f7b208dbe5eaeede0770c6e36e6866d0104` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i1bound--4589a70eb84742fe8f17b2f8.md) | 1430 | `result-track:4589a70eb84742fe8f17b2f83dea781d69c70bed616370d66ab2a704da2c3d2a` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i9i1--0bd3073f03fb5440e9465d2c.md) | 1742 | `result-track:0bd3073f03fb5440e9465d2c48e8828bbb2ae56c3b2ed7385662ea61e28f5826` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i9bound--27441559b8f3e1c7a4699469.md) | 1756 | `result-track:27441559b8f3e1c7a4699469d8ba2f74fcb8e57138538adb66714def1e321698` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/one-add-inv-log--25bf8266dfbc1ee776808317.md) | 1772 | `result-track:25bf8266dfbc1ee776808317d0d437979b34e938d858944151e6c060a2b34564` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i2bound--f1b7b7393706d2ddea73401d.md) | 1777 | `result-track:f1b7b7393706d2ddea73401dfce2e3bca635919656b4a857fea000ff18072774` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i8i2--34bd4d9b08674e98f2419793.md) | 1923 | `result-track:34bd4d9b08674e98f2419793200a9393392c77137454d5141c1e5a8b508c23db` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i8bound--028923bdd0f610d52306c868.md) | 1938 | `result-track:028923bdd0f610d52306c868bb0fae4fef9452c1618b1f16c3da151aea51050d` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/log-pow-over-xsq-integral-bounded--2cb0bb25312fcf011d19d577.md) | 1956 | `result-track:2cb0bb25312fcf011d19d577c6707dbd01829ac7e33a8a13374332d9c7e526e3` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i3bound--d45256648b5c8f1ca8214d2d.md) | 2206 | `result-track:d45256648b5c8f1ca8214d2dbb55bc3a8947f279e66fc568a9e11c4c34346b9e` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i7i3--9713ac087ceb47e258c415fc.md) | 2477 | `result-track:9713ac087ceb47e258c415fc695f170be7d01b87d95a191ee95a86db46da7105` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i7bound--b0fb0de732d5f30b34ca37f6.md) | 2491 | `result-track:b0fb0de732d5f30b34ca37f61adf4dd638327a5614a43747c2a22b84e9c45cb2` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i4bound--fff6a1cb032dbf9bf2a89bc9.md) | 2506 | `result-track:fff6a1cb032dbf9bf2a89bc9bc2a1a91c6177dba57e459e660ee34b32993a416` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i6i4--2adce24197d1d7e11ba88cad.md) | 2878 | `result-track:2adce24197d1d7e11ba88cad34c36e9cc9cb82fe58d4ad962f1904bad3eb7509` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i6bound--f23620a684497bc6a1ae77c1.md) | 2892 | `result-track:f23620a684497bc6a1ae77c19ae1bc11f17cfe125cb24d82c656cbe667952d29` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/i5bound--7c671045eb67c0b6e99c48ca.md) | 2909 | `result-track:7c671045eb67c0b6e99c48ca7c90d3785f7ddd32429953f8e9979a3428ebad10` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/logderivzetaboundedandholo--7d67a284327f06f88c5e02ef.md) | 3059 | `result-track:7d67a284327f06f88c5e02ef2c417653795042fa67e1a1c28545bab21a87d0ff` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/mellinofsmooth1cexplicit--0462bda954184d5ca9ad188b.md) | 3085 | `result-track:0462bda954184d5ca9ad188ba6a3e79f29330de3458cbe9ea8b9411b890f8f2e` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/x-to-inf--ff181f524ea8615211ed051a.md) | 3105 | `result-track:ff181f524ea8615211ed051a938c627bcef362e1d8d9fd61b1f70c175c980464` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant08968c8103356e9d5a8da16fa059d27edb6ab3d89c2cfb55fa4adbf353d9f459.lean/declarations/mediumpnt--e57dae6291e4da9baf1d6e15.md) | 3167 | `result-track:e57dae6291e4da9baf1d6e15d27c7dde167fc89f231f92bdf8295904a325cf0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
