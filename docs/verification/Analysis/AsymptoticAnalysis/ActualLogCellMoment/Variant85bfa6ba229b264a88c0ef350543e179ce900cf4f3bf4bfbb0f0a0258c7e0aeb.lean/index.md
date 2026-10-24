# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellMoment.Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d170f155ae275c814a3dd745c84bd9f392564c2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d170f155ae275c814a3dd745c84bd9f392564c2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCell](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcell--72b63ac5d7e172cd17097d05.md) | 15 | `declaration-track:72b63ac5d7e172cd17097d05603fccd47049d6fd4122155c58bdf0fad1185006` |
| 2 | `def` | [logCellSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcellsum--2822742f6464f5b4dac9392e.md) | 18 | `declaration-track:2822742f6464f5b4dac9392e3408e905f147376a4fd9f10786d94a90cafb064e` |
| 3 | `theorem` | [logCell_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcell-integrable--b181644ead20f5a7f5188471.md) | 20 | `result-track:b181644ead20f5a7f5188471fdac89c7ce25cd34ac9af629cccb4d1a218ad768` |
| 4 | `theorem` | [logCell_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcell-eval--e4e22b692096fdd3f42602bb.md) | 32 | `result-track:e4e22b692096fdd3f42602bba0910eb46f48aebedde017f21db5414a8f4df8a2` |
| 5 | `theorem` | [logCell_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcell-nonneg--98d78df3158e629e1c92e7c6.md) | 59 | `result-track:98d78df3158e629e1c92e7c638991343229fca6ef37d012ab43746b4ec883289` |
| 6 | `theorem` | [logCellSum_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcellsum-eval--209d9b398b5a4891b46f8816.md) | 67 | `result-track:209d9b398b5a4891b46f881684678557e1ace6c98f8508e7c35d752da081e89e` |
| 7 | `theorem` | [logCellSum_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcellsum-tendsto--54c2d1b29d871ec4e845a199.md) | 81 | `result-track:54c2d1b29d871ec4e845a199a0f8f99d43c79ce0c3df66e326dd59ca1e850588` |
| 8 | `theorem` | [logCell_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcell-hassum--2a99028e037b042489fe0445.md) | 94 | `result-track:2a99028e037b042489fe0445e022ad3460e5216386e8927971efaaf78d4bfe85` |
| 9 | `theorem` | [logCell_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcell-summable--d40cd898879cc176fa6da59c.md) | 100 | `result-track:d40cd898879cc176fa6da59ca228543f91977d865d8a681c01f04a7f072c8749` |
| 10 | `theorem` | [logCell_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant85bfa6ba229b264a88c0ef350543e179ce900cf4f3bf4bfbb0f0a0258c7e0aeb.lean/declarations/logcell-tsum--0413645bd87b7d58f018d43d.md) | 103 | `result-track:0413645bd87b7d58f018d43de2d49dcaa6860d91e0fd76d03d3de41bbbf59037` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
