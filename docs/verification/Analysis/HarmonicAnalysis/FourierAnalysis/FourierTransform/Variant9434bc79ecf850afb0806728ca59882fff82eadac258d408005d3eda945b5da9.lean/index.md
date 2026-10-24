# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierTransform.Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4889c4d03294dd51943ba8e4f9d437045364e808",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4889c4d03294dd51943ba8e4f9d437045364e808`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.AddChar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Circle` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral--f49893ad48cc72d70bf33c12.md) | 85 | `declaration-track:f49893ad48cc72d70bf33c12172c1158ac0d26d7f061e7fc8f1101ccb8c5aff0` |
| 2 | `theorem` | [fourierIntegral_const_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-const-smul--60b1b098c745476348bf1867.md) | 89 | `result-track:60b1b098c745476348bf186735f6d799690d321863fc271a404969e9a91ac14c` |
| 3 | `theorem` | [norm_fourierIntegral_le_integral_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/norm-fourierintegral-le-integral-norm--3cfa9836e766e10adf1c8839.md) | 96 | `result-track:3cfa9836e766e10adf1c88398bb3d26bc66dc986fe712f7b1070f613df9792a6` |
| 4 | `theorem` | [fourierIntegral_comp_add_right](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-comp-add-right--1e947d05e57cdae0b3bbd330.md) | 103 | `result-track:1e947d05e57cdae0b3bbd3301e858bdcf5b6e64d3d89f487fc84b208d835d566` |
| 5 | `theorem` | [fourierIntegral_convergent_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-convergent-iff--4a34c44843aba3bf515a2bf0.md) | 130 | `result-track:4a34c44843aba3bf515a2bf0c4e2cebac3fd293ef75fad3dd888db76b20abfb5` |
| 6 | `theorem` | [fourierIntegral_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-add--6ee728d1bf5e5a61112f6b71.md) | 146 | `result-track:6ee728d1bf5e5a61112f6b716dcc6a57b92ba78bdd9b0716336b00ea8174cfd7` |
| 7 | `theorem` | [fourierIntegral_continuous](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-continuous--f503231b9180bf8cb82df3b6.md) | 157 | `result-track:f503231b9180bf8cb82df3b68a33c0cd77db20a93896f781d98fff25d046b026` |
| 8 | `theorem` | [integral_bilin_fourierIntegral_eq_flip](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/integral-bilin-fourierintegral-eq-flip--8046315adab71f6a58b4b6ff.md) | 180 | `result-track:8046315adab71f6a58b4b6ff082f333da92a953396f58a8f803f976bb8cc4067` |
| 9 | `theorem` | [integral_fourierIntegral_smul_eq_flip](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/integral-fourierintegral-smul-eq-flip--ae44985241b2e0965d019b12.md) | 222 | `result-track:ae44985241b2e0965d019b12467c6f0010da6edc60e44ccca507e4c195c0348d` |
| 10 | `lemma` | [fourierIntegral_probChar](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-probchar--7a51878a162587d25875ffae.md) | 231 | `result-track:7a51878a162587d25875ffae77baa982643aeb5e88c5ad6a6eb5ac0498560856` |
| 11 | `theorem` | [fourierIntegral_continuousLinearMap_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-continuouslinearmap-apply--2be55ad6ab91cd6408b28cb1.md) | 250 | `result-track:2be55ad6ab91cd6408b28cb1b6244672f4a8f5875bddbc885b40c586f4660927` |
| 12 | `theorem` | [fourierIntegral_continuousMultilinearMap_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-continuousmultilinearmap-apply--1eeb334cc3f3919b248d4b13.md) | 259 | `result-track:1eeb334cc3f3919b248d4b13a88f8c57500cb26f402578ed812a4f6666038aee` |
| 13 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral--a6c42b74f3e198f1f122b6f6.md) | 284 | `declaration-track:a6c42b74f3e198f1f122b6f675c357e2409f4229af1b70839f1df8c88a3e9322` |
| 14 | `theorem` | [fourierIntegral_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-def--09a75c4b75734f716434a263.md) | 287 | `result-track:09a75c4b75734f716434a26374023f045f3c01f778202f126e40a111c4fd7692` |
| 15 | `theorem` | [fourierIntegral_const_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-const-smul--52f4120796fe2cb92a04d802.md) | 291 | `result-track:52f4120796fe2cb92a04d802ff73e833634f2946fd5691949c32c8f55bc91e5c` |
| 16 | `theorem` | [norm_fourierIntegral_le_integral_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/norm-fourierintegral-le-integral-norm--e2d598ab817aeff80fc3c262.md) | 296 | `result-track:e2d598ab817aeff80fc3c26213df6608ce682199fb3f3ee00e657a0bd4bab929` |
| 17 | `theorem` | [fourierIntegral_comp_add_right](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-comp-add-right--4aa1fce57e0935360c0ea0ab.md) | 302 | `result-track:4aa1fce57e0935360c0ea0ab6c823a358c5119f206caeef0acc14386473365e3` |
| 18 | `theorem` | [vector_fourierIntegral_eq_integral_exp_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/vector-fourierintegral-eq-integral-exp-smul--c8e5ff37d29a661fb8319deb.md) | 319 | `result-track:c8e5ff37d29a661fb8319debdf2725cbcd89dbbbf4140098621b57ddb4d325d9` |
| 19 | `theorem` | [fourierIntegral_convergent_iff'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-convergent-iff--b436f7ca92c08187dd7e07e8.md) | 331 | `result-track:b436f7ca92c08187dd7e07e83cbc4065e400f6e5780cbbdb35cf17ea3cbdf74f` |
| 20 | `theorem` | [fourierIntegral_continuousLinearMap_apply'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-continuouslinearmap-apply--fbbc0334ae80caf007888c79.md) | 347 | `result-track:fbbc0334ae80caf007888c791986b8b3ff153eb914ec01386633aa21b6e79397` |
| 21 | `theorem` | [fourierIntegral_continuousMultilinearMap_apply'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-continuousmultilinearmap-apply--56b1d77324a6db5dffefdb1f.md) | 353 | `result-track:56b1d77324a6db5dffefdb1f64a03049edcfe2dc9612b932b61c72435859aa5a` |
| 22 | `theorem` | [fourierIntegral_convergent_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-convergent-iff--e327db722b0197795738506e.md) | 368 | `result-track:e327db722b0197795738506e51592102bd44046ea83b53155874be33446b5a38` |
| 23 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral--edccac70164264a9953c194f.md) | 377 | `declaration-track:edccac70164264a9953c194fae170b962d5af86fbca58d6ae0d604981e13036e` |
| 24 | `def` | [fourierIntegralInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegralinv--0e650b9b19ab757bc85e04c8.md) | 383 | `declaration-track:0e650b9b19ab757bc85e04c8a8f49d446574243d6c55ad77c5abd0691553413d` |
| 25 | `lemma` | [fourierIntegral_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-eq--e9ccbb79f84dfd2e72a0fea6.md) | 389 | `result-track:e9ccbb79f84dfd2e72a0fea62118af46753283f8e51f04d6b9c627425485df21` |
| 26 | `lemma` | [fourierIntegral_eq'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-eq--a60da25e6946eb2a3495eb67.md) | 392 | `result-track:a60da25e6946eb2a3495eb6784e50056a89d72ce9b1f49b1b033b2cea6b19843` |
| 27 | `lemma` | [fourierIntegralInv_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegralinv-eq--8c36365b8ff2c7aa264a5c9b.md) | 396 | `result-track:8c36365b8ff2c7aa264a5c9b819ba4de704dac53bc2a820f5b8fe04263a6cc27` |
| 28 | `lemma` | [fourierIntegralInv_eq'](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegralinv-eq--15029c3bdae70bf9f0c0df5e.md) | 400 | `result-track:15029c3bdae70bf9f0c0df5e0e9251b9a0facff0728bf0f5289ca5d5db535288` |
| 29 | `lemma` | [fourierIntegral_comp_linearIsometry](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-comp-linearisometry--cbebb8de70ea0678a793de1b.md) | 404 | `result-track:cbebb8de70ea0678a793de1b434ff44b0978e94a99d913f1015a346457eec664` |
| 30 | `lemma` | [fourierIntegralInv_eq_fourierIntegral_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegralinv-eq-fourierintegral-neg--1025e5262f587a976eb3f180.md) | 409 | `result-track:1025e5262f587a976eb3f180321cc87a6482ca2f073697c0faa5cfa2823db8c8` |
| 31 | `lemma` | [fourierIntegralInv_eq_fourierIntegral_comp_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegralinv-eq-fourierintegral-comp-neg--9cdc2f1df1a75e6d6059720a.md) | 413 | `result-track:9cdc2f1df1a75e6d6059720ad6e84932771d243eed5f6d0158dbb99131259d96` |
| 32 | `lemma` | [fourierIntegralInv_comm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegralinv-comm--58761ed6a3970886f25ef10f.md) | 420 | `result-track:58761ed6a3970886f25ef10f274cf4ab37e31d1a8512cdc26fc330095e5e69e5` |
| 33 | `lemma` | [fourierIntegralInv_comp_linearIsometry](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegralinv-comp-linearisometry--69d44c4168dffbc232329f76.md) | 425 | `result-track:69d44c4168dffbc232329f7688cc9dacc4ae6fe81c94384b0b781363e643e001` |
| 34 | `theorem` | [fourierIntegral_real_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-real-eq--0c0d0668a0f68a59fffa8a25.md) | 429 | `result-track:0c0d0668a0f68a59fffa8a250906a95a06a1f8d62eb670be8bce7c2f8a1ac1c4` |
| 35 | `theorem` | [fourierIntegral_real_eq_integral_exp_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-real-eq-integral-exp-smul--67528e4d18a7cc6d27fa68a3.md) | 434 | `result-track:67528e4d18a7cc6d27fa68a39daac94636e537e369e1e901754f047b1a420fd9` |
| 36 | `theorem` | [fourierIntegral_continuousLinearMap_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-continuouslinearmap-apply--b5fb85f1a11d52612b337aeb.md) | 439 | `result-track:b5fb85f1a11d52612b337aeb297d8ece730c64458d3a587004f529b2d26dc50d` |
| 37 | `theorem` | [fourierIntegral_continuousMultilinearMap_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/declarations/fourierintegral-continuousmultilinearmap-apply--d6ee652fb41030c93f534c33.md) | 445 | `result-track:d6ee652fb41030c93f534c3346e99b26ab1edb2c3bbf071e000fd03f2fb79e6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
