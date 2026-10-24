# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceBoundaryFullAudit.Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "991519039bf960982e1a59d91077e1fc227e57d1",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `991519039bf960982e1a59d91077e1fc227e57d1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpmoment--e1c1e5b4a7b9e173d7e71760.md) | 32 | `declaration-track:e1c1e5b4a7b9e173d7e71760e952e7b9dce5719da426a266aad5ac58432c5a8d` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpmoment-intervalintegrable--be6108d64efceb78a9ab5e50.md) | 37 | `result-track:be6108d64efceb78a9ab5e50f32282bd1aa7b2cf6cd5c7f0f0c3c2876aaa2f5f` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpmoment-zero-eq-source--8a329d193262c76e3fa2b80c.md) | 44 | `result-track:8a329d193262c76e3fa2b80c549626832f8d70a1f120185999da9d9d18b8187f` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpmoment-zero-zero--fed2ba97dcdf93dd7deea9e0.md) | 57 | `result-track:fed2ba97dcdf93dd7deea9e0ebdf1b7e0654e3ec2cee7430face005756d3ae55` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpflux-hasderivat--c6df61830a0687ef3a9a17c0.md) | 67 | `result-track:c6df61830a0687ef3a9a17c0b1558e5297d97c1c22ba09ea30ea4d62504b3115` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpmoment-equation--b4b7969bf0f060c6ae6df1da.md) | 78 | `result-track:b4b7969bf0f060c6ae6df1dab00a88da46fccb3cbe8f65a14a974c65b795bda6` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/re-eq-zero-of-weighted-energy--1a6a652d1ac74d685880588d.md) | 113 | `result-track:1a6a652d1ac74d685880588dd5e7ebccd770690e23c7fd65ab2f9deaadd9a065` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpprimitive-hasderivat--363eca5ed1fe2d0adc657761.md) | 142 | `result-track:363eca5ed1fe2d0adc6577615ee714aa649fcbd94e06971a3356fa67094a9901` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpmoment-closedformula--197fa54dd3863049d0cfeee0.md) | 157 | `result-track:197fa54dd3863049d0cfeee076c9ab849610e4718b4183d8c9d1f3f0e29c7ac5` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/v-zero--83b51f008da4e3c60d92507f.md) | 182 | `result-track:83b51f008da4e3c60d92507ffb06c66a81a705d8754e2bbe317d35a07e81fead` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/v-eq-bumpmoment--a8bb39935c27018292419e91.md) | 191 | `result-track:a8bb39935c27018292419e91aadfc3eb6a6ad57ccbf505bbd3de08f1941e0b5f` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/w-eq-bumpmoment--0deeacada3ebda5000cd48a0.md) | 204 | `result-track:0deeacada3ebda5000cd48a0f7618e7c41ef1234158bb04015c6d06879f66e02` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpmoment-hasderivat--d4986ecf584b1dea83ba2d81.md) | 226 | `result-track:d4986ecf584b1dea83ba2d8163df2dfe6c18d58e981adf495609c8af08fc0cb6` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpmoment-continuous--e15cc7894a624e45956cc0cb.md) | 262 | `result-track:e15cc7894a624e45956cc0cb1381a9cd89fdd810d406cf25e7651591632ec0ec` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialprofile--4427537fb309441f37293576.md) | 267 | `declaration-track:4427537fb309441f372935763c0019f19baab2f63caa17f09f5ba75a215eef5b` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialflux--6ba8d6962f1713290ebd0f12.md) | 270 | `declaration-track:6ba8d6962f1713290ebd0f12f33c3950f90bf19d66d05e479f2ad01f24b46c16` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialprofile-hasderivat--c75ef2b699b9d5d1d81c1677.md) | 274 | `result-track:c75ef2b699b9d5d1d81c16777bb30002231be29f5476814fb15f824113137d91` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialflux-hasderivat--581689f1a0bcb38f3f338323.md) | 283 | `result-track:581689f1a0bcb38f3f3383235e6998c7d956a162862cdda92998ebcf1629c135` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialprofile-continuous--1198ff90f0b603494afb4e4a.md) | 293 | `result-track:1198ff90f0b603494afb4e4abd2c7c212e1f967cc47ad6029a3150c7ba6a8122` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialflux-continuous--b5930e25e057ee2e91d8bde2.md) | 297 | `result-track:b5930e25e057ee2e91d8bde214a1ef0cec747df990b8ba854d976a56c215be78` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialmass--a5c5bcf05df4e3384b905b79.md) | 302 | `declaration-track:a5c5bcf05df4e3384b905b79c7cba61701897cf89941ef08737057fe8309ab8d` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialenergy--3fbf8802ab0c2c78b01255fd.md) | 305 | `declaration-track:3fbf8802ab0c2c78b01255fdcfe448a1be19bb498da7e40150f39bdd9de1137f` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radial-integrands-intervalintegrable--80241b6300b11fed3cd6148a.md) | 309 | `result-track:80241b6300b11fed3cd6148a55ad90c5034ba3a22ae765be1ff7f4283609c193` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialenergy-nonneg--73f1c27a7f1e9f5de722319b.md) | 321 | `result-track:73f1c27a7f1e9f5de722319bd00e1a1b7ab2ba74f2ba08ab28ed2db5ca59ae8e` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialprofile-eventually-ne-zero--ac0d744e7992e75b9a11115a.md) | 327 | `result-track:ac0d744e7992e75b9a11115a3d70542e129cdb03749425e38c8dcc75f0bf52a6` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radialmass-pos--a4b65ec81dff8985f1741d59.md) | 334 | `result-track:a4b65ec81dff8985f1741d59b48fc9ecd8a09fd4492f422bc2014d991473b137` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/radial-energy-identity--e68f8ecaa9cf331387d7e316.md) | 350 | `result-track:e68f8ecaa9cf331387d7e316c850ca1e2bf468f9145a8af14fc2c59aff249f7c` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/bumpmoment-zero-re--7d0513646ae544c3e21d2e28.md) | 408 | `result-track:7d0513646ae544c3e21d2e283309e65b8200ad8157dcb8796be90155c05cb1cc` |
| 29 | `theorem` | [V_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/v-continuous--42d49d2a93a32587f1ab3284.md) | 426 | `result-track:42d49d2a93a32587f1ab3284b99c42018469165d3d92599e25f31cacacc8bedc` |
| 30 | `theorem` | [actualLaplace_continuousOn_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/actuallaplace-continuouson-closed--4a3e64b9ae70d52b2f781581.md) | 434 | `result-track:4a3e64b9ae70d52b2f7815819206d1e8b5e85442cecaa6bbfade28ae6b8144a6` |
| 31 | `theorem` | [sourceProduct_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/sourceproduct-continuousat--db3b5561fc0676d1df889a47.md) | 460 | `result-track:db3b5561fc0676d1df889a475020c56bbde25e056c66eee59fd7f02046c22e53` |
| 32 | `theorem` | [actualLaplace_eq_product_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/actuallaplace-eq-product-closed--d9eff238755bc05153fcf9db.md) | 473 | `result-track:d9eff238755bc05153fcf9db6873ee776e16d1557492d98835404d66b081fa1c` |
| 33 | `theorem` | [actualLaplace_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variantc84516b93819c941bbe327b74cb1b7477c2a50229f73b3df6f6ce8a11ad57da7.lean/declarations/actuallaplace-boundary--b0620cd25a162daa56c08c9c.md) | 499 | `result-track:b0620cd25a162daa56c08c9cc5febe05f74b9907968d0bb84d3d86be6deeda5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
