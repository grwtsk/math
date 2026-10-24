# Verification target: GRWTSK.Analysis.SpecialFunctions.GammaSide.Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "376a2cd6a598862f487e75be59d2e645495db596",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `376a2cd6a598862f487e75be59d2e645495db596`.

Source path: `GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightHalfPlane](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/righthalfplane--ad6806c174ff9a9f3104e560.md) | 35 | `declaration-track:ad6806c174ff9a9f3104e56091b64bcd97fa1cc52d33e652cb2ea7f3e705dd5f` |
| 2 | `lemma` | [isOpen_rightHalfPlane](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/isopen-righthalfplane--1559ec626bdece3c00596cf0.md) | 37 | `result-track:1559ec626bdece3c00596cf0c4630b86169f2ba0b4f0aeec23a88b12d0838ef9` |
| 3 | `lemma` | [Gamma_half_differentiableAt](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/gamma-half-differentiableat--6ed6cb55abad599289d6f7d3.md) | 40 | `result-track:6ed6cb55abad599289d6f7d35ae374436fcaa37527dd80932e4cf9f1a655e8b2` |
| 4 | `lemma` | [Gammaℝ_differentiableOn](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/gamma-differentiableon--ae33280cc993c966e43bf37d.md) | 48 | `result-track:ae33280cc993c966e43bf37d5000d1035323b93fa4df14c363df8495e38ade87` |
| 5 | `lemma` | [Gammaℝ_analyticOnNhd](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/gamma-analyticonnhd--6982c466909564297aba3ea0.md) | 60 | `result-track:6982c466909564297aba3ea0ef583d314f361702ff278c0beab799a4496717da` |
| 6 | `lemma` | [logDeriv_Gammaℝ_differentiableOn](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/logderiv-gamma-differentiableon--c1dcb706bcce8bea972ddf8d.md) | 64 | `result-track:c1dcb706bcce8bea972ddf8d0a334a7bf0cd40c435ed9cf9affef537f0c9fc90` |
| 7 | `theorem` | [logDeriv_Gammaℝ](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/logderiv-gamma--8b06042e5b7ce01083cd0f96.md) | 73 | `result-track:8b06042e5b7ce01083cd0f962a8f9b1741d5cf8d430783515d32c0f65afccb59` |
| 8 | `theorem` | [re_logDeriv_Gammaℝ_half](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/re-logderiv-gamma-half--405b2b6e2c041b4d63223142.md) | 115 | `result-track:405b2b6e2c041b4d632231424e59e21edf2a82a625040449b443f42246c59838` |
| 9 | `theorem` | [gamma_side](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/gamma-side--0b2acefaa5f902067b2dccc8.md) | 129 | `result-track:0b2acefaa5f902067b2dccc8e47b0134acd0104935186f13a9e002683d01bda3` |
| 10 | `theorem` | [mu_continuous](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/mu-continuous--48795cf6e9bdfb5aeb3c4405.md) | 169 | `result-track:48795cf6e9bdfb5aeb3c440568596f85263f77e2acaa67ead663f5c81dd2c0f4` |
| 11 | `theorem` | [mu_le_log](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/declarations/mu-le-log--a3693acccd0cd7edccaef1ee.md) | 173 | `result-track:a3693acccd0cd7edccaef1ee4f2c199b3f122e7e24161cfaedcd66e01de76d63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
