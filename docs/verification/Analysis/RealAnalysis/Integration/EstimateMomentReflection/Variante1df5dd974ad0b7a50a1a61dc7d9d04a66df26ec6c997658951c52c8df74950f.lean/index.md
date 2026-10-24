# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateMomentReflection.Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d9de64c7673561dc8a4f201a1a3c3bcfb21ca43",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d9de64c7673561dc8a4f201a1a3c3bcfb21ca43`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/twomomentprofile--2302df97aed41994050ac887.md) | 47 | `declaration-track:2302df97aed41994050ac887428c48f16153a0a875eb39d368e2a5ee4a2b4444` |
| 2 | `def` | [shiftedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/shiftedmomentintegrand--b9e5421e1e5877753fc9387c.md) | 54 | `declaration-track:b9e5421e1e5877753fc9387c573de3b7b7c52f2a0c0939ad58d7807963f5bbd5` |
| 3 | `def` | [reflectedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/reflectedmomentintegrand--8d23974781e0a476ab4e7fc6.md) | 58 | `declaration-track:8d23974781e0a476ab4e7fc6e3552adbe4852577ce0bdfe1d420ced32014e534` |
| 4 | `theorem` | [weighted_zero_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/weighted-zero-integrable--dbfde147457540888cf47c03.md) | 61 | `result-track:dbfde147457540888cf47c03d2fe72b8a08999f1d80ae214a43b17405f2e8323` |
| 5 | `theorem` | [weighted_first_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/weighted-first-integrable--082f6f22f3d61c9bf1f9f711.md) | 69 | `result-track:082f6f22f3d61c9bf1f9f711a1baa893ba53668335dfa3953dc445e2a2ff6e51` |
| 6 | `theorem` | [shiftedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/shiftedmomentintegrand-integrable--f769a6c16eab478b4ef520ed.md) | 78 | `result-track:f769a6c16eab478b4ef520edcbe2e493cf6ccb7cc99529fdca6d83cb9aea86da` |
| 7 | `theorem` | [reflectedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/reflectedmomentintegrand-integrable--0a1e5e267875183bd06ec6a0.md) | 98 | `result-track:0a1e5e267875183bd06ec6a03f14b18364f4bf406a0e0a0a9e73cb9649c0d742` |
| 8 | `theorem` | [shiftedMoment_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/shiftedmoment-integral-zero--f970a175d52e63b4a4248bff.md) | 119 | `result-track:f970a175d52e63b4a4248bffa31ac0deb0afee29cef0925ce9ce8929b9294a4d` |
| 9 | `theorem` | [reflectedMoment_eq_neg_negativeHalf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/reflectedmoment-eq-neg-negativehalf--66742da9185213154ed73a00.md) | 177 | `result-track:66742da9185213154ed73a005aa4f0574c59d648e938e304a296de6fcc699622` |
| 10 | `theorem` | [two_moment_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/two-moment-reflection--bd6f8cfc58bd71981d5b1595.md) | 198 | `result-track:bd6f8cfc58bd71981d5b1595a097adc76803242987b6e098eb860196caca8835` |
| 11 | `theorem` | [sourceCorrelation_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/sourcecorrelation-twomomentprofile--c3d99071f69ef065f9102482.md) | 217 | `result-track:c3d99071f69ef065f9102482b0c7652e4557a6d56edc9257b5adfe15988b0536` |
| 12 | `theorem` | [derivativeProfile_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/derivativeprofile-twomomentprofile--a014dff8ec45e67e1de84ada.md) | 234 | `result-track:a014dff8ec45e67e1de84adac93fabaf99b187369cbc4e7d9398508625b32c6a` |
| 13 | `theorem` | [sourceCorrelation_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/sourcecorrelation-reflection--530b7f564f3f29b2c881a0f8.md) | 265 | `result-track:530b7f564f3f29b2c881a0f8f302bce402c4bdda092cde23b6b4b3739312db4e` |
| 14 | `theorem` | [derivativeProfile_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/derivativeprofile-reflection--87fb2a0a0c62eea8a8d31ea3.md) | 277 | `result-track:87fb2a0a0c62eea8a8d31ea3b1a54b728a26b7025a27191aa0ce090a251d4035` |
| 15 | `def` | [MomentReflectionCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/momentreflectioncheckpoint--9834021c0a998fe8c743d950.md) | 291 | `declaration-track:9834021c0a998fe8c743d9505cb701a0e409a5afe052bc17a7b4226e113c45ce` |
| 16 | `theorem` | [moment_reflection_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variante1df5dd974ad0b7a50a1a61dc7d9d04a66df26ec6c997658951c52c8df74950f.lean/declarations/moment-reflection-checkpoint--9221e0d53515dd7cb7d1969a.md) | 307 | `result-track:9221e0d53515dd7cb7d1969a9c9b99b3cc6548599a407a215eef7fbce4c07d5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
