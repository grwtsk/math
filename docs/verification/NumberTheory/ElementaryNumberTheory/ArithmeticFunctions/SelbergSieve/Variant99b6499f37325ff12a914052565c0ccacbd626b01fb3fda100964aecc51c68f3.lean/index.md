# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergSieve.Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b65487ee5ff875948d7dad4be7a3f00b83ca5d0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b65487ee5ff875948d7dad4be7a3f00b83ca5d0`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundingSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/boundingsieve--dff4f6c571c8096e8db26987.md) | 61 | `declaration-track:dff4f6c571c8096e8db26987e10e1b92241001f8a5b34c3a6244b297cd183574` |
| 2 | `structure` | [SelbergSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/selbergsieve--b29df4f5e772893e26ed121b.md) | 85 | `declaration-track:b29df4f5e772893e26ed121b885769ff4f1bb4865fb6f2d52221c950aa1951ed` |
| 3 | `def` | [evalBoundingSieveWeights](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/evalboundingsieveweights--1879ca37c02ccf728d1d947c.md) | 100 | `declaration-track:1879ca37c02ccf728d1d947c3324b04edd01159ad3e0dc5792a9f34b9e694bee` |
| 4 | `theorem` | [one_le_y](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/one-le-y--2c37ba24bfaa9c30dd7b744c.md) | 113 | `result-track:2c37ba24bfaa9c30dd7b744c41e56004bbc363fb1f6a672d078be7aec25ee80a` |
| 5 | `theorem` | [prodPrimes_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/prodprimes-ne-zero--ecdfcc08eeeefaebba2334ea.md) | 119 | `result-track:ecdfcc08eeeefaebba2334eaed4eefe96e8e243e96f3e2588dbe617ae6987cda` |
| 6 | `theorem` | [squarefree_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/squarefree-of-dvd-prodprimes--c7aa4fc848207e15fe3252d1.md) | 122 | `result-track:c7aa4fc848207e15fe3252d18cf88f4e655d461adef0b1e44707135e8cb0c09b` |
| 7 | `theorem` | [squarefree_of_mem_divisors_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/squarefree-of-mem-divisors-prodprimes--1869bf1099ff35e24ea082d5.md) | 125 | `result-track:1869bf1099ff35e24ea082d531d05b80d8f3a4883597cf23485e910a9a5549e5` |
| 8 | `theorem` | [prod_primeFactors_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/prod-primefactors-nu--23a679692f424f8653d66574.md) | 132 | `result-track:23a679692f424f8653d66574dcaa742426bf348d49df8559087c6ad90eff1548` |
| 9 | `theorem` | [nu_pos_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/nu-pos-of-dvd-prodprimes--c06dffe49639a55780ecae42.md) | 137 | `result-track:c06dffe49639a55780ecae426bc0f5894d0594adbebf59d1ebabcafbbd6b6f20` |
| 10 | `theorem` | [nu_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/nu-ne-zero--31a328255439728dd218edd4.md) | 147 | `result-track:31a328255439728dd218edd471711202817e2846ca8eb2f2ef67be5c84f580b5` |
| 11 | `theorem` | [nu_lt_one_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/nu-lt-one-of-dvd-prodprimes--b7d71432a576f96ec7e30ae6.md) | 151 | `result-track:b7d71432a576f96ec7e30ae6704d4f74dd96fe4bd79ed29986ac073e18ba36d6` |
| 12 | `def` | [multSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/multsum--26ebf9e324ff70ddcde4ccfd.md) | 170 | `declaration-track:26ebf9e324ff70ddcde4ccfd608063112fef9f3fd6ee9f2452ed5eabdf6afb28` |
| 13 | `def` | [rem](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/rem--be9a7adfd13d02f00e077909.md) | 176 | `declaration-track:be9a7adfd13d02f00e0779091278191a9cbe9d733eb3d6062a281f71eae625bb` |
| 14 | `def` | [siftedSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/siftedsum--28e8061135d4c6e93d16d642.md) | 179 | `declaration-track:28e8061135d4c6e93d16d6424c40e0cc173968f1d9af1ff16c5676078fe076fc` |
| 15 | `def` | [mainSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/mainsum--439588d2cdad2bc9af704c54.md) | 182 | `declaration-track:439588d2cdad2bc9af704c54342f72c904c58bd9cc8b9a3d91aee4bd2eb013ed` |
| 16 | `def` | [errSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/errsum--86cce21b7546e99170f0f6eb.md) | 185 | `declaration-track:86cce21b7546e99170f0f6ebdb6587a379addb7784c3294bf98984e3bd578bb3` |
| 17 | `theorem` | [multSum_eq_main_err](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/multsum-eq-main-err--22dce8fb63713c3056422d19.md) | 187 | `result-track:22dce8fb63713c3056422d1909e0963e92603a7b5015bbb65b96918c92c7502d` |
| 18 | `theorem` | [siftedSum_eq_sum_support_mul_ite](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/siftedsum-eq-sum-support-mul-ite--e2d6868bb80a0d9f73f851c1.md) | 191 | `result-track:e2d6868bb80a0d9f73f851c1e7fde4702c1ec75582db7b960c63c50107fa23bc` |
| 19 | `def` | [IsUpperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/isuppermoebius--e2d787aeac010c70f4cd3343.md) | 199 | `declaration-track:e2d787aeac010c70f4cd3343109f8516e5300886f47b7306e7302e4cc2baba73` |
| 20 | `theorem` | [siftedSum_le_sum_of_upperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/siftedsum-le-sum-of-uppermoebius--e06bf75628fd94499cb48adf.md) | 202 | `result-track:e06bf75628fd94499cb48adf0453678551b60711af26de11d8af39f6e6e28c8e` |
| 21 | `theorem` | [siftedSum_le_mainSum_errSum_of_upperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/siftedsum-le-mainsum-errsum-of-uppermoebius--25d5a8304d0dd31fe290e191.md) | 224 | `result-track:25d5a8304d0dd31fe290e1910a88515882ec832df0f3ace6739a52411299396b` |
| 22 | `def` | [lambdaSquared](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/lambdasquared--f021b149e427935db094ab19.md) | 244 | `declaration-track:f021b149e427935db094ab196652a10d2af4e11baaac1ad9aee8a97ff05ba9e6` |
| 23 | `theorem` | [sum_divisors_lambda_sq_larger_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/sum-divisors-lambda-sq-larger-sum--c3a43e93ccf3235064487b57.md) | 247 | `result-track:c3a43e93ccf3235064487b570e3fd808ebec0b9c37072260a082bcae6f4a6489` |
| 24 | `theorem` | [upperMoebius_lambdaSquared](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/uppermoebius-lambdasquared--ebdad14717100f5423ff09f1.md) | 258 | `result-track:ebdad14717100f5423ff09f14074b1c90e6ffb52c87f51c6176587e7d682b280` |
| 25 | `def` | [selbergTerms](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/selbergterms--9ca21837d9d9f2227e311bf9.md) | 284 | `declaration-track:9ca21837d9d9f2227e311bf9f4543dd9ed8f0cdee97c758e30e5e8dcac9635b7` |
| 26 | `theorem` | [selbergTerms_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/selbergterms-apply--27d3c91719a535ddba2d1258.md) | 287 | `result-track:27d3c91719a535ddba2d12583f0e91708e691889e2532511804a11427ae28230` |
| 27 | `theorem` | [selbergTerms_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/selbergterms-pos--082d3e9bdc08b17ca7d0bd8e.md) | 296 | `result-track:082d3e9bdc08b17ca7d0bd8e0a9bd3d9b8e2d4fac255c1e813d0e2827de26e99` |
| 28 | `theorem` | [selbergTerms_isMultiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/selbergterms-ismultiplicative--2c7074e7703b4663609217bb.md) | 304 | `result-track:2c7074e7703b4663609217bb6b1f96cf28e04d430f4c3e06be609797513e0384` |
| 29 | `theorem` | [inv_selbergTerms_eq_sum_divisors_moebius_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/inv-selbergterms-eq-sum-divisors-moebius-nu--160101d7e1f54e3d8d1ed39d.md) | 308 | `result-track:160101d7e1f54e3d8d1ed39d142971e2e3c3a16a139e5fe0f8d39f17ed10454b` |
| 30 | `theorem` | [nu_inv_eq_sum_divisors_inv_selbergTerms](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/nu-inv-eq-sum-divisors-inv-selbergterms--fdb4426bc2cc56d14113dd2f.md) | 320 | `result-track:fdb4426bc2cc56d14113dd2ff56ed18c4440c5954f4c6ba45261cf4acd02fc5d` |
| 31 | `theorem` | [sum_divisors_selbergTerms_eq_selbergTerms_mul_nu_inv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/sum-divisors-selbergterms-eq-selbergterms-mul-nu-inv--49dd8e8d5250b2985e51372b.md) | 331 | `result-track:49dd8e8d5250b2985e51372bb3b667a6c375eb320c4d8e949b7d628879162bc4` |
| 32 | `theorem` | [mainSum_lambdaSquared_eq_sum_sum_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/mainsum-lambdasquared-eq-sum-sum-mul--1c6003ef53b560595c888c10.md) | 357 | `result-track:1c6003ef53b560595c888c10ffd4f99d80b36e5c62c8f051f78c30ee17a29e09` |
| 33 | `theorem` | [mainSum_lambdaSquared_eq_sum_mul_sum_sq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/declarations/mainsum-lambdasquared-eq-sum-mul-sum-sq--c5231c3cdd7e529451770391.md) | 383 | `result-track:c5231c3cdd7e529451770391898a79404444ddff1a6e38f3620be761f8d632aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
