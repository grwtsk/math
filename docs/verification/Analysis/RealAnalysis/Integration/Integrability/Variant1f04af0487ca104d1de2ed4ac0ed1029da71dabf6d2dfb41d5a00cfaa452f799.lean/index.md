# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integrability.Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f825c3ff01652c0ce67088b67adba3860b784f40",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f825c3ff01652c0ce67088b67adba3860b784f40`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Generalize` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasIntegralIndicatorConst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/declarations/hasintegralindicatorconst--ad119f2846afb862df6adc00.md) | 36 | `result-track:ad119f2846afb862df6adc006b4dd211ef833f858c6f9585c22cd13191199c14` |
| 2 | `theorem` | [HasIntegral.of_aeEq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/declarations/hasintegral-of-aeeq-zero--b5fa607881f454ed67e267de.md) | 101 | `result-track:b5fa607881f454ed67e267dead10759f59f40873b7a36f97b70b6fd87313aff3` |
| 3 | `theorem` | [HasIntegral.congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/declarations/hasintegral-congr-ae--951baefd61e39fcffb3ea887.md) | 156 | `result-track:951baefd61e39fcffb3ea88745e3e93dd84580a4ba8dee7c822aadab9222efbf` |
| 4 | `theorem` | [hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/declarations/hasboxintegral--e9f83fd36279b64b755110bb.md) | 170 | `result-track:e9f83fd36279b64b755110bb225da0f67ec038c47d1153e3c740a3c384686dc5` |
| 5 | `theorem` | [box_integral_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/declarations/box-integral-eq-integral--11ce876787792dfff5a0ead3.md) | 184 | `result-track:11ce876787792dfff5a0ead3c4032562e610884a2358af6d3353089dc8dfe01f` |
| 6 | `theorem` | [IntegrableOn.hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/declarations/integrableon-hasboxintegral--39ebe6ac0c706c084721fd0c.md) | 195 | `result-track:39ebe6ac0c706c084721fd0ce9fe2b120416bec2d44e7896799079815cbec99a` |
| 7 | `theorem` | [ContinuousOn.hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/declarations/continuouson-hasboxintegral--4221972913e94c061b8ac1ad.md) | 302 | `result-track:4221972913e94c061b8ac1adcd8798d70d844e8e2cfa4df2ce8957a2c59c18a3` |
| 8 | `theorem` | [AEContinuous.hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variant1f04af0487ca104d1de2ed4ac0ed1029da71dabf6d2dfb41d5a00cfaa452f799.lean/declarations/aecontinuous-hasboxintegral--564ad104748cee16d6b6e2f9.md) | 314 | `result-track:564ad104748cee16d6b6e2f957718a346d681f445e50d14bd0062745eb8fa4b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
