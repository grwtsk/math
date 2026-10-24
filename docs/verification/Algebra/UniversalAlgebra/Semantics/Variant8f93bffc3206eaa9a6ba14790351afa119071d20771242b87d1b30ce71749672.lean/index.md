# Verification target: GRWTSK.Algebra.UniversalAlgebra.Semantics.Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d325acc5255166b97ea499d17d5ff86551015452",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d325acc5255166b97ea499d17d5ff86551015452`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitField](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/bitfield--bdb292f8da51d1684fcbdb92.md) | 26 | `declaration-track:bdb292f8da51d1684fcbdb922f20c84b8cefa20bd3c39bd410e0d0fc052ba79c` |
| 2 | `def` | [BitField.bitAt](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/bitfield-bitat--3910128e04ffd2983a49f598.md) | 31 | `declaration-track:3910128e04ffd2983a49f598462bb9d1c2ed9122cc8992da17b5378f00f5d16e` |
| 3 | `structure` | [GridCell](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/gridcell--104b22dd70b79c97fc2bc0ef.md) | 35 | `declaration-track:104b22dd70b79c97fc2bc0ef6f045bbec449e02c0d4949ad3dc390d5ce2dbcd0` |
| 4 | `def` | [GridCell.rowMajorIndex](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/gridcell-rowmajorindex--c7e973e76f6c2b74b7593f7a.md) | 41 | `declaration-track:c7e973e76f6c2b74b7593f7a9223b51bd6b90f186e67f554c0d5b48cab4943bc` |
| 5 | `structure` | [CarrierGrid](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/carriergrid--8095c90f2c0d5795ea983f87.md) | 47 | `declaration-track:8095c90f2c0d5795ea983f87387c7ef26eeeb7ed9c153ca7e3b369f0485c4898` |
| 6 | `abbrev` | [OwnershipMask](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/ownershipmask--f008be1e824104a9edeae1b7.md) | 52 | `declaration-track:f008be1e824104a9edeae1b7681307497421c317ba59bb58038235687ff50236` |
| 7 | `structure` | [FiniteRasterState](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/finiterasterstate--5510b907aa15ffdffb502dab.md) | 55 | `declaration-track:5510b907aa15ffdffb502dabb04d66792c5b57447207aec72c40a8f007b134f5` |
| 8 | `inductive` | [TriangleVertex](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/trianglevertex--0f170fa29f4184d3bc3d992e.md) | 61 | `declaration-track:0f170fa29f4184d3bc3d992e10b121ea451ee362aa6967e9a8c22234d98f83a8` |
| 9 | `def` | [triangleSuccessor](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/trianglesuccessor--6a275307cb787e4bdf26cb46.md) | 68 | `declaration-track:6a275307cb787e4bdf26cb46ac37283685f2c2c671ed10dea4bfda9e02e52571` |
| 10 | `theorem` | [triangleSuccessor_third_power](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/trianglesuccessor-third-power--2464e337bbc68e50dd16eeaa.md) | 81 | `result-track:2464e337bbc68e50dd16eeaae4e3879f084b737f6d7b47f1f5c328a8439a30ab` |
| 11 | `structure` | [BraidEndpointPresentation](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/braidendpointpresentation--9a71bb831e9e4415b904f494.md) | 86 | `declaration-track:9a71bb831e9e4415b904f4940c573d4a626171de0ec60c0863c0e85a80ae3785` |
| 12 | `inductive` | [PipelineStage](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/pipelinestage--9cee0775b5c533c9b195db84.md) | 90 | `declaration-track:9cee0775b5c533c9b195db8438e05d8bc847006a93d90347871bef47e36a9276` |
| 13 | `def` | [canonicalPipelineStages](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/canonicalpipelinestages--27c4d90d44b286e3ed9a63d8.md) | 101 | `declaration-track:27c4d90d44b286e3ed9a63d89dfdbbb2ff399eb5509757212fd382c602b906b9` |
| 14 | `structure` | [PipelineTrace](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/pipelinetrace--2ac22add5203c0ea96bf8bfc.md) | 106 | `declaration-track:2ac22add5203c0ea96bf8bfc80b9813eab95af891576d993a265d6827cf099d1` |
| 15 | `structure` | [ConfigurationInput](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/configurationinput--7a687c6f64dcb7b9a386fb15.md) | 111 | `declaration-track:7a687c6f64dcb7b9a386fb159a7e4a8c16745196d6383852505389cdf8e2d4fa` |
| 16 | `structure` | [DerivedConfiguration](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/derivedconfiguration--d2e618d3def487fa50bd37fe.md) | 118 | `declaration-track:d2e618d3def487fa50bd37feb241324a5d60388e378ce0809a612659bee5e15e` |
| 17 | `def` | [deriveConfiguration](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/deriveconfiguration--b3b4cf0303a6c0bc56c2defc.md) | 124 | `declaration-track:b3b4cf0303a6c0bc56c2defcc6a6a4e079b654b431eb30af09dcfa8f0a351dd8` |
| 18 | `theorem` | [derive_cells_per_axis](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/derive-cells-per-axis--f56878a628de2d17473efe55.md) | 130 | `result-track:f56878a628de2d17473efe5582c7c8e18ac972cd960e825497c000c07a6b1d90` |
| 19 | `theorem` | [derive_raster_extent](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/derive-raster-extent--a430209c3eb1e22758255260.md) | 135 | `result-track:a430209c3eb1e22758255260606930d88194e99cfeef60ece69262b7a790ee01` |
| 20 | `structure` | [RepresentationRelation](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/representationrelation--53506a20767b1dcf0d799db1.md) | 141 | `declaration-track:53506a20767b1dcf0d799db182a8dc07ed509077547f9a5649bb7cca2e020827` |
| 21 | `inductive` | [CorrespondenceStatus](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/declarations/correspondencestatus--86163af87b65fc3c0f3637b7.md) | 148 | `declaration-track:86163af87b65fc3c0f3637b71c0b37780c3b085d2cfe9c2cec7810a3f84a4de7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
