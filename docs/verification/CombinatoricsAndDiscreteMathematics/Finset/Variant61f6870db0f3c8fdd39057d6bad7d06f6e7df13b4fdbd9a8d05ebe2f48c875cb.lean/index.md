# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fce1b985bf079d153d2774d0c7c370b3048589ab",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fce1b985bf079d153d2774d0c7c370b3048589ab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean.json)

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
| 1 | `theorem` | [iSup_eq_iSup_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-eq-isup-finset--358d224a5fa8213380f431a7.md) | 39 | `result-track:358d224a5fa8213380f431a79fef680b82e59f832ba467850c164d1cc7fd52fe` |
| 2 | `theorem` | [iSup_eq_iSup_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-eq-isup-finset--a74fbd6b9bfe8f632517487a.md) | 51 | `result-track:a74fbd6b9bfe8f632517487a3c24154ba5bbcb094e1937aba8c43aec58b31426` |
| 3 | `theorem` | [iUnion_eq_iUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/iunion-eq-iunion-finset--c3821bdec81650a775d473e4.md) | 64 | `result-track:c3821bdec81650a775d473e476e5115ed683ebdfd2755e265bc5fa596f3e655d` |
| 4 | `theorem` | [iUnion_eq_iUnion_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/iunion-eq-iunion-finset--6740d32b9c8c9f1099ce0a06.md) | 70 | `result-track:6740d32b9c8c9f1099ce0a063bfcafc44964a5db2a7b48d6d0d38b94800bd5e3` |
| 5 | `theorem` | [iInter_eq_iInter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/iinter-eq-iinter-finset--b2bf00d772a61b426beecb8f.md) | 77 | `result-track:b2bf00d772a61b426beecb8fa88e8a3c9174d3793ab1216ce9d951c9486d1e1c` |
| 6 | `theorem` | [iInter_eq_iInter_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/iinter-eq-iinter-finset--b82d2952449c730e6d1a99ac.md) | 84 | `result-track:b82d2952449c730e6d1a99acf4dc3532349683a75779b7f74ea70bec5664e9b2` |
| 7 | `theorem` | [iUnion_finset_eq_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/iunion-finset-eq-set--eabf35303ef86c6dd636a0bd.md) | 88 | `result-track:eabf35303ef86c6dd636a0bd8d3df5562c38bf076037f8a7339884e6b7114eac` |
| 8 | `theorem` | [maximal_iff_forall_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/maximal-iff-forall-insert--e63c190cc471915d2099d6ac.md) | 103 | `result-track:e63c190cc471915d2099d6ace9721c5ca4ed1ac267e75c85074551fa7935ac84` |
| 9 | `theorem` | [minimal_iff_forall_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/minimal-iff-forall-erase--284da32186ee73d25082b73c.md) | 109 | `result-track:284da32186ee73d25082b73c5887a723e4c8c6ca7b0e0f1176495d7dcac7b68c` |
| 10 | `theorem` | [iSup_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-coe--8fd7092499efb285d3f82d16.md) | 125 | `result-track:8fd7092499efb285d3f82d16d09403261ac68b7a1771261b21566d458a02ed3a` |
| 11 | `theorem` | [iSup_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-singleton--6f537892c071ab9ddb349a9a.md) | 131 | `result-track:6f537892c071ab9ddb349a9ab0ca4f795cdfcc3d9f6373d0d7ae068f0a3b32bc` |
| 12 | `theorem` | [iSup_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-option-tofinset--e7050e6cf2e98af454765a39.md) | 134 | `result-track:e7050e6cf2e98af454765a39e9ed20448f240284f13486463be1c1ad44b4c590` |
| 13 | `theorem` | [iSup_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-union--22d355d01375859605b5197e.md) | 140 | `result-track:22d355d01375859605b5197e575eda5dd5074d068aae10becd8218cb0731dfe9` |
| 14 | `theorem` | [iSup_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-insert--a96c38f2f94680fc6b282001.md) | 145 | `result-track:a96c38f2f94680fc6b282001dd8c316a9233530d41559d9a40a6f347d1aa6b39` |
| 15 | `theorem` | [iSup_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-finset-image--4949cd6d4d46233e376a770d.md) | 150 | `result-track:4949cd6d4d46233e376a770d31e5e056b7d7688d1468a834e5f182067bebb7f0` |
| 16 | `theorem` | [iSup_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-insert-update--e4ccde2bccf5b85114bce3e9.md) | 155 | `result-track:e4ccde2bccf5b85114bce3e9029ac4b63a38ad974d03adcea623fd1ae1968bd3` |
| 17 | `theorem` | [iSup_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/isup-biunion--94cb87d113a30b8cbeef63f8.md) | 161 | `result-track:94cb87d113a30b8cbeef63f8a773c62a70399c9fcc6eeeb2b508fcfb4b29c2e7` |
| 18 | `theorem` | [set_biUnion_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biunion-coe--fe78e94607771b92d13045b0.md) | 166 | `result-track:fe78e94607771b92d13045b04848fb7ab3e0d48f2b3e5150413a72bafda274ec` |
| 19 | `theorem` | [set_biInter_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biinter-coe--c0b376c91d6154932bd7d3d2.md) | 169 | `result-track:c0b376c91d6154932bd7d3d2fae66199db18fe26f105383c094a4eac9c2998ac` |
| 20 | `theorem` | [set_biUnion_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biunion-singleton--5bd3570c3418e8a3620ac0e7.md) | 172 | `result-track:5bd3570c3418e8a3620ac0e7bf8d3aa2d39a3d268bb29e440d78887d22cb217a` |
| 21 | `theorem` | [set_biInter_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biinter-singleton--898cbd91a145200ecc6dbe46.md) | 175 | `result-track:898cbd91a145200ecc6dbe4699809fed8ebbb54db327c3cae7d6b6830f2a23c5` |
| 22 | `theorem` | [set_biUnion_preimage_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biunion-preimage-singleton--b66f1f4fcc514b38281b2354.md) | 179 | `result-track:b66f1f4fcc514b38281b23542f6cf862596450a355a0554fd6c7531e3a7d89f1` |
| 23 | `theorem` | [set_biUnion_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biunion-option-tofinset--28a2f86cec0da69c8e8661a2.md) | 183 | `result-track:28a2f86cec0da69c8e8661a2256636ee61ec7f54b14431a093f0c9370fad9f5b` |
| 24 | `theorem` | [set_biInter_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biinter-option-tofinset--88f042062c591d2a5d46aae5.md) | 187 | `result-track:88f042062c591d2a5d46aae5db8af6ac5fc638cc6801bf695c7b3a9c7d1ed544` |
| 25 | `theorem` | [subset_set_biUnion_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/subset-set-biunion-of-mem--7a0606a64ed8d06b9cee837e.md) | 191 | `result-track:7a0606a64ed8d06b9cee837ed1909229dca7fa7652c3186ecb134e90d9de9846` |
| 26 | `theorem` | [set_biUnion_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biunion-union--915d41c0458983d27e7b0bd2.md) | 197 | `result-track:915d41c0458983d27e7b0bd2802947469d132e27857b34e9c183bd60057a6214` |
| 27 | `theorem` | [set_biInter_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biinter-inter--38ef1298f9c8d0fa5b24c828.md) | 201 | `result-track:38ef1298f9c8d0fa5b24c8280b9e236e357e6c247d5ea0dc20b7898695b66b2a` |
| 28 | `theorem` | [set_biUnion_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biunion-insert--af8566f9bfecb09730b4eb1a.md) | 205 | `result-track:af8566f9bfecb09730b4eb1af1efff36dabc45a5a71d8ee2beb6fb4f04d50c01` |
| 29 | `theorem` | [set_biInter_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biinter-insert--adc9307bf11ba19c62fcc848.md) | 209 | `result-track:adc9307bf11ba19c62fcc84878669829c8fef1cf08fe722754ee4d912cd6262a` |
| 30 | `theorem` | [set_biUnion_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biunion-finset-image--b9a4cf2632559137e6a2f50f.md) | 213 | `result-track:b9a4cf2632559137e6a2f50f1c9fed96ef7fdd4786c21f3c3d75bd52c2ec8b48` |
| 31 | `theorem` | [set_biInter_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biinter-finset-image--a647f0fee02759744d9b600f.md) | 217 | `result-track:a647f0fee02759744d9b600fdebe5fd714077ec916f55c4fc8217276695331dd` |
| 32 | `theorem` | [set_biUnion_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biunion-insert-update--6ac1a5c29394e9983e7a2e4e.md) | 221 | `result-track:6ac1a5c29394e9983e7a2e4ef26d52d3abf51e7f9e2dde9a09340645ff5c3bb4` |
| 33 | `theorem` | [set_biInter_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biinter-insert-update--cd163fbf7f7522542557c935.md) | 225 | `result-track:cd163fbf7f7522542557c9358f685df6a3135a01dd197ecb03a673ba61b8f356` |
| 34 | `theorem` | [set_biUnion_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biunion-biunion--7001b9c59ca7424c10e484b5.md) | 229 | `result-track:7001b9c59ca7424c10e484b530d5fdc900062256566b2adfa8c1f26a80810de3` |
| 35 | `theorem` | [set_biInter_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant61f6870db0f3c8fdd39057d6bad7d06f6e7df13b4fdbd9a8d05ebe2f48c875cb.lean/declarations/set-biinter-biunion--b06a1ae2691abd36f590891e.md) | 233 | `result-track:b06a1ae2691abd36f590891e4b972fa7bc525cf53d9d6c7bd120e16030f08132` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
