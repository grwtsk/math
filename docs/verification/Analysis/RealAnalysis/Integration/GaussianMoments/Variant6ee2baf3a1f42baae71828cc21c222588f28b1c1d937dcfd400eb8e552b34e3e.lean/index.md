# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GaussianMoments.Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28d132dbb8f8368d2ef9382d5c89e407e72a016b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28d132dbb8f8368d2ef9382d5c89e407e72a016b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_id](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/declarations/integrable-id--1013db6038feacf80cf894f5.md) | 19 | `result-track:1013db6038feacf80cf894f581bbfe7e89257b5bfebd609e3c2150862e100ac3` |
| 2 | `theorem` | [integrable_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/declarations/integrable-square--29690e0e43046ab88abd9865.md) | 24 | `result-track:29690e0e43046ab88abd9865c6bf29d2e890ed2097480f912c39d26093804c17` |
| 3 | `theorem` | [integral_id_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/declarations/integral-id-zero--d46bab345309a66bb65d4cc5.md) | 28 | `result-track:d46bab345309a66bb65d4cc58aaa5652e20d993d2242f5b292a17891818b7cb9` |
| 4 | `theorem` | [integral_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/declarations/integral-square--be38d6ba45d75bf5891d17df.md) | 32 | `result-track:be38d6ba45d75bf5891d17df553d29928f9bbca05f815e72fc5a2c609e65f043` |
| 5 | `theorem` | [integrable_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/declarations/integrable-abs--2624e9e089a75d332189dd5c.md) | 38 | `result-track:2624e9e089a75d332189dd5cc0795b7cb356f65de40b687f3be9ceeb4ced8b18` |
| 6 | `theorem` | [integral_abs_le_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GaussianMoments/Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e.lean/declarations/integral-abs-le-sqrt--01fd51f75caf991917f39400.md) | 42 | `result-track:01fd51f75caf991917f39400ece089518a70bec84e6e29b5ce7e4ca5aa363f5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
