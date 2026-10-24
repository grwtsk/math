# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.InitialFormula.Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b22a534e84e8f05da2fde359148713862f11f68",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b22a534e84e8f05da2fde359148713862f11f68`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/rcoeff--d8e7d180a74de94d48885875.md) | 46 | `declaration-track:d8e7d180a74de94d48885875f7a9d67382aae5fcfd687f38dfd7f58b5bda17f4` |
| 2 | `def` | [sCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/scoeff--de56316325e93185d3fd0406.md) | 60 | `declaration-track:de56316325e93185d3fd04063b752de2995539f716ac8a719c1360fe1172bb06` |
| 3 | `def` | [scalePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/scalepolynomial--a9e219220126926ff110107d.md) | 73 | `declaration-track:a9e219220126926ff110107d13a187ad9e93fd22bb8b5f3cdfacf704de3787f8` |
| 4 | `def` | [positivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/positivepolynomial--6b16d85938ecd14196187189.md) | 77 | `declaration-track:6b16d85938ecd141961871893ffb10d6c642272b541bf9135392eb547852393e` |
| 5 | `def` | [mixedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/mixedpolynomial--6704dfe5b32788242842e329.md) | 80 | `declaration-track:6704dfe5b32788242842e329e2faf6c2f5ffbbd38c0a37d5d45b7d5cc07ab019` |
| 6 | `theorem` | [scalePolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/scalepolynomial-eval--5f411a5c7cefae6d92e5a2c5.md) | 83 | `result-track:5f411a5c7cefae6d92e5a2c5304055c46e690da035c97e6756c4d769df6b9c4c` |
| 7 | `theorem` | [positivePolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/positivepolynomial-eval--b7a7cc9be65506a43e7e5bc3.md) | 89 | `result-track:b7a7cc9be65506a43e7e5bc39721c86aa405c37f9e01985bd7f86b88d570ab96` |
| 8 | `theorem` | [mixedPolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/mixedpolynomial-eval--735b764f9ca0a9b5ee83fc8e.md) | 94 | `result-track:735b764f9ca0a9b5ee83fc8eaf0b6516555bc6b4562491275db533c828fa903d` |
| 9 | `theorem` | [positivePolynomial_expansion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/positivepolynomial-expansion--11f6690141a42eca0f146c49.md) | 100 | `result-track:11f6690141a42eca0f146c49ef4157fe4a97cda217c651ed840e6102af632e9c` |
| 10 | `theorem` | [mixedPolynomial_expansion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/mixedpolynomial-expansion--522b4a0c6eaf57e142b11fc7.md) | 114 | `result-track:522b4a0c6eaf57e142b11fc78ea725aa05eb5133b6ba677949babbdf5825ab7f` |
| 11 | `theorem` | [positivePolynomial_natDegree_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/positivepolynomial-natdegree-le--b2b3e3bd712bc8e4ff818972.md) | 125 | `result-track:b2b3e3bd712bc8e4ff81897201e35432cc9b47f646ada8b1e80322a56b13c45a` |
| 12 | `theorem` | [mixedPolynomial_natDegree_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/mixedpolynomial-natdegree-le--bb74c1cb8c90e8acc41c3edb.md) | 130 | `result-track:bb74c1cb8c90e8acc41c3edb11c20cd441af27c7d83fb407d55f178da3fbe7cc` |
| 13 | `theorem` | [positivePolynomial_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/positivepolynomial-coeff--add23c84914653e3b593da3b.md) | 136 | `result-track:add23c84914653e3b593da3b1849c0e50a79b44d7ac32a06da868bfd786ca032` |
| 14 | `theorem` | [positivePolynomial_neg_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/positivepolynomial-neg-coeff--0a6352c740c49b6c96b6d9bf.md) | 145 | `result-track:0a6352c740c49b6c96b6d9bffef42e25277f998b1734137cd13c54f1a97e4610` |
| 15 | `theorem` | [mixedPolynomial_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/mixedpolynomial-coeff--0a0826968599ecb2e3ba73d9.md) | 154 | `result-track:0a0826968599ecb2e3ba73d977bc21eddafddb27de6e1927401c637a8f2e6f4f` |
| 16 | `def` | [polynomialKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/polynomialkernel--dcb10af5f52b2ec23d267a42.md) | 163 | `declaration-track:dcb10af5f52b2ec23d267a428cdaf544023ca7c200bd75e7e2d84efa57d8bf4f` |
| 17 | `def` | [sourceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/sourcekernel--be6f6ee1e9a95c2a02cc2a24.md) | 167 | `declaration-track:be6f6ee1e9a95c2a02cc2a244cc1f06189ac9bd58fd0157935968ec8cb675b59` |
| 18 | `def` | [equation20Summand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/equation20summand--ac1d40ed17dccd981796977f.md) | 174 | `declaration-track:ac1d40ed17dccd981796977f27bf07c1fd017548526ea06822c2506e4ad48200` |
| 19 | `theorem` | [polynomialKernel_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/polynomialkernel-positive--2d0fbfa6fde0c4e3e9d1d84c.md) | 182 | `result-track:2d0fbfa6fde0c4e3e9d1d84c13820f2917ff423ad9b42f3667cb6375911373f5` |
| 20 | `theorem` | [polynomialKernel_negative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/polynomialkernel-negative--5483305ff44fc233b45fbecc.md) | 194 | `result-track:5483305ff44fc233b45fbecc55e2f6f3aadcf295b448da0ef7d86386891a5c0b` |
| 21 | `theorem` | [polynomialKernel_mixed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/polynomialkernel-mixed--9a99d54dd098b6c5fea540c9.md) | 206 | `result-track:9a99d54dd098b6c5fea540c947c085a20938f13fa9441a674e2622c4c9c5f398` |
| 22 | `theorem` | [sourceKernel_eq_equation20Summand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/sourcekernel-eq-equation20summand--8eaa50b72bae0bd30ade2730.md) | 220 | `result-track:8eaa50b72bae0bd30ade2730f75a6591c2c7fa4fc6c0beab212af42cfdd2255f` |
| 23 | `def` | [weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/weightedpolynomial--31f2d1802fd8b9b5bccf835f.md) | 235 | `declaration-track:31f2d1802fd8b9b5bccf835f9c1f4e37f86601d928a6accc3a0f7f814abff734` |
| 24 | `theorem` | [weightedPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/weightedpolynomial-eq-sum--8fd27c9c6b8db77e500f4dbc.md) | 239 | `result-track:8fd27c9c6b8db77e500f4dbcd391e5a794e983dea05d84c5827404617ec33e8a` |
| 25 | `theorem` | [weightedPolynomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/weightedpolynomial-integrable--19c66fe0d32da4a0e990620b.md) | 256 | `result-track:19c66fe0d32da4a0e990620b4b4c218471231e73162e26c329e3f3f864633f66` |
| 26 | `theorem` | [integral_weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/integral-weightedpolynomial--9adb0a2e1e8e02bc524a82fa.md) | 269 | `result-track:9adb0a2e1e8e02bc524a82fa7f7f69de731e31f7d9bb30f8915184e0be5e0d24` |
| 27 | `theorem` | [weighted_expandedSummand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/weighted-expandedsummand-eq--0cbee62d21ff82270bdc4d3a.md) | 288 | `result-track:0cbee62d21ff82270bdc4d3a46cdb13907f3100dda768c63efad12caf5188884` |
| 28 | `theorem` | [occurrence_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/occurrence-integrable--399a2bbdd824f8f524e97433.md) | 317 | `result-track:399a2bbdd824f8f524e974331518dc49607201ec96e8780e3ef2a43842cd9a78` |
| 29 | `theorem` | [integral_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/integral-occurrence--210afb6f0d8a9d0c08d0521e.md) | 354 | `result-track:210afb6f0d8a9d0c08d0521e7bb6827741fe2cf22981d9921610c0ed6fb99870` |
| 30 | `def` | [occurrenceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/occurrenceintegrand--7efcb7b1805771d3fd009daa.md) | 400 | `declaration-track:7efcb7b1805771d3fd009daa97c770bbea1a4c24bb377ccdb9068cd5bf80d85d` |
| 31 | `def` | [scaleMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/scalemajorant--35ad9ee0d594bcacbfaa0e21.md) | 406 | `declaration-track:35ad9ee0d594bcacbfaa0e219fe67f2bc04a1166e3994638c5ca52fce0764aed` |
| 32 | `theorem` | [scaleMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/scalemajorant-nonneg--33b543318811d560e33b73a8.md) | 410 | `result-track:33b543318811d560e33b73a85aa18291bdfd6c41d1e1cde28cde2f640f6ba2bc` |
| 33 | `theorem` | [scaleMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/scalemajorant-integrable--c3d5b538c96e817bda3fe420.md) | 418 | `result-track:c3d5b538c96e817bda3fe420467d6c4c453db33581c8815747afb2dfe7d11d15` |
| 34 | `theorem` | [occurrenceIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/occurrenceintegrand-norm-le--7846ccdd9c5a3456baa0cbef.md) | 447 | `result-track:7846ccdd9c5a3456baa0cbef10131db68dd87f671bbeab319c9ceeae9f4d2a16` |
| 35 | `theorem` | [integral_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/integral-norm-le--c80b675f0f5f861b9c361f11.md) | 480 | `result-track:c80b675f0f5f861b9c361f1180d74fc50af7fa6f1bcb5af84de10d58ec902650` |
| 36 | `theorem` | [integral_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/integral-norms-summable--737322ec61960a6d5837ca31.md) | 495 | `result-track:737322ec61960a6d5837ca31e50234449d3a35e3b4356f9fb408736e44446530` |
| 37 | `theorem` | [summedIntegrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/summedintegrand-eq--8fe302ff4e4caaff169de297.md) | 510 | `result-track:8fe302ff4e4caaff169de297462db39605d45e1709856d0a7fdd9a94f144d739` |
| 38 | `theorem` | [integral_tsum_occurrences](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/integral-tsum-occurrences--0ea2d747403ea0395fc8d5c6.md) | 523 | `result-track:0ea2d747403ea0395fc8d5c68d2bb58739e2ef9d6048097df446e6755f132efa` |
| 39 | `theorem` | [integrals_enorm_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/integrals-enorm-ne-top--f3ff973b401edcde46e9009c.md) | 536 | `result-track:f3ff973b401edcde46e9009cc33729f36f10e5a8c9dfc64132f7c41355d70ddf` |
| 40 | `theorem` | [summedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/summedintegrand-integrable--ce1b52c613f39d68c21fe62c.md) | 550 | `result-track:ce1b52c613f39d68c21fe62cdd2cab323a9cef4590aeb9a7ce2f8ec6bf3b3356` |
| 41 | `theorem` | [weightedSource_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/weightedsource-laplace-integrable--0787ee44d937d4b32a3fbd82.md) | 575 | `result-track:0787ee44d937d4b32a3fbd820353655197b7f3b76cd0cbbe8da6133775d52008` |
| 42 | `theorem` | [equation20](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/equation20--280bf6f2ffc3ba2d1e4ec690.md) | 587 | `result-track:280bf6f2ffc3ba2d1e4ec6904f783c904ca11382289bf20b1bd1404a52c03a23` |
| 43 | `theorem` | [equation20_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/equation20-norms-summable--8c0da05677c3429581c33d06.md) | 607 | `result-track:8c0da05677c3429581c33d06ec4e6f6571500a585e0111fd4b76d2788cbc50bb` |
| 44 | `def` | [InitialFormulaCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/initialformulacheckpoint--afe4bbfabf4ad4d62d76c78f.md) | 620 | `declaration-track:afe4bbfabf4ad4d62d76c78f771463e8194a55188a91d8dda11394b0de299e10` |
| 45 | `theorem` | [initial_formula_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/declarations/initial-formula-checkpoint--e0b9d748c10db0ff048b4420.md) | 636 | `result-track:e0b9d748c10db0ff048b44202b10089fd599e63b6de7724ce23168fa4547bc30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
