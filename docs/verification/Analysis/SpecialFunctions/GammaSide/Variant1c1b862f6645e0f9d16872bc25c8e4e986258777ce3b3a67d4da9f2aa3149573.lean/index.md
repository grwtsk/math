# Verification target: GRWTSK.Analysis.SpecialFunctions.GammaSide.Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de2771c636a6e2f4353dc63ba44fc32c62b63779",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de2771c636a6e2f4353dc63ba44fc32c62b63779`.

Source path: `GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightHalfPlane](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/righthalfplane--89fbc1c7358098f99c3e0590.md) | 27 | `declaration-track:89fbc1c7358098f99c3e05900b40f8190c7eb95e6baba186037c87367336f879` |
| 2 | `lemma` | [isOpen_rightHalfPlane](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/isopen-righthalfplane--854ef8e38fc9c1fa57f0511c.md) | 29 | `result-track:854ef8e38fc9c1fa57f0511ccaed82b41ed6fd4d6439d31e989636161b9a472d` |
| 3 | `lemma` | [Gamma_half_differentiableAt](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/gamma-half-differentiableat--b492e6fbb242ddca0796e060.md) | 32 | `result-track:b492e6fbb242ddca0796e060b589296928f0962bf6628d4b5ec982be0ff15061` |
| 4 | `lemma` | [Gammaℝ_differentiableOn](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/gamma-differentiableon--04ee97f98ed621178f78e563.md) | 40 | `result-track:04ee97f98ed621178f78e56357f5aca04751cf492ef2761f3fa330225eb9338c` |
| 5 | `lemma` | [Gammaℝ_analyticOnNhd](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/gamma-analyticonnhd--6d280ebf7a0b5b8fdc2f08e0.md) | 52 | `result-track:6d280ebf7a0b5b8fdc2f08e03148a06728a082a6ba1d5db272e0e26377c01b94` |
| 6 | `lemma` | [logDeriv_Gammaℝ_differentiableOn](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/logderiv-gamma-differentiableon--3bf115858fbf8df953dde190.md) | 56 | `result-track:3bf115858fbf8df953dde190552f504326d7368308c7e413ee87e2d938a90e91` |
| 7 | `theorem` | [logDeriv_Gammaℝ](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/logderiv-gamma--174c9bc55e4491b9477127f6.md) | 65 | `result-track:174c9bc55e4491b9477127f66f8ed552f455deccf63001a9dfb800d2fbe05a71` |
| 8 | `theorem` | [re_logDeriv_Gammaℝ_half](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/re-logderiv-gamma-half--cd48accb6a60d3842ba0adcc.md) | 107 | `result-track:cd48accb6a60d3842ba0adcc9b836ba4383746e891abc1fa0417a16eb2740404` |
| 9 | `theorem` | [gamma_side](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/gamma-side--fead3eacef0216ca7564da14.md) | 121 | `result-track:fead3eacef0216ca7564da1407c1bd4267373e7277ca0f646cf1ec5526743300` |
| 10 | `theorem` | [mu_continuous](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/mu-continuous--aa02c4278995440f939b0d7c.md) | 161 | `result-track:aa02c4278995440f939b0d7ce1478fea8d58aeddab9b0ed8eda77b79f41ca872` |
| 11 | `theorem` | [mu_le_log](../../../../../mathematics/Analysis/SpecialFunctions/GammaSide/Variant1c1b862f6645e0f9d16872bc25c8e4e986258777ce3b3a67d4da9f2aa3149573.lean/declarations/mu-le-log--ac33636204cfe928d9963df8.md) | 165 | `result-track:ac33636204cfe928d9963df8819ae1c4e5ae10b5f6d8a2a456b04717ae6e76f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
