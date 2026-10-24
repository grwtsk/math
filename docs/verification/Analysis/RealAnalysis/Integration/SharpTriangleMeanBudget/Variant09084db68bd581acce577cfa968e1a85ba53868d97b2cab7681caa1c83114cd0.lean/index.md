# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e03798942e7697ecb54e4db9d63be1fd7d69c8c5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e03798942e7697ecb54e4db9d63be1fd7d69c8c5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean/declarations/cumulative--934be65cfcdf9ff6be078928.md) | 16 | `declaration-track:934be65cfcdf9ff6be0789287f7ae77c8e7d0bb50738b6e6b4ecb41ee3de91ea` |
| 2 | `theorem` | [cumulative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean/declarations/cumulative-hasderivat--df6d35812c299cf05775c889.md) | 18 | `result-track:df6d35812c299cf05775c889e7b68b66d0e551f902e1903e23877918ea654793` |
| 3 | `theorem` | [cumulative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean/declarations/cumulative-continuous--32d4f5768ed5f1e8c7f832fa.md) | 23 | `result-track:32d4f5768ed5f1e8c7f832faea96fb74511484f38f70b4ffb1ed8193faaf43f6` |
| 4 | `theorem` | [triangle_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean/declarations/triangle-integral-eq--f58785aab106db0582bf6360.md) | 27 | `result-track:f58785aab106db0582bf63601f65d9abfab87315845ed34ac7dc43a120af52db` |
| 5 | `theorem` | [triangle_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant09084db68bd581acce577cfa968e1a85ba53868d97b2cab7681caa1c83114cd0.lean/declarations/triangle-integral-le--1d71d6445ef626b8809796ac.md) | 79 | `result-track:1d71d6445ef626b8809796acbfd723e869ff39ba621f0d63bcc30e24b722e7d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
