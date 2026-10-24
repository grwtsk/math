# Verification target: GRWTSK.Topology.GeneralTopology.Nodup.Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "147ed8a497c50fa83015d166c92b94f8557240ff",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `147ed8a497c50fa83015d166c92b94f8557240ff`.

Source path: `GRWTSK/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Forall2` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pairwise.nodup](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/pairwise-nodup--87ad4ea756de40f9c5614e76.md) | 25 | `result-track:87ad4ea756de40f9c5614e76b77b74731a0e6bc5d1acf29aa1b32a90e9f82847` |
| 2 | `theorem` | [rel_nodup](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/rel-nodup--680cbfd9a68a2b2f998d79c2.md) | 30 | `result-track:680cbfd9a68a2b2f998d79c21475f1355cca958fd75171883f6c032b89adecc0` |
| 3 | `theorem` | [Nodup.cons](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-cons--3bd6a0319a4c6a2b1d6acd82.md) | 36 | `result-track:3bd6a0319a4c6a2b1d6acd826eb8e8cf13f095a883b051b25427047350515bce` |
| 4 | `theorem` | [nodup_singleton](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-singleton--40dd796a01409da5feede7f9.md) | 39 | `result-track:40dd796a01409da5feede7f99ec9f08c725aa36bb1cc73490e9643775e712877` |
| 5 | `theorem` | [Nodup.of_cons](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-of-cons--e1b58778e2cc570f1451c000.md) | 42 | `result-track:e1b58778e2cc570f1451c000a342aeda1cac4e6ee49da633ec37a93cfd269f1c` |
| 6 | `theorem` | [Nodup.notMem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-notmem--7f80f1577501803bfb9eeb98.md) | 45 | `result-track:7f80f1577501803bfb9eeb98604d2b38f7f357a0b6458955f28b801dae6a5fe3` |
| 7 | `theorem` | [not_nodup_cons_of_mem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/not-nodup-cons-of-mem--ef46d884d518c032e76c3aca.md) | 50 | `result-track:ef46d884d518c032e76c3aca548dbabbb386549d5a664ef06d97624a99c92d98` |
| 8 | `theorem` | [not_nodup_pair](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/not-nodup-pair--01756b0cf1126a97e0396faa.md) | 54 | `result-track:01756b0cf1126a97e0396faabf7c9e13d96aa631692a34b240e75521482e49c8` |
| 9 | `theorem` | [nodup_iff_sublist](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-iff-sublist--52914397bc900c224bd713cd.md) | 57 | `result-track:52914397bc900c224bd713cd1f66e01187d6f94e3947dae4e049b6a36cedc568` |
| 10 | `theorem` | [nodup_mergeSort](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-mergesort--09868dfb0b23f235de7fa0af.md) | 66 | `result-track:09868dfb0b23f235de7fa0af066fc12cc86eb172993fc36b12730813b3d1a4f4` |
| 11 | `theorem` | [nodup_iff_injective_getElem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-iff-injective-getelem--918784f42398e496841f0887.md) | 71 | `result-track:918784f42398e496841f0887066b1d2d097adfeb46feeacf16af85b0a3f05028` |
| 12 | `theorem` | [nodup_iff_injective_get](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-iff-injective-get--4a194193672209d0f46ec2d7.md) | 82 | `result-track:4a194193672209d0f46ec2d7198dc7295c8054e79635551a069f1e4e1d0a1f75` |
| 13 | `theorem` | [Nodup.get_inj_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-get-inj-iff--d197b5b467b2eb0403d51b92.md) | 88 | `result-track:d197b5b467b2eb0403d51b9218fbeacef15cbe3b90222bd0df3f7c2c4eed3c5c` |
| 14 | `theorem` | [Nodup.getElem_inj_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-getelem-inj-iff--d9dade778743b005415c5b4f.md) | 92 | `result-track:d9dade778743b005415c5b4fcfd1418dc085e1b9e9af736ce975e145b08ca659` |
| 15 | `theorem` | [nodup_iff_getElem?_ne_getElem?](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-iff-getelem-ne-getelem--2d226ef7dbde17f7b184fbf0.md) | 98 | `result-track:2d226ef7dbde17f7b184fbf0e3463449fc13a765aecdcd0932b76aaeb327e335` |
| 16 | `theorem` | [nodup_iff_get?_ne_get?](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-iff-get-ne-get--35ad0b12aabb9c3bd923de84.md) | 111 | `result-track:35ad0b12aabb9c3bd923de84dae7ded8e2e33bc8f949f47b72a61f0118052bfa` |
| 17 | `theorem` | [Nodup.ne_singleton_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-ne-singleton-iff--aa640f618f7c90ffcd587489.md) | 115 | `result-track:aa640f618f7c90ffcd58748947be86eaf8e194e4b8e9c1f5c77b01b235da4a0f` |
| 18 | `theorem` | [not_nodup_of_get_eq_of_ne](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/not-nodup-of-get-eq-of-ne--a1e4dc03c237bee5c4bca0d6.md) | 129 | `result-track:a1e4dc03c237bee5c4bca0d6985567a1b6b7c77011b00d120c3850c5ee67456a` |
| 19 | `theorem` | [idxOf_getElem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/idxof-getelem--654f3a594d126685aca42704.md) | 134 | `result-track:654f3a594d126685aca42704c07df3d4837f9bfd77895ddfc322da921d3e4b94` |
| 20 | `theorem` | [get_idxOf](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/get-idxof--c529a235ccf9b162ed0b2d74.md) | 144 | `result-track:c529a235ccf9b162ed0b2d74d8f8ade8340cefa1064e96c7b4923d9f2260121e` |
| 21 | `theorem` | [nodup_iff_count_le_one](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-iff-count-le-one--3d113628171834d5351b74f7.md) | 150 | `result-track:3d113628171834d5351b74f76c86b7dbd04c2431a4f7092d59a9f365c18aabad` |
| 22 | `theorem` | [nodup_iff_count_eq_one](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-iff-count-eq-one--9c4aadef448c37ab53358114.md) | 156 | `result-track:9c4aadef448c37ab53358114aefe9437fead8614694ee94bd83fe8da37026fec` |
| 23 | `theorem` | [count_eq_one_of_mem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/count-eq-one-of-mem--7b65271c2b7ad04578416ea8.md) | 163 | `result-track:7b65271c2b7ad04578416ea8dd92524e8463b6c2b17c2cc2b3d1878a24fb8fa5` |
| 24 | `theorem` | [count_eq_of_nodup](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/count-eq-of-nodup--a1da3f152b5ee9ea4467adb4.md) | 167 | `result-track:a1da3f152b5ee9ea4467adb41f3d3ae4ee94a0a6859d90ce28633f2b1c1a5f02` |
| 25 | `theorem` | [Nodup.of_append_left](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-of-append-left--e43e82c5199461abbd46a03c.md) | 173 | `result-track:e43e82c5199461abbd46a03c9b0c527fc736073b6f1547a7dee2052f4678eff2` |
| 26 | `theorem` | [Nodup.of_append_right](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-of-append-right--682b1eb8678f94c27c5b02fb.md) | 176 | `result-track:682b1eb8678f94c27c5b02fb3e82d18aa064200844d58a9df0971bc182cf626e` |
| 27 | `theorem` | [nodup_append](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-append--393d513dad74b3fcc0106c35.md) | 179 | `result-track:393d513dad74b3fcc0106c35685a968155d60f2c59026a42f411ee4f264e60c6` |
| 28 | `theorem` | [disjoint_of_nodup_append](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/disjoint-of-nodup-append--2298ffa99f43a6dc0ca5e0d1.md) | 183 | `result-track:2298ffa99f43a6dc0ca5e0d122c41d3ad5046e29872d2da54ffe92c27383675c` |
| 29 | `theorem` | [Nodup.append](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-append--06826620ea867225890ddfc3.md) | 186 | `result-track:06826620ea867225890ddfc370955fe8099deb49d98c8c9c3a361663d630511a` |
| 30 | `theorem` | [nodup_append_comm](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-append-comm--deeb778f5dbe53ad3daa4a61.md) | 189 | `result-track:deeb778f5dbe53ad3daa4a61ad13356f5c5b245bc6901f0e88ed1cf2be07989e` |
| 31 | `theorem` | [nodup_middle](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-middle--e22e5e461883f3b8e322aeaa.md) | 192 | `result-track:e22e5e461883f3b8e322aeaa2d334f34fab260fec6357e6b1d4b4f9731623733` |
| 32 | `theorem` | [Nodup.of_map](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-of-map--081d181c66f78cd2deb84c0c.md) | 197 | `result-track:081d181c66f78cd2deb84c0ca160019853d01fa8bb488c07981a54ef340089ac` |
| 33 | `theorem` | [Nodup.map_on](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-map-on--ecdaccef9b5ef754612db2da.md) | 200 | `result-track:ecdaccef9b5ef754612db2dab517a309a172adc0e023124fb54bcad0886b87f6` |
| 34 | `theorem` | [inj_on_of_nodup_map](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/inj-on-of-nodup-map--6d02d6a12135afbcc3edb619.md) | 204 | `result-track:6d02d6a12135afbcc3edb6196090c93959a2742ddb7390ccd9dcafbb04183509` |
| 35 | `theorem` | [nodup_map_iff_inj_on](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-map-iff-inj-on--36fad7e1b95688aca523d719.md) | 217 | `result-track:36fad7e1b95688aca523d7198a6d77c41f3ec9a33f5a16cda42f009a5af60df8` |
| 36 | `theorem` | [Nodup.map](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-map--40be308d5505f11a46d490cd.md) | 221 | `result-track:40be308d5505f11a46d490cd9b26b1f6e71b65487029684e3ccc22d8d50f789d` |
| 37 | `theorem` | [nodup_map_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-map-iff--28cfbe948a59dec31036cc03.md) | 224 | `result-track:28cfbe948a59dec31036cc0300081279e17f7a8e24c58f2247ac2e9354f40828` |
| 38 | `theorem` | [nodup_attach](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-attach--d0f4f507fe05afd987d37eab.md) | 228 | `result-track:d0f4f507fe05afd987d37eab4f91c1939c6359c16c4dd1f5450cf6006f9fd23b` |
| 39 | `theorem` | [Nodup.pmap](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-pmap--11da525d052eea4b7c9a824f.md) | 234 | `result-track:11da525d052eea4b7c9a824fff347ac80a14f64c2b56923edac2ceed88035957` |
| 40 | `theorem` | [Nodup.filter](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-filter--21c422ec34da37735face23a.md) | 239 | `result-track:21c422ec34da37735face23a4b9d14b2d9b8fa11e84e85b8faec724219ebb0a5` |
| 41 | `theorem` | [nodup_reverse](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-reverse--fb027c5b0a46d85309a7c1ac.md) | 243 | `result-track:fb027c5b0a46d85309a7c1ac6dbc6e6bc4eb7f66cae621e78e224e94a0132563` |
| 42 | `lemma` | [nodup_tail_reverse](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-tail-reverse--faae1086e2e37d53541c51c7.md) | 246 | `result-track:faae1086e2e37d53541c51c730c8d99e1a5c175faa3e2112ddbb2385974c3cc2` |
| 43 | `theorem` | [Nodup.erase_getElem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-erase-getelem--d121b51d1c360b0f8e4af51e.md) | 264 | `result-track:d121b51d1c360b0f8e4af51e1a4398470ca9241ff53fef165cf13702f59a0e00` |
| 44 | `theorem` | [Nodup.erase_get](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-erase-get--e6756e3482317c13512b1688.md) | 280 | `result-track:e6756e3482317c13512b1688085df156aa036291107a91663bcb42538c37adef` |
| 45 | `theorem` | [Nodup.diff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-diff--7aafae76f432a10f2b43a04e.md) | 284 | `result-track:7aafae76f432a10f2b43a04e3aeeeb6a93fb0b108dcf782f0b15f54c87ee268f` |
| 46 | `theorem` | [nodup_flatten](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-flatten--fd0040951c1f2fedaa1a0e77.md) | 287 | `result-track:fd0040951c1f2fedaa1a0e77c3d138d84117274581cdbfb834500e3b6ef4d605` |
| 47 | `theorem` | [nodup_flatMap](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-flatmap--b54a27734d5f958561607358.md) | 293 | `result-track:b54a27734d5f9585616073582671b3711f000063006e74cc205bf3ebd02cb986` |
| 48 | `theorem` | [Nodup.product](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-product--4aaec2f010fa0af2f407d2f0.md) | 303 | `result-track:4aaec2f010fa0af2f407d2f056455967c105dbc99c1ef814cc02e8fda13f965a` |
| 49 | `theorem` | [Nodup.sigma](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-sigma--672fc0f8617746e9fd924615.md) | 312 | `result-track:672fc0f8617746e9fd924615c3ddee58e217881264f5fec54b5693101df6c4f0` |
| 50 | `theorem` | [Nodup.filterMap](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-filtermap--ad5a24f2d541a4412681cc0f.md) | 321 | `result-track:ad5a24f2d541a4412681cc0f030e258567f9e2b0ff464c39ae978c46aa283e0a` |
| 51 | `theorem` | [Nodup.concat](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-concat--522e19b535198cda497e4703.md) | 325 | `result-track:522e19b535198cda497e4703caeb382aca143b9442555ad323bed11f333bebb9` |
| 52 | `theorem` | [Nodup.insert](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-insert--90f7b17c8b8be381e020ae36.md) | 328 | `result-track:90f7b17c8b8be381e020ae3668abb52ad859fdf48963141460b7d90e52cfa94d` |
| 53 | `theorem` | [Nodup.union](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-union--5d3cae907fa1e6d24542b51a.md) | 332 | `result-track:5d3cae907fa1e6d24542b51af5f4e3c274f103fd2fab910c06007396d7e30fcd` |
| 54 | `theorem` | [Nodup.inter](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-inter--efcee07edb34753f1491ad8c.md) | 337 | `result-track:efcee07edb34753f1491ad8c46175707346a51a2f9ef136ed233f21d22550978` |
| 55 | `theorem` | [Nodup.diff_eq_filter](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-diff-eq-filter--2f8052a85fb53622acc05341.md) | 340 | `result-track:2f8052a85fb53622acc053415b620f67f8c40f4af508a91b958ddbdc288e1c7f` |
| 56 | `theorem` | [Nodup.mem_diff_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-mem-diff-iff--221b06fa8f51d9e43fe1e2e1.md) | 347 | `result-track:221b06fa8f51d9e43fe1e2e1320537e9e3da5448fc5e2773e11ce62399eeba91` |
| 57 | `theorem` | [Nodup.set](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-set--426ade21df77f82ecb2d125f.md) | 350 | `result-track:426ade21df77f82ecb2d125f9a49737744860b138e224ec3e6798fac2b7fa29c` |
| 58 | `theorem` | [Nodup.map_update](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-map-update--046fea6a56166d7de6dd6cb4.md) | 360 | `result-track:046fea6a56166d7de6dd6cb4c7156fc8dfd44f4950a657fbcdd772cea2cb614f` |
| 59 | `theorem` | [Nodup.pairwise_of_forall_ne](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-pairwise-of-forall-ne--ed8defa84cab2f1e00ca0929.md) | 371 | `result-track:ed8defa84cab2f1e00ca0929080441aa65fb216e2ff1b6c76edd890a882e7eca` |
| 60 | `theorem` | [Nodup.take_eq_filter_mem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/nodup-take-eq-filter-mem--1c1763256d786d0363d42f51.md) | 381 | `result-track:1c1763256d786d0363d42f51d40f55d1de3da5ba218f470f2d27866757660856` |
| 61 | `theorem` | [Option.toList_nodup](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/declarations/option-tolist-nodup--b97982ca8cbcf62915c9b363.md) | 394 | `result-track:b97982ca8cbcf62915c9b363a342f9e6c53b4a3e0471b94d903be596fb9372b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
