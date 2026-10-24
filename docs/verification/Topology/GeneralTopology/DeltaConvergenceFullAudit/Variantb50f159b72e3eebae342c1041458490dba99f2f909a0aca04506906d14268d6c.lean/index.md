# Verification target: GRWTSK.Topology.GeneralTopology.DeltaConvergenceFullAudit.Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "292b58fd836a75873ca25c088a6c052be1bd611c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `292b58fd836a75873ca25c088a6c052be1bd611c`.

Source path: `GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDelta` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceBoundary` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterHorizontalRatio` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [W_continuous](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/w-continuous--466fa3eaefe3ee89636eda68.md) | 15 | `result-track:466fa3eaefe3ee89636eda683925938815bb50375ffb260f2537767a6c3ee272` |
| 2 | `theorem` | [boundary_denominator_ne_zero](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/boundary-denominator-ne-zero--2a246eb818595094387868fa.md) | 18 | `result-track:2a246eb818595094387868fa3eef2e2617fb9c2e03a00c027f1c5924f5832bb5` |
| 3 | `theorem` | [boundary_denominator_norm_sq](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/boundary-denominator-norm-sq--57d9fb21a125ac5bb538895f.md) | 23 | `result-track:57d9fb21a125ac5bb538895f8a67ae0a5ac8607455b9b49c006ddf0c136e5bcd` |
| 4 | `theorem` | [boundaryFilter_norm_le](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/boundaryfilter-norm-le--53ecd98e6a1fde2b76b73a88.md) | 29 | `result-track:53ecd98e6a1fde2b76b73a88cd57a4bddce3492bfeba4b878580a87b8f68f4a1` |
| 5 | `theorem` | [boundaryFilter_error_sq_le](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/boundaryfilter-error-sq-le--b7e4de89d0cb0b06e6ae8bae.md) | 69 | `result-track:b7e4de89d0cb0b06e6ae8bae3d46190334d21dd264df84f49ad7f36d498f0fb9` |
| 6 | `theorem` | [boundaryFilter_error_integrable](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/boundaryfilter-error-integrable--38d53118664679aad6637c59.md) | 89 | `result-track:38d53118664679aad6637c59c0ac438a6e6dc65f5e9f7462140648a43e173194` |
| 7 | `def` | [deltaSq](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/deltasq--b7035c0060facddc13f3a5f2.md) | 105 | `declaration-track:b7035c0060facddc13f3a5f22312bd0a9e40420b2f318399b392f832d728452a` |
| 8 | `def` | [delta](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/delta--e6494934cdb577c630428926.md) | 110 | `declaration-track:e6494934cdb577c630428926027740bca6752fc72b0d764d413accaa7dc641c5` |
| 9 | `theorem` | [boundaryFilter_tendsto](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/boundaryfilter-tendsto--ccdbbc61c431a59b663478e7.md) | 114 | `result-track:ccdbbc61c431a59b663478e76e5e60b8f9ad0908ebda26465b508321cbc26578` |
| 10 | `theorem` | [deltaSq_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/deltasq-tendsto-zero--d94b22bd16612a338a9ac68d.md) | 144 | `result-track:d94b22bd16612a338a9ac68dcd3a03aa0a72de32ec402baaeeffd1c8cee70c52` |
| 11 | `theorem` | [delta_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/declarations/delta-tendsto-zero--849c421421ea9f3b549b6d9d.md) | 170 | `result-track:849c421421ea9f3b549b6d9dbc09dcff340769a5199627057702e7280de36e7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
