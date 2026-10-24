# Verification target: GRWTSK.Analysis.MeasureTheory.SourceRemainderLaplaceAttempt03.Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "660c14c5d49b194f6d99cf36470aaea949b53c50",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `660c14c5d49b194f6d99cf36470aaea949b53c50`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRemainder](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean/declarations/actualremainder--1242b3bf4edbd71e0503e4a0.md) | 13 | `declaration-track:1242b3bf4edbd71e0503e4a0791a39759c03ad220e3f1eba636aed67b84beeff` |
| 2 | `def` | [actualLaplace](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean/declarations/actuallaplace--19312c51a0ec5af73ff47b9d.md) | 16 | `declaration-track:19312c51a0ec5af73ff47b9da13b36c57fb04bea3adffeb17f38f755b408c1f7` |
| 3 | `theorem` | [laplaceWeight_abs_le_one](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean/declarations/laplaceweight-abs-le-one--d563d76b9149087754f9e3ad.md) | 19 | `result-track:d563d76b9149087754f9e3ad74ace887d8f6fa9cfd061bf87cb22b23be9c83d1` |
| 4 | `theorem` | [actual_weighted_remainder_integrable](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean/declarations/actual-weighted-remainder-integrable--8f8eb33aa1fd50bced0ac02c.md) | 25 | `result-track:8f8eb33aa1fd50bced0ac02cd2dd1a8ccc8cd86519afe16aa2d58975a6465902` |
| 5 | `theorem` | [actual_laplace_tendsto_right](../../../../../mathematics/Analysis/MeasureTheory/SourceRemainderLaplaceAttempt03/Variant13ab9c2fd33861c6104401d9d4e8cb97289e1c03d8cd5d5a4ef529bd39c91901.lean/declarations/actual-laplace-tendsto-right--1abfe3a6d6a49e5b23032d76.md) | 33 | `result-track:1abfe3a6d6a49e5b23032d76563000a60151f27cc05545336d2371f02ec57336` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
