# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiSqrtClosedReadout.Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfeaf51ced416c8ae6abaaa09c87cd8b3339b8a5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfeaf51ced416c8ae6abaaa09c87cd8b3339b8a5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiSqrtPrimitiveReadout` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrtBaselinePrimitive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean/declarations/sqrtbaselineprimitive--47b268a2be9f423336cbe7e3.md) | 26 | `declaration-track:47b268a2be9f423336cbe7e31554e2398391b5b7b47d1836e1bf84a2fc93fc4e` |
| 2 | `theorem` | [sqrtBaselinePrimitive_hasDerivAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean/declarations/sqrtbaselineprimitive-hasderivat--b910c97a368e06de36e8338a.md) | 29 | `result-track:b910c97a368e06de36e8338a30a3d37d514dec3aad2c85d10b7902417feb2955` |
| 3 | `theorem` | [actualXiLogPrimitive_log_eq_closed_atoms](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean/declarations/actualxilogprimitive-log-eq-closed-atoms--ca2bef71a796e8cf7fa5b3a7.md) | 39 | `result-track:ca2bef71a796e8cf7fa5b3a7ab42c8fc0e11dbe0a07863c0e27fd12910f4a01d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
