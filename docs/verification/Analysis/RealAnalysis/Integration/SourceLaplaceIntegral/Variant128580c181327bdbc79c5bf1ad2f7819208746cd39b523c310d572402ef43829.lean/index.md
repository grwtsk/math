# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceLaplaceIntegral.Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c3a5c6cfb6635c404c834da5a0bd410885924e2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c3a5c6cfb6635c404c834da5a0bd410885924e2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceReduction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polynomialKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/polynomialkernel--70ccb82221761dc99fab3189.md) | 7 | `declaration-track:70ccb82221761dc99fab318904b8b8b7b87f8e2c964e1cb08090d2da9e422441` |
| 2 | `def` | [sourceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/sourcekernel--c0b41df2d2a77187bfbe74c7.md) | 9 | `declaration-track:c0b41df2d2a77187bfbe74c7f2aff88775bca57c33510a13cca871b0112aac8c` |
| 3 | `def` | [weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/weightedpolynomial--aeb0639b20e180056dfd3174.md) | 20 | `declaration-track:aeb0639b20e180056dfd3174a076a381a075438714b86d861dd0c6cd91d3de3a` |
| 4 | `lemma` | [weightedPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/weightedpolynomial-eq-sum--66da5925ad90e4adc8f4da25.md) | 23 | `result-track:66da5925ad90e4adc8f4da2525d7653e7138fdeb51142237e9becb3ba13c4075` |
| 5 | `lemma` | [weightedPolynomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/weightedpolynomial-integrable--176221a04e4af3e3ec9f0923.md) | 33 | `result-track:176221a04e4af3e3ec9f0923f8336721e6eb9fdbaca5e33cb1e624766a4a9441` |
| 6 | `lemma` | [integral_weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/integral-weightedpolynomial--fcfe35ae7f23f6943af96c9b.md) | 39 | `result-track:fcfe35ae7f23f6943af96c9b729af5899e629f7f7426aa6d05c9711766e20c49` |
| 7 | `lemma` | [weighted_expandedSummand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/weighted-expandedsummand-eq--9f95d34f1e12895635cc3fc8.md) | 45 | `result-track:9f95d34f1e12895635cc3fc8718aa81ab551ca898ce246ff5f9b73401846e5ef` |
| 8 | `lemma` | [expandedSummand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/expandedsummand-integrable--e4a340877488243b870f2147.md) | 64 | `result-track:e4a340877488243b870f214732e0f91f80c6febd9744215527c6bbd7446e3f6f` |
| 9 | `lemma` | [integral_expandedSummand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/integral-expandedsummand--0ecf5290ca11e1883007154f.md) | 72 | `result-track:0ecf5290ca11e1883007154f68c7293defaef6f792b968c14652a4b0615e559c` |
| 10 | `lemma` | [source_strip_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/source-strip-integral--9805a874286e628a4cd9842b.md) | 89 | `result-track:9805a874286e628a4cd9842bdfd694fbfe51a6e3e43d81ef038b2f1efffda07d` |
| 11 | `lemma` | [occurrence_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/occurrence-integral--761e2eddf566a4795f8f12bb.md) | 103 | `result-track:761e2eddf566a4795f8f12bb15a2c8c04ce2ca2be67f55c9a7df2a8194759cac` |
| 12 | `lemma` | [actual_occurrence_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/actual-occurrence-integral--ec2e1d10446fdfdabd68c646.md) | 110 | `result-track:ec2e1d10446fdfdabd68c6468c396f36574b7cd3e7ecd4cb7d0ac6681ee4744d` |
| 13 | `def` | [normalizationKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/normalizationkernel--f09eda1415101806b558d5fc.md) | 127 | `declaration-track:f09eda1415101806b558d5fc87f4c6623668b0f83a640104c2b46acfb667324b` |
| 14 | `lemma` | [weighted_normalization_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/weighted-normalization-eq--93433c8e73b586238a1a1ef7.md) | 132 | `result-track:93433c8e73b586238a1a1ef732b5b5a7570603a56dc700518624925dd79094ad` |
| 15 | `lemma` | [normalization_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/normalization-integrable--fe11404768332eac36e25a70.md) | 141 | `result-track:fe11404768332eac36e25a709cea2c934ea9804202873841c458f3d19ae4f8ae` |
| 16 | `lemma` | [integral_normalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/integral-normalization--c1fcc058240c8b0259b0d408.md) | 149 | `result-track:c1fcc058240c8b0259b0d408b526f5a44c3c0be57a92b8e9b3d76b0c5a614dc8` |
| 17 | `lemma` | [normalizationKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/declarations/normalizationkernel-analytic--1e304ab9e9026878d38687fe.md) | 163 | `result-track:1e304ab9e9026878d38687fe60dc49158ad542ed060521e2973e5d9e29c39cc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
