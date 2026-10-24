# Verification target: GRWTSK.Algebra.MinpolyDiv.Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccba9dbe9550b3bd6ca53f6964df49092f383449",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/index.md) · [Full source](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccba9dbe9550b3bd6ca53f6964df49092f383449`.

Source path: `GRWTSK/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean.json)

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
| 1 | `def` | [minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/minpolydiv--13c7baea71e38c259cc9f778.md) | 33 | `declaration-track:13c7baea71e38c259cc9f7789deeade4bfb7e6209b0aaf95b88ccaae6a370532` |
| 2 | `lemma` | [minpolyDiv_spec](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/minpolydiv-spec--852d83c7d298f069ef3015e8.md) | 35 | `result-track:852d83c7d298f069ef3015e8f3c90a1049a3ad8631e5d44b99e1ffe057783938` |
| 3 | `lemma` | [coeff_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/coeff-minpolydiv--09fe530879a30c8906913206.md) | 40 | `result-track:09fe530879a30c89069132061c7c6cb7f24b7861ecc9902eeafe9d50c7c2cb35` |
| 4 | `lemma` | [minpolyDiv_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/minpolydiv-eq-zero--d68c8ea120e2fd527293ca4b.md) | 46 | `result-track:d68c8ea120e2fd527293ca4bd56ebe391486bb1cc7d21cb7f5503869b5ad1e86` |
| 5 | `lemma` | [eval_minpolyDiv_self](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/eval-minpolydiv-self--474cc95dc8655508debb9308.md) | 50 | `result-track:474cc95dc8655508debb9308e9c3fb11578849ef0cf77350e1030df34597a191` |
| 6 | `lemma` | [minpolyDiv_eval_eq_zero_of_ne_of_aeval_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/minpolydiv-eval-eq-zero-of-ne-of-aeval-eq-zero--919098e49e55493734c04c90.md) | 53 | `result-track:919098e49e55493734c04c901909c66234427a2f8ed2f517eeb25736e6e7dd55` |
| 7 | `lemma` | [eval₂_minpolyDiv_of_eval₂_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/eval-minpolydiv-of-eval-eq-zero--d50808ed996f03f9a714590e.md) | 59 | `result-track:d50808ed996f03f9a714590e84f5dfef509de789a54e04f1561f231c5c0f3db2` |
| 8 | `lemma` | [eval₂_minpolyDiv_self](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/eval-minpolydiv-self--ce4b266cfcb3b46d0ed7cb3c.md) | 69 | `result-track:ce4b266cfcb3b46d0ed7cb3c082798aed77845dba5ce801e10a1b6d54f7bb77d` |
| 9 | `lemma` | [eval_minpolyDiv_of_aeval_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/eval-minpolydiv-of-aeval-eq-zero--cb2682f39add742710a9bc06.md) | 77 | `result-track:cb2682f39add742710a9bc06ca1bb223aee602b18e606abd92b17ef7a4dd0fb6` |
| 10 | `lemma` | [coeff_minpolyDiv_mem_adjoin](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/coeff-minpolydiv-mem-adjoin--0b538233b82e15dd7c1e3eac.md) | 84 | `result-track:0b538233b82e15dd7c1e3eacc95a15d02994dd45672f31f930447d20cb9d3acd` |
| 11 | `lemma` | [minpolyDiv_ne_zero](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/minpolydiv-ne-zero--bfcbe5f036fe245fc483cecf.md) | 104 | `result-track:bfcbe5f036fe245fc483cecf00cecc766bf60f494e402c0cdfa599e78680f88c` |
| 12 | `lemma` | [minpolyDiv_monic](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/minpolydiv-monic--dadb0a54b167c3ab5096cc7d.md) | 110 | `result-track:dadb0a54b167c3ab5096cc7dbe4173131911d4b31d92f8c5c999a29893338af1` |
| 13 | `lemma` | [natDegree_minpolyDiv_succ](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/natdegree-minpolydiv-succ--83584f70e74cfd847873f471.md) | 117 | `result-track:83584f70e74cfd847873f471632b04c7697f22ba53ad58f86d918579a92bcd84` |
| 14 | `lemma` | [natDegree_minpolyDiv_lt](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/natdegree-minpolydiv-lt--5e1d22f8d5c547ae420e9776.md) | 123 | `result-track:5e1d22f8d5c547ae420e977682c4a5b401b7e5c9ac8d9925bdf9b9e6619d10c2` |
| 15 | `lemma` | [minpolyDiv_eq_of_isIntegrallyClosed](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/minpolydiv-eq-of-isintegrallyclosed--87be91198688e59f55c82e55.md) | 128 | `result-track:87be91198688e59f55c82e55e96b6d9f1421a5121d6b0eef8042923f7d8d2ee4` |
| 16 | `lemma` | [coeff_minpolyDiv_sub_pow_mem_span](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/coeff-minpolydiv-sub-pow-mem-span--5593c830eea8c8220281f937.md) | 135 | `result-track:5593c830eea8c8220281f9373e70abf99e70de48f103afa8ef094d03da337cfc` |
| 17 | `lemma` | [span_coeff_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/span-coeff-minpolydiv--db60bc406904a90a151791e2.md) | 156 | `result-track:db60bc406904a90a151791e2737a79ca353e1178f8e66757ce0814f57c4c16d9` |
| 18 | `lemma` | [natDegree_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/natdegree-minpolydiv--274e1bd5038ca7dcb5c3989d.md) | 182 | `result-track:274e1bd5038ca7dcb5c3989d6e30c55357aa6cb16b9965d61dadc4a567b878a4` |
| 19 | `lemma` | [sum_smul_minpolyDiv_eq_X_pow](../../../../mathematics/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/declarations/sum-smul-minpolydiv-eq-x-pow--6a53c1baed6ae9cf1ef14159.md) | 194 | `result-track:6a53c1baed6ae9cf1ef1415960c704a854f14d940f0e1ee405b09b1c9fc0f00f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
