# Verification target: GRWTSK.Topology.GeneralTopology.Continuous.Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55ba8a123e74f141beb0e159c1827531ae5cc421",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55ba8a123e74f141beb0e159c1827531ae5cc421`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.DependencyInvariant` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProfiniteGroupLike](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/profinitegrouplike--9948e0d6aed7b95416f0562d.md) | 41 | `declaration-track:9948e0d6aed7b95416f0562d24719fe6d87b5ce177ed77d9b33e6b4a490b0415` |
| 2 | `structure` | [ContinuousFiniteGaloisModule](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/continuousfinitegaloismodule--5b464211dd7ccc703b8230e0.md) | 58 | `declaration-track:5b464211dd7ccc703b8230e08707dcc9a8c7679439c75fc7f5f47a68244488e8` |
| 3 | `abbrev` | [ContinuousH1](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/continuoush1--5139ff351886788aeb89c4dc.md) | 79 | `declaration-track:5139ff351886788aeb89c4dc2ff421eb625ded47eb939e7308dff90efe4e3c39` |
| 4 | `theorem` | [continuousH1_eq_finiteH1_of_factorsThroughFiniteQuotient](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/continuoush1-eq-finiteh1-of-factorsthroughfinitequotient--439fa31ccbd1a404d11fd157.md) | 84 | `result-track:439fa31ccbd1a404d11fd15741db3cfc20738b35095584b564f13f439591ca6f` |
| 5 | `theorem` | [ContinuousFiniteGaloisModule.factorsThrough](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/continuousfinitegaloismodule-factorsthrough--08306d54bbf3ae7cbf7b62bd.md) | 92 | `result-track:08306d54bbf3ae7cbf7b62bd802670a754081fa3439328b279e600b063f085e5` |
| 6 | `theorem` | [ContinuousFiniteGaloisModule.action_is_continuous](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/continuousfinitegaloismodule-action-is-continuous--bb9b881ccc9173839ed53db1.md) | 98 | `result-track:bb9b881ccc9173839ed53db10ffa6a9b8c01e94d0f8141a14d197b7ed6db7a68` |
| 7 | `structure` | [ContinuousFiniteRestriction](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/continuousfiniterestriction--5dfb0c1e5bc88cf0f1a1c9b8.md) | 110 | `declaration-track:5dfb0c1e5bc88cf0f1a1c9b81375d139c9841fb9aea611163aa8334f93b1dfa7` |
| 8 | `def` | [resContinuousH1](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/rescontinuoush1--26b9ab786b0c6f68a8a0b4a9.md) | 122 | `declaration-track:26b9ab786b0c6f68a8a0b4a9382149150a5d6103efeff7e53de9332e20681924` |
| 9 | `theorem` | [resContinuousH1_value](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/rescontinuoush1-value--45fc7e68717addac83b7bb2c.md) | 129 | `result-track:45fc7e68717addac83b7bb2cee1fa2cebd5aca023f30da992f30cafc39338810` |
| 10 | `def` | [ContinuousFiniteRestriction.id](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/continuousfiniterestriction-id--f8b78304ff29727eba8e6a75.md) | 138 | `declaration-track:f8b78304ff29727eba8e6a75cff537fd85bfdeb972cfc99ac4014b15e471d2d4` |
| 11 | `def` | [ContinuousFiniteRestriction.comp](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/continuousfiniterestriction-comp--7d939c35e7cacd928f707c80.md) | 152 | `declaration-track:7d939c35e7cacd928f707c802b59c42769542116876d29e95700ee073455acb1` |
| 12 | `theorem` | [resContinuousH1_id](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/rescontinuoush1-id--1536bf74b48b8b2fc17eabbd.md) | 168 | `result-track:1536bf74b48b8b2fc17eabbd97c0d25894a1a953a281ea6ec4f5adad150fa6af` |
| 13 | `theorem` | [resContinuousH1_comp](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/rescontinuoush1-comp--db5951a8e4b9d98fdc095da6.md) | 175 | `result-track:db5951a8e4b9d98fdc095da6c3c94c150fccd44bb665f7e8184d1d326ba256b6` |
| 14 | `theorem` | [continuousAdapter_depends_after_finiteSelmer](../../../../../mathematics/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/declarations/continuousadapter-depends-after-finiteselmer--3205c9a746a4cb14aba92294.md) | 185 | `result-track:3205c9a746a4cb14aba9229437874aa4b34d2a6dd2baf96af12071071798c6d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
