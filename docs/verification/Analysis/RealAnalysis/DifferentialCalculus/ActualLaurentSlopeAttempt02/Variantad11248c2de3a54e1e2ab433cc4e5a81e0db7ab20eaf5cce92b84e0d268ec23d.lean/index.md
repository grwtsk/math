# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaurentSlopeAttempt02.Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18172750a035c926aefc2b5674d5ea948170b0ac",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18172750a035c926aefc2b5674d5ea948170b0ac`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularNegativeLogDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/declarations/regularnegativelogderivative--aa63c95496ee9a032951be46.md) | 11 | `declaration-track:aa63c95496ee9a032951be46ff82803d268a0aa208e43a657d6ee904bc1c494a` |
| 2 | `theorem` | [actual_regular_zeta_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/declarations/actual-regular-zeta-derivative--a7fb549ab46693a28ea51ace.md) | 14 | `result-track:a7fb549ab46693a28ea51ace60d07a5f24bf2554917dec2b9bc266f244bca9f2` |
| 3 | `theorem` | [actual_regular_zeta_second_derivative_at_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/declarations/actual-regular-zeta-second-derivative-at-one--201887dd9d32bc07676431df.md) | 20 | `result-track:201887dd9d32bc07676431df02efb6d8dc02f7a749dd63ff80a8dd6ca25c1c5e` |
| 4 | `theorem` | [actual_regular_negative_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/declarations/actual-regular-negative-value--fc238393ed8e6b6e81c67655.md) | 33 | `result-track:fc238393ed8e6b6e81c67655a918139873f5551a255043a234678ff4d30107c2` |
| 5 | `theorem` | [actual_regular_negative_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/declarations/actual-regular-negative-derivative--640982b4afb5fe6fb8ca7720.md) | 37 | `result-track:640982b4afb5fe6fb8ca77203e5b41cca23775206d7f12778418ec4f9393a7ad` |
| 6 | `theorem` | [actual_regular_negative_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/declarations/actual-regular-negative-slope--d035539d720bdd653c62ad54.md) | 47 | `result-track:d035539d720bdd653c62ad54b0d11df097fc1d52655ac5113e050dfe9d86fc5b` |
| 7 | `theorem` | [actual_negative_log_regularization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/declarations/actual-negative-log-regularization--ea96062884fe9af80b27223c.md) | 55 | `result-track:ea96062884fe9af80b27223c82a9e95bc37926c58a595d18f06ff25eb5e5080c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
