# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Profile.Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2a31ccc51cdf51645050c7eff42094650db7e27",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2a31ccc51cdf51645050c7eff42094650db7e27`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [taperProfile_smoothTransition](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079.lean/declarations/taperprofile-smoothtransition--68ab88e1530d1a9553dd3856.md) | 28 | `result-track:68ab88e1530d1a9553dd3856bdff9e33da58d07c8e8ca6f64fa796ac0bc9e2d5` |
| 2 | `def` | [stdProfile](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079.lean/declarations/stdprofile--73183670782e2a8c79e6b689.md) | 35 | `declaration-track:73183670782e2a8c79e6b689faf4a03e2e194a982acec18e55db0e7645e3da6b` |
| 3 | `theorem` | [taperProfile_stdProfile](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079.lean/declarations/taperprofile-stdprofile--f7cb09183fd9a010ff97ad79.md) | 37 | `result-track:f7cb09183fd9a010ff97ad7936242e009f5ebeaebcb9d54c94de6aa67b6c751d` |
| 4 | `theorem` | [exists_taperProfile](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variant81ac5822aac76b3c114bb396046f1413d0b0d0ba3115438a9182c8b557d82079.lean/declarations/exists-taperprofile--b897a5eadf0744d77f107cef.md) | 40 | `result-track:b897a5eadf0744d77f107cefe0bf725975c70ecf5fcc325b3b6ff9137abab5da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
