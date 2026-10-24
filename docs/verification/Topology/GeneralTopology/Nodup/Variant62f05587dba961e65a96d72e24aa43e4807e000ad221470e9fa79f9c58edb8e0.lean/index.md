# Verification target: GRWTSK.Topology.GeneralTopology.Nodup.Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30e9411c4a15154dd639675750bdb0606593c79a",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30e9411c4a15154dd639675750bdb0606593c79a`.

Source path: `GRWTSK/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Forall2` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pairwise.nodup](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/pairwise-nodup--ced6db3c1d9d6e5ca772b5d8.md) | 33 | `result-track:ced6db3c1d9d6e5ca772b5d8fa5b233599df83b0dbf0d24641ba33d51a3656ee` |
| 2 | `theorem` | [rel_nodup](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/rel-nodup--19fa0deb7af9f5e8386172f5.md) | 38 | `result-track:19fa0deb7af9f5e8386172f5191a26383c4c50a3085675744977270e390fe645` |
| 3 | `theorem` | [Nodup.cons](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-cons--7d1fbb2c408ef219b6e93658.md) | 44 | `result-track:7d1fbb2c408ef219b6e93658eb77efd8bcf8fc92102ff293f9ce3b0f42cb5b83` |
| 4 | `theorem` | [nodup_singleton](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-singleton--91e8ec12be96baddf43fd357.md) | 47 | `result-track:91e8ec12be96baddf43fd357f369ed345045d8acd547d7fc23c55a1b7d716a7c` |
| 5 | `theorem` | [Nodup.of_cons](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-of-cons--8ef9164c619139ddc9c3ce43.md) | 50 | `result-track:8ef9164c619139ddc9c3ce43a220ac67511ad117765984b54e5ac2899aa76efd` |
| 6 | `theorem` | [Nodup.notMem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-notmem--f2daca7fe4743b9ffcfd1001.md) | 53 | `result-track:f2daca7fe4743b9ffcfd100191903e36d3f197b061669e7dc2b69c0ffe015ee4` |
| 7 | `theorem` | [not_nodup_cons_of_mem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/not-nodup-cons-of-mem--d6c3eb5e7596844e2e04a814.md) | 58 | `result-track:d6c3eb5e7596844e2e04a814bbdf26f784d7a969ebd235a8639b6212ab099843` |
| 8 | `theorem` | [not_nodup_pair](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/not-nodup-pair--21e2244553e67a31ab86586c.md) | 62 | `result-track:21e2244553e67a31ab86586c9fb22ff1a242d5c78a63fe6b46b4faedcc834438` |
| 9 | `theorem` | [nodup_iff_sublist](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-iff-sublist--1b46301d4176618efd433a5c.md) | 65 | `result-track:1b46301d4176618efd433a5c6af9768dc60e3b1ad2b98dbd3fbee2582ad98f54` |
| 10 | `theorem` | [nodup_mergeSort](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-mergesort--2431033038fd36c9b8b80770.md) | 74 | `result-track:2431033038fd36c9b8b80770789898325a0e12f0546c35a5672de0a34cd5fdb6` |
| 11 | `theorem` | [nodup_iff_injective_getElem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-iff-injective-getelem--338d3053109ac59751387886.md) | 79 | `result-track:338d3053109ac59751387886b2a1c03d83dda6924846af8166b190252095bad7` |
| 12 | `theorem` | [nodup_iff_injective_get](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-iff-injective-get--2900bbb60f227f189b3db749.md) | 90 | `result-track:2900bbb60f227f189b3db749de68e365400015c1463312d6d0692cc3252c618c` |
| 13 | `theorem` | [Nodup.get_inj_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-get-inj-iff--aca47268447b1726781ea603.md) | 96 | `result-track:aca47268447b1726781ea60370667b71a64ff90770568d27c50e44334e42b4ea` |
| 14 | `theorem` | [Nodup.getElem_inj_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-getelem-inj-iff--78c32c60aa0f3a646c13c820.md) | 100 | `result-track:78c32c60aa0f3a646c13c8207a22bd0a6d2cf034d35bc483fdb0015e72b48902` |
| 15 | `theorem` | [nodup_iff_getElem?_ne_getElem?](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-iff-getelem-ne-getelem--9452b9137200f2fe182855a9.md) | 106 | `result-track:9452b9137200f2fe182855a9116979130dea275ffc7b3e42358ee66f6ea665f8` |
| 16 | `theorem` | [nodup_iff_get?_ne_get?](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-iff-get-ne-get--928888a57979b7340f47185e.md) | 119 | `result-track:928888a57979b7340f47185ec6685dde60a80313b568294cc834ca16bb75badc` |
| 17 | `theorem` | [Nodup.ne_singleton_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-ne-singleton-iff--94199fd68518c5841a1ebb0a.md) | 123 | `result-track:94199fd68518c5841a1ebb0aaac209a1da098e3bbe659a8604d66d99304058da` |
| 18 | `theorem` | [not_nodup_of_get_eq_of_ne](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/not-nodup-of-get-eq-of-ne--07578573142fa0c7496cacca.md) | 137 | `result-track:07578573142fa0c7496cacca2381c3c8cb742c9cea6cdbc18b5c6edaf9fef092` |
| 19 | `theorem` | [idxOf_getElem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/idxof-getelem--fbed3e0ae955859b2d8cb5ae.md) | 142 | `result-track:fbed3e0ae955859b2d8cb5ae0e65387cf308770d80c338764fdb3f36035ad55f` |
| 20 | `theorem` | [get_idxOf](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/get-idxof--5545b14d3d5cb55495eceeb3.md) | 152 | `result-track:5545b14d3d5cb55495eceeb32fbe0bb6b13076360669d60906c2a119944ef7e4` |
| 21 | `theorem` | [nodup_iff_count_le_one](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-iff-count-le-one--2623c6f387cc4fe684f4f7e6.md) | 158 | `result-track:2623c6f387cc4fe684f4f7e625fa69a72bfe46870bc5357fce9fb9b37471f169` |
| 22 | `theorem` | [nodup_iff_count_eq_one](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-iff-count-eq-one--a9ad9467eb39e5293be7611b.md) | 164 | `result-track:a9ad9467eb39e5293be7611b50c6fb8c72cb9e7cd41f196db57f993c9d4970fd` |
| 23 | `theorem` | [count_eq_one_of_mem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/count-eq-one-of-mem--7b2d285a5e9ca008af900b39.md) | 171 | `result-track:7b2d285a5e9ca008af900b394155680f55cfd7a5ed1b2c076e4713870d41f91b` |
| 24 | `theorem` | [count_eq_of_nodup](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/count-eq-of-nodup--b4ce52f276d85dc779bc7a20.md) | 175 | `result-track:b4ce52f276d85dc779bc7a20e5c595ec5eb65040631d561c0ced17a0da8f4a5e` |
| 25 | `theorem` | [Nodup.of_append_left](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-of-append-left--f5a479dd470e9f5a9959a054.md) | 181 | `result-track:f5a479dd470e9f5a9959a05477a9f6ab65fb1af3078d096918bd07dbda314ff1` |
| 26 | `theorem` | [Nodup.of_append_right](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-of-append-right--16e2ac2ee6cad80eae74c10b.md) | 184 | `result-track:16e2ac2ee6cad80eae74c10b015f289e16c1433414af065a3f9792e6317fb937` |
| 27 | `theorem` | [nodup_append](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-append--17c2202531f7b908e403709a.md) | 187 | `result-track:17c2202531f7b908e403709ab18c82d115fe1c5872420bdfbf1c41574ddc572a` |
| 28 | `theorem` | [disjoint_of_nodup_append](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/disjoint-of-nodup-append--c93d91fd223e33b00b9ab642.md) | 191 | `result-track:c93d91fd223e33b00b9ab64202150ac4687fd8a77924c508d1e495ddd5bc0642` |
| 29 | `theorem` | [Nodup.append](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-append--9554ccb6b260dd3c5d91d36c.md) | 194 | `result-track:9554ccb6b260dd3c5d91d36c87621b8f437a3e95e28afc2237b04e7c9e56a135` |
| 30 | `theorem` | [nodup_append_comm](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-append-comm--64994207f5f8becb5f447d9a.md) | 197 | `result-track:64994207f5f8becb5f447d9a95f6987616d0c98930f9657b1eef0d0928a065cd` |
| 31 | `theorem` | [nodup_middle](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-middle--6d2431c7ffb0689d886c4278.md) | 200 | `result-track:6d2431c7ffb0689d886c4278b00ef6ec615814e8e9551ccfad39d57ceb16c437` |
| 32 | `theorem` | [Nodup.of_map](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-of-map--66eb355bf3dadb0e56b5826e.md) | 205 | `result-track:66eb355bf3dadb0e56b5826ee0591fde8aacdbfe29cebbee2cc3fba1af2d482f` |
| 33 | `theorem` | [Nodup.map_on](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-map-on--1b02c392d6287891bd10993f.md) | 208 | `result-track:1b02c392d6287891bd10993fac0e39235295f60f3b25c36c62c84b12d3656b35` |
| 34 | `theorem` | [inj_on_of_nodup_map](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/inj-on-of-nodup-map--2856c3e3e92a861876de78ac.md) | 212 | `result-track:2856c3e3e92a861876de78ac9fc79cf4cf669d794b01abc4f1569f94cccafc99` |
| 35 | `theorem` | [nodup_map_iff_inj_on](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-map-iff-inj-on--5f6ff0db78cb1bfd398755c5.md) | 225 | `result-track:5f6ff0db78cb1bfd398755c528797b63d8c8fee908a868e3670e9ffaea5e01d0` |
| 36 | `theorem` | [Nodup.map](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-map--06e39eb3eafe74192dacd53f.md) | 229 | `result-track:06e39eb3eafe74192dacd53fd1c1faa477750c9551c5f1cfe3b2c5d7c2594fa5` |
| 37 | `theorem` | [nodup_map_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-map-iff--a809a38cd39a0e9e606e78f1.md) | 232 | `result-track:a809a38cd39a0e9e606e78f15732b151dec3d03881cfa786571ea288debfb483` |
| 38 | `theorem` | [nodup_attach](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-attach--d83309276586f3aa86866aae.md) | 236 | `result-track:d83309276586f3aa86866aaee3b4e7a50bf5a3479c71140154c459bc261b14a8` |
| 39 | `theorem` | [Nodup.pmap](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-pmap--cafd8d3b55a1c37a575a7c4c.md) | 242 | `result-track:cafd8d3b55a1c37a575a7c4c50a08fc9623ebd8b75d3b0199c2668762ad66c33` |
| 40 | `theorem` | [Nodup.filter](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-filter--c6166cc6e6f161556ec60354.md) | 247 | `result-track:c6166cc6e6f161556ec60354244bedf681365892bd1d0de4763186eec00ec35f` |
| 41 | `theorem` | [nodup_reverse](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-reverse--4be54d2b5e9aaaeb09e74732.md) | 251 | `result-track:4be54d2b5e9aaaeb09e7473267445976ab75d1a19be3584c0a9dab3027bf0e0f` |
| 42 | `lemma` | [nodup_tail_reverse](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-tail-reverse--9a8bf1e5f417781fa1ca3d86.md) | 254 | `result-track:9a8bf1e5f417781fa1ca3d8608556cdc4e036f4e29dc77704adec944ee578b07` |
| 43 | `theorem` | [Nodup.erase_getElem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-erase-getelem--d102596af7d53746167a7671.md) | 272 | `result-track:d102596af7d53746167a7671c836b395178bbe584c49cdc0ab4fa53e7db3d9b1` |
| 44 | `theorem` | [Nodup.erase_get](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-erase-get--feaa1d1e1c23d8d29b86d084.md) | 288 | `result-track:feaa1d1e1c23d8d29b86d08490b7069b6c41fd36647ca7c2b026912fc8fd000d` |
| 45 | `theorem` | [Nodup.diff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-diff--b52c0643dd10aaab8a74e586.md) | 292 | `result-track:b52c0643dd10aaab8a74e586b6ee1ce93037e3f3d43c27ed560df75477cfccc8` |
| 46 | `theorem` | [nodup_flatten](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-flatten--828eee6ef5f91621c12e38b7.md) | 295 | `result-track:828eee6ef5f91621c12e38b709520da23138b9ecc1585747c2400682b7bfee1f` |
| 47 | `theorem` | [nodup_flatMap](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-flatmap--8ed5e81ceb3a2c8eb031c138.md) | 301 | `result-track:8ed5e81ceb3a2c8eb031c1380076339c0d1b91705924ea475323aa943645ae66` |
| 48 | `theorem` | [Nodup.product](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-product--912dcf85c1d01f05abc39c51.md) | 311 | `result-track:912dcf85c1d01f05abc39c51d6ff6c563db008bbf6740d7855658fed49eb0ca9` |
| 49 | `theorem` | [Nodup.sigma](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-sigma--124b847a1aa2dfdfc0ff37fa.md) | 320 | `result-track:124b847a1aa2dfdfc0ff37fa9e4d83f9ec5e5993fe2671a854c0fbc31a862968` |
| 50 | `theorem` | [Nodup.filterMap](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-filtermap--0951236c176dd9b9f5d069a4.md) | 329 | `result-track:0951236c176dd9b9f5d069a42715e3f694b77923ab74a09b4848cf1adf3cb526` |
| 51 | `theorem` | [Nodup.concat](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-concat--48cc003d0a4ac9c0f7e47fe6.md) | 333 | `result-track:48cc003d0a4ac9c0f7e47fe6cfeaac53b4025295d0498c39ebcbd972472600db` |
| 52 | `theorem` | [Nodup.insert](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-insert--6279b3287dd9ef088b9b1b64.md) | 336 | `result-track:6279b3287dd9ef088b9b1b64dbb7170a53efa6e97754ac7204af3bc903251f36` |
| 53 | `theorem` | [Nodup.union](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-union--9565f49a67c5f47c9ce4909f.md) | 340 | `result-track:9565f49a67c5f47c9ce4909f3abd65148d00526f84250419d96a0fe368ba81a2` |
| 54 | `theorem` | [Nodup.inter](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-inter--bb3305560f68581022c1d63a.md) | 345 | `result-track:bb3305560f68581022c1d63a00a27a2aa6da27049565885d1ac17dd1b704a12c` |
| 55 | `theorem` | [Nodup.diff_eq_filter](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-diff-eq-filter--d2a814b049ac134b626ced37.md) | 348 | `result-track:d2a814b049ac134b626ced37569265cc39d68119fbcdd42b04b3c5f664a79e28` |
| 56 | `theorem` | [Nodup.mem_diff_iff](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-mem-diff-iff--5524e859e41b8cabc4780a56.md) | 355 | `result-track:5524e859e41b8cabc4780a5687d4097ec0a2c070ab5dcfabf85bc0c1bee1e9a2` |
| 57 | `theorem` | [Nodup.set](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-set--4480577695524ba085b3a640.md) | 358 | `result-track:4480577695524ba085b3a64058ca8e23b781653a67de260ba3830a25c26f8a02` |
| 58 | `theorem` | [Nodup.map_update](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-map-update--e8aa7310c14d97b6bf1155aa.md) | 368 | `result-track:e8aa7310c14d97b6bf1155aab4e6889cacc151e65ed3eb2e495cd6b9fa5810bd` |
| 59 | `theorem` | [Nodup.pairwise_of_forall_ne](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-pairwise-of-forall-ne--f76dab6c71ef48887b93343f.md) | 379 | `result-track:f76dab6c71ef48887b93343f1653472094fa9b0ab9ba67dd47ab478565a40779` |
| 60 | `theorem` | [Nodup.take_eq_filter_mem](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/nodup-take-eq-filter-mem--1a8f5dadfabe8e39c1ab6d0d.md) | 389 | `result-track:1a8f5dadfabe8e39c1ab6d0d479bd0aa75e30618cc9777d0fc93fbe1a6b0551a` |
| 61 | `theorem` | [Option.toList_nodup](../../../../../mathematics/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/declarations/option-tolist-nodup--2558cae5fe93d8c8a941b492.md) | 402 | `result-track:2558cae5fe93d8c8a941b4921ccf2da95b937ad2bff4bc14e5b524caa6df0c8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
