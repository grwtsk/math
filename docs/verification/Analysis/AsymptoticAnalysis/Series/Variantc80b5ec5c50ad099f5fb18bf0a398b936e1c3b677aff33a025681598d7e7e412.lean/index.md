# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Series.Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "338b1b342d1b92e1136c2b0c138dac80b1dfc5a4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `338b1b342d1b92e1136c2b0c138dac80b1dfc5a4`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.hasSum_cos'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/complex-hassum-cos--6bfdabeafdb4744de869f3d0.md) | 39 | `result-track:6bfdabeafdb4744de869f3d0ac88ca5ab67395fcfb21906c49c08d3decaa2c78` |
| 2 | `theorem` | [Complex.hasSum_sin'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/complex-hassum-sin--afe82fac5ab1abd544142d4e.md) | 56 | `result-track:afe82fac5ab1abd544142d4e35f8f618dd7bb6516e35d0e8f0edc59be7c0f12a` |
| 3 | `theorem` | [Complex.hasSum_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/complex-hassum-cos--ddf5b0ad48facd955d121773.md) | 75 | `result-track:ddf5b0ad48facd955d12177398bbb007afbec21befbb439aea9dc1aa2eb57f24` |
| 4 | `theorem` | [Complex.hasSum_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/complex-hassum-sin--c04d1961b9e361dedb185263.md) | 82 | `result-track:c04d1961b9e361dedb18526394823dc65f2d52db78dc5cd0014389e9d52f9667` |
| 5 | `theorem` | [Complex.cos_eq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/complex-cos-eq-tsum--22dcedb69b5aba2dea7b5934.md) | 89 | `result-track:22dcedb69b5aba2dea7b593414c2a997d9ae93afc56e9010a797cbf254377e29` |
| 6 | `theorem` | [Complex.sin_eq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/complex-sin-eq-tsum--004159285c8a1fed6b6c8d5a.md) | 94 | `result-track:004159285c8a1fed6b6c8d5a5abfd5bcf6e42adf5182e386be4fb6bd991f5200` |
| 7 | `theorem` | [Complex.cos_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/complex-cos-eq-tsum--0cc4814c4378834ac7f4f93c.md) | 99 | `result-track:0cc4814c4378834ac7f4f93c9bf0501b006bcd20b695d7d40544ecb93f0fbba4` |
| 8 | `theorem` | [Complex.sin_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/complex-sin-eq-tsum--4c99a50c5484879775ec64ed.md) | 104 | `result-track:4c99a50c5484879775ec64edf1ccac2538a21d32b4c109c98dda3076f275d46a` |
| 9 | `theorem` | [Real.hasSum_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/real-hassum-cos--53bf15d46dd8868260d01678.md) | 110 | `result-track:53bf15d46dd8868260d016786191cdfc3a24e5b7b693cb2baee7a71830506926` |
| 10 | `theorem` | [Real.hasSum_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/real-hassum-sin--9edb29509109b0b32058208a.md) | 116 | `result-track:9edb29509109b0b32058208acd75839becf0400dd6c30a1a240f8f8abf4846ce` |
| 11 | `theorem` | [Real.cos_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/real-cos-eq-tsum--5cd7324fe7fd5805be3facec.md) | 121 | `result-track:5cd7324fe7fd5805be3faceca717e96957a56ab9fb813c801350ad405654ea04` |
| 12 | `theorem` | [Real.sin_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/declarations/real-sin-eq-tsum--79fe5923b6af13ade63f4107.md) | 125 | `result-track:79fe5923b6af13ade63f41071141454be8a259ad71067ee1e67d3b7246ce553e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
