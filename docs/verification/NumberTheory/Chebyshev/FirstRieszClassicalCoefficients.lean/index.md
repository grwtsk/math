# Verification target: GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalCoefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af7608d766eaff879db4a588f04830973503c9de",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af7608d766eaff879db4a588f04830973503c9de`.

Source path: `GRWTSK/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [logDeriv_riemannZeta_zero](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean/declarations/logderiv-riemannzeta-zero--47a213ebcc170927caf238fe.md) | 14 | `result-track:47a213ebcc170927caf238fee6850d88b68765a331e855ab78bba5a4c4600e43` |
| 2 | `theorem` | [continuousAt_neg_logDeriv_zero](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean/declarations/continuousat-neg-logderiv-zero--eafa822fbdb5f11382b085bc.md) | 19 | `result-track:eafa822fbdb5f11382b085bc314eae96b78560f3052a9ac29a3b52d2cafd6c18` |
| 3 | `theorem` | [classical_linear_coefficient](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean/declarations/classical-linear-coefficient--02419ff81f70dfdd9abc1a22.md) | 25 | `result-track:02419ff81f70dfdd9abc1a2213655328e7464e27d64962c40a2fbc2dbdcc5f92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
