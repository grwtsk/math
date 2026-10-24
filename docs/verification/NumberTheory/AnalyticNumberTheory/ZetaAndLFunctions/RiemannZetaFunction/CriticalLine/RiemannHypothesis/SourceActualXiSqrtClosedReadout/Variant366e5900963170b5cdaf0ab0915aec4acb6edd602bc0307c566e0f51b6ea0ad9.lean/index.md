# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiSqrtClosedReadout.Variant366e5900963170b5cdaf0ab0915aec4acb6edd602bc0307c566e0f51b6ea0ad9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0147102e84a10fe1f247969a06149ef00d576374",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant366e5900963170b5cdaf0ab0915aec4acb6edd602bc0307c566e0f51b6ea0ad9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant366e5900963170b5cdaf0ab0915aec4acb6edd602bc0307c566e0f51b6ea0ad9.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant366e5900963170b5cdaf0ab0915aec4acb6edd602bc0307c566e0f51b6ea0ad9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0147102e84a10fe1f247969a06149ef00d576374`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant366e5900963170b5cdaf0ab0915aec4acb6edd602bc0307c566e0f51b6ea0ad9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant366e5900963170b5cdaf0ab0915aec4acb6edd602bc0307c566e0f51b6ea0ad9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiSqrtPrimitiveReadout` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrtBaselinePrimitive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant366e5900963170b5cdaf0ab0915aec4acb6edd602bc0307c566e0f51b6ea0ad9.lean/declarations/sqrtbaselineprimitive--526435749d8f2ee00377944a.md) | 18 | `declaration-track:526435749d8f2ee00377944a079da0ce5f81c8e054f7abed2a61ec2840a62a2a` |
| 2 | `theorem` | [sqrtBaselinePrimitive_hasDerivAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant366e5900963170b5cdaf0ab0915aec4acb6edd602bc0307c566e0f51b6ea0ad9.lean/declarations/sqrtbaselineprimitive-hasderivat--4b4d1c79f44267fd0f35c424.md) | 21 | `result-track:4b4d1c79f44267fd0f35c42441a0edd168a74ac85f30ba455973100f2276b3ca` |
| 3 | `theorem` | [actualXiLogPrimitive_log_eq_closed_atoms](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant366e5900963170b5cdaf0ab0915aec4acb6edd602bc0307c566e0f51b6ea0ad9.lean/declarations/actualxilogprimitive-log-eq-closed-atoms--8358b78490c2a025fbbe896e.md) | 31 | `result-track:8358b78490c2a025fbbe896eef24e2b41c5d58220e6a9565f0d8b62d376b8018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
