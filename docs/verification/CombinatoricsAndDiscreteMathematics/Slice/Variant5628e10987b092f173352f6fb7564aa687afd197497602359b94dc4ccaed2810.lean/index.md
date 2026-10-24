# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Slice.Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b1b6e5751c12ef9b44a303e49acd4f82fc68407",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b1b6e5751c12ef9b44a303e49acd4f82fc68407`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sized](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized--5beaccd02786011caf151f93.md) | 43 | `declaration-track:5beaccd02786011caf151f9366d701b0a12ea08c56987cf8b726bce437b69930` |
| 2 | `theorem` | [Sized.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-mono--781214c25c4a43a0a5e6c405.md) | 45 | `result-track:781214c25c4a43a0a5e6c405ea4bb668c7b744343d9473a8fbfa2c6a9b6dd0d8` |
| 3 | `lemma` | [sized_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-empty--6f0a7d02dd3a880cf6d7f4cf.md) | 47 | `result-track:6f0a7d02dd3a880cf6d7f4cf8d3867c708a2f1c7188337c74e882814ce380ccf` |
| 4 | `lemma` | [sized_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-singleton--5cc48fff3c8e3378e5ea0720.md) | 48 | `result-track:5cc48fff3c8e3378e5ea0720fcac37254465d6469fc590ce6a050a4d05183529` |
| 5 | `theorem` | [sized_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-union--6661f41ea17f79127a4beb3d.md) | 50 | `result-track:6661f41ea17f79127a4beb3df0db63efefc1f3535655dc1a0acd21504dd8c110` |
| 6 | `theorem` | [sized_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-iunion--868c673908685909bc4aad81.md) | 58 | `result-track:868c673908685909bc4aad817bb3b4e0e72483d55bfd7ee5aecaaaa2e5c1f27b` |
| 7 | `theorem` | [sized_iUnion₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-iunion--d6161e1ae1821e43a8d10c95.md) | 63 | `result-track:d6161e1ae1821e43a8d10c959061cd6ef170bda2fe423298a5596fd38607fb9f` |
| 8 | `theorem` | [Sized.isAntichain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-isantichain--42dd3276f8da5e2dfc27cd57.md) | 67 | `result-track:42dd3276f8da5e2dfc27cd573d2e80bef753ca0f154a446df0d5548ad26529d1` |
| 9 | `theorem` | [Sized.subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-subsingleton--522635b2fbd33a2f6b9adb98.md) | 70 | `result-track:522635b2fbd33a2f6b9adb98e5bab441e1c8265041f4e82a7a07af87c9195ecd` |
| 10 | `theorem` | [Sized.subsingleton'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-subsingleton--53c9663cddb8f67796693ccf.md) | 73 | `result-track:53c9663cddb8f67796693ccf77d35e7079ff788016009fd6ca06728c0e864caa` |
| 11 | `theorem` | [Sized.empty_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-empty-mem-iff--fd1e3d5e28d228a818c36399.md) | 76 | `result-track:fd1e3d5e28d228a818c36399deed33c2109ccb49fbffeda9e6a8d309f37e74ed` |
| 12 | `theorem` | [Sized.univ_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-univ-mem-iff--23297e08139652708ba6ba56.md) | 79 | `result-track:23297e08139652708ba6ba56bc8e8e6d692637bc69410953157e19884fb47250` |
| 13 | `theorem` | [sized_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-powersetcard--fc8ec38e607253f8f388d18a.md) | 82 | `result-track:fc8ec38e607253f8f388d18a7502fccc8a660e30c4e580c79bea6c58a9575038` |
| 14 | `theorem` | [subset_powersetCard_univ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/subset-powersetcard-univ-iff--80c6bc87ec2751716d83b036.md) | 93 | `result-track:80c6bc87ec2751716d83b0361c8afc430a64af7db1ba0483ec2536870dbb5d4c` |
| 15 | `theorem` | [_root_.Set.Sized.card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/root-set-sized-card-le--1c430a6ca52d66b15599ff1e.md) | 98 | `result-track:1c430a6ca52d66b15599ff1ef505f4be0e58a5875dcfccc2a708c33d7d48fec9` |
| 16 | `def` | [slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/slice--60a8035b37aa06b88221d8e1.md) | 113 | `declaration-track:60a8035b37aa06b88221d8e118cc2f6f580409948ca1eab1b4cf9031e549edc7` |
| 17 | `theorem` | [mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/mem-slice--43c14e2ddf8e7cc9b0ec326a.md) | 119 | `result-track:43c14e2ddf8e7cc9b0ec326a91f50ad34843fec0e7b4add0bea8fc2ccec9cd76` |
| 18 | `theorem` | [slice_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/slice-subset--702a5e7b0364c6f988f36491.md) | 123 | `result-track:702a5e7b0364c6f988f36491f64d6bba15dbc201c96a96e2441e1790a6621a7e` |
| 19 | `theorem` | [sized_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sized-slice--340c3de3e1233102d9a0be6f.md) | 127 | `result-track:340c3de3e1233102d9a0be6fdc0a8bfc2f767b8a28a2ab502dcf7aa58f41d6be` |
| 20 | `theorem` | [eq_of_mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/eq-of-mem-slice--9ef79637fb0498b9da6a71eb.md) | 129 | `result-track:9ef79637fb0498b9da6a71eba96d4e7caf4099996be138f83340e9608001db6e` |
| 21 | `theorem` | [ne_of_mem_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/ne-of-mem-slice--e4e6866913e8ff2458898f8c.md) | 133 | `result-track:e4e6866913e8ff2458898f8cba0d61d63508c2984c5c8cae30d7febfc71b4b09` |
| 22 | `theorem` | [pairwiseDisjoint_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/pairwisedisjoint-slice--ec1ffa98dab4db969200eaa3.md) | 136 | `result-track:ec1ffa98dab4db969200eaa312abe78183a76158ffc39d58cf202da43299b64e` |
| 23 | `theorem` | [biUnion_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/biunion-slice--d758b33f233339b1aa8fc2bc.md) | 142 | `result-track:d758b33f233339b1aa8fc2bc4e09cf29adc021e73c012ef241160a8ca5ef7716` |
| 24 | `theorem` | [sum_card_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Slice/Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.lean/declarations/sum-card-slice--bb6e4d9180f9835f89fb3b94.md) | 147 | `result-track:bb6e4d9180f9835f89fb3b946b10e16174bf6771ba7b22a0a81d8488d8d67720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
