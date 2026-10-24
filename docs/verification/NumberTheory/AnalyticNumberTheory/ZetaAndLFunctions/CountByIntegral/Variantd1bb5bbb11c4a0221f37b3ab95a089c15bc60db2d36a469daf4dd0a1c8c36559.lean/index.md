# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CountByIntegral.Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79632caec2d1fc2d864c1126dfd2e6fa896ce117",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79632caec2d1fc2d864c1126dfd2e6fa896ce117`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Analytic.RectangleLogDeriv` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [analyticAt_completedRiemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/declarations/analyticat-completedriemannzeta--852f402e7ed7a3efec506541.md) | 40 | `result-track:852f402e7ed7a3efec50654168e9e873792cf721f5a814250a30c59ab585f155` |
| 2 | `lemma` | [completedRiemannZeta_eq_Gammaℝ_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/declarations/completedriemannzeta-eq-gamma-mul--4b2a0a65973ecf1a0d438f9a.md) | 49 | `result-track:4b2a0a65973ecf1a0d438f9a785a670fc71d7368e186726f08482a0aa423cdfa` |
| 3 | `lemma` | [completedRiemannZeta_eq_zero_iff_of_re_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/declarations/completedriemannzeta-eq-zero-iff-of-re-pos--9f264eb85d22985a9e8499a5.md) | 54 | `result-track:9f264eb85d22985a9e8499a565315815791e3bee2fb5b4ab61fac871750dfdd6` |
| 4 | `lemma` | [completedRiemannZeta_ne_zero_of_one_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/declarations/completedriemannzeta-ne-zero-of-one-le-re--5202905348008b8a912a7dae.md) | 61 | `result-track:5202905348008b8a912a7daee5145f9506b3b5810cff5a37fe7bea838a75c4d1` |
| 5 | `lemma` | [completedRiemannZeta_ne_zero_of_re_nonpos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/declarations/completedriemannzeta-ne-zero-of-re-nonpos--6e8c2940cb76146b07bf633d.md) | 66 | `result-track:6e8c2940cb76146b07bf633d45cd83cab513fe91bd804374dced5a97dd5f6b28` |
| 6 | `lemma` | [completedRiemannZeta_eq_zero_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/declarations/completedriemannzeta-eq-zero-iff--c791ac7436cbd366c2bf1e6e.md) | 73 | `result-track:c791ac7436cbd366c2bf1e6e5a62afda3422d20b4071bdc54906a709646a4c7d` |
| 7 | `lemma` | [analyticOrderNatAt_completedRiemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/declarations/analyticordernatat-completedriemannzeta--ae6bb8c5ecc91143bd32d46e.md) | 89 | `result-track:ae6bb8c5ecc91143bd32d46ef307d92fc29cfcc5a1ccd2a11933eb697a7c0327` |
| 8 | `theorem` | [rectangleIntegral'_logDeriv_completedZeta_eq_Ncount](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variantd1bb5bbb11c4a0221f37b3ab95a089c15bc60db2d36a469daf4dd0a1c8c36559.lean/declarations/rectangleintegral-logderiv-completedzeta-eq-ncount--4c34e4c52d31e0485bdeee26.md) | 106 | `result-track:4c34e4c52d31e0485bdeee265a2d9f004768d721179d5be1477891f339e4303b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
