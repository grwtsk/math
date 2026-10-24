# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicResidualTailAudit.Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c93962cb4f4380d87c3f6e550ba5bfdb4946bbf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c93962cb4f4380d87c3f6e550ba5bfdb4946bbf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dampedCoefficient_reciprocal_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/dampedcoefficient-reciprocal-sum--8a3838f786ce210c3f27782b.md) | 15 | `result-track:8a3838f786ce210c3f27782bd5a63a4d2f73788078803efaf95e574c468866bc` |
| 2 | `theorem` | [arithmeticResidual_eq_below_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/arithmeticresidual-eq-below-one--31404ab01605dad55658b3a4.md) | 24 | `result-track:31404ab01605dad55658b3a48e1e4d73e98c4e4ca5eba4665b77ae21cdd9dfdc` |
| 3 | `theorem` | [arithmeticResidual_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/arithmeticresidual-norm-le--ed8ca194f94fe9ae83101691.md) | 39 | `result-track:ed8ca194f94fe9ae831016912a1a02e9825b5f9e79a15e54727d72df493deeb2` |
| 4 | `theorem` | [logResidual_eq_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/logresidual-eq-of-neg--f02bb405cd08e37de4205ddb.md) | 60 | `result-track:f02bb405cd08e37de4205ddbf7013178302842b39646d90469533ce1fdeff294` |
| 5 | `theorem` | [logResidual_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/logresidual-norm-le--a11cd40b20f78da4dac14c63.md) | 70 | `result-track:a11cd40b20f78da4dac14c63a4b7d02a0725b37759d0431cf52949bf303f4258` |
| 6 | `theorem` | [logResidual_sq_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/logresidual-sq-of-neg--f3eb5ebc2bd1ea73575256a4.md) | 78 | `result-track:f3eb5ebc2bd1ea73575256a4fd18dba7eaa764248098184d4a72d69cdc25f417` |
| 7 | `theorem` | [logResidual_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/logresidual-sq-le--ef2608ff8f23158b72bf0f54.md) | 89 | `result-track:ef2608ff8f23158b72bf0f54f287b9610eff50989a25c2682735b23cac85b094` |
| 8 | `theorem` | [logResidual_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/logresidual-memlp--29e11cbbc3b735fd2a96b041.md) | 100 | `result-track:29e11cbbc3b735fd2a96b0412c5356d48ba257c9e11887317aae8fcc6f4f0edd` |
| 9 | `theorem` | [logResidual_negative_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/logresidual-negative-integral--609bb8e2cce1332e16689a5e.md) | 122 | `result-track:609bb8e2cce1332e16689a5e9fb9a21dbd7887abefb47ccbf7d4a92b438c0608` |
| 10 | `theorem` | [logResidual_positive_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/logresidual-positive-integral-le--27bd38702880ac86411f3be1.md) | 135 | `result-track:27bd38702880ac86411f3be184523163094747663ad9f544ddcdc2bea9b1eac1` |
| 11 | `theorem` | [indicator_toLp_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/indicator-tolp-norm-sq--8b7ffee3af3986505d34ba2a.md) | 152 | `result-track:8b7ffee3af3986505d34ba2adf64d54cd44560d18b2fe920ca3a64e2b0a396e5` |
| 12 | `theorem` | [logResidual_negative_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/logresidual-negative-norm--75d32f8a6ac6ae37f598cdf1.md) | 161 | `result-track:75d32f8a6ac6ae37f598cdf17208f5c16259ef9274747c1c9f0161e3afbdfba9` |
| 13 | `theorem` | [logResidual_positive_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/declarations/logresidual-positive-norm-le--bcd60b93abbd9ad2efce3b6c.md) | 170 | `result-track:bcd60b93abbd9ad2efce3b6cc5ddb086fcb51ab2129afba5d7b37dfed480d4db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
