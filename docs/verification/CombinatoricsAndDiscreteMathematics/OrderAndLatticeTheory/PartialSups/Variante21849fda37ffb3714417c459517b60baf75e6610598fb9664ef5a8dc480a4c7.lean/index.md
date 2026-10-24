# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSups.Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d989ae8729175a59086bcba2ad95b370834f0f70",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d989ae8729175a59086bcba2ad95b370834f0f70`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups--04d8534d97ebb6ad9197e5c0.md) | 56 | `declaration-track:04d8534d97ebb6ad9197e5c02de14e208f6dac800bcb78a350c3313f49fd69f8` |
| 2 | `lemma` | [partialSups_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-apply--83e983ac7e51e37b561fecd3.md) | 60 | `result-track:83e983ac7e51e37b561fecd394358c115b990ed3a0d3c5726269774430c08363` |
| 3 | `lemma` | [partialSups_iff_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-iff-forall--74126add16288f2fe9792c87.md) | 64 | `result-track:74126add16288f2fe9792c87e378a4b7cf4779b5df2b1fca48f509c8a33a81b5` |
| 4 | `lemma` | [partialSups_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-le-iff--08571550fa2aa64f36456590.md) | 75 | `result-track:08571550fa2aa64f36456590a352d74cdc3008dd047a52bb0fe4619a9045a00a` |
| 5 | `theorem` | [le_partialSups_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/le-partialsups-of-le--8962383a839bda581921c952.md) | 79 | `result-track:8962383a839bda581921c952453c0eee76df97bcee47082d94f4cf207484373a` |
| 6 | `theorem` | [le_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/le-partialsups--fe139474ade5949aa535c130.md) | 83 | `result-track:fe139474ade5949aa535c130691284783d4187a68834643bdab6402a0c41905d` |
| 7 | `theorem` | [partialSups_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-le--420459821d976a7aa002d5c8.md) | 87 | `result-track:420459821d976a7aa002d5c80e38e228d7fd79a532d20866ee6e4cd3e0ca3c7a` |
| 8 | `lemma` | [upperBounds_range_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/upperbounds-range-partialsups--16d627f8d8f3bbc8ff8a4fed.md) | 92 | `result-track:16d627f8d8f3bbc8ff8a4fed12f187f31e32b5b00420bbc08b9cd43dfb7f0991` |
| 9 | `theorem` | [bddAbove_range_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/bddabove-range-partialsups--29eec218de86fd8d1a52cf85.md) | 99 | `result-track:29eec218de86fd8d1a52cf85a3fa27ccac7182b954d38dd837d5e86571e00254` |
| 10 | `theorem` | [Monotone.partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/monotone-partialsups-eq--2f68fe961cc24474dde77adf.md) | 103 | `result-track:2f68fe961cc24474dde77adfa02e2a7deb2d6e6506ff5835ac02660e0f711ede` |
| 11 | `theorem` | [partialSups_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-mono--119ac0268aa0db29dc9fffe9.md) | 107 | `result-track:119ac0268aa0db29dc9fffe9947c03545590c05eb0c6c860a7e1d5af5c0d3cf3` |
| 12 | `lemma` | [partialSups_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-monotone--12cb5822c69d0e2b1dd38d12.md) | 111 | `result-track:12cb5822c69d0e2b1dd38d12707fc4fea5a96a8eb9d173ee4e612ab8e21daada` |
| 13 | `def` | [partialSups.gi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-gi--1741e4c10ee74c4acb47788b.md) | 117 | `declaration-track:1741e4c10ee74c4acb47788bf6bd1ccbbc8a3b9afc5c7f35ca84dc6388cd548f` |
| 14 | `lemma` | [Pi.partialSups_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/pi-partialsups-apply--ce05f5e5a77930e5766e4da4.md) | 128 | `result-track:ce05f5e5a77930e5766e4da43ff539577106aa51349d622f4e870608741f59d3` |
| 15 | `lemma` | [comp_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/comp-partialsups--0e014008cf7fbcfc70fbe183.md) | 134 | `result-track:0e014008cf7fbcfc70fbe18356092bfe781ea7cee38e8d5507cb433e4d65c2bc` |
| 16 | `lemma` | [map_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/map-partialsups--3df1515483906910ac245717.md) | 138 | `result-track:3df1515483906910ac245717c9e3cbcb2a3c59c4e102fe732e9dc938f596c998` |
| 17 | `theorem` | [partialSups_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-succ--fa6c2f163bb85427fb7ab41c.md) | 144 | `result-track:fa6c2f163bb85427fb7ab41c9f68c0674a1fa6ad5f49face5912a060f54acb64` |
| 18 | `theorem` | [partialSups_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-bot--9c520d58720d4dea89e35f09.md) | 156 | `result-track:9c520d58720d4dea89e35f09eea216df1db4e9ea6ebacc7a9d0a574db4f7aba4` |
| 19 | `theorem` | [partialSups_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-zero--ca26f4ed568bf0653869da2d.md) | 168 | `result-track:ca26f4ed568bf0653869da2d44e8c32fb8b947fec209efb3f9f39cf0d3dd80f0` |
| 20 | `theorem` | [partialSups_eq_sup'_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-eq-sup-range--76ab77ed12164cd676860c90.md) | 171 | `result-track:76ab77ed12164cd676860c90080feb263faf868209ad222d558639b7a8a53bff` |
| 21 | `theorem` | [partialSups_eq_sup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-eq-sup-range--0b3ee50bbac9fae659e41359.md) | 175 | `result-track:0b3ee50bbac9fae659e4135924879a3940b2d0df63e83b1a3c6465159934aa00` |
| 22 | `lemma` | [disjoint_partialSups_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/disjoint-partialsups-left--13f4e25ed85fa8b7b7894d23.md) | 193 | `result-track:13f4e25ed85fa8b7b7894d23bdfa5bc7839d13b70db5aa5bf86359d366462e51` |
| 23 | `lemma` | [disjoint_partialSups_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/disjoint-partialsups-right--ef70ec106f9cd886698b90dc.md) | 198 | `result-track:ef70ec106f9cd886698b90dc91f829686d0a1250f6d49d48f106573375fff621` |
| 24 | `theorem` | [partialSups_disjoint_of_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-disjoint-of-disjoint--50a4238fd04f2dca2bc9b486.md) | 205 | `result-track:50a4238fd04f2dca2bc9b4866dc7b1db5e8ef602cf7e06b519cccd2eddf32f09` |
| 25 | `theorem` | [partialSups_eq_ciSup_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-eq-cisup-iic--9e227d183c6f64d4467a94c9.md) | 221 | `result-track:9e227d183c6f64d4467a94c9b698d71426e403b6c9168a8a38dda90e1055329d` |
| 26 | `theorem` | [ciSup_partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/cisup-partialsups-eq--8e7a37e5a99f2e219f13a2d9.md) | 230 | `result-track:8e7a37e5a99f2e219f13a2d987be69bfabcac6abaaa8e4df30c4fb3d1a6bd45f` |
| 27 | `theorem` | [ciSup_partialSups_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/cisup-partialsups-eq--c0f85507eb8f6a4a96a636a1.md) | 242 | `result-track:c0f85507eb8f6a4a96a636a13941eab0e33e95ead902f051f2602863dff31a42` |
| 28 | `theorem` | [iSup_partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/isup-partialsups-eq--62a60e3707937ca600e47b84.md) | 258 | `result-track:62a60e3707937ca600e47b843c5d381796a3841f245c1c2d7ebae0de95183c3f` |
| 29 | `theorem` | [partialSups_eq_biSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-eq-bisup--cc5d101d6c2b4f8ecb58614a.md) | 262 | `result-track:cc5d101d6c2b4f8ecb58614a769572ad82906dfba23100990b924f7d3f189aab` |
| 30 | `theorem` | [iSup_le_iSup_of_partialSups_le_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/isup-le-isup-of-partialsups-le-partialsups--b8f99fdeaf1a41b41206427b.md) | 266 | `result-track:b8f99fdeaf1a41b41206427bd5c30136fd6eb0ec07e2919d242092e04c058d31` |
| 31 | `theorem` | [iSup_eq_iSup_of_partialSups_eq_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/isup-eq-isup-of-partialsups-eq-partialsups--05d78ce855b3ea2c9e349177.md) | 271 | `result-track:05d78ce855b3ea2c9e349177e8cc4318afa19ee861e2a1a465db502ba9cbef4c` |
| 32 | `lemma` | [partialSups_eq_sUnion_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-eq-sunion-image--d134b27788c44a27364a73f8.md) | 282 | `result-track:d134b27788c44a27364a73f8eaa65b6a8532ba9a3e2135991fd329c0509cc6bb` |
| 33 | `lemma` | [partialSups_eq_biUnion_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/partialsups-eq-biunion-range--c71c1b8c48e4c673ddb84131.md) | 286 | `result-track:c71c1b8c48e4c673ddb84131e86b71ec260c39d24b64e6f15d48ef5f30e17a98` |
| 34 | `theorem` | [exists_partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/declarations/exists-partialsups-eq--2b9e088fc33b0975445c079f.md) | 299 | `result-track:2b9e088fc33b0975445c079fb4fe668d036f4b075fbfb0a96d9bcb953a98a5c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
