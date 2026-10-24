# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetLike.Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12f3d17a16b4f3059ca50b18a271b7d489eff4a2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12f3d17a16b4f3059ca50b18a271b7d489eff4a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteSublattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ext_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/ext-mem--13383d0a5e657e525086e31e.md) | 30 | `result-track:13383d0a5e657e525086e31ed95931f47c4c91a74c80f7a73b2490989c0d4f60` |
| 2 | `lemma` | [mem_subtype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-subtype--ad480f14e4e567c810a10300.md) | 32 | `result-track:ad480f14e4e567c810a10300fa9a9ae6b58ce663f05da6a9d1a1ba775f593aa5` |
| 3 | `lemma` | [setLike_mem_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/setlike-mem-inf--62550cda8fbb91a22cd3d94e.md) | 34 | `result-track:62550cda8fbb91a22cd3d94e94e13ef7317626fe9e946642a7b58ecace8872c9` |
| 4 | `lemma` | [setLike_mem_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/setlike-mem-sup--2ee574ae9019c101a6ca7905.md) | 35 | `result-track:2ee574ae9019c101a6ca790524ce0bd3a8fa4df07917ef548396fcfde080467f` |
| 5 | `lemma` | [setLike_mem_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/setlike-mem-coe--e6c3e6cd0c6cd0d39dec731b.md) | 37 | `result-track:e6c3e6cd0c6cd0d39dec731b4a075a3a1470c726fe6bf471193133297e345873` |
| 6 | `lemma` | [setLike_mem_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/setlike-mem-mk--700b7f7cf9c2b23e7182b059.md) | 40 | `result-track:700b7f7cf9c2b23e7182b0594f96461617d9a882a8394760868abb7326f5eb62` |
| 7 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/ext--15cffd5d9dae55ff64b69273.md) | 50 | `result-track:15cffd5d9dae55ff64b6927379c980a069197cfd523ec982a7830fd5a9de538b` |
| 8 | `lemma` | [mem_subtype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-subtype--773f20dfc9b73654108b74cd.md) | 52 | `result-track:773f20dfc9b73654108b74cda79ca7bb25b1a2819a44d06bed25c336b947372a` |
| 9 | `lemma` | [mem_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-inf--60b666f078e93bc6e5aa292e.md) | 54 | `result-track:60b666f078e93bc6e5aa292eda086c7f362b227c8966a5073c08adcf09d0075a` |
| 10 | `lemma` | [mem_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-sinf--fe500374f264649062c8433f.md) | 55 | `result-track:fe500374f264649062c8433f70fcf0774d5ccbf6433555ed31f7dfb5edc7e1b2` |
| 11 | `lemma` | [mem_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-iinf--d5640f5c7a092019b1b187f5.md) | 56 | `result-track:d5640f5c7a092019b1b187f571124314f62184c09111345bcb273309b87ae0d4` |
| 12 | `lemma` | [mem_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-top--8a772c0331fb983864ae0152.md) | 57 | `result-track:8a772c0331fb983864ae0152507db03f92ccf4e08d1a66e6fba0822fd66f9621` |
| 13 | `lemma` | [mem_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-sup--be693758a9e3cd50a5feddba.md) | 59 | `result-track:be693758a9e3cd50a5feddbaaed728df7e954bd5ce460d32209133f81eef20ef` |
| 14 | `lemma` | [mem_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-ssup--c8346a72d343b75a5557d714.md) | 60 | `result-track:c8346a72d343b75a5557d7147a31f94a1ad1e5a4b740c1227c3b1be3fd410705` |
| 15 | `lemma` | [mem_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-isup--531cf26b6b2a2b12b76b3845.md) | 61 | `result-track:531cf26b6b2a2b12b76b3845e1ae2d7c8e600957623604ca33253483126d1b2e` |
| 16 | `lemma` | [notMem_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/notmem-bot--5069578b726e18bdaba56de4.md) | 62 | `result-track:5069578b726e18bdaba56de457ef6ff833223229873c189f1375c26b824be9ae` |
| 17 | `lemma` | [mem_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant1dc8f422a71a96135032ec51b7ec8b3ac5b9d42bfa7a42d701b6bb9ee82c13ff.lean/declarations/mem-mk--7c2b8e18b88e6e9e50e1a28e.md) | 67 | `result-track:7c2b8e18b88e6e9e50e1a28eb74b31d434e98820ec0f5a6632cb15127c4720a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
