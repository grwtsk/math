# Verification target: GRWTSK.Topology.AlgebraicTopology.Subpath.Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "981761e87fb3cc62d77c0b450f2f348ed6183c16",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `981761e87fb3cc62d77c0b450f2f348ed6183c16`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean.json)

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
| 1 | `def` | [subpath](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/subpath--ec042eb8b6d2e0f426426289.md) | 54 | `declaration-track:ec042eb8b6d2e0f426426289e6c10ec62684cbbb7442f9f7e301a5eb6310c09f` |
| 2 | `theorem` | [symm_subpath](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/symm-subpath--c8ef379d2d312e26c19a81c8.md) | 61 | `result-track:c8ef379d2d312e26c19a81c881193fbfdeaee98c5717cac004f10575075b15ff` |
| 3 | `lemma` | [range_subpathAux](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/range-subpathaux--1faec857d13d23f91759599d.md) | 65 | `result-track:1faec857d13d23f91759599d7c7bc13575d0ce1a35f2fa36d0293f0f85786f28` |
| 4 | `theorem` | [range_subpath](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/range-subpath--a25f17639b07d023033cce50.md) | 80 | `result-track:a25f17639b07d023033cce507558a66b1fac0070c24641694cd3663afa7c92ce` |
| 5 | `lemma` | [range_subpath_of_le](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/range-subpath-of-le--439eac1a10037175989105e8.md) | 84 | `result-track:439eac1a10037175989105e8f5ba2e1e4aa8b84a95aa94e3e0ab9e66da9cf5dc` |
| 6 | `lemma` | [range_subpath_of_ge](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/range-subpath-of-ge--8e6a313059766cb781d9b4cf.md) | 88 | `result-track:8e6a313059766cb781d9b4cf37ff600882b28c551e10c5cd661f9bcb7f052b88` |
| 7 | `theorem` | [subpath_self](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/subpath-self--b852b25e8d97378046e52d5c.md) | 94 | `result-track:b852b25e8d97378046e52d5c99970182f19050ccb508afdc6a8533d2ad7940ac` |
| 8 | `theorem` | [subpath_zero_one](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/subpath-zero-one--3d8090766405d05f791fcaa6.md) | 100 | `result-track:3d8090766405d05f791fcaa63a98bac7de97f64d4314e3e75089926ee28d5365` |
| 9 | `theorem` | [subpath_continuous_family](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/subpath-continuous-family--33bca4e20a8dcdabf508456e.md) | 107 | `result-track:33bca4e20a8dcdabf508456e821d83b2167103205fcd71c485cebedc3fb9ba42` |
| 10 | `def` | [subpathTransSubpathRefl](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/subpathtranssubpathrefl--d372e4f2a5f51a6944a46ead.md) | 115 | `declaration-track:d372e4f2a5f51a6944a46ead84f8892f6059ae196efa438978e6de0bc950897d` |
| 11 | `def` | [subpathTransSubpath](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/subpathtranssubpath--3aed4f080afc3ebd41e48f0a.md) | 132 | `declaration-track:3aed4f080afc3ebd41e48f0aaee60bce466dfc26a0c3c902e812b4a132050616` |
| 12 | `def` | [concat](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concat--1aefa91b2c85c107ec8e41c5.md) | 145 | `declaration-track:1aefa91b2c85c107ec8e41c5e35a987e2da382822e116c601b8d44f7914c9426` |
| 13 | `lemma` | [concat_zero](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concat-zero--385f885b244979c9a2d9d9f6.md) | 150 | `result-track:385f885b244979c9a2d9d9f6c1cc99a1fb94e8cf6b59ba82199ea889c12ed3d5` |
| 14 | `lemma` | [concat_succ](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concat-succ--36e979506eef8a97c0fc7702.md) | 155 | `result-track:36e979506eef8a97c0fc7702e4e11e8376d7999419bade9e9a9af7b7586028c9` |
| 15 | `theorem` | [concat_refl](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concat-refl--c949acaa003f25f1f5691ab3.md) | 162 | `result-track:c949acaa003f25f1f5691ab32526517aadec52efe2ea6231769d9d20d0378104` |
| 16 | `def` | [concat](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concat--2efcab42d0b3375970e9cb4c.md) | 174 | `declaration-track:2efcab42d0b3375970e9cb4cb9632960ca6cce570fea4b2dfbee0afaf5f6c131` |
| 17 | `def` | [concatSubpath](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concatsubpath--f33ba13bfadf1bcb4a20c3f1.md) | 186 | `declaration-track:f33ba13bfadf1bcb4a20c3f1d8b32aada0089e820deeee40d6dfb76ba175a3aa` |
| 18 | `theorem` | [concat_one](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concat-one--e745be44dea5ac4ef17b3f0d.md) | 203 | `result-track:e745be44dea5ac4ef17b3f0d17f331a16a3c9810f0e7f3312ddc92e8886e3fe6` |
| 19 | `theorem` | [concat_two](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concat-two--8b0a28be6234e11b03f4216f.md) | 208 | `result-track:8b0a28be6234e11b03f4216f726b4fbf6c7c075910e2a056f5271f27fc1da192` |
| 20 | `theorem` | [concat_hcomp](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concat-hcomp--5c939c2bef157313f4ec33ef.md) | 214 | `result-track:5c939c2bef157313f4ec33ef35366da77b1476d8148b6e59b94eab32f1441baf` |
| 21 | `theorem` | [concat_subpath](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/concat-subpath--1aaedd58be2121521ecade81.md) | 220 | `result-track:1aaedd58be2121521ecade81339e76ac5384cdd0b7dc9e32f484e36d2ea21605` |
| 22 | `theorem` | [subpath_trans_subpath](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/subpath-trans-subpath--540122c94835f4e27bb8696b.md) | 228 | `result-track:540122c94835f4e27bb8696b573e7f121ac719bca95fe06396f57139d0acbb01` |
| 23 | `theorem` | [mk_subpath_trans_mk_subpath](../../../../../mathematics/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/declarations/mk-subpath-trans-mk-subpath--379af38c843d6f532efc42d0.md) | 235 | `result-track:379af38c843d6f532efc42d0b8b82b2174ccb64c7003d2574a63b9a4c8ee73c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
