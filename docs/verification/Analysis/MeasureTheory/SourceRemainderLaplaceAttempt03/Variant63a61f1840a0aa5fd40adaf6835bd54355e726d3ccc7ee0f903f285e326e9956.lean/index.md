# Verification target: GRWTSK.Analysis.MeasureTheory.SourceRemainderLaplaceAttempt03.Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0177d5fb2d9e0d559f1946324da70a32ecc92e13",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0177d5fb2d9e0d559f1946324da70a32ecc92e13`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRemainder](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean/declarations/actualremainder--aff7f297303620a55eac20da.md) | 21 | `declaration-track:aff7f297303620a55eac20da5dd878a13d6e21a00300acd77b51bf83ff6a6b51` |
| 2 | `def` | [actualLaplace](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean/declarations/actuallaplace--10c98e78afd3f62daabe47c7.md) | 24 | `declaration-track:10c98e78afd3f62daabe47c719a4df61f24262acfbe8bef20f8728a22805b34b` |
| 3 | `theorem` | [laplaceWeight_abs_le_one](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean/declarations/laplaceweight-abs-le-one--6ab3f2ac02a839077682bbd4.md) | 27 | `result-track:6ab3f2ac02a839077682bbd487e33c75b23a5a16ce241fcb856b066bdaef93f7` |
| 4 | `theorem` | [actual_weighted_remainder_integrable](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean/declarations/actual-weighted-remainder-integrable--4f6d5e4d776804d6a67d82df.md) | 33 | `result-track:4f6d5e4d776804d6a67d82dffa5df086da43868c4b42a9e099884a25672b6270` |
| 5 | `theorem` | [actual_laplace_tendsto_right](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956.lean/declarations/actual-laplace-tendsto-right--1b71da4c17a364624fc1a125.md) | 41 | `result-track:1b71da4c17a364624fc1a125371500052cc58f9c12c4c6f380558bfcf4b39022` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
