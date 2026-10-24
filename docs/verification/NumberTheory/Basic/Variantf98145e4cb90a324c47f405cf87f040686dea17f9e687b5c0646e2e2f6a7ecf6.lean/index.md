# Verification target: GRWTSK.NumberTheory.Basic.Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2df05512d169e46bf830374374bf313789010251",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2df05512d169e46bf830374374bf313789010251`.

Source path: `GRWTSK/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean.json)

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
| 1 | `def` | [jacobiSum](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum--3f9065fa8801deed97cb453e.md) | 47 | `declaration-track:3f9065fa8801deed97cb453e0f285c4f6609847c28bc0e15a9d0c6f7ae5eeb1b` |
| 2 | `lemma` | [jacobiSum_comm](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-comm--e5d8fcf0455103fabff8ebb1.md) | 50 | `result-track:e5d8fcf0455103fabff8ebb1dfcae2c84f0d46901104ed328a373788d015efca` |
| 3 | `lemma` | [jacobiSum_ringHomComp](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-ringhomcomp--a745a55be02e27ba48094f2b.md) | 56 | `result-track:a745a55be02e27ba48094f2b30a889571afe07bcc8f25172aa97d482a931eadb` |
| 4 | `lemma` | [jacobiSum_eq_sum_sdiff](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-eq-sum-sdiff--eab02162b66687fdca4f04b2.md) | 73 | `result-track:eab02162b66687fdca4f04b2619b9a8849f85b70f099ce913f4791a9844e12df` |
| 5 | `lemma` | [jacobiSum_eq_aux](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-eq-aux--c28663261e0cabcbd3743d7a.md) | 81 | `result-track:c28663261e0cabcbd3743d7ada015def7e10a753ed3faea09a724a28b814cdbe` |
| 6 | `theorem` | [jacobiSum_trivial_trivial](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-trivial-trivial--8e4e01b80ad04648b2e446fc.md) | 103 | `result-track:8e4e01b80ad04648b2e446fcd326c9f79bc81b7309d520438c16a09549e9db9f` |
| 7 | `theorem` | [jacobiSum_one_one](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-one-one--23356185c2f42ac67672835a.md) | 120 | `result-track:23356185c2f42ac67672835a3b3c237e3d30fb34b5dae24e0a101a2411f1daa9` |
| 8 | `theorem` | [jacobiSum_one_nontrivial](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-one-nontrivial--5598cdcd4daaf5aed3a47083.md) | 126 | `result-track:5598cdcd4daaf5aed3a4708305eada2644dc31fb312acc954ff4d0560e27e6a6` |
| 9 | `theorem` | [jacobiSum_nontrivial_inv](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-nontrivial-inv--cd554ec60216eb46caeea8bb.md) | 139 | `result-track:cd554ec60216eb46caeea8bb5e36431baf99713401d09030bb92b3ccef3ada64` |
| 10 | `theorem` | [jacobiSum_mul_nontrivial](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-mul-nontrivial--a1a54886c97ccfefd1df117a.md) | 165 | `result-track:a1a54886c97ccfefd1df117a289178a2dfeb5fe8b982bbe98ce3a130d23621bf` |
| 11 | `theorem` | [jacobiSum_eq_gaussSum_mul_gaussSum_div_gaussSum](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-eq-gausssum-mul-gausssum-div-gausssum--a8fe53592eaf3675fba11655.md) | 193 | `result-track:a8fe53592eaf3675fba116555c09f2e6dcdf34ade8322d50c96d816c3e6bd7a6` |
| 12 | `lemma` | [jacobiSum_mul_jacobiSum_inv](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-mul-jacobisum-inv--8aacd53c91cd9ce1d9c564e7.md) | 203 | `result-track:8aacd53c91cd9ce1d9c564e7bc158137f4d1a87268a7e9d3fa502d99db1b4096` |
| 13 | `lemma` | [MulChar.exists_apply_sub_one_eq_mul_sub_one](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/mulchar-exists-apply-sub-one-eq-mul-sub-one--0c09592cda91b612937e0e47.md) | 250 | `result-track:0c09592cda91b612937e0e4711a5678e5ab507123a18f18f69ca895748971228` |
| 14 | `lemma` | [MulChar.exists_apply_sub_one_mul_apply_sub_one](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/mulchar-exists-apply-sub-one-mul-apply-sub-one--bd3bb1b03d9a96a8a77d4999.md) | 258 | `result-track:bd3bb1b03d9a96a8a77d499911ae1252ad2907c63936c044beeb38e80c307831` |
| 15 | `lemma` | [jacobiSum_mem_algebraAdjoin_of_pow_eq_one](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/jacobisum-mem-algebraadjoin-of-pow-eq-one--4727783cced4c2ddab7c0d0c.md) | 278 | `result-track:4727783cced4c2ddab7c0d0c8698e637db41a449e52360f9d35a82bd470b9257` |
| 16 | `lemma` | [exists_jacobiSum_eq_neg_one_add](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/exists-jacobisum-eq-neg-one-add--2304907fb64092380471b3d9.md) | 289 | `result-track:2304907fb64092380471b3d915dc5882a67f4ae68bdc66a06ce5946d03da0213` |
| 17 | `lemma` | [gaussSum_pow_eq_prod_jacobiSum_aux](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/gausssum-pow-eq-prod-jacobisum-aux--6041212c63f46b3987237402.md) | 324 | `result-track:6041212c63f46b39872374027f82c18155df82b521d294b088dceb4b2fb41222` |
| 18 | `theorem` | [gaussSum_pow_eq_prod_jacobiSum](../../../../mathematics/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/declarations/gausssum-pow-eq-prod-jacobisum--c79f66731f2edb788f7e98e1.md) | 342 | `result-track:c79f66731f2edb788f7e98e1bead47ad4a3c888d41ad184981cbacb2ab9fd718` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
