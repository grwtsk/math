# Verification target: GRWTSK.Topology.GeneralTopology.Intervals.Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f4a075e2a8491f942ee21c9337bbf2a900ccdae",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f4a075e2a8491f942ee21c9337bbf2a900ccdae`.

Source path: `GRWTSK/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bool.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ico](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/ico--b02a1684e34b5b37261b44c6.md) | 36 | `declaration-track:b02a1684e34b5b37261b44c69857cba2cafb6eede79cfb43b9b1ddf6bf0cf9e7` |
| 2 | `theorem` | [zero_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/zero-bot--fe1634bf968e80bf7666a736.md) | 41 | `result-track:fe1634bf968e80bf7666a7366b21f5a5e1c62a0ded36566191185beedeaf6bc8` |
| 3 | `theorem` | [length](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/length--7c3b552dc0a64a18d332e36c.md) | 44 | `result-track:7c3b552dc0a64a18d332e36c0cd784b804077fc5b7603476007d6b76b94cebd1` |
| 4 | `theorem` | [pairwise_lt](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/pairwise-lt--19430bc692158bd68be2ed0e.md) | 48 | `result-track:19430bc692158bd68be2ed0e7f25dcafea5932476ef4130c41c5e0be5e55b4ef` |
| 5 | `theorem` | [nodup](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/nodup--229a96bddeb08b60af39dd69.md) | 52 | `result-track:229a96bddeb08b60af39dd693dd78fbfd813d7a6978c6897bd9e969f3817e1c6` |
| 6 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/mem--cc47c66866bf854bb494fdf9.md) | 57 | `result-track:cc47c66866bf854bb494fdf9b8d37bc5df986539b18f1efae5c7cd519eec6f6a` |
| 7 | `theorem` | [eq_nil_of_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/eq-nil-of-le--8ae7d4e8079d53a312e91748.md) | 61 | `result-track:8ae7d4e8079d53a312e917484404d5b8feac257ab610ca368abce61b49f75744` |
| 8 | `theorem` | [map_add](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/map-add--10e26d48eb60334597cea3c4.md) | 64 | `result-track:10e26d48eb60334597cea3c4f67236932e034e3c32d6bca72efa84504bf4e637` |
| 9 | `theorem` | [map_sub](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/map-sub--1afa1f0c261923db12fc826c.md) | 67 | `result-track:1afa1f0c261923db12fc826cc2d1f11bee33180b80d9c51bfb660132a7c747b5` |
| 10 | `theorem` | [self_empty](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/self-empty--cfcf06a8c92f7adbb2bb45d2.md) | 72 | `result-track:cfcf06a8c92f7adbb2bb45d26919e66dedb028c4170b63b7a15bd088ce89e768` |
| 11 | `theorem` | [eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/eq-empty-iff--b53a1e6fe0d3ea748ab33afa.md) | 76 | `result-track:b53a1e6fe0d3ea748ab33afab10fe497b2acaf2ce4a6f1ef3df0b2999700da40` |
| 12 | `theorem` | [append_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/append-consecutive--b172913d4d03d480cf76af95.md) | 79 | `result-track:b172913d4d03d480cf76af9590de6b26ff278fd30d497432d769ff5b3aba5e65` |
| 13 | `theorem` | [inter_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/inter-consecutive--798005e8b7a917e2a5b4252b.md) | 87 | `result-track:798005e8b7a917e2a5b4252bf1340701b9175c79d9ec4fc419746b296102534b` |
| 14 | `theorem` | [bagInter_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/baginter-consecutive--6a862dc945bf79ef53e22e00.md) | 96 | `result-track:6a862dc945bf79ef53e22e008aca629e7217858a262e3df9612472851cb90d9b` |
| 15 | `theorem` | [succ_singleton](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/succ-singleton--43ed68994fd9c8f3d11a4ecc.md) | 101 | `result-track:43ed68994fd9c8f3d11a4ecc6714fff0afb9657f399dd84bbf7753d39c25542f` |
| 16 | `theorem` | [succ_top](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/succ-top--e574e1924d9a5f145127799e.md) | 105 | `result-track:e574e1924d9a5f145127799eab366e041c6d94a806577ec45da033876d11cc4a` |
| 17 | `theorem` | [eq_cons](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/eq-cons--712f22796b3d4af32f1b2256.md) | 109 | `result-track:712f22796b3d4af32f1b2256914b83185528f903c6e5811533a861e09e359348` |
| 18 | `theorem` | [pred_singleton](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/pred-singleton--9689a1b28f6ce6ff229771c3.md) | 114 | `result-track:9689a1b28f6ce6ff229771c3f51299f976cc28b01fc9c6e2abef3333981b88d2` |
| 19 | `theorem` | [chain'_succ](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/chain-succ--a44d697f9d2f02a8922ab50c.md) | 117 | `result-track:a44d697f9d2f02a8922ab50c218dfe772abb114501adccc6452b8746d8bab1d0` |
| 20 | `theorem` | [notMem_top](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/notmem-top--de7a515e78c5dcb0e693c49b.md) | 124 | `result-track:de7a515e78c5dcb0e693c49b9c1c43848a6df2d968314501b7c776117386325d` |
| 21 | `theorem` | [filter_lt_of_top_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-lt-of-top-le--0f0caa0d81b8f76f8577daf7.md) | 128 | `result-track:0f0caa0d81b8f76f8577daf777620230907ab29d7686b1406fca2e2ff346e5b9` |
| 22 | `theorem` | [filter_lt_of_le_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-lt-of-le-bot--8e0232e637aaf11ade84601c.md) | 133 | `result-track:8e0232e637aaf11ade84601c503b59a3eb1d5f3157b51962b416943293b82fe7` |
| 23 | `theorem` | [filter_lt_of_ge](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-lt-of-ge--53731596da05dd3abcfec962.md) | 139 | `result-track:53731596da05dd3abcfec9623f9c60cb61a59fde485a3796ce80c1a6d06c659e` |
| 24 | `theorem` | [filter_lt](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-lt--9ec7d2e3fdad7b492089dd7f.md) | 147 | `result-track:9ec7d2e3fdad7b492089dd7ff7c887c061bda1a96e9ebd0585d1b6e2ad3d9cac` |
| 25 | `theorem` | [filter_le_of_le_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-le-of-le-bot--16ce9309d09a03494c4a43f1.md) | 153 | `result-track:16ce9309d09a03494c4a43f181ab5260b3c6b6a9ef48090ee8938a17238579e7` |
| 26 | `theorem` | [filter_le_of_top_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-le-of-top-le--63703d428e5487add75fabde.md) | 159 | `result-track:63703d428e5487add75fabded5a9c6799c31c6ad20fce223ccff8ae0579ce305` |
| 27 | `theorem` | [filter_le_of_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-le-of-le--048785f5698f9c35685bcb91.md) | 164 | `result-track:048785f5698f9c35685bcb917745c4ed3ce970878aa2bae06cfd40755713e180` |
| 28 | `theorem` | [filter_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-le--938b40916e15d77fb43bed5d.md) | 172 | `result-track:938b40916e15d77fb43bed5d639555f9c0d45a66994f943dd6e9ae4420a921c1` |
| 29 | `theorem` | [filter_lt_of_succ_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-lt-of-succ-bot--1cf0a7633ca8ac0b274ee07f.md) | 177 | `result-track:1cf0a7633ca8ac0b274ee07fce8624f50bc0f67b8a8c3b1d27bbfa9b895f1397` |
| 30 | `theorem` | [filter_le_of_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/filter-le-of-bot--05168d75b02bfde9d4d96ebb.md) | 183 | `result-track:05168d75b02bfde9d4d96ebba82766db6d08d7f67fbffbe3c05109bee7a86fc7` |
| 31 | `theorem` | [trichotomy](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant571b10dee200046ab138f8bc0ea0f219e5fd3a0c74f779c02154d23298a04635.lean/declarations/trichotomy--cc72f47cb688873bc6e516da.md) | 193 | `result-track:cc72f47cb688873bc6e516da75831aac29654efc5a127c10ccd4744167d815b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
