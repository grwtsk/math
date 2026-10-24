# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f10da5926b69b116079f95a37902c3383975a038",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f10da5926b69b116079f95a37902c3383975a038`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiKrylovWhitening` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiWhitenedProjection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedprojection--e8d3cb29128a7aae62db86f3.md) | 32 | `declaration-track:e8d3cb29128a7aae62db86f38d38ccdbd4557cdba90b4fce8532e7ca0e0df9b1` |
| 2 | `theorem` | [thetaPhiWhitenedProjection_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedprojection-transpose--913933ca3558f87e4164608b.md) | 39 | `result-track:913933ca3558f87e4164608bb367d33852d211143af97496cddde0b4e4e0478d` |
| 3 | `theorem` | [thetaPhiWhitenedProjection_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedprojection-sq--99fe1f064e6180c7448eb7a1.md) | 48 | `result-track:99fe1f064e6180c7448eb7a12cf132b2cdcb72f040e2675e907038df37baa547` |
| 4 | `theorem` | [thetaPhiWhitenedParityCompression_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedparitycompression-transpose--ef287c7df52c97b7f330e23d.md) | 72 | `result-track:ef287c7df52c97b7f330e23d46ccd502f7199ea4cf77ff0180595a8691ecdfae` |
| 5 | `theorem` | [thetaPhiWhitenedParityCompression_phaseDefect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedparitycompression-phasedefect--cbb9e273d9beb9135d45e585.md) | 85 | `result-track:cbb9e273d9beb9135d45e585281bda4c90cccd3f1a5a82f24e408cdae5efa064` |
| 6 | `def` | [thetaPhiWhitenedPhaseExcursion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedphaseexcursion--29960431444c2f9d3266312a.md) | 135 | `declaration-track:29960431444c2f9d3266312acfdb99581891032fa69e977de77ec62e356561cb` |
| 7 | `theorem` | [thetaPhiWhitenedComplementProjection_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedcomplementprojection-transpose--566657557de064900c76bd42.md) | 144 | `result-track:566657557de064900c76bd423aa0fad809fa60274ba6c011ab9fca864d2aae9d` |
| 8 | `theorem` | [thetaPhiWhitenedComplementProjection_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedcomplementprojection-sq--fa292532740534c6cb4ceacc.md) | 154 | `result-track:fa292532740534c6cb4ceacc39f439308599c2cadaae7ce7ba5c4c5073374e4f` |
| 9 | `theorem` | [thetaPhiWhitenedParityCompression_phaseDefect_eq_gram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedparitycompression-phasedefect-eq-gram--37e2f668789814763e269b7b.md) | 176 | `result-track:37e2f668789814763e269b7b25c66a659f79688d39b5478abd40914ae8ff6faf` |
| 10 | `theorem` | [thetaPhiWhitenedParityCompression_phaseDefect_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedparitycompression-phasedefect-possemidef--b894f215ce33e496b2665dd6.md) | 210 | `result-track:b894f215ce33e496b2665dd60df21e33f3eda669638ebcfa6713d396877697c5` |
| 11 | `theorem` | [thetaPhiWhitenedParityCompression_phaseDefect_eq_zero_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedparitycompression-phasedefect-eq-zero-iff--caa0ab2cdf30f8621c019507.md) | 223 | `result-track:caa0ab2cdf30f8621c019507d8803e887681cb79e1685851e11da3175a2aaa53` |
| 12 | `def` | [ThetaPhiWhitenedPhaseInvariant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedphaseinvariant--8a5771b3579a34de5875acba.md) | 250 | `declaration-track:8a5771b3579a34de5875acba41f86ccf7a391d8bb4037baf8a178d44b16013f1` |
| 13 | `theorem` | [thetaPhiWhitenedPhaseExcursion_eq_zero_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedphaseexcursion-eq-zero-iff--1feee4a7379bb2c0542102ec.md) | 260 | `result-track:1feee4a7379bb2c0542102ecbc67c543b2602f052675ed8f037502470039d763` |
| 14 | `theorem` | [thetaPhiWhitenedPhaseInvariant_iff_sq_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedphaseinvariant-iff-sq-one--7df0ddb10c03d7b2b0fcffd9.md) | 268 | `result-track:7df0ddb10c03d7b2b0fcffd90bb44cd5c9f546975fadad2ce89c41851c02f98f` |
| 15 | `theorem` | [thetaPhiWhitenedParityCompression_sq_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/declarations/thetaphiwhitenedparitycompression-sq-le-one--f216c24323eb0efd363c5e83.md) | 285 | `result-track:f216c24323eb0efd363c5e8304aa06d04feb78f8ee1f41cd29773d22500fe95b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
