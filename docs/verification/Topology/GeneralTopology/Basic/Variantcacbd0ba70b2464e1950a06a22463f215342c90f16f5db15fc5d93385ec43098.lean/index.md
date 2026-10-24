# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dda714dcdcfcda9b51eaa2decf7a2a6dfaacad08",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dda714dcdcfcda9b51eaa2decf7a2a6dfaacad08`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Defs.Filter` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.ofClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/topologicalspace-ofclosed--9c72307c1bf012153e0f1a8d.md) | 38 | `declaration-track:9c72307c1bf012153e0f1a8d147dbad7fe73a522eab107ced9690ba8a1d73312` |
| 2 | `lemma` | [isOpen_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-mk--3bae3a8e9f9e6c4af90d5d93.md) | 52 | `result-track:3bae3a8e9f9e6c4af90d5d93fb63403b78ddd0ad28fff068128e902f5bc563ff` |
| 3 | `theorem` | [TopologicalSpace.ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/topologicalspace-ext--5fd202ab177b8715689cf005.md) | 55 | `result-track:5fd202ab177b8715689cf0056fae575c25325280c0e991e66bdce3a1a7aae760` |
| 4 | `theorem` | [TopologicalSpace.ext_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/topologicalspace-ext-iff--39dd84924ceebbdf3491614f.md) | 59 | `result-track:39dd84924ceebbdf3491614fc954f2d3dd3d8983a273a4e074f9013a007b205c` |
| 5 | `theorem` | [isOpen_fold](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-fold--f8c969e3d643e302d21ae406.md) | 63 | `result-track:f8c969e3d643e302d21ae406e61166dcdcd916e7ed2c472c979c3ea2eb7fa8ba` |
| 6 | `theorem` | [isOpen_iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-iunion--ab546cf8188117a355b1972a.md) | 68 | `result-track:ab546cf8188117a355b1972a54d4d24ad45cb621470d3063a9ad5e735fe28efc` |
| 7 | `theorem` | [isOpen_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-biunion--a19b85a6070e90b23b6e08b7.md) | 71 | `result-track:a19b85a6070e90b23b6e08b7e37399a7140fec5a3309df9d174ed88e4b6ed60d` |
| 8 | `theorem` | [IsOpen.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-union--46acc09a5eea69033539a3a3.md) | 75 | `result-track:46acc09a5eea69033539a3a324f9b6733608d2a40d2cba8a5a953b42a74e660d` |
| 9 | `lemma` | [isOpen_iff_of_cover](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-iff-of-cover--92f650c4c5f5b3904b4302cf.md) | 78 | `result-track:92f650c4c5f5b3904b4302cfd4c50a397a79543a09256cd1527fa32efa3ff22e` |
| 10 | `theorem` | [isOpen_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-empty--b61410e66016021f9419816a.md) | 84 | `result-track:b61410e66016021f9419816a0f3341a7de63bf1e5fc659c5f6fc39a9721bc96d` |
| 11 | `theorem` | [Set.Finite.isOpen_sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/set-finite-isopen-sinter--ada0303cad9d1bbc6f84aac8.md) | 87 | `result-track:ada0303cad9d1bbc6f84aac89c6c2c8f8f32678ea8c69293864c15cc95cf3870` |
| 12 | `theorem` | [Set.Finite.isOpen_biInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/set-finite-isopen-biinter--d1cc34e19c4e3ea602e707d4.md) | 95 | `result-track:d1cc34e19c4e3ea602e707d4d70f46d4db1ed69e4f7000a80695e9d1fd0aaa7c` |
| 13 | `theorem` | [isOpen_iInter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-iinter-of-finite--38e0793f2319fcc62712034f.md) | 100 | `result-track:38e0793f2319fcc62712034f3c0571c755116b4cfd704f1d1906ab4e8d4ca00d` |
| 14 | `theorem` | [isOpen_biInter_finset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-biinter-finset--ce63d2ee35579d1cca6cbdb4.md) | 104 | `result-track:ce63d2ee35579d1cca6cbdb4f5da69a00b7c7c4113cc530dc786d922160304f4` |
| 15 | `theorem` | [isOpen_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-const--9d131563de649a2f510dd73f.md) | 109 | `result-track:9d131563de649a2f510dd73f57dbd7a10c2cb949f4a278f839010be702ebf72e` |
| 16 | `theorem` | [IsOpen.and](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-and--da9ebfbec91c417e484077ec.md) | 111 | `result-track:da9ebfbec91c417e484077ec68db133297c4b7aba62e624f7ce0b8f13e4f2952` |
| 17 | `theorem` | [isOpen_compl_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-compl-iff--346f5a463f8300b6eaf0b5d8.md) | 114 | `result-track:346f5a463f8300b6eaf0b5d8c6af220cd48b4717d37925a034ab339aedddeeeb` |
| 18 | `theorem` | [TopologicalSpace.ext_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/topologicalspace-ext-iff-isclosed--2400d32deb5f2f1fe70e4b3e.md) | 117 | `result-track:2400d32deb5f2f1fe70e4b3e52b39ee1d45ec813e461f7b1647f3b123dcfaf3a` |
| 19 | `theorem` | [isClosed_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-const--acca1c1ca50e12daa088ca4f.md) | 124 | `result-track:acca1c1ca50e12daa088ca4ffbd1cde46f4eaa91e6412d22218ef93b984dbe4f` |
| 20 | `theorem` | [isClosed_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-empty--08e52fd5f1ceb330fa01d219.md) | 126 | `result-track:08e52fd5f1ceb330fa01d219b4c3bbbde405efd73480adf297b8584df98267cf` |
| 21 | `theorem` | [isClosed_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-univ--34d40feafd60a1f0d9ad04cb.md) | 128 | `result-track:34d40feafd60a1f0d9ad04cbf9eb1c255d063f377b3856a719f1a951f36433ce` |
| 22 | `lemma` | [IsOpen.isLocallyClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-islocallyclosed--a34665064869963d08a3dcba.md) | 130 | `result-track:a34665064869963d08a3dcba5194206cca7fdbd37a52f2b36ec1cce3d830fbd9` |
| 23 | `lemma` | [IsClosed.isLocallyClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-islocallyclosed--c9bb40535ca93a50b42e62e4.md) | 133 | `result-track:c9bb40535ca93a50b42e62e4117592ae2e4d612e29ca313a89ca66e78363f0de` |
| 24 | `theorem` | [IsClosed.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-union--1f3f6816a3b93dae818f08a9.md) | 136 | `result-track:1f3f6816a3b93dae818f08a942a92efe0cf7a233e53870e35563190625006919` |
| 25 | `theorem` | [isClosed_sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-sinter--b85ee1ce999c55a072827d90.md) | 139 | `result-track:b85ee1ce999c55a072827d90e436129100e74d5df7733dd7c932ea7e45b9aa57` |
| 26 | `theorem` | [isClosed_iInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-iinter--703ae494efa372bbb5a1192f.md) | 142 | `result-track:703ae494efa372bbb5a1192fb3a4d0bd653973d2319fd8c79c0f0427ec086013` |
| 27 | `theorem` | [isClosed_biInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-biinter--f6f0221cd9cfec6da62a8dbd.md) | 145 | `result-track:f6f0221cd9cfec6da62a8dbd5000f9d4c198ee457de87d7749fd89fbcc3711d1` |
| 28 | `theorem` | [isClosed_compl_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-compl-iff--3cf703f4cc3866b9edff437f.md) | 150 | `result-track:3cf703f4cc3866b9edff437f1b3d7dda3d37f7033e744656b0ac400103839002` |
| 29 | `theorem` | [IsOpen.sdiff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isopen-sdiff--0815db9e753efcc399d9df0a.md) | 155 | `result-track:0815db9e753efcc399d9df0adf754b3c70da40365409e627bfec2be227a63825` |
| 30 | `theorem` | [IsClosed.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-inter--025844a257cf3fbc42ea5007.md) | 158 | `result-track:025844a257cf3fbc42ea5007e71a6e144896ca933fdf84446f371c61af6156bf` |
| 31 | `theorem` | [IsClosed.sdiff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-sdiff--da7160aa6c4c7f04720c544a.md) | 163 | `result-track:da7160aa6c4c7f04720c544abadfa297cc37ecff5821648d54b8d381ea56e323` |
| 32 | `theorem` | [Set.Finite.isClosed_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/set-finite-isclosed-biunion--adb4c0aedfcae3338b4aacb9.md) | 166 | `result-track:adb4c0aedfcae3338b4aacb9cb6fbe952f5dba8f5f7969bb90fcd9efec36544b` |
| 33 | `lemma` | [isClosed_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-biunion-finset--f54c468bb5abf25aeda25340.md) | 172 | `result-track:f54c468bb5abf25aeda25340aab7446758dd54c39e2d48e4d94a67992d4f2d72` |
| 34 | `theorem` | [isClosed_iUnion_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-iunion-of-finite--369592aac30d995b2b722cb9.md) | 176 | `result-track:369592aac30d995b2b722cb91312139683dc5e012791d0a4d61a71d48f3a3b1e` |
| 35 | `theorem` | [isClosed_imp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-imp--7a72aeb21433764b7138fd08.md) | 181 | `result-track:7a72aeb21433764b7138fd08cfa74887f61afd4eacbc7418b2a3e6317c5dca1e` |
| 36 | `theorem` | [IsClosed.not](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/isclosed-not--fd4750d3552b433f6c3879eb.md) | 185 | `result-track:fd4750d3552b433f6c3879eb6cd20273974ff96325dabc425cf4f5ab3db3bf9f` |
| 37 | `theorem` | [le_nhds_lim](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/le-nhds-lim--7fa692c156f9717af8809528.md) | 204 | `result-track:7fa692c156f9717af8809528dd0c481fc3ffce079b1cfc0bbf2cc76d7b41234b` |
| 38 | `theorem` | [tendsto_nhds_limUnder](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/tendsto-nhds-limunder--2e30a57955ed2319074f8fc9.md) | 211 | `result-track:2e30a57955ed2319074f8fc963b9f4707da530bc70946d9638d4a33353e4b3df` |
| 39 | `theorem` | [limUnder_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantcacbd0ba70b2464e1950a06a22463f215342c90f16f5db15fc5d93385ec43098.lean/declarations/limunder-of-not-tendsto--ff0550430af54444cf8b3223.md) | 215 | `result-track:ff0550430af54444cf8b3223d88f5d54865d249a0b44b77f4e4c92056f0e0605` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
