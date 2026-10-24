# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85f8b1de7232d5ee08d320d0d3a5d9fb64d8cbb5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85f8b1de7232d5ee08d320d0d3a5d9fb64d8cbb5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean/declarations/cumulative--7fa97b233c642504532b1796.md) | 23 | `declaration-track:7fa97b233c642504532b1796850139f4d120e0f7efbc811e09d072e733e6faf5` |
| 2 | `theorem` | [cumulative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean/declarations/cumulative-hasderivat--4aa22019da2e421d974e6775.md) | 25 | `result-track:4aa22019da2e421d974e677541a0779104167c33bb6a858fc55de9a41684069a` |
| 3 | `theorem` | [cumulative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean/declarations/cumulative-continuous--cdb36424e2390df71c08a9bf.md) | 30 | `result-track:cdb36424e2390df71c08a9bf5d97da81e95563ba35473028be983819789dae2c` |
| 4 | `theorem` | [triangle_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean/declarations/triangle-integral-eq--e66ee8cc9b75ebb100163927.md) | 34 | `result-track:e66ee8cc9b75ebb100163927a1b059a5f05e945b4caa90807ee3a5136ceaf170` |
| 5 | `theorem` | [triangle_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant7c1bc73d554ab225e16436591362d73563407a2ecad31efe56bd8be245516edc.lean/declarations/triangle-integral-le--2a124d087f1873ba419210db.md) | 86 | `result-track:2a124d087f1873ba419210db551d7c3b7bc5d55685bbb80ca40771b59e9fcee2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
