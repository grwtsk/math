# Verification target: GRWTSK.Analysis.Integration.ExponentialVolterraL2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5f602e924adac25ecc8d06c50e8990820da193d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integration/ExponentialVolterraL2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5f602e924adac25ecc8d06c50e8990820da193d`.

Source path: `GRWTSK/Analysis/Integration/ExponentialVolterraL2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integration/ExponentialVolterraL2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentialVolterra](../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/declarations/exponentialvolterra--fa94dd13cd290fbfc6067845.md) | 25 | `declaration-track:fa94dd13cd290fbfc60678456b765de8ee06e73fa0d546b24bcb81ec4fc69d10` |
| 2 | `theorem` | [exponentialVolterra_eq_damped_primitive](../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/declarations/exponentialvolterra-eq-damped-primitive--f7b8868cbff34ccaaab0058b.md) | 30 | `result-track:f7b8868cbff34ccaaab0058bfaaba1de0fabd82fb3c404ba013d5b3499ea6a3c` |
| 3 | `theorem` | [sq_integral_le_of_damped_deriv](../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/declarations/sq-integral-le-of-damped-deriv--d948c5fb638ca421e8a78482.md) | 45 | `result-track:d948c5fb638ca421e8a784826e2b058f7f301b14246e43bbf68187cb9f79bb62` |
| 4 | `theorem` | [exponentialVolterra_sq_integral_le](../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/declarations/exponentialvolterra-sq-integral-le--eefeba45bf94044fd622fe07.md) | 112 | `result-track:eefeba45bf94044fd622fe07851db82e49bf64264e34897348e829f448c17d6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
