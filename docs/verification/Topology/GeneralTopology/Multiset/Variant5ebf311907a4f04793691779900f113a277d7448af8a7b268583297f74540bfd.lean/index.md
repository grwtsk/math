# Verification target: GRWTSK.Topology.GeneralTopology.Multiset.Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "827dd9bda7ee4693f8e7e93b5895b60455737245",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `827dd9bda7ee4693f8e7e93b5895b60455737245`.

Source path: `GRWTSK/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/icc--4d949882d8e07f18b9b20b84.md) | 44 | `declaration-track:4d949882d8e07f18b9b20b84568f83cfd56b5d5096260f31ca21d9808d02e4a5` |
| 2 | `def` | [Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico--c72021159c6f90308dae8852.md) | 48 | `declaration-track:c72021159c6f90308dae885277ebcf6abe588f1e821d7bde5e915dc462924388` |
| 3 | `def` | [Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioc--990ff7e54264ffcd1bc5ed19.md) | 52 | `declaration-track:990ff7e54264ffcd1bc5ed194210f1fdbdd94db660e3f3b412f9515d1cf0a523` |
| 4 | `def` | [Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioo--3029b23152fec544f14ded11.md) | 56 | `declaration-track:3029b23152fec544f14ded11536fee9c914ffe3d2965cd2fb640be3128e40eca` |
| 5 | `lemma` | [mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/mem-icc--b709f98226eb1e3a2209f45e.md) | 58 | `result-track:b709f98226eb1e3a2209f45e9aaae166feb41ecc8d0155562b3c94a6c125fc9e` |
| 6 | `lemma` | [mem_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/mem-ico--cb594290c737b466d84e9e59.md) | 60 | `result-track:cb594290c737b466d84e9e59c1204cc6b7d36ccd05a4d617845270cdadcc1c06` |
| 7 | `lemma` | [mem_Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/mem-ioc--1a2f4802eeab227aad3e1aa6.md) | 62 | `result-track:1a2f4802eeab227aad3e1aa6e402f4519cf51c185418c6179e7dccc3edc3170a` |
| 8 | `lemma` | [mem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/mem-ioo--8d798bde800e1e899d986147.md) | 64 | `result-track:8d798bde800e1e899d9861477e9a4da7ff6bb8ee7a08ff53a3e272031648597d` |
| 9 | `def` | [Ici](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ici--1d35f0c892d6aa790d46f82a.md) | 73 | `declaration-track:1d35f0c892d6aa790d46f82adb102f98115540ee196eabb6ef53aac417205b5c` |
| 10 | `def` | [Ioi](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioi--1999c9508a14ebb79230cf12.md) | 76 | `declaration-track:1999c9508a14ebb79230cf129eeaff66c7e78cdc5517cefe41bd3fefedf15b7f` |
| 11 | `lemma` | [mem_Ici](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/mem-ici--580af9c46569d3c267be7614.md) | 78 | `result-track:580af9c46569d3c267be761403161d72b0cd2c0acdccbdd88a14b3a3e9ffb7c8` |
| 12 | `lemma` | [mem_Ioi](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/mem-ioi--91fbe9bcf85ab8266b432798.md) | 80 | `result-track:91fbe9bcf85ab8266b4327986aea889931dfb152b07bcf7856f3fb71f81b8601` |
| 13 | `def` | [Iic](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/iic--41552c48a9caa76175cd06c9.md) | 88 | `declaration-track:41552c48a9caa76175cd06c90d67caa2cd861365342efc2cc8f0ea1f50f7196d` |
| 14 | `def` | [Iio](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/iio--af57c174a672e33ae46675c3.md) | 91 | `declaration-track:af57c174a672e33ae46675c3746c6bc71897119bb6982d49b0f642a94d3ea66b` |
| 15 | `lemma` | [mem_Iic](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/mem-iic--dc8747d5a5bd0ff480cb3930.md) | 93 | `result-track:dc8747d5a5bd0ff480cb3930e2f8fafe6085d5eb4c4fc090625e3bfa5c92df3c` |
| 16 | `lemma` | [mem_Iio](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/mem-iio--fd172cf8435fd4f36abe93e8.md) | 95 | `result-track:fd172cf8435fd4f36abe93e8ac2ffec7a9e8085ff1cb474096535d4adef7e113` |
| 17 | `theorem` | [nodup_Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/nodup-icc--a4418f9999f848fe331dc9ce.md) | 103 | `result-track:a4418f9999f848fe331dc9ce703ee64ed05a4aabf02d15aecf9442cf169b729f` |
| 18 | `theorem` | [nodup_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/nodup-ico--43140a61765e0a4012dfe37e.md) | 106 | `result-track:43140a61765e0a4012dfe37ee1cc852167966fab26ebc3f3d38947d8d72f80d3` |
| 19 | `theorem` | [nodup_Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/nodup-ioc--adfc5a640f8c45838ff0b010.md) | 109 | `result-track:adfc5a640f8c45838ff0b01000678fa41bd5615ac27513a1fcd15a845d56ba92` |
| 20 | `theorem` | [nodup_Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/nodup-ioo--83ae5a5e84c7902d7311a295.md) | 112 | `result-track:83ae5a5e84c7902d7311a295d07c8269bae131850d556580fab72fc391a58ad2` |
| 21 | `theorem` | [Icc_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/icc-eq-zero-iff--65e3cd3791059cf16b24158f.md) | 116 | `result-track:65e3cd3791059cf16b24158fdefd0635bce3d9cf9e72cbf9fb79b54c6bb0cda9` |
| 22 | `theorem` | [Ico_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-eq-zero-iff--106547034d5fd95c4ed32ab4.md) | 120 | `result-track:106547034d5fd95c4ed32ab4897628720d7be24657955b466347e3bc8a517342` |
| 23 | `theorem` | [Ioc_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioc-eq-zero-iff--65e2ce21b1ad47c508a18c64.md) | 124 | `result-track:65e2ce21b1ad47c508a18c6422fb9a4a97b9a62d34cc93f1fd1493a2c37a2edd` |
| 24 | `theorem` | [Ioo_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioo-eq-zero-iff--2a222cd1762d0c59d0eb0e80.md) | 128 | `result-track:2a222cd1762d0c59d0eb0e80ca0bc137dcfc0c21bcb882b9bdf7311a7de95a8f` |
| 25 | `theorem` | [Ioo_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioo-eq-zero--8a2ea9d4e26ef06bb9ea6e0f.md) | 138 | `result-track:8a2ea9d4e26ef06bb9ea6e0fd197f4dbda54d1170801878b884c26da85763281` |
| 26 | `theorem` | [Icc_eq_zero_of_lt](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/icc-eq-zero-of-lt--d6ea2b22ca4373adebfb28c6.md) | 142 | `result-track:d6ea2b22ca4373adebfb28c6ff6e0d24847e29514a55607fb818478000a8facc` |
| 27 | `theorem` | [Ico_eq_zero_of_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-eq-zero-of-le--622166bc40bf395ff4e87efd.md) | 146 | `result-track:622166bc40bf395ff4e87efdd399463ea91b05e31a131d34c5493129849d3d83` |
| 28 | `theorem` | [Ioc_eq_zero_of_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioc-eq-zero-of-le--18df73c122601e442c47dc30.md) | 150 | `result-track:18df73c122601e442c47dc30b86cdc80506b0e9e77b428b705f0cfa9e960682a` |
| 29 | `theorem` | [Ioo_eq_zero_of_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioo-eq-zero-of-le--f9794b3973dae8e5a1994de5.md) | 154 | `result-track:f9794b3973dae8e5a1994de5349c242a3d1540b846229f83ab08e8ae51f4d045` |
| 30 | `theorem` | [Ico_self](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-self--13f28a94daae225d7da218df.md) | 159 | `result-track:13f28a94daae225d7da218dfea833959b2bb93e262704a279125a156469fcbfd` |
| 31 | `theorem` | [Ioc_self](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioc-self--8d1804d8e66308d9d0c9e710.md) | 161 | `result-track:8d1804d8e66308d9d0c9e710ed669daea879e39770abc86c5ca305f4f089416c` |
| 32 | `theorem` | [Ioo_self](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioo-self--bdcd04f9535d8eedd189f6b2.md) | 163 | `result-track:bdcd04f9535d8eedd189f6b23a93c39743ab021d51e46cda9c5b9fedfe845164` |
| 33 | `theorem` | [left_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/left-mem-icc--c821ef6e2b737489c3ca39f3.md) | 167 | `result-track:c821ef6e2b737489c3ca39f38db93f71ee56a7f62980b10c532c989a1f936d13` |
| 34 | `theorem` | [left_mem_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/left-mem-ico--0f4ddbe39e2df8ac2dc1bf1d.md) | 170 | `result-track:0f4ddbe39e2df8ac2dc1bf1d2cdcffb85001d942f8bf427f0b78e25c4c716547` |
| 35 | `theorem` | [right_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/right-mem-icc--4b154dfd0e2e0ee27d10c780.md) | 173 | `result-track:4b154dfd0e2e0ee27d10c7801a9f3757b7262947f6fcb59079684eabbf2e1477` |
| 36 | `theorem` | [right_mem_Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/right-mem-ioc--b007696cffc46bced770ec21.md) | 176 | `result-track:b007696cffc46bced770ec21247d6eb1604548ec84325d5fa5750007343462c4` |
| 37 | `theorem` | [left_notMem_Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/left-notmem-ioc--784d5f47e631b6ef220f1d5e.md) | 179 | `result-track:784d5f47e631b6ef220f1d5eb49a5093fda52d53ff52ba1124d9679553a858bb` |
| 38 | `theorem` | [left_notMem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/left-notmem-ioo--67c5a4a1046262b0a114b305.md) | 184 | `result-track:67c5a4a1046262b0a114b30515a7bf7c8a1a493c1076cf12acb7c3bbb407559a` |
| 39 | `theorem` | [right_notMem_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/right-notmem-ico--c12a276d590fb38de74807f3.md) | 189 | `result-track:c12a276d590fb38de74807f3f8c7506b976b4263603eead1a97ae3f81717b17d` |
| 40 | `theorem` | [right_notMem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/right-notmem-ioo--3ec0a5c0a48f6b35481b9ef5.md) | 194 | `result-track:3ec0a5c0a48f6b35481b9ef5c126222a44e548554b1bc7c70f5a98ac34d80930` |
| 41 | `theorem` | [Ico_filter_lt_of_le_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-filter-lt-of-le-left--7ba807bcecdb78d98fb5e57d.md) | 199 | `result-track:7ba807bcecdb78d98fb5e57d18f89b9779b073fade8b2d96e05c3e53136af135` |
| 42 | `theorem` | [Ico_filter_lt_of_right_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-filter-lt-of-right-le--973dac9d7c5ac4de75926661.md) | 204 | `result-track:973dac9d7c5ac4de759266611da2261300009ad0e01fa06fe96e67b3fcf7b1ad` |
| 43 | `theorem` | [Ico_filter_lt_of_le_right](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-filter-lt-of-le-right--a921de5c4d50952d9c6bc0d3.md) | 208 | `result-track:a921de5c4d50952d9c6bc0d3d0a581a7d00ecdee00f499a1dedfab9e918f70f4` |
| 44 | `theorem` | [Ico_filter_le_of_le_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-filter-le-of-le-left--425536010edda50600a441a8.md) | 213 | `result-track:425536010edda50600a441a82291c8d47add1fa45d1fda5cd408aee48dc4a3b9` |
| 45 | `theorem` | [Ico_filter_le_of_right_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-filter-le-of-right-le--ab5d02f3fcaf4860da074880.md) | 217 | `result-track:ab5d02f3fcaf4860da074880af0b9bc661a1c89271ebfb1d889320572639d51c` |
| 46 | `theorem` | [Ico_filter_le_of_left_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-filter-le-of-left-le--df9cd2063559812fea2a9376.md) | 222 | `result-track:df9cd2063559812fea2a93769478e0ebe6d3749cb05fb6f060df657f9b842f7a` |
| 47 | `theorem` | [Icc_self](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/icc-self--55d2e2eed0b1716d5cf3470d.md) | 234 | `result-track:55d2e2eed0b1716d5cf3470da097f66182ac97f00649486d0c32f14b20699f27` |
| 48 | `theorem` | [Ico_cons_right](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-cons-right--370fe4fcbdf1c62a24f91da6.md) | 236 | `result-track:370fe4fcbdf1c62a24f91da6cbde9208d71179e4afba04c40ae59ebfa8e89b75` |
| 49 | `theorem` | [Ioo_cons_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ioo-cons-left--580ab3acbf38429d9e2f2363.md) | 241 | `result-track:580ab3acbf38429d9e2f23632873ed3768c385547c444fd5dc03ca898cbfdad8` |
| 50 | `theorem` | [Ico_disjoint_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-disjoint-ico--b6cca4557bab60a3b3bebfe4.md) | 246 | `result-track:b6cca4557bab60a3b3bebfe49de27e9cdec9329547208ef8c941c978f7af0897` |
| 51 | `theorem` | [Ico_inter_Ico_of_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-inter-ico-of-le--edbad98c982ce712eeeaf1b0.md) | 252 | `result-track:edbad98c982ce712eeeaf1b0a56182b0bfefb424346edc674a3653e0936bd030` |
| 52 | `theorem` | [Ico_filter_le_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-filter-le-left--161a80fd5511d29204fd4b7e.md) | 255 | `result-track:161a80fd5511d29204fd4b7ed242e92233f53e6c47352d3593e0865fac0d4be5` |
| 53 | `theorem` | [card_Ico_eq_card_Icc_sub_one](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/card-ico-eq-card-icc-sub-one--c0bd4bba7550f3bce103be24.md) | 260 | `result-track:c0bd4bba7550f3bce103be246c59fb069ef2e89db84c72307c96f7a49202d27d` |
| 54 | `theorem` | [card_Ioc_eq_card_Icc_sub_one](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/card-ioc-eq-card-icc-sub-one--6fac388e2f974a0c1c740ac3.md) | 263 | `result-track:6fac388e2f974a0c1c740ac34a0924ceea5b8f19c5b97ffff4e7d28aacebf8b0` |
| 55 | `theorem` | [card_Ioo_eq_card_Ico_sub_one](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/card-ioo-eq-card-ico-sub-one--59d11de1877b8698ab551874.md) | 266 | `result-track:59d11de1877b8698ab551874c8cb26a94b84c0e1f35e04785fba29e4f5a3f2c8` |
| 56 | `theorem` | [card_Ioo_eq_card_Icc_sub_two](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/card-ioo-eq-card-icc-sub-two--d1ee170a2f72661ec3ffe812.md) | 269 | `result-track:d1ee170a2f72661ec3ffe812869737ccf532b833762055a9e46c5dd77672c249` |
| 57 | `theorem` | [Ico_subset_Ico_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-subset-ico-iff--9d06a2748854df2f3a9521f5.md) | 278 | `result-track:9d06a2748854df2f3a9521f58ae020885169085c0c17291d8032812b1477f34a` |
| 58 | `theorem` | [Ico_add_Ico_eq_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-add-ico-eq-ico--c790a3a978a1b6c388108bb5.md) | 282 | `result-track:c790a3a978a1b6c388108bb5cc3263904fca074bc2510b0c1ed631e055c2e796` |
| 59 | `theorem` | [Ico_inter_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-inter-ico--5dfdde8e870482ede358abed.md) | 287 | `result-track:5dfdde8e870482ede358abed58a1baf61a6cb68055663c9c50e8e779ab57acba` |
| 60 | `theorem` | [Ico_filter_lt](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-filter-lt--2f94be13040a3035ce477a5b.md) | 291 | `result-track:2f94be13040a3035ce477a5b4502cff938a5745c2007c6b31106ed425934e107` |
| 61 | `theorem` | [Ico_filter_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-filter-le--4d2c7efd75637c4a08922952.md) | 295 | `result-track:4d2c7efd75637c4a089229525ff0193722c440303e09ebf3aae1773ed6d254a2` |
| 62 | `theorem` | [Ico_sub_Ico_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-sub-ico-left--62d5ebb5a87343b0e077200f.md) | 299 | `result-track:62d5ebb5a87343b0e077200f189b181b2663c894ed13c328e7c9c5dfdcfffeb7` |
| 63 | `theorem` | [Ico_sub_Ico_right](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variant5ebf311907a4f04793691779900f113a277d7448af8a7b268583297f74540bfd.lean/declarations/ico-sub-ico-right--645aa1777869992db1284575.md) | 303 | `result-track:645aa1777869992db12845754d2d2cb2361632d3ac9f2a274aa433607fc11cd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
