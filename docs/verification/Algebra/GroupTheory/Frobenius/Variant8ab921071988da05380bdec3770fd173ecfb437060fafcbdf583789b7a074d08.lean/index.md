# Verification target: GRWTSK.Algebra.GroupTheory.Frobenius.Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "057fe8c2c80932a1b986ab69185617b155e601c9",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `057fe8c2c80932a1b986ab69185617b155e601c9`.

Source path: `GRWTSK/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [frobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/frobenius-def--1b3fa895fed14de5dd90d997.md) | 28 | `result-track:1b3fa895fed14de5dd90d9979ab6e5ac27f8c5dea5976a14efeb33aeb0668df6` |
| 2 | `lemma` | [iterateFrobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iteratefrobenius-def--a3b074d929d091b799ab56bb.md) | 30 | `result-track:a3b074d929d091b799ab56bb48dc9a0c5a0b1d31ddb4b5002786618b8a4e8089` |
| 3 | `lemma` | [iterate_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iterate-frobenius--a6ec9d0dbe22444a27bdeed3.md) | 32 | `result-track:a6ec9d0dbe22444a27bdeed3c20753e3d0b655e1bf0115c34560093239ac2c5d` |
| 4 | `lemma` | [iterateFrobenius_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iteratefrobenius-eq-pow--f8aaf2b97bcecd790778d9dd.md) | 36 | `result-track:f8aaf2b97bcecd790778d9ddc083236be19ac0b5d3fbb873b2a266beb7ee0772` |
| 5 | `lemma` | [coe_iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/coe-iteratefrobenius--df98ba639808f02055c3c11e.md) | 39 | `result-track:df98ba639808f02055c3c11e8526eb9834c88b2537c727854ce786b9d79f653c` |
| 6 | `lemma` | [iterateFrobenius_one_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iteratefrobenius-one-apply--6461053feb499a0c3981f062.md) | 42 | `result-track:6461053feb499a0c3981f062bacb10eade06dde0ae5b0b18c28fc37c6287c39a` |
| 7 | `lemma` | [iterateFrobenius_one](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iteratefrobenius-one--603e6d7cb835c359b15b384b.md) | 46 | `result-track:603e6d7cb835c359b15b384b9aaf720a6980ed98f41484ab0276eea1a688a2ea` |
| 8 | `lemma` | [iterateFrobenius_zero_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iteratefrobenius-zero-apply--0ed2b40609d465f5d16fc08b.md) | 49 | `result-track:0ed2b40609d465f5d16fc08b431cc2d79c5158caabefb9bdf9d7d038e9c977d4` |
| 9 | `lemma` | [iterateFrobenius_zero](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iteratefrobenius-zero--f7d278542837853994d30e39.md) | 53 | `result-track:f7d278542837853994d30e39ec04e4724085653acdde451c52720a37d6bf68cf` |
| 10 | `lemma` | [iterateFrobenius_add_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iteratefrobenius-add-apply--254203ce610804e5f0bd346e.md) | 56 | `result-track:254203ce610804e5f0bd346e60e549aaadf67f49f2cc27c54cef229c128f0c0b` |
| 11 | `lemma` | [iterateFrobenius_add](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iteratefrobenius-add--6172579fac6b5ecb02a60b16.md) | 60 | `result-track:6172579fac6b5ecb02a60b16abaa1a6b44088d7c14029c3bf00cf810718a47c1` |
| 12 | `lemma` | [iterateFrobenius_mul_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/iteratefrobenius-mul-apply--27b1ead1a28cd9c765612318.md) | 64 | `result-track:27b1ead1a28cd9c7656123180b31f145f1e75b9cc31880b140173b8ba16dc06a` |
| 13 | `lemma` | [coe_iterateFrobenius_mul](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/coe-iteratefrobenius-mul--ae24ffc73ae37b616e7c5bed.md) | 68 | `result-track:ae24ffc73ae37b616e7c5bed3d15d1b0e3504a3f53f6879a9bb79436ad5fb90a` |
| 14 | `lemma` | [frobenius_mul](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/frobenius-mul--b5429956928631a377ae1f02.md) | 73 | `result-track:b5429956928631a377ae1f02ad7b22e97f1de1cf22f3309d920a3bb652b0da51` |
| 15 | `lemma` | [frobenius_one](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/frobenius-one--177b3f127b2152f6b36d200e.md) | 76 | `result-track:177b3f127b2152f6b36d200e3fc5b7330a6899ad7103c55998bfe5b604e9b745` |
| 16 | `lemma` | [MonoidHom.map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/monoidhom-map-frobenius--05a9baf944e67838a77c0abc.md) | 78 | `result-track:05a9baf944e67838a77c0abc6366b6a1efb50031a500ac742d64d7d602cb131e` |
| 17 | `lemma` | [RingHom.map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/ringhom-map-frobenius--b715ca9f56094cf3a6b53cfb.md) | 79 | `result-track:b715ca9f56094cf3a6b53cfb0fb0cabc391e18deb786157036a33df242765859` |
| 18 | `lemma` | [MonoidHom.map_iterate_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/monoidhom-map-iterate-frobenius--b14b0d065bb9377a0a68be4e.md) | 81 | `result-track:b14b0d065bb9377a0a68be4ed5024d2439782847f39bce80d9a7ba376c8a92b6` |
| 19 | `lemma` | [MonoidHom.map_iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/monoidhom-map-iteratefrobenius--419436da8e3478db076b2d8e.md) | 85 | `result-track:419436da8e3478db076b2d8e02bf401b67c8de73d6a6e9de02c0e92bf1a4c402` |
| 20 | `lemma` | [RingHom.map_iterate_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/ringhom-map-iterate-frobenius--3bf66bbeccb571892a2831c3.md) | 89 | `result-track:3bf66bbeccb571892a2831c3fed2b01ce3ecff0394f392287eca9a4b666e4340` |
| 21 | `lemma` | [RingHom.map_iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/ringhom-map-iteratefrobenius--fbea6e148ca382569e868978.md) | 93 | `result-track:fbea6e148ca382569e868978fbd1499ce444d7c2c7dc7a6ea68ddf2e2ac2ad1e` |
| 22 | `lemma` | [MonoidHom.iterate_map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/monoidhom-iterate-map-frobenius--aa7c4aa8cbdc325961f879c3.md) | 97 | `result-track:aa7c4aa8cbdc325961f879c3e9e3d97a1be238e136b70dbcb3229719a4fa95b7` |
| 23 | `lemma` | [RingHom.iterate_map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/ringhom-iterate-map-frobenius--5fd6043ad60d4831f594c138.md) | 101 | `result-track:5fd6043ad60d4831f594c1381fbbe1953ba5a8d320255fea5a66ef2e412c8ac2` |
| 24 | `lemma` | [RingHom.frobenius_comm](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/ringhom-frobenius-comm--385b539d9dfc8c610a8cd71a.md) | 105 | `result-track:385b539d9dfc8c610a8cd71aae54f7a663f7e7729a43ffb6a246edca07d50a9f` |
| 25 | `lemma` | [RingHom.iterateFrobenius_comm](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/ringhom-iteratefrobenius-comm--c6f7236aa1f1192a87f87eb6.md) | 109 | `result-track:c6f7236aa1f1192a87f87eb6288f8094ec39dd8592c92ca421d04caab83be6d0` |
| 26 | `def` | [LinearMap.frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/linearmap-frobenius--7f4f768de58a76de567ebe3c.md) | 116 | `declaration-track:7f4f768de58a76de567ebe3ce6977c3989b54e6611b2ac7cf592af7a2e683f04` |
| 27 | `def` | [LinearMap.iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/linearmap-iteratefrobenius--ad7761d96c9bbda265d4c434.md) | 122 | `declaration-track:ad7761d96c9bbda265d4c4349bf1adb3e88933b7133d2d0171c2071592137654` |
| 28 | `theorem` | [LinearMap.frobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/linearmap-frobenius-def--558123959b7a4acdb23c5271.md) | 127 | `result-track:558123959b7a4acdb23c5271d06cab07d402cc11c137a4b50ffc6b60de36eb79` |
| 29 | `theorem` | [LinearMap.iterateFrobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/linearmap-iteratefrobenius-def--7dc391365914f7d0ff4fa92b.md) | 129 | `result-track:7dc391365914f7d0ff4fa92b5fbe2b638a788305f20753e8b3a04f0a39915b0c` |
| 30 | `theorem` | [frobenius_zero](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/frobenius-zero--6bee47b038f725918e9b9ad0.md) | 132 | `result-track:6bee47b038f725918e9b9ad0e2b7748bf9009578d1b29617644fc81025224ba1` |
| 31 | `theorem` | [frobenius_add](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/frobenius-add--4e2124af45c4fe7fe54ddf7b.md) | 135 | `result-track:4e2124af45c4fe7fe54ddf7b66017707cbe314a376460f78580b407ca97728f3` |
| 32 | `theorem` | [frobenius_natCast](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/frobenius-natcast--65d406f8f3aa006339faec0f.md) | 138 | `result-track:65d406f8f3aa006339faec0ff1f39a9173058c2ba7c51260043c509ac43ba78a` |
| 33 | `lemma` | [frobenius_neg](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/frobenius-neg--2086c86ce47af3242f9aa903.md) | 147 | `result-track:2086c86ce47af3242f9aa90353c81faa3dae762293672eccb7e4c452c98209f5` |
| 34 | `lemma` | [frobenius_sub](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/declarations/frobenius-sub--9ea86b75f5abfbafd24276dd.md) | 149 | `result-track:9ea86b75f5abfbafd24276dd2689ad620ac1ada8f0580b6612ea223d5ee83f2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
