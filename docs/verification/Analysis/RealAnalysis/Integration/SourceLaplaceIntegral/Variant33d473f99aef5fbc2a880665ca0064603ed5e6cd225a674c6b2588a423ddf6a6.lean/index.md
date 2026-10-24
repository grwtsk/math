# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceLaplaceIntegral.Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "148e2294d2771674d145ee0b0313dae42a47d61c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `148e2294d2771674d145ee0b0313dae42a47d61c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceReduction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polynomialKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/polynomialkernel--df2f5f8e37df3c9398f3b62f.md) | 15 | `declaration-track:df2f5f8e37df3c9398f3b62f4585c652961474cc1c0bcc208918c5f2afb19905` |
| 2 | `def` | [sourceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/sourcekernel--bd9433067ed1aad1489246f1.md) | 17 | `declaration-track:bd9433067ed1aad1489246f1ec474a5dd4ab79373c5c33b8a3f9cd3fd4b32a92` |
| 3 | `def` | [weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/weightedpolynomial--3eb9c1879649730918a1139e.md) | 28 | `declaration-track:3eb9c1879649730918a1139eb0e8b6ab9ff6aded159654320b1567f68a7ba29e` |
| 4 | `lemma` | [weightedPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/weightedpolynomial-eq-sum--9d859d436155216d7af32aa2.md) | 31 | `result-track:9d859d436155216d7af32aa2eb6b9e055d8ad50420d5f64e513ca16f8c18406e` |
| 5 | `lemma` | [weightedPolynomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/weightedpolynomial-integrable--37ca00d6dd279704d4970127.md) | 41 | `result-track:37ca00d6dd279704d4970127b6e22a922e89df3d3deb8b8315e037bdabb344da` |
| 6 | `lemma` | [integral_weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/integral-weightedpolynomial--53661bf61aa28f5ea827c3f2.md) | 47 | `result-track:53661bf61aa28f5ea827c3f2cc9fafff83fb005365ff5ec81bb02d00121ab0d4` |
| 7 | `lemma` | [weighted_expandedSummand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/weighted-expandedsummand-eq--43d02b6e1e72aadbffc2eeab.md) | 53 | `result-track:43d02b6e1e72aadbffc2eeab584ca94dce6fa493e5e63ce4fdd25ed94eeaa284` |
| 8 | `lemma` | [expandedSummand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/expandedsummand-integrable--2b992444a8d1a351e57a942a.md) | 72 | `result-track:2b992444a8d1a351e57a942af3ca74b1157437ad03a455aa95c1066063322804` |
| 9 | `lemma` | [integral_expandedSummand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/integral-expandedsummand--dceb2e533955de5791ef60d8.md) | 80 | `result-track:dceb2e533955de5791ef60d8fba2bc20ac019d66c5b41a2797bc5d9c02e7a451` |
| 10 | `lemma` | [source_strip_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/source-strip-integral--0eaebb3cec7f52dfd3f0dd0b.md) | 97 | `result-track:0eaebb3cec7f52dfd3f0dd0bdaa0dd563d49c2c55717051c3f627ef41880cf65` |
| 11 | `lemma` | [occurrence_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/occurrence-integral--543c5f5dc3ddfbb5a685558f.md) | 111 | `result-track:543c5f5dc3ddfbb5a685558f6efe873361e26affade16635b6339253eea0a722` |
| 12 | `lemma` | [actual_occurrence_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/actual-occurrence-integral--570c60cbdf068f322cd8342e.md) | 118 | `result-track:570c60cbdf068f322cd8342e3143f523b9a03e00ba1b0e26a307bea0ff93845a` |
| 13 | `def` | [normalizationKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/normalizationkernel--4555e6085d4a1175c50cbda5.md) | 135 | `declaration-track:4555e6085d4a1175c50cbda52d16b09fc69b7958b385b20b912fac6e3ffa2ec6` |
| 14 | `lemma` | [weighted_normalization_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/weighted-normalization-eq--78029e1320eec1908133fb1d.md) | 140 | `result-track:78029e1320eec1908133fb1d24bb9e485a43d7a067ca27b7d1d1c44128b26d00` |
| 15 | `lemma` | [normalization_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/normalization-integrable--0ad866bf99190619570cadc2.md) | 149 | `result-track:0ad866bf99190619570cadc23a270f58fb2c216c35cec045ac8b2464cf1b590c` |
| 16 | `lemma` | [integral_normalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/integral-normalization--70a99f6e61d4081c7b455b2e.md) | 157 | `result-track:70a99f6e61d4081c7b455b2e08d75c7bd938a42fae762cd52b92f8da74a33f3f` |
| 17 | `lemma` | [normalizationKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/declarations/normalizationkernel-analytic--c613f834e15615d92069b567.md) | 171 | `result-track:c613f834e15615d92069b567377f7b29dbf7ac88d7108fbabac15b1094e416eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
