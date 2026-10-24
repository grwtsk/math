# Verification target: GRWTSK.Topology.GeneralTopology.LocallyUniformConvergence.Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e6e5146d49d4d4ca1f29f835a3dbe0a7bc16fd9",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e6e5146d49d4d4ca1f29f835a3dbe0a7bc16fd9`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoLocallyUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon--7f2cd432bacfc01a8edc3b70.md) | 54 | `declaration-track:7f2cd432bacfc01a8edc3b705aca03187b94745d6b72edd1ca3924220f7ac111` |
| 2 | `def` | [TendstoLocallyUniformly](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformly--71818d583e208cf76a5718f0.md) | 60 | `declaration-track:71818d583e208cf76a5718f03833a100eb5f366656f71a5576980e090c7e78d2` |
| 3 | `theorem` | [tendstoLocallyUniformlyOn_univ](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-univ--78bc56986b0408b0690de600.md) | 63 | `result-track:78bc56986b0408b0690de6002fc352e3af77ae30a3d11989349aebe102c91a9e` |
| 4 | `theorem` | [tendstoLocallyUniformlyOn_iff_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-iff-forall-tendsto--0a52180bb761069f989e948b.md) | 67 | `result-track:0a52180bb761069f989e948b5b779ac639d5761abbaa9323f6b95e715a9cdeaa` |
| 5 | `theorem` | [IsOpen.tendstoLocallyUniformlyOn_iff_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/isopen-tendstolocallyuniformlyon-iff-forall-tendsto--33b2baeb7320589cc2a9cb37.md) | 73 | `result-track:33b2baeb7320589cc2a9cb37c65604c63c49800428352b8c6e79e7141bf34e39` |
| 6 | `theorem` | [tendstoLocallyUniformly_iff_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformly-iff-forall-tendsto--4fd94ee6ae31bd035bf36541.md) | 79 | `result-track:4fd94ee6ae31bd035bf365419099836c88a59acfd3b9da7d7d1102540874e06a` |
| 7 | `theorem` | [tendstoLocallyUniformlyOn_iff_tendstoLocallyUniformly_comp_coe](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-iff-tendstolocallyuniformly-comp-coe--d77d4c12d85c55e7bda87303.md) | 84 | `result-track:d77d4c12d85c55e7bda87303ed4f95d31b6ed746c7a2617035f02fe80845a00b` |
| 8 | `theorem` | [TendstoUniformlyOn.tendstoLocallyUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstouniformlyon-tendstolocallyuniformlyon--016d42e8afcff1fb8e6e5f14.md) | 90 | `result-track:016d42e8afcff1fb8e6e5f148609bf7347a69f8fd1fc181b117ca91cf695ad9b` |
| 9 | `theorem` | [TendstoUniformly.tendstoLocallyUniformly](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstouniformly-tendstolocallyuniformly--d0303d6667c27c571cb4790e.md) | 94 | `result-track:d0303d6667c27c571cb4790e2a5e3e35b0c15af0be6b0a717031fe0763f35e5e` |
| 10 | `theorem` | [TendstoLocallyUniformlyOn.mono](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-mono--dbd44dd0f9918509df2d9c8e.md) | 97 | `result-track:dbd44dd0f9918509df2d9c8ef5dd61ea0bde85ca76f385efeafa8e25553c4eab` |
| 11 | `theorem` | [tendstoLocallyUniformlyOn_iUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-iunion--09137b45618d70eae1378c51.md) | 103 | `result-track:09137b45618d70eae1378c511c61e08f7fcb2f4fda36e81d42cfce4f35b578e1` |
| 12 | `theorem` | [tendstoLocallyUniformlyOn_biUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-biunion--cfa7f08a4fbe0c71ae5d646f.md) | 110 | `result-track:cfa7f08a4fbe0c71ae5d646f3996d7770926699361e444ae810976847586c162` |
| 13 | `theorem` | [tendstoLocallyUniformlyOn_sUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-sunion--cff0e818a43a7089140f0795.md) | 116 | `result-track:cff0e818a43a7089140f0795f96f8bd5b0d9e71148e57b168025a1d965bf5705` |
| 14 | `theorem` | [TendstoLocallyUniformlyOn.union](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-union--028ee62140994d1270b89645.md) | 121 | `result-track:028ee62140994d1270b896453235f21b6dfc45d1196c753dc7c37920fbff8b2a` |
| 15 | `theorem` | [TendstoLocallyUniformly.tendstoLocallyUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformly-tendstolocallyuniformlyon--aeb8ae7abc4cd3bda5f01901.md) | 127 | `result-track:aeb8ae7abc4cd3bda5f0190177e713d347be73b6c1e324513f8e5a95d544725c` |
| 16 | `theorem` | [tendstoLocallyUniformly_iff_tendstoUniformly_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformly-iff-tendstouniformly-of-compactspace--c55bdb7ecf13de9f2546f7b2.md) | 132 | `result-track:c55bdb7ecf13de9f2546f7b289aefd1e6173c1e890bda68243efc108d5a450cd` |
| 17 | `theorem` | [tendstoLocallyUniformlyOn_iff_tendstoUniformlyOn_of_compact](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-iff-tendstouniformlyon-of-compact--b13aa0aed8c11c25e573dd3d.md) | 146 | `result-track:b13aa0aed8c11c25e573dd3db9f508cbbc707e366724c5c9c805bcf22fdd20ef` |
| 18 | `theorem` | [TendstoLocallyUniformlyOn.comp](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-comp--81a44c56782db96d5f35231a.md) | 154 | `result-track:81a44c56782db96d5f35231a460027b0794f070d131a6cc444ee4fb4b597526e` |
| 19 | `theorem` | [TendstoLocallyUniformly.comp](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformly-comp--1e5048a668e82a1492aee94c.md) | 163 | `result-track:1e5048a668e82a1492aee94c686cc01fc8a1ed48dbbfce9b79b5326297dbd195` |
| 20 | `lemma` | [tendstoLocallyUniformlyOn_of_forall_exists_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-of-forall-exists-nhds--e62f6b4292286eb3100e5289.md) | 175 | `result-track:e62f6b4292286eb3100e5289cd7daa38d41c63cbce38a15eca41daa52758844c` |
| 21 | `lemma` | [tendstoLocallyUniformly_of_forall_exists_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformly-of-forall-exists-nhds--b082b835c26ee24901316b3d.md) | 189 | `result-track:b082b835c26ee24901316b3d558213be677dc424fc974f9ca27d228470473e62` |
| 22 | `theorem` | [tendstoLocallyUniformlyOn_TFAE](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-tfae--16d02426bde8ed1f01d51307.md) | 198 | `result-track:16d02426bde8ed1f01d513075a28d695c750e7ca9662e317d92700e15e74dc61` |
| 23 | `theorem` | [tendstoLocallyUniformlyOn_iff_forall_isCompact](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-iff-forall-iscompact--2e42095df5cbbcc01c717718.md) | 217 | `result-track:2e42095df5cbbcc01c7177184a3751850deb8f3eadbed2f198c5290fb3132684` |
| 24 | `lemma` | [tendstoLocallyUniformly_iff_forall_isCompact](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformly-iff-forall-iscompact--d78ce5776033d2ccd821fd5e.md) | 221 | `result-track:d78ce5776033d2ccd821fd5e92376bb25e57a9b5213214da16073917c652d9ae` |
| 25 | `theorem` | [tendstoLocallyUniformlyOn_iff_filter](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-iff-filter--16d051db1e0ce2b12577e1af.md) | 226 | `result-track:16d051db1e0ce2b12577e1af41959d3548e82c07dd1cee77484774a12c66bef8` |
| 26 | `theorem` | [tendstoLocallyUniformly_iff_filter](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformly-iff-filter--fae0c9641651bd9761e14e78.md) | 237 | `result-track:fae0c9641651bd9761e14e781c0507abbb38076f73ee6e0448a246761487769e` |
| 27 | `theorem` | [TendstoLocallyUniformlyOn.tendsto_at](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-tendsto-at--e34d4acda6ff7b710d2ef92e.md) | 242 | `result-track:e34d4acda6ff7b710d2ef92e194fb4211a74730df555816bc2522364f2110063` |
| 28 | `theorem` | [TendstoLocallyUniformlyOn.unique](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-unique--a67f143cf0de01afd93037c5.md) | 247 | `result-track:a67f143cf0de01afd93037c58c76f40da1effeb9a507c4eadadef0093c312130` |
| 29 | `theorem` | [TendstoLocallyUniformlyOn.congr](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-congr--7351d0cdbdf68702d80d610e.md) | 251 | `result-track:7351d0cdbdf68702d80d610ea1c1e4f192a29479831c8fcd268641fd6bff4735` |
| 30 | `theorem` | [TendstoLocallyUniformlyOn.congr_right](../../../../../mathematics/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/declarations/tendstolocallyuniformlyon-congr-right--98fb14ca35ab07e573a404b7.md) | 258 | `result-track:98fb14ca35ab07e573a404b7973798f63792246b096eb2743af579e2db835440` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
