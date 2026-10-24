# Verification target: GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.FullLineKernelAverages.Translations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a3b6d9f31f0ab614e31e82a9c23d9b763b6dbfc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a3b6d9f31f0ab614e31e82a9c23d9b763b6dbfc`.

Source path: `GRWTSK/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 31; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 34; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../../mathematics/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean/declarations/fullh--0f9d0b5ec70d6aa046c696a8.md) | 42 | `declaration-track:0f9d0b5ec70d6aa046c696a8f96a4ceb3993040f0a5bda56fb0f21953396a295` |
| 2 | `def` | [fullShift](../../../../../../mathematics/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean/declarations/fullshift--5e65add71d8d2e9527c6a302.md) | 44 | `declaration-track:5e65add71d8d2e9527c6a30256857ec013a813edabcb9fdf7723db405e2347ed` |
| 3 | `theorem` | [fullShift_ae](../../../../../../mathematics/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean/declarations/fullshift-ae--25c6d76162b71565786409de.md) | 47 | `result-track:25c6d76162b71565786409de573db8a5e6a2911ea9a5b90aab9c0dd67bc91777` |
| 4 | `theorem` | [fullShift_continuous](../../../../../../mathematics/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean/declarations/fullshift-continuous--5fc1599543611b2ff415b7a1.md) | 51 | `result-track:5fc1599543611b2ff415b7a12576ebfaf9630aed13ce641ead446c1c68a12185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
