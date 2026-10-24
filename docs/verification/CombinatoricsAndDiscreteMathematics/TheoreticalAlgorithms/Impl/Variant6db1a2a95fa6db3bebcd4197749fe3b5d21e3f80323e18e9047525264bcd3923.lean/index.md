# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Impl.Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f020b2f2e5e4ec87545a57c706d808407c6dfa08",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f020b2f2e5e4ec87545a57c706d808407c6dfa08`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Sort.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mergeTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/mergetr--cd6089e1c6d595162ac07bbf.md) | 51 | `declaration-track:cd6089e1c6d595162ac07bbfe101c941a8b8085d13a047a68bff0e71531402fa` |
| 2 | `theorem` | [mergeTR_go_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/mergetr-go-eq--4af9c40ac6874f7453a12f3a.md) | 62 | `result-track:4af9c40ac6874f7453a12f3ae602988b5e3dc0874a962eefab42f32b3bcca8ca` |
| 3 | `theorem` | [merge_eq_mergeTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/merge-eq-mergetr--4b93e5184706da38d8995713.md) | 72 | `result-track:4b93e5184706da38d89957135ff51960f8516e2394fa141b701962383e5e6e09` |
| 4 | `def` | [splitRevAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/splitrevat--765ad24ef38487fabcd64392.md) | 83 | `declaration-track:765ad24ef38487fabcd64392acaa7505fe25d531d113013156997cd20792e7ff` |
| 5 | `theorem` | [splitRevAt_go](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/splitrevat-go--9b0a607f9480060728cc97c7.md) | 89 | `result-track:9b0a607f9480060728cc97c703a6ff76f6d4fe9efff8bc3ba970ba3d4e94e3e9` |
| 6 | `theorem` | [splitRevAt_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/splitrevat-eq--dadf8cb2b0403eeb6e21485c.md) | 100 | `result-track:dadf8cb2b0403eeb6e21485c59f06bc19a7a756151f420f9a3a22bb043792c13` |
| 7 | `def` | [mergeSortTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/mergesorttr--670f0f3e3f6fe2cdffb4f6aa.md) | 110 | `declaration-track:670f0f3e3f6fe2cdffb4f6aa29b862545c25ed6864db6d241420b8fb3b4a9126` |
| 8 | `def` | [splitRevInTwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/splitrevintwo--705f853fdfddd8b90d141ce6.md) | 123 | `declaration-track:705f853fdfddd8b90d141ce6adc6671b2e28d60bba7eeb0883e13f234267ec93` |
| 9 | `def` | [splitRevInTwo'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/splitrevintwo--d49a01c8d52549dad5713ac6.md) | 132 | `declaration-track:d49a01c8d52549dad5713ac66edf46f0923ceb657dbeb33c8e7426e22a25cd66` |
| 10 | `def` | [mergeSortTR₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/mergesorttr--1b4de6b3052dbd506d99fc0d.md) | 143 | `declaration-track:1b4de6b3052dbd506d99fc0d0f8f782a1c4bda54e1f93ad8a659a1190931f242` |
| 11 | `theorem` | [splitRevInTwo'_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/splitrevintwo-fst--3259519e9f86b5d1b52bc9a8.md) | 159 | `result-track:3259519e9f86b5d1b52bc9a802bb910b36551486e47d7f79a62cff8da5c9a9b2` |
| 12 | `theorem` | [splitRevInTwo'_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/splitrevintwo-snd--9b5b6abbc5cbc6c0022a31b7.md) | 164 | `result-track:9b5b6abbc5cbc6c0022a31b76c195b85c81c7707b1eceeba0ac218ba5a3ff9a1` |
| 13 | `theorem` | [splitRevInTwo_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/splitrevintwo-fst--8800bce308c2cfc6692d8dcd.md) | 170 | `result-track:8800bce308c2cfc6692d8dcdb7231f189f795ceb9ecaedfe6901499af3b09efd` |
| 14 | `theorem` | [splitRevInTwo_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/splitrevintwo-snd--253070ff2be53ded141e5447.md) | 173 | `result-track:253070ff2be53ded141e5447d819be196327cc73965dc35e44f753a9895e543e` |
| 15 | `theorem` | [mergeSortTR_run_eq_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/mergesorttr-run-eq-mergesort--d337a3642f56d46a7b4dcb5b.md) | 177 | `result-track:d337a3642f56d46a7b4dcb5b6cd5f0ab31eab7c5161241c6c3c85ff3d4505f96` |
| 16 | `theorem` | [mergeSort_eq_mergeSortTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/mergesort-eq-mergesorttr--f27b26742f89fd0995763939.md) | 187 | `result-track:f27b26742f89fd0995763939f31177121002cb640479483c2e078f0d7f9609c1` |
| 17 | `theorem` | [mergeSortTR₂_run_eq_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/mergesorttr-run-eq-mergesort--d748c8c9da612a98bb1bf94a.md) | 193 | `result-track:d748c8c9da612a98bb1bf94a519c27cd7eeb50cf8f06a4e58f30fda755268454` |
| 18 | `theorem` | [mergeSortTR₂_run'_eq_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/mergesorttr-run-eq-mergesort--e20aeafb95d0bf2141b10fb6.md) | 205 | `result-track:e20aeafb95d0bf2141b10fb6f5517f45445bac9a7b41b8add814c4c700fc889e` |
| 19 | `theorem` | [mergeSort_eq_mergeSortTR₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/declarations/mergesort-eq-mergesorttr--c344093637941ce702127e5e.md) | 240 | `result-track:c344093637941ce702127e5ef5e3f9ccf53b7b68cbc778f93be4ac19872f84e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
