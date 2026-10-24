# Verification target: GRWTSK.Topology.GeneralTopology.EverywherePos.Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9803a5400a6aeb655a6bb7b5807be18f4b5253f2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9803a5400a6aeb655a6bb7b5807be18f4b5253f2`.

Source path: `GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEverywherePos](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/iseverywherepos--7c640355652c7866babb4828.md) | 61 | `declaration-track:7c640355652c7866babb48287677b84e7cb0505070317e07662de88766179334` |
| 2 | `def` | [everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/everywherepossubset--d76cfac83a02a4a25d3d0076.md) | 66 | `declaration-track:d76cfac83a02a4a25d3d0076c94b1b67fee2fa9524b359ad2e18f8abd3a65d16` |
| 3 | `lemma` | [everywherePosSubset_subset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/everywherepossubset-subset--1206d468b140c40232caa45e.md) | 69 | `result-track:1206d468b140c40232caa45ee12afd66380cbfbab6df7c59d4246fd4daf8d60b` |
| 4 | `lemma` | [exists_isOpen_everywherePosSubset_eq_sdiff](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/exists-isopen-everywherepossubset-eq-sdiff--8a57109b05b1301b78454f6f.md) | 73 | `result-track:8a57109b05b1301b78454f6fe30f762e73e5ea56f3e2f6c9ca1ca95966fb7950` |
| 5 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.MeasurableSet.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/root-grwtsk-topology-generaltopology-iseverywherepos-variantddf8b29d315c--7218baaef0808fdd898c9465.md) | 93 | `result-track:7218baaef0808fdd898c946525c6dbdea1498995c21e193c8e03658350214c5e` |
| 6 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.IsClosed.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/root-grwtsk-topology-generaltopology-iseverywherepos-variantddf8b29d315c--7a59f3835eb00c2bcc1a59fd.md) | 100 | `result-track:7a59f3835eb00c2bcc1a59fd5756cac7e061f74ebc86fac642e5e1cb1b21922d` |
| 7 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.IsCompact.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/root-grwtsk-topology-generaltopology-iseverywherepos-variantddf8b29d315c--390ea216749e3aa04cac7d30.md) | 106 | `result-track:390ea216749e3aa04cac7d303a00a2b3d68f737a2d223613a0776256c4d7104c` |
| 8 | `lemma` | [measure_eq_zero_of_subset_sdiff_everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/measure-eq-zero-of-subset-sdiff-everywherepossubset--2028773090f2d2bbb494eb4c.md) | 113 | `result-track:2028773090f2d2bbb494eb4c8f15c6817dcc54579be7cd927d40c91af5e2521a` |
| 9 | `lemma` | [everywherePosSubset_ae_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/everywherepossubset-ae-eq--aa8d63cb79e586c4ad9ea2fa.md) | 126 | `result-track:aa8d63cb79e586c4ad9ea2fade2860e5fed40c1efa899429b041069cda46b2d1` |
| 10 | `lemma` | [everywherePosSubset_ae_eq_of_measure_ne_top](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/everywherepossubset-ae-eq-of-measure-ne-top--00e06e7c3f1892f0149695e4.md) | 135 | `result-track:00e06e7c3f1892f0149695e4e18fa02066475d8ad357e2ae7510e40252630d15` |
| 11 | `lemma` | [isEverywherePos_everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/iseverywherepos-everywherepossubset--b9b29ec4768460f6a9cc11bd.md) | 150 | `result-track:b9b29ec4768460f6a9cc11bd5a81b7173318845e2511c3c55f101e17c722ad8b` |
| 12 | `lemma` | [isEverywherePos_everywherePosSubset_of_measure_ne_top](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/iseverywherepos-everywherepossubset-of-measure-ne-top--5e8b2b5aebcf6430959d1d60.md) | 168 | `result-track:5e8b2b5aebcf6430959d1d60d4cd877f97f87de19278db11f36412b038bf3c4f` |
| 13 | `lemma` | [IsEverywherePos.smul_measure](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/iseverywherepos-smul-measure--e6ab01c29da54b03311bf097.md) | 181 | `result-track:e6ab01c29da54b03311bf097040a54bc76e4463e59c4e52c98f8e5a2f26e9b24` |
| 14 | `lemma` | [IsEverywherePos.smul_measure_nnreal](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/iseverywherepos-smul-measure-nnreal--a61648e5f5c77bba37169659.md) | 185 | `result-track:a61648e5f5c77bba371696597913ee5fd1069c222c85779bf96c9b117a0d08f2` |
| 15 | `lemma` | [IsEverywherePos.of_forall_exists_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/iseverywherepos-of-forall-exists-nhds-eq--f5522ea3065c5c81d9445f69.md) | 191 | `result-track:f5522ea3065c5c81d9445f696f8316a5c1596da112c95a70ccce913d8ed6fd10` |
| 16 | `lemma` | [isEverywherePos_iff_of_forall_exists_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/iseverywherepos-iff-of-forall-exists-nhds-eq--1a4a052710a18f287a8bc129.md) | 201 | `result-track:1a4a052710a18f287a8bc129d01840c6d7f9c2f7c0088fe768cf59260e162b9d` |
| 17 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.IsOpen.isEverywherePos](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/root-grwtsk-topology-generaltopology-iseverywherepos-variantddf8b29d315c--a066f56ca24d11ff8924e355.md) | 209 | `result-track:a066f56ca24d11ff8924e355afe981d65a1250dd71e5c4d167b5d248bae63fe5` |
| 18 | `lemma` | [IsEverywherePos.IsGdelta_of_isMulLeftInvariant](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/iseverywherepos-isgdelta-of-ismulleftinvariant--ab37cf546e3de168ccf4e22b.md) | 232 | `result-track:ab37cf546e3de168ccf4e22be34ec8012cf5e4bb5facb367420fcc1fe6e549e2` |
| 19 | `theorem` | [innerRegularWRT_preimage_one_hasCompactSupport_measure_ne_top_of_group](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/declarations/innerregularwrt-preimage-one-hascompactsupport-measure-ne-top-of-group--eaaad6aede2ec2579065c1e7.md) | 294 | `result-track:eaaad6aede2ec2579065c1e7cfb51cc07175a7634410315621d7c80f41fb7c29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
