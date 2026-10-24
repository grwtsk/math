# Verification target: GRWTSK.Topology.GeneralTopology.ApproximatesLinearOn.Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d13e279bd99c66cd3e18421d2e50a719a294423",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d13e279bd99c66cd3e18421d2e50a719a294423`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.Banach` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PartialHomeomorph` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ApproximatesLinearOn](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/approximateslinearon--54dbf9355c9423c3e6cdc993.md) | 67 | `declaration-track:54dbf9355c9423c3e6cdc993fef5af67a0c08dc3ad23f8213a0c08040a8a16ac` |
| 2 | `theorem` | [approximatesLinearOn_empty](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/approximateslinearon-empty--c73bf02f9c6161ed8e1519f3.md) | 71 | `result-track:c73bf02f9c6161ed8e1519f3484c81dd221666f0637305095497e3c8609a1538` |
| 3 | `theorem` | [mono_num](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/mono-num--f524c1c99418e5d8943a1260.md) | 86 | `result-track:f524c1c99418e5d8943a12600ff2716e1510d00f0d45e8b4f1aef620ba6f60ff` |
| 4 | `theorem` | [mono_set](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/mono-set--d09836da48f77642b7baa2d0.md) | 90 | `result-track:d09836da48f77642b7baa2d0afd0c67d3d1a8ecdbb6fb3d7c01411c1d9abdf88` |
| 5 | `theorem` | [approximatesLinearOn_iff_lipschitzOnWith](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/approximateslinearon-iff-lipschitzonwith--2e11df89cc77abf3d9c9ca72.md) | 93 | `result-track:2e11df89cc77abf3d9c9ca72c70f58bdb7c09ca7e9f11e52d53d2594972c3b69` |
| 6 | `theorem` | [lipschitz_sub](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/lipschitz-sub--bcc05b0174b5246e59e25005.md) | 102 | `result-track:bcc05b0174b5246e59e25005e12bef6208531e3d177f03e28718c98291c67489` |
| 7 | `theorem` | [lipschitz](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/lipschitz--217e4568563267bf8715f7f3.md) | 106 | `result-track:217e4568563267bf8715f7f3fd56ee1c228ba6515b2c1a073523373dbca3207e` |
| 8 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/continuous--4262fdb60ef2fdd5d3f61785.md) | 111 | `result-track:4262fdb60ef2fdd5d3f617855fe151e157d19dcaf0d37b91f268005839969df9` |
| 9 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/continuouson--9ea3e621b5d35654645a2ba0.md) | 114 | `result-track:9ea3e621b5d35654645a2ba0c90d166f4d1a346183b71ffe9c3e3eab3a73fc79` |
| 10 | `theorem` | [surjOn_closedBall_of_nonlinearRightInverse](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/surjon-closedball-of-nonlinearrightinverse--21c7977aca3df0c17e3c6a2c.md) | 133 | `result-track:21c7977aca3df0c17e3c6a2c815c5bcb4c1296965c5940da735a5063e4f5714f` |
| 11 | `theorem` | [open_image](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/open-image--e7fd816d33a13fbc96427e9f.md) | 268 | `result-track:e7fd816d33a13fbc96427e9f0be7d98b30e88078165a6b53619f0da2921b356d` |
| 12 | `theorem` | [image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/image-mem-nhds--ca740304f6a6476b8b0b4447.md) | 278 | `result-track:ca740304f6a6476b8b0b444712ea79cd0a55bade1b0ef964d0389852620298bd` |
| 13 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/map-nhds-eq--0a03b0605fc9e0851ff79afa.md) | 284 | `result-track:0a03b0605fc9e0851ff79afa39985b5d3582693ed6844795fc726926450bf4c4` |
| 14 | `theorem` | [antilipschitz](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/antilipschitz--aa38567f3d39facc8a0246bc.md) | 305 | `result-track:aa38567f3d39facc8a0246bc8e286b5f857e431b8d1213d90832ff96068f608f` |
| 15 | `theorem` | [injective](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/injective--d539c98a200b3ec7b4ca5fdf.md) | 312 | `result-track:d539c98a200b3ec7b4ca5fdfa1f69a765bedb345d4c0b029bfadcd17ba4d3683` |
| 16 | `theorem` | [injOn](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/injon--5edb8a1d4e1a5ff6660ddcb3.md) | 316 | `result-track:5edb8a1d4e1a5ff6660ddcb340ab0a6b72a8b658e3026707764f5fe6191d94f0` |
| 17 | `theorem` | [surjective](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/surjective--124fd0528084e5f798a40298.md) | 320 | `result-track:124fd0528084e5f798a40298f394d553651805886451a66638652aee51c73bae` |
| 18 | `def` | [toPartialEquiv](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/topartialequiv--4c9845d73897bc91b0bd6c42.md) | 340 | `declaration-track:4c9845d73897bc91b0bd6c4293e81277f272d5b101fab9c1cbfb7837d18f7cd5` |
| 19 | `theorem` | [inverse_continuousOn](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/inverse-continuouson--5a941bc84334a41a3ab8c5ee.md) | 346 | `result-track:5a941bc84334a41a3ab8c5ee406e956471fc15e2491281ed1ae72ff866ea28c6` |
| 20 | `theorem` | [to_inv](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/to-inv--72e4bece111a67d4f9753726.md) | 353 | `result-track:72e4bece111a67d4f9753726c3eca4fb1af5477f6378d74063dd69b0a7210e01` |
| 21 | `def` | [toPartialHomeomorph](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/topartialhomeomorph--e5ac55f29d0e30ba6c1c75b0.md) | 384 | `declaration-track:e5ac55f29d0e30ba6c1c75b0f566ca682e688b9a422acf78b0ece65b3fac1f7b` |
| 22 | `theorem` | [toPartialHomeomorph_coe](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/topartialhomeomorph-coe--f11eac7f43397c27b5ebdea9.md) | 394 | `result-track:f11eac7f43397c27b5ebdea9e3a7efbf59e07767ed8aebe37664008d2d039bd7` |
| 23 | `theorem` | [toPartialHomeomorph_source](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/topartialhomeomorph-source--0fdf531a3cb40b151a26bd44.md) | 400 | `result-track:0fdf531a3cb40b151a26bd44fcee7b2c3ee6f941454de287b188a578c4011101` |
| 24 | `theorem` | [toPartialHomeomorph_target](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/topartialhomeomorph-target--b417c4873b87d3f2a91342ba.md) | 406 | `result-track:b417c4873b87d3f2a91342ba8ce2fc6f9f61e867605096f4c85a76f2b820fc7c` |
| 25 | `def` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/tohomeomorph--12131b3b36867cf4dc8351ab.md) | 412 | `declaration-track:12131b3b36867cf4dc8351ab0210a4d3977ff393065bd394828dcccd803f8602` |
| 26 | `theorem` | [closedBall_subset_target](../../../../../mathematics/Topology/GeneralTopology/ApproximatesLinearOn/Variant093aa6ea2b6aff8d84a6abbab735a7212bf98864324ae4e9e39db0051739a1db.lean/declarations/closedball-subset-target--a2454e21751c450308a4e34d.md) | 420 | `result-track:a2454e21751c450308a4e34d8382cb418eb57c4c974abadc356cba5de58c467b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
