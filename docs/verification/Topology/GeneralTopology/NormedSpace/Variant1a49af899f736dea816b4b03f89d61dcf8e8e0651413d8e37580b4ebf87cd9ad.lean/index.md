# Verification target: GRWTSK.Topology.GeneralTopology.NormedSpace.Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5776f39296405f9b750ec40e2000aa91a5e19450",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5776f39296405f9b750ec40e2000aa91a5e19450`.

Source path: `GRWTSK/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.BirkhoffSum.Average` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Function.IsFixedPt.tendsto_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/function-isfixedpt-tendsto-birkhoffaverage--d6db4cb11df1821d66ef6dd1.md) | 40 | `result-track:d6db4cb11df1821d66ef6dd15f8750f5523dc938171a2a2132ca210e02013690` |
| 2 | `theorem` | [dist_birkhoffSum_apply_birkhoffSum](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/dist-birkhoffsum-apply-birkhoffsum--3ff91bf4e88434db9855af1a.md) | 50 | `result-track:3ff91bf4e88434db9855af1a168a134db33ef9d3665a1e18df376f575f4b2ff0` |
| 3 | `theorem` | [dist_birkhoffSum_birkhoffSum_le](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/dist-birkhoffsum-birkhoffsum-le--5392f7680dd2658bba4f5a17.md) | 54 | `result-track:5392f7680dd2658bba4f5a170cdcac103ba25cbad393fdf6135c6fa488fe8b28` |
| 4 | `theorem` | [dist_birkhoffAverage_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/dist-birkhoffaverage-birkhoffaverage--3b54aba42348350f7b155f37.md) | 61 | `result-track:3b54aba42348350f7b155f379801b00dd1baa8c9dd134be3e55974d7f2d0ebe8` |
| 5 | `theorem` | [dist_birkhoffAverage_birkhoffAverage_le](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/dist-birkhoffaverage-birkhoffaverage-le--d01187e816ec38e3c642f3a7.md) | 66 | `result-track:d01187e816ec38e3c642f3a79d8af8165d8cdb8e72d7bc5e629c631dd25560bb` |
| 6 | `theorem` | [dist_birkhoffAverage_apply_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/dist-birkhoffaverage-apply-birkhoffaverage--85827ad4c7edd3b8bf0f5aff.md) | 72 | `result-track:85827ad4c7edd3b8bf0f5affd1168f03ecb57dc344b00f13251a0e5aebe1d2c2` |
| 7 | `theorem` | [tendsto_birkhoffAverage_apply_sub_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/tendsto-birkhoffaverage-apply-sub-birkhoffaverage--3c1d25512c2171a4d09f1f9c.md) | 83 | `result-track:3c1d25512c2171a4d09f1f9cb5e2fcd9b6fe028876f4c7d60115e2aeb29981f1` |
| 8 | `theorem` | [tendsto_birkhoffAverage_apply_sub_birkhoffAverage'](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/tendsto-birkhoffaverage-apply-sub-birkhoffaverage--36a8f717ac3725d44cc66bc4.md) | 100 | `result-track:36a8f717ac3725d44cc66bc4eb65e9c68c8a9b5d95fe5569a400c659912b24ec` |
| 9 | `theorem` | [uniformEquicontinuous_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/uniformequicontinuous-birkhoffaverage--38428df2d4ff63cbfbfd1be7.md) | 114 | `result-track:38428df2d4ff63cbfbfd1be7c4ee14b7254230267aa1b019af7fc45a8f0da5e3` |
| 10 | `theorem` | [isClosed_setOf_tendsto_birkhoffAverage](../../../../../mathematics/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/declarations/isclosed-setof-tendsto-birkhoffaverage--1a765a1166df79baf3aade5e.md) | 137 | `result-track:1a765a1166df79baf3aade5e9744252e5098321fa080d4a815b2266abad102b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
