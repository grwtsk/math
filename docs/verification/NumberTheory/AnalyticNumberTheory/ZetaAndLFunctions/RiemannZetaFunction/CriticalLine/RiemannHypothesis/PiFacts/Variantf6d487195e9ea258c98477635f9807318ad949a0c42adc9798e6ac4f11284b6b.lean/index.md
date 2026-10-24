# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PiFacts.Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4e4c9320e85216a41ab3e9bf0ef0c37956f31eb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4e4c9320e85216a41ab3e9bf0ef0c37956f31eb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.Chebyshev` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PiX_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/declarations/pix-abs-le--aa63bda053ecb1240a9bd270.md) | 37 | `result-track:aa63bda053ecb1240a9bd2700550d4760ef8f3d442b74464aac63e623dff8960` |
| 2 | `theorem` | [PiX_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/declarations/pix-bound--850efc1cc3e4a67e8811f9dd.md) | 139 | `result-track:850efc1cc3e4a67e8811f9dd3230722b62c6dbd07f0f747848852a48bb0514e7` |
| 3 | `theorem` | [PiX_continuous](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/declarations/pix-continuous--aa085ca4c65f3afd42b5e5bd.md) | 144 | `result-track:aa085ca4c65f3afd42b5e5bd25224efff4cd08ee97b802b2487d8a01db266cd1` |
| 4 | `theorem` | [PX_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/declarations/px-abs-le--326ab6dd1e65595966d6405a.md) | 180 | `result-track:326ab6dd1e65595966d6405a6c5903864cd9a318ccd0d40300e4323c03d6cd7b` |
| 5 | `theorem` | [B_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/declarations/b-sq-le--46ee9bd2f0d5a32912aceb37.md) | 198 | `result-track:46ee9bd2f0d5a32912aceb3733fcec6d72155411a8ca68c729caa63db0f97357` |
| 6 | `theorem` | [B_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/declarations/b-nonneg--2d1d5cc485c45422ca5367d5.md) | 206 | `result-track:2d1d5cc485c45422ca5367d5bed1ace48d1eac6b29f3ab077ae9efa168484089` |
| 7 | `theorem` | [nuX_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/declarations/nux-abs-le--caf6f6bedc0266abd3d14e4d.md) | 219 | `result-track:caf6f6bedc0266abd3d14e4d84aabcd1fd9d9ba2c6e3e4e1c9bdfda575e6c8fb` |
| 8 | `theorem` | [nuX_abs_le_window](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantf6d487195e9ea258c98477635f9807318ad949a0c42adc9798e6ac4f11284b6b.lean/declarations/nux-abs-le-window--697d8f0005e2d46021d1ef44.md) | 417 | `result-track:697d8f0005e2d46021d1ef44893c306c1de43b5120bcd69152a40526235f2850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
