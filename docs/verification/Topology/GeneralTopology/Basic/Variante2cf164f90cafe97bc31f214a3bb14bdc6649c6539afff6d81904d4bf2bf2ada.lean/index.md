# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8c559016475cc6c7c1fb9abd49068dc6528497f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8c559016475cc6c7c1fb9abd49068dc6528497f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.CompleteSeparated` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.HeineCantor` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Quotient` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteSubset` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Pi.instIsUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/pi-instisuniformgroup--749aa5e976c7ae92103fd45f.md) | 49 | `declaration-track:749aa5e976c7ae92103fd45f4ecdf0c1fc479166b3c070d9b61ff5e41f9121bc` |
| 2 | `theorem` | [isUniformEmbedding_translate_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/isuniformembedding-translate-mul--5e6434be02c0358525569129.md) | 56 | `result-track:5e6434be02c03585255691290016e4fdebedec836c4135cffd317ec464ba34bd` |
| 3 | `lemma` | [cauchy_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/cauchy-iff-tendsto--7c930eefc321b08190271112.md) | 70 | `result-track:7c930eefc321b081902711121e53a5881f8c6b634464aaaf167c45ee940e76e4` |
| 4 | `lemma` | [cauchy_iff_tendsto_swapped](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/cauchy-iff-tendsto-swapped--36ade09d88bb3a291303d2ad.md) | 75 | `result-track:36ade09d88bb3a291303d2adaa28912b18e3c07ec8ba435fa0c29c1103e0bffa` |
| 5 | `lemma` | [cauchy_map_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/cauchy-map-iff-tendsto--9144865a649899971b210763.md) | 80 | `result-track:9144865a649899971b21076314d08d18ee0e46848356adf1b435110b32e459ac` |
| 6 | `lemma` | [cauchy_map_iff_tendsto_swapped](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/cauchy-map-iff-tendsto-swapped--f22b27bd15fbbcdc724d09e9.md) | 85 | `result-track:f22b27bd15fbbcdc724d09e9c343d61cd9f00186770a5d619c5bea5c31deec9f` |
| 7 | `lemma` | [IsUniformInducing.isUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/isuniforminducing-isuniformgroup--15093e411cddcee28f8d4fed.md) | 98 | `result-track:15093e411cddcee28f8d4fedb45e92bacc019b83bc74ac0da63d50a6835ed25c` |
| 8 | `theorem` | [IsUniformGroup.comap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/isuniformgroup-comap--4eca21826d8dce61cfba6e1e.md) | 112 | `result-track:4eca21826d8dce61cfba6e1e0a6f17ed34521b03becb15f5e5606effde4eddd0` |
| 9 | `instance` | [isUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/isuniformgroup--21e9af83fcf3b231fa72a098.md) | 121 | `declaration-track:21e9af83fcf3b231fa72a098d5db25403465e238edb9172b64d8b3ae6092419f` |
| 10 | `theorem` | [CauchySeq.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/cauchyseq-mul--1438f7558be0a84054e58c8b.md) | 126 | `result-track:1438f7558be0a84054e58c8b68321ddb344adac6159e00f5b77535bcc4fe3148` |
| 11 | `theorem` | [CauchySeq.mul_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/cauchyseq-mul-const--1002b956614cd9f0e00d8df8.md) | 131 | `result-track:1002b956614cd9f0e00d8df86a6f9bf9444098c64fdd35dec0dba09f34c2fd63` |
| 12 | `theorem` | [CauchySeq.const_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/cauchyseq-const-mul--1cf1d5724eac34fabe0de02f.md) | 136 | `result-track:1cf1d5724eac34fabe0de02fc279a9bf35c62190e1781220549abc3a121ca46c` |
| 13 | `theorem` | [CauchySeq.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/cauchyseq-inv--3962295b3fa59c1b7f8e0a24.md) | 141 | `result-track:3962295b3fa59c1b7f8e0a24a14421857107c465b65fc2e0546f18af4b78beb1` |
| 14 | `theorem` | [totallyBounded_iff_subset_finite_iUnion_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/totallybounded-iff-subset-finite-iunion-nhds-one--8c71bb94b674c699c2369785.md) | 146 | `result-track:8c71bb94b674c699c2369785880ea75061e5d35e21ea175514386267ae8ea50b` |
| 15 | `theorem` | [totallyBounded_inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/totallybounded-inv--91fe16350ebdb94902a95b51.md) | 152 | `result-track:91fe16350ebdb94902a95b5102ee4c2a7d5739b3ebca91a5b23c0edfc14f08ce` |
| 16 | `theorem` | [TendstoUniformlyOnFilter.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstouniformlyonfilter-mul--f2a087ea518748df8c05df75.md) | 161 | `result-track:f2a087ea518748df8c05df75227a4512edb139ceb505fcf5e8e1dbb6e5825629` |
| 17 | `theorem` | [TendstoUniformlyOnFilter.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstouniformlyonfilter-div--87805dd9b9c44a808038c043.md) | 167 | `result-track:87805dd9b9c44a808038c043b5f9a8098fa367993da142a753df96f72a428d8e` |
| 18 | `theorem` | [TendstoUniformlyOn.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstouniformlyon-mul--7f24894645601bf03fb3e24a.md) | 173 | `result-track:7f24894645601bf03fb3e24ad588fba30be6f46e6aaf1995d3ffdc7e85aa3529` |
| 19 | `theorem` | [TendstoUniformlyOn.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstouniformlyon-div--1ee4c7079d69b6b789a66642.md) | 178 | `result-track:1ee4c7079d69b6b789a66642237daaaf110f61569c6b3e93fc7bc62d3c6a77cc` |
| 20 | `theorem` | [TendstoUniformly.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstouniformly-mul--acab0be656c9066bce2721c4.md) | 183 | `result-track:acab0be656c9066bce2721c4324f5713b7d3455d0ceebeccd0df80eace2096dd` |
| 21 | `theorem` | [TendstoUniformly.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstouniformly-div--23bcaf78bcdb77f41d6450f5.md) | 188 | `result-track:23bcaf78bcdb77f41d6450f52981defbe687f9d75b8bec6e7d29a918014f0b35` |
| 22 | `theorem` | [UniformCauchySeqOn.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/uniformcauchyseqon-mul--f4683f23c78b77802492dc23.md) | 193 | `result-track:f4683f23c78b77802492dc231eaf4501bcf61dbf801cc7e22c97fc14bd5977c4` |
| 23 | `theorem` | [UniformCauchySeqOn.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/uniformcauchyseqon-div--bd676d450fea32cfe022ed8e.md) | 198 | `result-track:bd676d450fea32cfe022ed8ef61f2208e52282c4d2dc402eb5f33f93e34cec72` |
| 24 | `theorem` | [topologicalGroup_is_uniform_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/topologicalgroup-is-uniform-of-compactspace--2573003c67ff8d983c00652d.md) | 215 | `result-track:2573003c67ff8d983c00652defde66933696705d2212e912b0309a44ef02b9af` |
| 25 | `instance` | [Subgroup.isClosed_of_discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/subgroup-isclosed-of-discrete--d8faa0d4d3e146b48e51379e.md) | 223 | `declaration-track:d8faa0d4d3e146b48e51379e51201eccc11ea18c4323f8d1c90ea85d373a1ebc` |
| 26 | `lemma` | [Subgroup.tendsto_coe_cofinite_of_discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/subgroup-tendsto-coe-cofinite-of-discrete--247a00d58a1bf9e1bfd17676.md) | 237 | `result-track:247a00d58a1bf9e1bfd176763f8904ca588577e824508f842408b0bdc9ba3a78` |
| 27 | `lemma` | [MonoidHom.tendsto_coe_cofinite_of_discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/monoidhom-tendsto-coe-cofinite-of-discrete--69988dc5204f7a3a38812866.md) | 242 | `result-track:69988dc5204f7a3a38812866ff5720b8702f424e419e17f1ff980c2510db140f` |
| 28 | `theorem` | [tendstoUniformly_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstouniformly-iff--dd64f2a8b4449244d36d1cf0.md) | 255 | `result-track:dd64f2a8b4449244d36d1cf07a5f6f818e9c22a81b6594d6ee9b3b3afc6a0dad` |
| 29 | `theorem` | [tendstoUniformlyOn_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstouniformlyon-iff--6e7cce5b8f7f21afdb4112dd.md) | 262 | `result-track:6e7cce5b8f7f21afdb4112dd3c46838aaad81e33c576a1f4c3d1cdfb43b6d0e9` |
| 30 | `theorem` | [tendstoLocallyUniformly_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstolocallyuniformly-iff--eaa9cb6fb59fe8710bc7f00c.md) | 269 | `result-track:eaa9cb6fb59fe8710bc7f00cbd6bcc4a08b332672ce3e6161d4642691c963811` |
| 31 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/tendstolocallyuniformlyon-iff--a4510090605b33cd38b5b8d9.md) | 278 | `result-track:a4510090605b33cd38b5b8d9a211261e6a07019cd0e5d869ccff130f00f2cbc3` |
| 32 | `theorem` | [extend_Z_bilin_aux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/extend-z-bilin-aux--74604e7a55f215b05291dd1a.md) | 310 | `result-track:74604e7a55f215b05291dd1a324044b8a3d520585f2583f20b439d820984f601` |
| 33 | `theorem` | [extend_Z_bilin_key](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/extend-z-bilin-key--bc9b7078932180ef11b8ec82.md) | 330 | `result-track:bc9b7078932180ef11b8ec827b6f78d7500097017fd8016079ab6d96446ab4f8` |
| 34 | `theorem` | [extend_Z_bilin](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/extend-z-bilin--067b4a75184ab36d285e499d.md) | 384 | `result-track:067b4a75184ab36d285e499d66922b3934879c00d6c6a3c73d439b0261c2c6c0` |
| 35 | `instance` | [QuotientGroup.completeSpace'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/quotientgroup-completespace--3474dcfc020717e7614976c3.md) | 442 | `declaration-track:3474dcfc020717e7614976c3d9623dc96f6aa224f4eb352bc293e404cefc70d9` |
| 36 | `instance` | [QuotientGroup.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/declarations/quotientgroup-completespace--adbe0be80a375d3578459f45.md) | 541 | `declaration-track:adbe0be80a375d3578459f4503e02962de4ff3fc2488dda3dcb3b49a87d85760` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
