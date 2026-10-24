# Verification target: GRWTSK.Topology.GeneralTopology.EverywherePos.Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e2c0d0bf0a9d546e2049d23200fae43d618113f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e2c0d0bf0a9d546e2049d23200fae43d618113f`.

Source path: `GRWTSK/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean.json)

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
| 1 | `def` | [IsEverywherePos](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/iseverywherepos--a6de1d24e7a6a575a27feda3.md) | 53 | `declaration-track:a6de1d24e7a6a575a27feda39f14259e1b0e734d7dec17a25996eefdd2ef89b3` |
| 2 | `def` | [everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/everywherepossubset--89784870407027760dba9d9f.md) | 58 | `declaration-track:89784870407027760dba9d9f3879388bb94e93f30fd5788176ead0e3c690159c` |
| 3 | `lemma` | [everywherePosSubset_subset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/everywherepossubset-subset--c8f0871b8499513b7c13e6b5.md) | 61 | `result-track:c8f0871b8499513b7c13e6b558127270ee9413ab491bcf5c9cdd31c12267a395` |
| 4 | `lemma` | [exists_isOpen_everywherePosSubset_eq_sdiff](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/exists-isopen-everywherepossubset-eq-sdiff--692cea21b236f4a5234ba116.md) | 65 | `result-track:692cea21b236f4a5234ba116c9034d26967a125bd5b107613bcdfff5f5ca64dd` |
| 5 | `lemma` | [_root_.MeasurableSet.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/root-measurableset-everywherepossubset--179f74ca1e022c6a9bc06519.md) | 85 | `result-track:179f74ca1e022c6a9bc065190a0783b1f32123046c4bb6022028bba043d79b1b` |
| 6 | `lemma` | [_root_.IsClosed.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/root-isclosed-everywherepossubset--30c20306afdf332d923252c7.md) | 92 | `result-track:30c20306afdf332d923252c7d2ad7cd191dcfb2a12a3468db037b13be7f0a298` |
| 7 | `lemma` | [_root_.IsCompact.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/root-iscompact-everywherepossubset--072791914d379d374593d3bf.md) | 98 | `result-track:072791914d379d374593d3bf76a922d334902e67a67c864e74ad25b01b7661ea` |
| 8 | `lemma` | [measure_eq_zero_of_subset_sdiff_everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/measure-eq-zero-of-subset-sdiff-everywherepossubset--28ca8bf0bab22c63acb14e9e.md) | 105 | `result-track:28ca8bf0bab22c63acb14e9e77598e3cfcb13a4c64a4f29a7f71f23c15f9cc5e` |
| 9 | `lemma` | [everywherePosSubset_ae_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/everywherepossubset-ae-eq--c9408497c0f55ec644878690.md) | 118 | `result-track:c9408497c0f55ec644878690bf2a33d91ccb45accd3777b4219e7ae4dbba12dd` |
| 10 | `lemma` | [everywherePosSubset_ae_eq_of_measure_ne_top](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/everywherepossubset-ae-eq-of-measure-ne-top--c171f2d71d80cfca3f8947eb.md) | 127 | `result-track:c171f2d71d80cfca3f8947eb25c6c1b5b55d124f4baf323f6558a326ef8fe012` |
| 11 | `lemma` | [isEverywherePos_everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/iseverywherepos-everywherepossubset--2aff04266d0d66b201c39a21.md) | 142 | `result-track:2aff04266d0d66b201c39a21f8d6150f5d4e1d3927237eb707e8d90fe0c09d6f` |
| 12 | `lemma` | [isEverywherePos_everywherePosSubset_of_measure_ne_top](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/iseverywherepos-everywherepossubset-of-measure-ne-top--d61cf33bf50db920e44d5611.md) | 160 | `result-track:d61cf33bf50db920e44d5611f2b237b6246f2de218304fb38a79464efdd17643` |
| 13 | `lemma` | [IsEverywherePos.smul_measure](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/iseverywherepos-smul-measure--ba9c65da2e8ff778eaa5f439.md) | 173 | `result-track:ba9c65da2e8ff778eaa5f4391dca6fd848418dde55cc6b5d5d147cec4f9c2900` |
| 14 | `lemma` | [IsEverywherePos.smul_measure_nnreal](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/iseverywherepos-smul-measure-nnreal--280e9302bc4704e6b3589952.md) | 177 | `result-track:280e9302bc4704e6b358995208c792a71f93527b567a849133b9d39d85d906d6` |
| 15 | `lemma` | [IsEverywherePos.of_forall_exists_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/iseverywherepos-of-forall-exists-nhds-eq--9c1de4117c2afae263bb8543.md) | 183 | `result-track:9c1de4117c2afae263bb8543b8a72281ac145bae9fd6731399ece1db3cf25eef` |
| 16 | `lemma` | [isEverywherePos_iff_of_forall_exists_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/iseverywherepos-iff-of-forall-exists-nhds-eq--a1e37e0369132b3752c559ca.md) | 193 | `result-track:a1e37e0369132b3752c559ca096573ed3048e26a607db09ff5f4c55c89da6af0` |
| 17 | `lemma` | [_root_.IsOpen.isEverywherePos](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/root-isopen-iseverywherepos--03033e0cec8a7f3b8b05cba5.md) | 201 | `result-track:03033e0cec8a7f3b8b05cba5db87e5ec4c6e9b8e6119f4fa58d32e98dec79db9` |
| 18 | `lemma` | [IsEverywherePos.IsGdelta_of_isMulLeftInvariant](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/iseverywherepos-isgdelta-of-ismulleftinvariant--413c1daf3ab3fa2eee46e011.md) | 224 | `result-track:413c1daf3ab3fa2eee46e011e4dcab7c6ee203164605863e47574b5e276876b3` |
| 19 | `theorem` | [innerRegularWRT_preimage_one_hasCompactSupport_measure_ne_top_of_group](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.lean/declarations/innerregularwrt-preimage-one-hascompactsupport-measure-ne-top-of-group--94e89ebdc7e7bfd872148ac4.md) | 286 | `result-track:94e89ebdc7e7bfd872148ac4dc96a519ea216d11497281752dcbd0dd3255579b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
