# Verification target: GRWTSK.Topology.GeneralTopology.EverywherePos.Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bb2cd49dde4cf9bc0d2c1c217c6761709bf8d33",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bb2cd49dde4cf9bc0d2c1c217c6761709bf8d33`.

Source path: `GRWTSK/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEverywherePos](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/iseverywherepos--c8dd9630cb80761faf7e8dbe.md) | 57 | `declaration-track:c8dd9630cb80761faf7e8dbe23e6c29594e4b536ff1a793d9ef6ee65882573c6` |
| 2 | `def` | [everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/everywherepossubset--16b31e2addeadf33c52ca28b.md) | 62 | `declaration-track:16b31e2addeadf33c52ca28b84cc30de5c5a9278de8d99d49e2b2d1840c454b2` |
| 3 | `lemma` | [everywherePosSubset_subset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/everywherepossubset-subset--f1c1c12efed0ef7113ab9f12.md) | 65 | `result-track:f1c1c12efed0ef7113ab9f126b8ed623d882746b922e4fa6973ab31be30984cc` |
| 4 | `lemma` | [exists_isOpen_everywherePosSubset_eq_diff](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/exists-isopen-everywherepossubset-eq-diff--22ac03cfc69a9599c0c7f958.md) | 69 | `result-track:22ac03cfc69a9599c0c7f958c013bff432f0de314c5f67dbc37a24a8a56961ec` |
| 5 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.MeasurableSet.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/root-grwtsk-topology-generaltopology-iseverywherepos-variant3ab314092252--9ba1165ccf91f6fa06ebb103.md) | 86 | `result-track:9ba1165ccf91f6fa06ebb103e00d7f61d821ffb5a674dd3e627b2cb48d42897a` |
| 6 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.IsClosed.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/root-grwtsk-topology-generaltopology-iseverywherepos-variant3ab314092252--e9e60492f895b46441a0ed97.md) | 93 | `result-track:e9e60492f895b46441a0ed97988b9026c1a1ecf125bc2c0085da185f5968c4b0` |
| 7 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.IsCompact.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/root-grwtsk-topology-generaltopology-iseverywherepos-variant3ab314092252--174148d7ab759fe02103142c.md) | 99 | `result-track:174148d7ab759fe02103142cae6746a862c8e1651f87f55cec94ad4abb06b93f` |
| 8 | `lemma` | [measure_eq_zero_of_subset_diff_everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/measure-eq-zero-of-subset-diff-everywherepossubset--70340fedbeb22f15fba3f3be.md) | 106 | `result-track:70340fedbeb22f15fba3f3be623134274d665985f4e34b127f36b827a3bc3f1f` |
| 9 | `lemma` | [everywherePosSubset_ae_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/everywherepossubset-ae-eq--10a1ba15e8643629b3effa74.md) | 119 | `result-track:10a1ba15e8643629b3effa7444a1f3d5d5ef048d75e86263ba447cebabef53f3` |
| 10 | `lemma` | [everywherePosSubset_ae_eq_of_measure_ne_top](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/everywherepossubset-ae-eq-of-measure-ne-top--0231b51f7d683732e90956f2.md) | 128 | `result-track:0231b51f7d683732e90956f267d9feca9f9861dd837f8ca3fb357d9f1526d478` |
| 11 | `lemma` | [isEverywherePos_everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/iseverywherepos-everywherepossubset--ae6806c03565876503ae1b39.md) | 143 | `result-track:ae6806c03565876503ae1b3950e2f0b82491662b1ec94200ce2bd42aefcf620d` |
| 12 | `lemma` | [isEverywherePos_everywherePosSubset_of_measure_ne_top](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/iseverywherepos-everywherepossubset-of-measure-ne-top--c22acac102ce55f0bbb3ab95.md) | 161 | `result-track:c22acac102ce55f0bbb3ab95e2c72ece951ac65df3a1ba326082bff7de57eea1` |
| 13 | `lemma` | [IsEverywherePos.smul_measure](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/iseverywherepos-smul-measure--04f34246ac90d826b496919a.md) | 174 | `result-track:04f34246ac90d826b496919acfe532bb6d93ba5d2089124b55304ce6d58562e8` |
| 14 | `lemma` | [IsEverywherePos.smul_measure_nnreal](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/iseverywherepos-smul-measure-nnreal--209ea1081c7ec44b5d35fb3e.md) | 178 | `result-track:209ea1081c7ec44b5d35fb3ed964a9850d7ff342b6ae960b0fba4d095219f147` |
| 15 | `lemma` | [IsEverywherePos.of_forall_exists_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/iseverywherepos-of-forall-exists-nhds-eq--0ef0211f491507c4483fb19a.md) | 184 | `result-track:0ef0211f491507c4483fb19ad33c0663e9d8fdfc279416419683defcf1669cd8` |
| 16 | `lemma` | [isEverywherePos_iff_of_forall_exists_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/iseverywherepos-iff-of-forall-exists-nhds-eq--3d32cc5e5f30dc51854ff58b.md) | 194 | `result-track:3d32cc5e5f30dc51854ff58beea26d3c7e7f085b152890fbdf6dd1fea9f00f2e` |
| 17 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.IsOpen.isEverywherePos](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/root-grwtsk-topology-generaltopology-iseverywherepos-variant3ab314092252--d8dcbd44c37af877c95d8d00.md) | 202 | `result-track:d8dcbd44c37af877c95d8d0018da6b0522a4da93290fd7492c604455630c8aaf` |
| 18 | `lemma` | [IsEverywherePos.IsGdelta_of_isMulLeftInvariant](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/iseverywherepos-isgdelta-of-ismulleftinvariant--9068ec433ddf3f7fe94e04b7.md) | 221 | `result-track:9068ec433ddf3f7fe94e04b70011b0b5850e32d7e17aecfc154b927a6cded135` |
| 19 | `theorem` | [innerRegularWRT_preimage_one_hasCompactSupport_measure_ne_top_of_group](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/declarations/innerregularwrt-preimage-one-hascompactsupport-measure-ne-top-of-group--cb64219ce45a58a262d44c80.md) | 280 | `result-track:cb64219ce45a58a262d44c80510c7723df409bd4a3eb2dc6d111e287ccf91cbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
