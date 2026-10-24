# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PiFacts.Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfc6ff9dc2649b5928f3bbed3e2fbcc702bc3b71",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfc6ff9dc2649b5928f3bbed3e2fbcc702bc3b71`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.Chebyshev` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PiX_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/declarations/pix-abs-le--66141f7d65f0097691c1bb0d.md) | 29 | `result-track:66141f7d65f0097691c1bb0dee8f1fc0a16f72243b04d45e84a1d7e1a8474ce1` |
| 2 | `theorem` | [PiX_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/declarations/pix-bound--73cd678ddf82f3be11c0aa01.md) | 131 | `result-track:73cd678ddf82f3be11c0aa015764683f3c8d301b5565053863ea8fb808d874b1` |
| 3 | `theorem` | [PiX_continuous](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/declarations/pix-continuous--e2200d58bad56053d23bb128.md) | 136 | `result-track:e2200d58bad56053d23bb128a0bb1089cb65dc9b04cafae4eda34eb54a1d7d16` |
| 4 | `theorem` | [PX_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/declarations/px-abs-le--44a3a16f0c5444fa776967c9.md) | 172 | `result-track:44a3a16f0c5444fa776967c95e72df6f1d25ea1d7c13a7829fbf70d944b07992` |
| 5 | `theorem` | [B_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/declarations/b-sq-le--06ac62c3876b7da4a4a2f7e9.md) | 190 | `result-track:06ac62c3876b7da4a4a2f7e9c224e821cc503b4aa0927a3f3d990a8afc7e9b70` |
| 6 | `theorem` | [B_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/declarations/b-nonneg--7b3607a9dd3f7497f167a6d4.md) | 198 | `result-track:7b3607a9dd3f7497f167a6d4dff55f37571a4df88c48dd1dada18b191584c57d` |
| 7 | `theorem` | [nuX_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/declarations/nux-abs-le--9c459d41e02ae08a1729c027.md) | 211 | `result-track:9c459d41e02ae08a1729c027fa48b7897d31c5a136d18876fa4d3214a6becb31` |
| 8 | `theorem` | [nuX_abs_le_window](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/declarations/nux-abs-le-window--428844940a8d98b7775ec592.md) | 409 | `result-track:428844940a8d98b7775ec5929b79ac19ebe3a89a93d60ed9e920c927d2779ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
