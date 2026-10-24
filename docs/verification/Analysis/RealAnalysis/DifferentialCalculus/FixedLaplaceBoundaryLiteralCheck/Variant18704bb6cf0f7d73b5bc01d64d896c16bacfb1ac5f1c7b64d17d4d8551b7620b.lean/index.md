# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceBoundaryLiteralCheck.Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2320dba4608716c0425b4092fe6b348e0440a03",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2320dba4608716c0425b4092fe6b348e0440a03`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean.json)

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
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpmoment--371cc6c6fd81dea84f73ec06.md) | 32 | `declaration-track:371cc6c6fd81dea84f73ec0649c7a055fc79026ef57314ec143af28a3e8f62e9` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpmoment-intervalintegrable--d687ab1ad0dc2bb1a3f2fad4.md) | 37 | `result-track:d687ab1ad0dc2bb1a3f2fad4cf514062cd0cbcbfa99e833e86cf1d9a6545b8cd` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpmoment-zero-eq-source--026029840027eb80c32bddba.md) | 44 | `result-track:026029840027eb80c32bddbacf6da77de210c2820c4ea3f93fe5f38ea4e42220` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpmoment-zero-zero--5b7288f13ba1f263fabf692a.md) | 57 | `result-track:5b7288f13ba1f263fabf692afb8784b288fa83baae5be9615e86837232a97a33` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpflux-hasderivat--6aacad2156c814c2875bfb8c.md) | 67 | `result-track:6aacad2156c814c2875bfb8cd13acb811701def9879db5e11e77f31b755f709b` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpmoment-equation--c2355001d4a995253c088dbe.md) | 78 | `result-track:c2355001d4a995253c088dbe50acb32c9ea3dafc63ab4f34dd647b0ad7e3b2d1` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/re-eq-zero-of-weighted-energy--61c7061dcb296c13dc173c7c.md) | 113 | `result-track:61c7061dcb296c13dc173c7c8ef8ed2856972b324a814c1f9be4e9aabcd41bfa` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpprimitive-hasderivat--16c470a600b8f4100892e6d8.md) | 142 | `result-track:16c470a600b8f4100892e6d815898bd4bf319aef909af50ce6c06892789292ea` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpmoment-closedformula--60fea2ff05e1c39d10deecb4.md) | 157 | `result-track:60fea2ff05e1c39d10deecb4765d956006bb1411ac6e334b172a77a7b9479077` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/v-zero--6a6e3b5bfe677faf9ebe7953.md) | 182 | `result-track:6a6e3b5bfe677faf9ebe795386b4ccd1545d7931e371a3f2e76e73ca87dfaa19` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/v-eq-bumpmoment--d0ee6e4616b6dfb68d5c8b1a.md) | 191 | `result-track:d0ee6e4616b6dfb68d5c8b1abb229cef343b8a8624cea9332deab9fa0097bb21` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/w-eq-bumpmoment--6bd6b3a99ad91aec4f40a3b7.md) | 204 | `result-track:6bd6b3a99ad91aec4f40a3b70d996964f7d01619c3586c064202545954a3669d` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpmoment-hasderivat--d8da95effba04414eebc1fe9.md) | 226 | `result-track:d8da95effba04414eebc1fe9ab879c4ed0aea5d912f5f921f59b8efddc01412b` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpmoment-continuous--f0ad38057a2987bdff783076.md) | 262 | `result-track:f0ad38057a2987bdff783076557a70cb25633e212297997bc0c4336cc2db135b` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialprofile--61aad5dc6e8241693ca3a57d.md) | 267 | `declaration-track:61aad5dc6e8241693ca3a57d4f88e710612af595b2b8c4078a112d783c3cc671` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialflux--0faa600c7bff8c110016dfd7.md) | 270 | `declaration-track:0faa600c7bff8c110016dfd77a4090685c9aeb69db46f3c718883cabfd2da7d7` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialprofile-hasderivat--90c99fcc8b024b97cf51a253.md) | 274 | `result-track:90c99fcc8b024b97cf51a2530b1a8830640e9e20547eca077dd646db55b23161` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialflux-hasderivat--ffcfd38e2121b259b7af6f13.md) | 283 | `result-track:ffcfd38e2121b259b7af6f139b2ad3f58ee9e51a76829b98c08a833b0fb3bb43` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialprofile-continuous--6786e322258bddf19117e21d.md) | 293 | `result-track:6786e322258bddf19117e21d4cf574114901ea5534382a8e9ac772ba5a20827d` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialflux-continuous--cf0e0b6029e651022c02fae6.md) | 297 | `result-track:cf0e0b6029e651022c02fae66dc0012b995a591d7cab20f6ef2c9a608f0ebd59` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialmass--d887ad343b14e9f8f89ba1bc.md) | 302 | `declaration-track:d887ad343b14e9f8f89ba1bc128590611533e9a6ed35306f5f65dacaba7297af` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialenergy--018a03292e782c4fdb03f1b4.md) | 305 | `declaration-track:018a03292e782c4fdb03f1b45f212f59d4f462dda606f161b7ed4b06cd2f9281` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radial-integrands-intervalintegrable--513eec0755d7348f50fac949.md) | 309 | `result-track:513eec0755d7348f50fac9490770f14230e0a8224865b8b26661b60d1fe018d6` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialenergy-nonneg--cfdd5d4076329dee44265c40.md) | 321 | `result-track:cfdd5d4076329dee44265c4079d02d8aa3206af0702bb88dcbd06fff54adac6e` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialprofile-eventually-ne-zero--50573ce9a5234ae6fa830dc2.md) | 327 | `result-track:50573ce9a5234ae6fa830dc22bff836685a5010f67362a758a5021d5a869629d` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radialmass-pos--15551cbffd35f0245d46c8f9.md) | 334 | `result-track:15551cbffd35f0245d46c8f97ce92014994eaba7d804c80467cb780ec30a1282` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/radial-energy-identity--8518270caab9061e80ffea80.md) | 350 | `result-track:8518270caab9061e80ffea806e9124eb3129fa574bcf3fc1a0d8d1c72253170a` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/bumpmoment-zero-re--9258fcf6ade3193218255d1b.md) | 408 | `result-track:9258fcf6ade3193218255d1bb1f6fbf774d7a5aef5b702524d338b44652b0fec` |
| 29 | `theorem` | [V_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/v-continuous--bac3ad4f502bce0e3fa8f309.md) | 426 | `result-track:bac3ad4f502bce0e3fa8f309a20eb05c8156c306a6904fe9b034237f22c566bd` |
| 30 | `theorem` | [actualLaplace_continuousOn_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/actuallaplace-continuouson-closed--7463f74193e2f3454634b5be.md) | 434 | `result-track:7463f74193e2f3454634b5bea76c469a834113c55dc4f07efc752092d20a39e0` |
| 31 | `theorem` | [sourceProduct_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/sourceproduct-continuousat--3bcae62eb04305b1ae88e292.md) | 460 | `result-track:3bcae62eb04305b1ae88e292ef57b38fa234b050235133570c371ec4820b2c3a` |
| 32 | `theorem` | [actualLaplace_eq_product_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/actuallaplace-eq-product-closed--aebe7769a56a772242f62a50.md) | 473 | `result-track:aebe7769a56a772242f62a5054fcbaba2a08697dcee1b5a2ea0223cfd05f7ec8` |
| 33 | `theorem` | [actualLaplace_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/actuallaplace-boundary--02e4454ec6d937078a684ca9.md) | 499 | `result-track:02e4454ec6d937078a684ca990027a9571b7f2fdaa0021fcebb51418e7c3e05d` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/example--2280c682f0198430b80a2ed1.md) | 517 | `declaration-track:2280c682f0198430b80a2ed103d7fbab106b770795d09ff575da18640777c17a` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/example--5d378dff175a5a84d39be76b.md) | 518 | `declaration-track:5d378dff175a5a84d39be76b6085c99b8844a6a715d2b72ad24825ab1cd7a04d` |
| 36 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/example--b52a12391c7120d15d60444c.md) | 520 | `declaration-track:b52a12391c7120d15d60444cb50872787920025a6202923f8641b551eec60f91` |
| 37 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/example--c42cc08f136c18777f4479a4.md) | 523 | `declaration-track:c42cc08f136c18777f4479a4cbc61a763a1bd4c0cd4135a786516b86f7f7e3dc` |
| 38 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant18704bb6cf0f7d73b5bc01d64d896c16bacfb1ac5f1c7b64d17d4d8551b7620b.lean/declarations/example--a252ca10881ad379d734947f.md) | 526 | `declaration-track:a252ca10881ad379d734947f2af204a4d8cb07a90ec283484f9e086cad2c9ba1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
