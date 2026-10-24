# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Dissociation.Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35af9cba305b1c157bc471ef5ac9120c75e84295",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35af9cba305b1c157bc471ef5ac9120c75e84295`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean.json)

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
| 1 | `def` | [MulDissociated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/muldissociated--5c317638094beb278d41e57c.md) | 45 | `declaration-track:5c317638094beb278d41e57cfd32c4d19a3a219d6aaac50255c8a601f9fa6e71` |
| 2 | `lemma` | [mulDissociated_iff_sum_eq_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/muldissociated-iff-sum-eq-subsingleton--1d0b50a168ba120f450faea9.md) | 47 | `result-track:1d0b50a168ba120f450faea9e82ff5f3ec212a6f169aaa5aadf02349ce5ea67a` |
| 3 | `lemma` | [MulDissociated.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/muldissociated-subset--7ee5653e795e35c3bd90044c.md) | 52 | `result-track:7ee5653e795e35c3bd90044c0265e252c32e9144383cf7150ccfe6a905eee9e6` |
| 4 | `lemma` | [mulDissociated_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/muldissociated-empty--24a09b2797aaa2611cd07e01.md) | 55 | `result-track:24a09b2797aaa2611cd07e01d329e8122ababd5b42209908f434630548df6cc7` |
| 5 | `lemma` | [mulDissociated_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/muldissociated-singleton--01c2801d40cab0442e7239fe.md) | 59 | `result-track:01c2801d40cab0442e7239fedfcb403d0e0ed7807ee6536a828f6ca198b7862b` |
| 6 | `lemma` | [not_mulDissociated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/not-muldissociated--f7cb50c118689367d9c30353.md) | 64 | `result-track:f7cb50c118689367d9c30353883c4f18562253922cc4efa766988cf975e9975e` |
| 7 | `lemma` | [not_mulDissociated_iff_exists_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/not-muldissociated-iff-exists-disjoint--e1bdfaf093b2ee21dadf2a2f.md) | 70 | `result-track:e1bdfaf093b2ee21dadf2a2f9b5260b1d146562ae211e1832a8f7b5128d18687` |
| 8 | `lemma` | [MulEquiv.mulDissociated_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/mulequiv-muldissociated-preimage--28a39324e63f29e5fb30b32a.md) | 80 | `result-track:28a39324e63f29e5fb30b32ae37136c92554b4f8bf883eeba8378967fd3e60ae` |
| 9 | `lemma` | [mulDissociated_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/muldissociated-inv--270536b3c5cf2f280ad9cc32.md) | 85 | `result-track:270536b3c5cf2f280ad9cc32bed9ccf945dcdd7886238fd6192299cd8278ce6c` |
| 10 | `def` | [mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/mulspan--1f1e920b18cd8b7d45d3b68c.md) | 105 | `declaration-track:1f1e920b18cd8b7d45d3b68c1134112d0cd376669b894b9b5548ebb726dfaaa0` |
| 11 | `lemma` | [mem_mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/mem-mulspan--d6a5771eae3f71de6a411b71.md) | 109 | `result-track:d6a5771eae3f71de6a411b715a82fd86ce80c203d69df7c3f75a512abf782985` |
| 12 | `lemma` | [subset_mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/subset-mulspan--0047d9a3e2f04c8e9ee7d7e7.md) | 114 | `result-track:0047d9a3e2f04c8e9ee7d7e70f2cf50e9753b95b8b4fec22ee9bb3a190758ce2` |
| 13 | `lemma` | [prod_div_prod_mem_mulSpan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/prod-div-prod-mem-mulspan--f94bdcd592c2f7adf22f2c67.md) | 119 | `result-track:f94bdcd592c2f7adf22f2c679c35c70bb0d2e24a0fbdd1b078efe1a7a4dda1b5` |
| 14 | `lemma` | [exists_subset_mulSpan_card_le_of_forall_mulDissociated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dissociation/Variant6e5bfd2a166c805e374914d5c8a70b1b086bcd610a24f1b2780e3f25e4f81227.lean/declarations/exists-subset-mulspan-card-le-of-forall-muldissociated--197304e5e70b1f1f1d6fbd37.md) | 135 | `result-track:197304e5e70b1f1f1d6fbd37f97235238e60f191a84ea8824b0cce7033eae380` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
