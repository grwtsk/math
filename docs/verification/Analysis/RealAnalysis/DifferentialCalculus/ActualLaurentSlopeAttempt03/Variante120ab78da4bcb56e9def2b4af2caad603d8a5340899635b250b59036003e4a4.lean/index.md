# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaurentSlopeAttempt03.Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd63d6e3224487b7dedb6b393a6d754f73d23e35",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd63d6e3224487b7dedb6b393a6d754f73d23e35`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean.json)

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
| 1 | `def` | [regularNegativeLogDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean/declarations/regularnegativelogderivative--d2ef851e5b126acf6fa04baf.md) | 11 | `declaration-track:d2ef851e5b126acf6fa04baf5d9ee5c904cb7c0ff70fb820b8b08abb0b385365` |
| 2 | `theorem` | [actual_regular_zeta_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean/declarations/actual-regular-zeta-derivative--38d0b9da2bb3067c6d962433.md) | 14 | `result-track:38d0b9da2bb3067c6d9624334114167b0d539c42a3681415b5773a6ee6e7cf23` |
| 3 | `theorem` | [actual_regular_zeta_second_derivative_at_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean/declarations/actual-regular-zeta-second-derivative-at-one--9a84e6b465fc81befa0426d5.md) | 20 | `result-track:9a84e6b465fc81befa0426d5e984ae133cfaebb62dca27d5d1cd1397604dd53f` |
| 4 | `theorem` | [actual_regular_negative_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean/declarations/actual-regular-negative-value--3bc7c7c74c44ea3b7674cc7b.md) | 33 | `result-track:3bc7c7c74c44ea3b7674cc7bc7dd73a7d9a1557252296c2320a5998057be697c` |
| 5 | `theorem` | [actual_regular_negative_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean/declarations/actual-regular-negative-derivative--b8bc7d6cb5e64cc20c71cda4.md) | 37 | `result-track:b8bc7d6cb5e64cc20c71cda4a44569a623dead4fc1e49a415c061418ed30689b` |
| 6 | `theorem` | [actual_regular_negative_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean/declarations/actual-regular-negative-slope--9b4e4d6c8c77836e8447a25e.md) | 44 | `result-track:9b4e4d6c8c77836e8447a25eb114218e0ee623ddb2fc5e4e23e3acc57d429f18` |
| 7 | `theorem` | [actual_negative_log_regularization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt03/Variante120ab78da4bcb56e9def2b4af2caad603d8a5340899635b250b59036003e4a4.lean/declarations/actual-negative-log-regularization--900b549c532248161f67540d.md) | 52 | `result-track:900b549c532248161f67540d094dd32fc6408e32b9fbc5bedd30443ef11200c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
