# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dedup.Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcefd49dde0a3369956e75398cd25404b6619a6d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcefd49dde0a3369956e75398cd25404b6619a6d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean.json)

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
| 1 | `theorem` | [dedup_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-nil--324348c0c1e3fb506fee0e19.md) | 34 | `result-track:324348c0c1e3fb506fee0e1910bf08014eb82f4f87d8dd173c07b6c7301ae2d2` |
| 2 | `theorem` | [dedup_cons_of_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-cons-of-mem--c38aefb8c0fc3c50fc572b46.md) | 37 | `result-track:c38aefb8c0fc3c50fc572b467f5387b5d4a008d1163f282f626ab48d997455ec` |
| 3 | `theorem` | [dedup_cons_of_notMem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-cons-of-notmem--1923666a76b5e90bb41f5702.md) | 40 | `result-track:1923666a76b5e90bb41f5702227f247cd8b662a84d3a93f881a414ca18334a04` |
| 4 | `theorem` | [dedup_cons'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-cons--cec9a518f3a0b47beae99e88.md) | 44 | `result-track:cec9a518f3a0b47beae99e8883ba199e0b07b04f3cda9da09b58a941316a22d0` |
| 5 | `theorem` | [mem_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/mem-dedup--741cb59b7ef658786128f904.md) | 49 | `result-track:741cb59b7ef658786128f904a5537cba7dfa87252c480698e3e8b2693524ec6b` |
| 6 | `theorem` | [dedup_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-cons-of-mem--60d5604be39863aac242a173.md) | 56 | `result-track:60d5604be39863aac242a1737ba8ef3f1b266b299d9ac1c4de7287e5eca3dd77` |
| 7 | `theorem` | [dedup_cons_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-cons-of-notmem--80652c835761f36dbffe4a42.md) | 60 | `result-track:80652c835761f36dbffe4a4281144674601ab1fe2c127bba8bf58567f720b8c8` |
| 8 | `theorem` | [dedup_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-cons--e8c9fce8cd240dcd7304b891.md) | 63 | `result-track:e8c9fce8cd240dcd7304b891eda13b66f288c50ca7e6c119ea1983c9dd90ccfa` |
| 9 | `theorem` | [dedup_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-sublist--defb11398fc7f87b5575fe02.md) | 67 | `result-track:defb11398fc7f87b5575fe02af66a7c713bf045bbb30b7154a57cf93a4ceb24c` |
| 10 | `theorem` | [dedup_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-subset--d7b84ff8f065ce801ab0ffe8.md) | 70 | `result-track:d7b84ff8f065ce801ab0ffe8ef9079330a6dde4d566f1813f48f94e289dc19c7` |
| 11 | `theorem` | [subset_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/subset-dedup--55e8d3efdac8972f0cd39de8.md) | 73 | `result-track:55e8d3efdac8972f0cd39de8a009618130af797d5496046aa1a10031e7040592` |
| 12 | `theorem` | [nodup_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/nodup-dedup--f622af6f275d73338441df04.md) | 75 | `result-track:f622af6f275d73338441df04685663dfa49565d77ced2fc7ebf09cfc2ae3f4d2` |
| 13 | `theorem` | [headI_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/headi-dedup--9bdee76dde9bcf9e0aa2a34e.md) | 78 | `result-track:9bdee76dde9bcf9e0aa2a34ee14cfc414db991663df0743ca2176419245d9df1` |
| 14 | `theorem` | [tail_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/tail-dedup--09e3a53ca623d56774f59d2d.md) | 84 | `result-track:09e3a53ca623d56774f59d2da77ed08f973a7099b7bb41b49f01f6731de94b62` |
| 15 | `theorem` | [dedup_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-eq-self--70e3e017be77f0ef0b79c0dc.md) | 90 | `result-track:70e3e017be77f0ef0b79c0dca755ba471b0dcc37d0011927642df03b5762df6b` |
| 16 | `theorem` | [nodup_iff_sublist_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/nodup-iff-sublist-dedup--d61149609e1a1ed68edcd474.md) | 93 | `result-track:d61149609e1a1ed68edcd47489c3a738ef688e0092b7e1b6f561e2af947a12ab` |
| 17 | `theorem` | [nodup_iff_length_dedup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/nodup-iff-length-dedup-eq--8666dbfc5cf9e0009cd85794.md) | 96 | `result-track:8666dbfc5cf9e0009cd85794abff5a083008628877420aeff40dd461d5759128` |
| 18 | `theorem` | [nodup_iff_le_length_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/nodup-iff-le-length-dedup--8299c1344b9074e3986994b2.md) | 99 | `result-track:8299c1344b9074e3986994b264935574879e5f01d91abdebe62cbbb3673520e8` |
| 19 | `theorem` | [dedup_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-eq-cons--61b12401359dc3e9a06c7de3.md) | 102 | `result-track:61b12401359dc3e9a06c7de3a653daf3653c281bc918cf4cf818ffb9664c4adc` |
| 20 | `theorem` | [dedup_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-eq-nil--d60d5053fea7c3429eacd271.md) | 116 | `result-track:d60d5053fea7c3429eacd271a200defc5c06bc2e7aab2cac5f29af72e4b7b511` |
| 21 | `theorem` | [Nodup.dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/nodup-dedup--77b70b4ad0198ea6953a8346.md) | 124 | `result-track:77b70b4ad0198ea6953a8346ad154a65314e32a1bfccc9b33c8cda0f504a47b4` |
| 22 | `theorem` | [dedup_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-idem--dfd997bf70a09120e9a3dad3.md) | 128 | `result-track:dfd997bf70a09120e9a3dad3157d3aaf17af477910b3f02e74a9a4eb3f97dd8e` |
| 23 | `theorem` | [dedup_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-append--e48f456c25328a936256fc87.md) | 131 | `result-track:e48f456c25328a936256fc879624b0857173e1f1604276e82bbe509aac121fc8` |
| 24 | `theorem` | [dedup_map_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/dedup-map-of-injective--b79e98f11f451c7e38c4f94d.md) | 139 | `result-track:b79e98f11f451c7e38c4f94d55299cf3f387f045ae23397f0794e26b5b0066d3` |
| 25 | `theorem` | [Subset.dedup_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/subset-dedup-append-right--99b9f04519e9f488e42e333e.md) | 152 | `result-track:99b9f04519e9f488e42e333e58ea37e8d47dbd6c21f5dd7202c8f6063830428b` |
| 26 | `theorem` | [Disjoint.union_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/disjoint-union-eq--62e873748e9c7bd544e77f10.md) | 156 | `result-track:62e873748e9c7bd544e77f10a669a06b7f07dd84e0095b0c1ae30d2ec5e67e54` |
| 27 | `theorem` | [Disjoint.dedup_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/disjoint-dedup-append--dcc25a3c4172f02999218873.md) | 169 | `result-track:dcc25a3c4172f02999218873e1451f47e2c40f0916778d35a51e0479efd62eb7` |
| 28 | `theorem` | [replicate_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/replicate-dedup--a8931989380362d6844bf348.md) | 175 | `result-track:a8931989380362d6844bf348266d66efafd100da8b144596a7c192575c8bf62e` |
| 29 | `theorem` | [count_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/count-dedup--5c9dd01c633bee43da23e57d.md) | 182 | `result-track:5c9dd01c633bee43da23e57d239e0b96c941e660911016a96caaad2cfa6590fc` |
| 30 | `theorem` | [Perm.dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean/declarations/perm-dedup--020c16d5bfc0b123e8d541de.md) | 185 | `result-track:020c16d5bfc0b123e8d541de394cff9d9b1c61b35add70ab3dc1a8864b30dc5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
