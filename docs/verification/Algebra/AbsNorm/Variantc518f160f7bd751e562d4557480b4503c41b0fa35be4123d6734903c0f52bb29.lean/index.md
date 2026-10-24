# Verification target: GRWTSK.Algebra.AbsNorm.Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00e6765ba0e20490bbe27999dc8e2f9e01bc483d",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/index.md) · [Full source](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00e6765ba0e20490bbe27999dc8e2f9e01bc483d`.

Source path: `GRWTSK/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean.json)

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
| 1 | `def` | [cardQuot](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/cardquot--db0df686d48affd35f733032.md) | 61 | `declaration-track:db0df686d48affd35f73303252e79bd7c259c5c89da349d4c2676a67700020ec` |
| 2 | `theorem` | [cardQuot_apply](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/cardquot-apply--e551b821f675d16e26b3228e.md) | 64 | `result-track:e551b821f675d16e26b3228e4c435b8989caac58b7fe1ef1fd91a0d774218645` |
| 3 | `theorem` | [cardQuot_bot](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/cardquot-bot--fef5cf36c86e674fe9ee2c4a.md) | 70 | `result-track:fef5cf36c86e674fe9ee2c4a930e5c567f628a4d77649e3ff289503c4929198f` |
| 4 | `theorem` | [cardQuot_top](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/cardquot-top--1ed45dc02f80756822fa098b.md) | 74 | `result-track:1ed45dc02f80756822fa098b933209b5f163fc4da2597f3ca7f41b3cf4bf4334` |
| 5 | `theorem` | [cardQuot_eq_one_iff](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/cardquot-eq-one-iff--8696fc73fa5ea1a08062580a.md) | 80 | `result-track:8696fc73fa5ea1a08062580ac4289a14700911c67c73d4dc427dc6d77eab68a6` |
| 6 | `theorem` | [cardQuot_mul_of_coprime](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/cardquot-mul-of-coprime--bafce1e8873da9ef51bfaa31.md) | 96 | `result-track:bafce1e8873da9ef51bfaa31ea84a807b87b8781f3493f7a0956caaae1977e81` |
| 7 | `theorem` | [Ideal.mul_add_mem_pow_succ_inj](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/ideal-mul-add-mem-pow-succ-inj--3d8e97c4b53c3dd9956abb39.md) | 105 | `result-track:3d8e97c4b53c3dd9956abb39dae2569537cc89892f308cd916bb99aa0d4d1934` |
| 8 | `theorem` | [Ideal.exists_mul_add_mem_pow_succ](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/ideal-exists-mul-add-mem-pow-succ--63e4121229d52c33fe990b5d.md) | 121 | `result-track:63e4121229d52c33fe990b5de1a9555da192125c2748ab8d8ed6d61df3c8f568` |
| 9 | `theorem` | [Ideal.mem_prime_of_mul_mem_pow](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/ideal-mem-prime-of-mul-mem-pow--913266f1ae5594d897f3aaa2.md) | 136 | `result-track:913266f1ae5594d897f3aaa2e99ab5854a5c693be95cbdba76f4591520bd830f` |
| 10 | `theorem` | [Ideal.mul_add_mem_pow_succ_unique](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/ideal-mul-add-mem-pow-succ-unique--51466ed948de82050a726ee6.md) | 145 | `result-track:51466ed948de82050a726ee6688307517f5f6a3b7ce9850bf00aaf36b3f614de` |
| 11 | `theorem` | [cardQuot_pow_of_prime](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/cardquot-pow-of-prime--723005e1f44bffff7337879c.md) | 155 | `result-track:723005e1f44bffff7337879c1fb40040680c7d4975808b35411e369947b4fdc1` |
| 12 | `theorem` | [cardQuot_mul](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/cardquot-mul--e316561da92cfc22a470f163.md) | 190 | `result-track:e316561da92cfc22a470f163115fbbf71f63cb4234a885cfb9d51e8300b9e541` |
| 13 | `theorem` | [cardQuot_pos](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/cardquot-pos--7b478e3008a192d9aacb82d0.md) | 205 | `result-track:7b478e3008a192d9aacb82d0f55eb2f17ae597d942d971d3924d7b3dc979f7f9` |
| 14 | `theorem` | [finite_setOfPred_mem](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/finite-setofpred-mem--c92186a98098c012f8ad4f46.md) | 210 | `result-track:c92186a98098c012f8ad4f467de90259ad69a6b4cada0ee043d860c249dc0e2c` |
| 15 | `theorem` | [finite_cardQuot_le](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/finite-cardquot-le--b9875d71e9cb1ed4b677177c.md) | 221 | `result-track:b9875d71e9cb1ed4b677177c7906fd3074defb3a6ee12d72d02de329d17914c1` |
| 16 | `theorem` | [finite_cardQuot_heightOneSpectrum_le](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/finite-cardquot-heightonespectrum-le--cd83cad2272e34ca58c31ab9.md) | 249 | `result-track:cd83cad2272e34ca58c31ab93e65881098c4a643231ddc5f81a29b8291b31ad6` |
| 17 | `def` | [Ideal.absNorm](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/ideal-absnorm--75d404f5a0794d52e254936f.md) | 258 | `declaration-track:75d404f5a0794d52e254936fd3c20f1bd37b3697a185d1eb145aa84106c57e9f` |
| 18 | `theorem` | [finite_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/finite-absnorm-le--152109338c871a7223c0655a.md) | 270 | `result-track:152109338c871a7223c0655a1e03d8563573b9906d261df5474cf005435930f1` |
| 19 | `theorem` | [finite_absNorm_heightOneSpectrum_le](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/finite-absnorm-heightonespectrum-le--a91c7e61e4a3178db1cc2ebc.md) | 275 | `result-track:a91c7e61e4a3178db1cc2ebc75e607626c355d1e650f3787612ffd75ddbc8e84` |
| 20 | `theorem` | [absNorm_apply](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-apply--ec2e6e034e08db63035e57c7.md) | 289 | `result-track:ec2e6e034e08db63035e57c7b2358c9613d61fe5bc4711a3dee393d895b8ddef` |
| 21 | `lemma` | [absNorm_eq_index](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-eq-index--f2a855f4eaaddc61d7c54d6a.md) | 291 | `result-track:f2a855f4eaaddc61d7c54d6ae51d4a14f2c630271ae624af86c6f9c2c6ed084e` |
| 22 | `theorem` | [absNorm_bot](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-bot--5d3fbd54faa347c42c15089d.md) | 294 | `result-track:5d3fbd54faa347c42c15089dd509e5f2c40b2f9ecbabe313252df4d6730aacc8` |
| 23 | `theorem` | [absNorm_top](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-top--d642b2b6fb8b1cc359c71df5.md) | 297 | `result-track:d642b2b6fb8b1cc359c71df5e8505825ee7b1b059444b40d3bfe32269c8489a8` |
| 24 | `theorem` | [absNorm_eq_one_iff](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-eq-one-iff--604d39c5e1b3c73ad1ff928c.md) | 300 | `result-track:604d39c5e1b3c73ad1ff928c03a5b87cb35501b618d580fa9744b7da5b614053` |
| 25 | `theorem` | [absNorm_ne_zero_iff](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-ne-zero-iff--c1e17c0643787e3a408e00b6.md) | 303 | `result-track:c1e17c0643787e3a408e00b69bc64496a89bdf9b6b270bb4fa05f5080b12e58f` |
| 26 | `theorem` | [absNorm_dvd_absNorm_of_le](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-dvd-absnorm-of-le--5ad6a009ec54d10388879635.md) | 307 | `result-track:5ad6a009ec54d10388879635f565777606171e1c5ee2d812d8090fcf035966a5` |
| 27 | `theorem` | [irreducible_of_irreducible_absNorm](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/irreducible-of-irreducible-absnorm--b36828ea6616d09be9bb86a7.md) | 310 | `result-track:b36828ea6616d09be9bb86a723d294b0a3f839cbfd0664b3759772aae16ff778` |
| 28 | `theorem` | [isPrime_of_irreducible_absNorm](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/isprime-of-irreducible-absnorm--b075c4dd96b21268b9f0c671.md) | 320 | `result-track:b075c4dd96b21268b9f0c6715fb1267d593c11b94137defc5ffc4cf1975661f4` |
| 29 | `theorem` | [prime_of_irreducible_absNorm_span](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/prime-of-irreducible-absnorm-span--655d607582d75eee4a9f9db4.md) | 325 | `result-track:655d607582d75eee4a9f9db4663986022864342694cb1f8b074818422e3e244b` |
| 30 | `theorem` | [absNorm_mem](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-mem--44ba6442295ebaf885d3b088.md) | 329 | `result-track:44ba6442295ebaf885d3b0887cbc5337a3cb5e015a4347a046524cd700a9fc98` |
| 31 | `theorem` | [span_singleton_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/span-singleton-absnorm-le--e5e479e6741137ab6e7c5e4b.md) | 333 | `result-track:e5e479e6741137ab6e7c5e4bdb0f52ebe2b188f7a3d9d0bc952cef80e33256c4` |
| 32 | `theorem` | [span_singleton_absNorm](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/span-singleton-absnorm--8b11f6977944cf281cf7f195.md) | 336 | `result-track:8b11f6977944cf281cf7f195967a94093126b7ef4791271aa78957e6e7ba5431` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/instance--0a5c28904d481246fef24d65.md) | 355 | `declaration-track:0a5c28904d481246fef24d65f120a6e139c08c6fb444ca5b8e5e2ea0cdc55784` |
| 34 | `theorem` | [natAbs_det_equiv](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/natabs-det-equiv--5118a8bbe1b40c2b1758148c.md) | 360 | `result-track:5118a8bbe1b40c2b1758148ceba71f223253b9a73f56741a6d1a2328807a5c02` |
| 35 | `theorem` | [natAbs_det_basis_change](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/natabs-det-basis-change--b901058f21b09bef2b970c18.md) | 376 | `result-track:b901058f21b09bef2b970c180f5d783ef79cb523aaafef933fb1bfb5f213d5c8` |
| 36 | `theorem` | [absNorm_span_singleton](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-span-singleton--33702f8e5dd42677b7ab3aa3.md) | 381 | `result-track:33702f8e5dd42677b7ab3aa3d28c6be15f28cea18a602b2120e1d6e79ecaca57` |
| 37 | `lemma` | [absNorm_span_natCast](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-span-natcast--89c69eea497988d1cf351dc3.md) | 393 | `result-track:89c69eea497988d1cf351dc35bba6034fa20e129339c44baa19c4396b0ce78f9` |
| 38 | `theorem` | [absNorm_dvd_norm_of_mem](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-dvd-norm-of-mem--44170ebe88c1744627e6b240.md) | 396 | `result-track:44170ebe88c1744627e6b240aedf934e491ed155b7ef821e36a2f4879fefda04` |
| 39 | `theorem` | [absNorm_span_insert](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-span-insert--74d063b02cf4c1a543764429.md) | 402 | `result-track:74d063b02cf4c1a543764429520dc909d3813e5295d23fba338aea9685c98125` |
| 40 | `theorem` | [absNorm_eq_zero_iff](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-eq-zero-iff--f75f4bf106669542a1781bdb.md) | 410 | `result-track:f75f4bf106669542a1781bdbda3babc3a186745207ac2f6722b4e4b53bdfcd48` |
| 41 | `theorem` | [absNorm_ne_zero_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-ne-zero-iff-mem-nonzerodivisors--096a06980147891d4c209109.md) | 422 | `result-track:096a06980147891d4c20910983dcca837fddd7c170663b9b84cc112d1eb5cacf` |
| 42 | `theorem` | [absNorm_pos_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-pos-iff-mem-nonzerodivisors--cb9c658686f0fdd541d6ce32.md) | 426 | `result-track:cb9c658686f0fdd541d6ce32d58cab53cccbf6b9af5f67f126438c01e5f9ad7c` |
| 43 | `theorem` | [absNorm_ne_zero_of_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-ne-zero-of-nonzerodivisors--41244ebe6d2d0e90482a37c6.md) | 430 | `result-track:41244ebe6d2d0e90482a37c6144c47cab7fa96c8c7225cd7b4dea0248aab25ce` |
| 44 | `theorem` | [absNorm_pos_of_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/absnorm-pos-of-nonzerodivisors--cb748e43146303823327ff24.md) | 433 | `result-track:cb748e43146303823327ff24f240ef7d3fb37ae54b4008d1f8ebdc0a8710bc0e` |
| 45 | `lemma` | [finiteIndex](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/finiteindex--618f746bb9f306748f2d9d56.md) | 436 | `result-track:618f746bb9f306748f2d9d565de5ad4844765893a5f3a0772d2192b1bca39607` |
| 46 | `lemma` | [isFiniteRelIndex](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/isfiniterelindex--9143b3fd9ec9e6e6fdadd6d7.md) | 440 | `result-track:9143b3fd9ec9e6e6fdadd6d70f185034f857500801473de6dfd43155f47e52a7` |
| 47 | `lemma` | [exists_prime_and_absNorm_eq_pow](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/exists-prime-and-absnorm-eq-pow--708bd8e68255e64c8577d1d5.md) | 448 | `result-track:708bd8e68255e64c8577d1d52bd594558541c663b17a6532368eec040e3a7af1` |
| 48 | `lemma` | [exists_isMaximal_dvd_of_dvd_absNorm](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/exists-ismaximal-dvd-of-dvd-absnorm--908a84df2d3b75074ba30495.md) | 464 | `result-track:908a84df2d3b75074ba304954071d01fd0d68d1346624d24acddcda293257691` |
| 49 | `lemma` | [exists_isMaximal_dvd_of_dvd_absNorm'](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/exists-ismaximal-dvd-of-dvd-absnorm--49655cb0905cbe3878a1df73.md) | 496 | `result-track:49655cb0905cbe3878a1df738771c0f99940ebf2325657d4b5d7b49721883dc3` |
| 50 | `theorem` | [finite_setOfPred_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/finite-setofpred-absnorm-le--3b406b1599f38e5e0948bc1f.md) | 502 | `result-track:3b406b1599f38e5e0948bc1f20e0cad6eaa272fae1242ec2d51e87fdecb80206` |
| 51 | `theorem` | [finite_setOfPred_absNorm_eq](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/finite-setofpred-absnorm-eq--eb7feb46cec1e4fdc5048796.md) | 509 | `result-track:eb7feb46cec1e4fdc50487966a5e314fa536039fa9cd642f13bd2aaecef9424c` |
| 52 | `theorem` | [finite_setOfPred_absNorm_le₀](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/finite-setofpred-absnorm-le--752c0632f384c894d34e40b6.md) | 515 | `result-track:752c0632f384c894d34e40b61107c00e4208d818a87c86c7cb03f054def73e6f` |
| 53 | `theorem` | [card_norm_le_eq_card_norm_le_add_one](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/card-norm-le-eq-card-norm-le-add-one--586e95a62e389c2e56220e3b.md) | 524 | `result-track:586e95a62e389c2e56220e3b81903d03707754f0acd8c872a83369b2dc0d9397` |
| 54 | `theorem` | [norm_dvd_iff](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/norm-dvd-iff--4d422a9c1aef2479d3b78fc7.md) | 547 | `result-track:4d422a9c1aef2479d3b78fc7a97bb1fd1418369e58881b1939467236801f748e` |
| 55 | `theorem` | [Int.ideal_span_absNorm_eq_self](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/int-ideal-span-absnorm-eq-self--c1c7e318f406e2436467cb19.md) | 565 | `result-track:c1c7e318f406e2436467cb193ebf75ee113292496e7299a0b80a2947c47167c6` |
| 56 | `theorem` | [Int.prime_absNorm](../../../../mathematics/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/declarations/int-prime-absnorm--910cb03968f6b18e9bd94e47.md) | 571 | `result-track:910cb03968f6b18e9bd94e47fad3126bcf4c7dc7805666921728e33a4cd41cc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
