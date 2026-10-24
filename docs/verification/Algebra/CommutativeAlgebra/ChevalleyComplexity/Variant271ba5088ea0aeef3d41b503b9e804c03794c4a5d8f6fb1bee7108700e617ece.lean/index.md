# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ChevalleyComplexity.Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3c11170219fe4fb2295e31535130d7bef6e1655",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3c11170219fe4fb2295e31535130d7bef6e1655`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean.json)

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
| 1 | `abbrev` | [DegreeType](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degreetype--fdd7885066c4162886f73932.md) | 83 | `declaration-track:fdd7885066c4162886f73932354f8313690db879d4a37afdfa350f55033e4a36` |
| 2 | `structure` | [InductionObj](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/inductionobj--c969ad0b0e231629855f0a0e.md) | 89 | `declaration-track:c969ad0b0e231629855f0a0ef52394ace6e0edab9410a76e940243b1e74040ec` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/instance--c49a749cda6cad90ca8b5b75.md) | 95 | `declaration-track:c49a749cda6cad90ca8b5b75c4a62a9f468f278bec2c069a65ec07f699ab9bcf` |
| 4 | `def` | [coeffSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/coeffsubmodule--ab60393d111b6786de9d031c.md) | 103 | `declaration-track:ab60393d111b6786de9d031c3646c202464fe9edb4db8566bd8d202980310507` |
| 5 | `lemma` | [coeffSubmodule_mapRingHom_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/coeffsubmodule-mapringhom-comp--08a532bae46acef281e0e0fa.md) | 106 | `result-track:08a532bae46acef281e0e0fad1f838554218257c972ef565813b155ebc794d76` |
| 6 | `lemma` | [coeff_mem_coeffSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/coeff-mem-coeffsubmodule--c27096cccc1b695c057da47a.md) | 115 | `result-track:c27096cccc1b695c057da47a9593bc40d7ce7b3b24b640993ffc03de0f377127` |
| 7 | `lemma` | [one_mem_coeffSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/one-mem-coeffsubmodule--758100cb0edd4b06beb51d66.md) | 120 | `result-track:758100cb0edd4b06beb51d66bce1381f41a88db77a24742f0bf2928112176a27` |
| 8 | `lemma` | [one_le_coeffSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/one-le-coeffsubmodule--6e15f8480d97ad2d643ba7eb.md) | 123 | `result-track:6e15f8480d97ad2d643ba7ebf497dd3d4ab35675e27cb86df053b357f42aeadb` |
| 9 | `def` | [degree](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degree--9cb8b4fa84039bf11bf25420.md) | 131 | `declaration-track:9cb8b4fa84039bf11bf2542038e6bf1294676f076d6d06b78636a2cdd2682d6f` |
| 10 | `lemma` | [ofLex_degree_fst](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/oflex-degree-fst--65667ef94a90548437472888.md) | 135 | `result-track:65667ef94a90548437472888291bbf80f372055fd865013c8a192c2a1a13b27a` |
| 11 | `lemma` | [ofLex_degree_snd](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/oflex-degree-snd--659c59859f3fcad5b06c0493.md) | 138 | `result-track:659c59859f3fcad5b06c0493cfdb6af95fcbc928b48fbe1043b5a8089994b9dd` |
| 12 | `def` | [degBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degbound--9b585607e043eee5845484c1.md) | 146 | `declaration-track:9b585607e043eee5845484c1c586e28fd3269b5333752bece0fb219f57092db9` |
| 13 | `def` | [powBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/powbound--f9541b4810c0c47a4314a5cb.md) | 153 | `declaration-track:f9541b4810c0c47a4314a5cb68a3f7c5d3cd4d0816e90448701adffc16752345` |
| 14 | `lemma` | [powBound_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/powbound-ne-zero--1371691bfca9e0aa6bd8b736.md) | 156 | `result-track:1371691bfca9e0aa6bd8b7364eea193272c77e335dfb3138a756a903977935a2` |
| 15 | `def` | [Statement](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/statement--0d274a676347dcd0676ba514.md) | 162 | `declaration-track:0d274a676347dcd0676ba514f21e263096e37fef76a292506c620e88bf5e85d0` |
| 16 | `lemma` | [induction_structure](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/induction-structure--ed4295159d44a7faba9f0c45.md) | 184 | `result-track:ed4295159d44a7faba9f0c45a0bf127a1ff1cb97b79828692b0565701d2d150b` |
| 17 | `lemma` | [induction_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/induction-aux--7d0c788949a78a75e67bedd9.md) | 278 | `result-track:7d0c788949a78a75e67bedd985e3c9c7a6a5616b31b58715ab1c29194f6d82a5` |
| 18 | `lemma` | [statement](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/statement--f1e6255ab7c871067f76021f.md) | 430 | `result-track:f1e6255ab7c871067f76021f3b9286e4bc2aa53ef603e26baf0141113acbd030` |
| 19 | `lemma` | [chevalley_polynomialC](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/chevalley-polynomialc--e28403526f9715adab72ecf3.md) | 556 | `result-track:e28403526f9715adab72ecf357f85875280d83a6e15209906966663f71a80acc` |
| 20 | `def` | [numBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/numbound--7be2d2fc217601616d0c0a83.md) | 589 | `declaration-track:7be2d2fc217601616d0c0a83fe6bac6daea9c7edd44f4ee01610a37a51ab8b3e` |
| 21 | `def` | [degBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degbound--5c85999bbcee5b576e010fb7.md) | 595 | `declaration-track:5c85999bbcee5b576e010fb7d2a553bbf13ad8d49ff21dee6e198f2afd7cb8bb` |
| 22 | `lemma` | [degBound_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degbound-zero--2ecac46f1490831dea09183c.md) | 601 | `result-track:2ecac46f1490831dea09183c90d7eaea9e67491bbcfd0579671cc50d8f601f2c` |
| 23 | `lemma` | [numBound_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/numbound-zero--b3db55ba4dad5ab0f4a361d4.md) | 602 | `result-track:b3db55ba4dad5ab0f4a361d4898cf2504cf8911f2e1ef6dfece2e945624565df` |
| 24 | `lemma` | [degBound_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degbound-succ--2a0bf435217f7a7df24e567e.md) | 605 | `result-track:2a0bf435217f7a7df24e567ef8094c70531baf020bbdec0196c18c19391f4f02` |
| 25 | `lemma` | [numBound_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/numbound-succ--ca325f7427eac32a189643a6.md) | 610 | `result-track:ca325f7427eac32a189643a6ece8570ce3a20a1cb9717689c5c4c7feb5321d1e` |
| 26 | `lemma` | [degBound_casesOn_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degbound-caseson-succ--64e249e5addf25f5134f87d4.md) | 616 | `result-track:64e249e5addf25f5134f87d40be42ddd76b1d524552278d9bfc05e4b2f636a26` |
| 27 | `lemma` | [numBound_casesOn_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/numbound-caseson-succ--8e205eb00262f54fa05629af.md) | 625 | `result-track:8e205eb00262f54fa05629afdb3971b8e31aaa39430089f1a94f4eb5c952ad39` |
| 28 | `lemma` | [degBound_le_degBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degbound-le-degbound--5a186ad66128b63eb79873df.md) | 640 | `result-track:5a186ad66128b63eb79873df5e91bfa59213350c68c93a876dc8eb42f7dd171e` |
| 29 | `lemma` | [numBound_mono](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/numbound-mono--cf6ad1ac8213e4731ed8f5f1.md) | 648 | `result-track:cf6ad1ac8213e4731ed8f5f17938414a272efa2d420572eeed9c57f224adbcfa` |
| 30 | `lemma` | [degBound_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degbound-pos--9678aa75a9ee9261ca79841e.md) | 660 | `result-track:9678aa75a9ee9261ca79841e0a379a49c9ce1c2594ae0fe5eea477a5b9d45983` |
| 31 | `lemma` | [chevalley_mvPolynomialC](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/chevalley-mvpolynomialc--cd036d46504536061f65ec9a.md) | 668 | `result-track:cd036d46504536061f65ec9ac29997bd9aa5254b5ee21c927ee6556939bbc971` |
| 32 | `def` | [numBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/numbound--751a2741f09fdea5c5b88dcc.md) | 781 | `declaration-track:751a2741f09fdea5c5b88dccec68ad030420aac282aca62517aa03131bf97345` |
| 33 | `def` | [degBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/degbound--aba4e3dfa61abdc1f8dee21a.md) | 786 | `declaration-track:aba4e3dfa61abdc1f8dee21ac67042efca9646b4fca1910eb34b36283b3b1afd` |
| 34 | `lemma` | [chevalley_mvPolynomial_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/declarations/chevalley-mvpolynomial-mvpolynomial--69f2a6b6e16a4a05c1a97876.md) | 801 | `result-track:69f2a6b6e16a4a05c1a978766fcccdc4f271c47cca568732682f19b8c60124a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
