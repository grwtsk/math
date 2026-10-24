# Verification target: GRWTSK.Algebra.Nakayama.Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c51814e0230cbe033b9580d49bf33118a973db6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c51814e0230cbe033b9580d49bf33118a973db6`.

Source path: `GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/eq-smul-of-le-smul-of-le-jacobson--229e67443afc84a667f49e54.md) | 61 | `result-track:229e67443afc84a667f49e548d32359897da79324980caafeb672a6d76f50097` |
| 2 | `lemma` | [eq_bot_of_eq_ideal_smul_of_le_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/eq-bot-of-eq-ideal-smul-of-le-jacobson-annihilator--f4b7fa9722f4c4204b5eb36a.md) | 72 | `result-track:f4b7fa9722f4c4204b5eb36a5471c73b546cbb722bad6b534ab29138ab60874b` |
| 3 | `lemma` | [eq_bot_of_eq_pointwise_smul_of_mem_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/eq-bot-of-eq-pointwise-smul-of-mem-jacobson-annihilator--282ddea808fcaa3157cbf78f.md) | 78 | `result-track:282ddea808fcaa3157cbf78f54ff05971a840a48a5e6a7a051c49cb2db71cb61` |
| 4 | `lemma` | [eq_bot_of_set_smul_eq_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/eq-bot-of-set-smul-eq-of-subset-jacobson-annihilator--bf7883e06d629e33d17c3699.md) | 86 | `result-track:bf7883e06d629e33d17c36997a44804dac026ed3888592cf44fd419851132371` |
| 5 | `lemma` | [top_ne_ideal_smul_of_le_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/top-ne-ideal-smul-of-le-jacobson-annihilator--342faec099c6180c36ab5d1a.md) | 92 | `result-track:342faec099c6180c36ab5d1ae76982799daf1867d9aab187c4b53adbf399165d` |
| 6 | `lemma` | [top_ne_set_smul_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/top-ne-set-smul-of-subset-jacobson-annihilator--101b0cfa515751ac84c31e5f.md) | 99 | `result-track:101b0cfa515751ac84c31e5f958c6aed56f74ec8d65cfc23bd8c262aea6b2e17` |
| 7 | `lemma` | [top_ne_pointwise_smul_of_mem_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/top-ne-pointwise-smul-of-mem-jacobson-annihilator--658984c9c6f93ae84c22517a.md) | 107 | `result-track:658984c9c6f93ae84c22517af9f89738cdaa97b12759040e335264c5c183eb85` |
| 8 | `theorem` | [eq_bot_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/eq-bot-of-le-smul-of-le-jacobson-bot--f0c87abc26d350279847a2d5.md) | 118 | `result-track:f0c87abc26d350279847a2d54c0482d137b68ba10289b1c1c5c9103d115e3034` |
| 9 | `theorem` | [sup_eq_sup_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/sup-eq-sup-smul-of-le-smul-of-le-jacobson--0f19e08b63d43041fa8140a1.md) | 122 | `result-track:0f19e08b63d43041fa8140a1abe172c77b7e52ed571508225fd5cf344b19bd54` |
| 10 | `theorem` | [sup_smul_eq_sup_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/sup-smul-eq-sup-smul-of-le-smul-of-le-jacobson--cdde88a118da698f2a63b147.md) | 141 | `result-track:cdde88a118da698f2a63b147713b6150d052ad30197453d14cf9a4b19a4919bd` |
| 11 | `theorem` | [le_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/le-of-le-smul-of-le-jacobson-bot--6716af9edbbf26ea70191525.md) | 146 | `result-track:6716af9edbbf26ea70191525e69625722fbc646d254c38a757784f118c74d97e` |
| 12 | `theorem` | [smul_le_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/smul-le-of-le-smul-of-le-jacobson-bot--ad0559d2bd7571afd1412f2c.md) | 156 | `result-track:ad0559d2bd7571afd1412f2c40045f1158f4585449ac31cb73d2a68f41800f8d` |
| 13 | `lemma` | [exists_sub_one_mem_and_smul_le_of_fg_of_le_sup](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/exists-sub-one-mem-and-smul-le-of-fg-of-le-sup--df40f250666b7ef091b153c1.md) | 162 | `result-track:df40f250666b7ef091b153c101e3bf03c2e23c56fac768d3aefed20007b647d7` |
| 14 | `lemma` | [le_of_map_mkQ_le_map_mkQ_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/le-of-map-mkq-le-map-mkq-of-le-jacobson-bot--89b415076407018a0c12faa2.md) | 188 | `result-track:89b415076407018a0c12faa2ee2dd5c953141da3d081c91b3a4673acb4bb4afa` |
| 15 | `lemma` | [eq_of_map_mkQ_eq_map_mkQ_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/eq-of-map-mkq-eq-map-mkq-of-le-jacobson-bot--3a1b7983b6e368cbc24114a6.md) | 197 | `result-track:3a1b7983b6e368cbc24114a6499d46bd35a00be4ae0b4756f0788edf520db021` |
| 16 | `theorem` | [exists_injOn_mkQ_image_span_eq_of_span_eq_map_mkQ_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/exists-injon-mkq-image-span-eq-of-span-eq-map-mkq-of-le-jacobson-bot--bea3b491ace5d7516fb24fb8.md) | 216 | `result-track:bea3b491ace5d7516fb24fb8c08da663da7023e3b22ac18b2d7b64dedaaf8c75` |
| 17 | `lemma` | [LinearMap.surjective_of_surjective_comp_mkQ](../../../../mathematics/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/declarations/linearmap-surjective-of-surjective-comp-mkq--58c6f63a85cd6c39e4dc86e6.md) | 229 | `result-track:58c6f63a85cd6c39e4dc86e66930acf961e3c1e125b257e8b5f452249d4668bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
