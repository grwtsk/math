# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "957605101c128a359c8d8b3ea64cb8de69bf1fbc",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `957605101c128a359c8d8b3ea64cb8de69bf1fbc`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SmoothNumbers` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Summable.norm_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/summable-norm-lt-one--d4f7db16ea1f2ee33e1ad76f.md) | 47 | `result-track:d4f7db16ea1f2ee33e1ad76ffeee239a366a83c6e479a89655e0d17af55b559d` |
| 2 | `lemma` | [instT0Space](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/instt0space--394a743012f14711b9f9e166.md) | 70 | `result-track:394a743012f14711b9f9e166648761d6898642fd22e9672536a33779868db02a` |
| 3 | `lemma` | [summable_and_hasSum_factoredNumbers_prod_filter_prime_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/summable-and-hassum-factorednumbers-prod-filter-prime-tsum--93dcd7265b8f891f30ddfcce.md) | 80 | `result-track:93dcd7265b8f891f30ddfccec2023555961cf55dc4d1f489496ea787cbdeb425` |
| 4 | `lemma` | [prod_filter_prime_tsum_eq_tsum_factoredNumbers](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/prod-filter-prime-tsum-eq-tsum-factorednumbers--d9865304dfc54600f8afa24a.md) | 112 | `result-track:d9865304dfc54600f8afa24a778356a42535d058524fd6ed4ceac3f1e995efc4` |
| 5 | `lemma` | [norm_tsum_factoredNumbers_sub_tsum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/norm-tsum-factorednumbers-sub-tsum-lt--f14c0cbe01a9b368ba66523e.md) | 121 | `result-track:f14c0cbe01a9b368ba66523e10fbeb3e2943decd0f8957bdeffbab654f04444d` |
| 6 | `lemma` | [summable_and_hasSum_smoothNumbers_prod_primesBelow_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/summable-and-hassum-smoothnumbers-prod-primesbelow-tsum--a16fd7a27632e1c09dc8eb5a.md) | 137 | `result-track:a16fd7a27632e1c09dc8eb5a57e0b3863b3878d91cafceb9e8af17df043f6e12` |
| 7 | `lemma` | [prod_primesBelow_tsum_eq_tsum_smoothNumbers](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/prod-primesbelow-tsum-eq-tsum-smoothnumbers--67f1c7954d4823ae47915d65.md) | 147 | `result-track:67f1c7954d4823ae47915d6501e98289e0ab15c99035e562a23891477f3903eb` |
| 8 | `lemma` | [norm_tsum_smoothNumbers_sub_tsum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/norm-tsum-smoothnumbers-sub-tsum-lt--b1ea4666b0c4bd4d23b58e57.md) | 155 | `result-track:b1ea4666b0c4bd4d23b58e572fd515d8a22aeef3adcff8e86dcf0bd82533fa74` |
| 9 | `theorem` | [eulerProduct_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/eulerproduct-hasprod--01830c0b08d71405a0b2debf.md) | 170 | `result-track:01830c0b08d71405a0b2debf312b83acd4b8929edc1a2bb54662d739997b29a1` |
| 10 | `theorem` | [eulerProduct_hasProd_mulIndicator](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/eulerproduct-hasprod-mulindicator--11980e6f010106d1a0f137fb.md) | 193 | `result-track:11980e6f010106d1a0f137fbf84131827c97fdc4427e56218e73fe3d937c3900` |
| 11 | `theorem` | [eulerProduct](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/eulerproduct--57c04073953b8c79da325c1f.md) | 206 | `result-track:57c04073953b8c79da325c1fe9226c8bcc5d0fc388f4826c6006bfc6809f2992` |
| 12 | `theorem` | [eulerProduct_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/eulerproduct-tprod--7960a7b042b4e2e7689e1739.md) | 221 | `result-track:7960a7b042b4e2e7689e17393fe352937696c6f23a820eadc2d97889198a7602` |
| 13 | `theorem` | [IsMultiplicative.eulerProduct_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/ismultiplicative-eulerproduct-hasprod--8e4fc4ada12cdd5d290c422a.md) | 239 | `result-track:8e4fc4ada12cdd5d290c422aa3e1927b595411fd61cfefaca6f4afdde3c61e88` |
| 14 | `theorem` | [IsMultiplicative.eulerProduct](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/ismultiplicative-eulerproduct--679461f505d3627fa1e69502.md) | 249 | `result-track:679461f505d3627fa1e69502415b787182878152e2cf1b07532f7b35d744ccf5` |
| 15 | `theorem` | [IsMultiplicative.eulerProduct_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/ismultiplicative-eulerproduct-tprod--541a4c42fd4157440c5a8143.md) | 257 | `result-track:541a4c42fd4157440c5a8143914e38ac2299d1607b969ac47ec4a24261f661eb` |
| 16 | `lemma` | [one_sub_inv_eq_geometric_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/one-sub-inv-eq-geometric-of-summable-norm--1117a7aabbeaa97de5b6b091.md) | 281 | `result-track:1117a7aabbeaa97de5b6b091c00dad737a46a2c6db304f72bbdb6cef42a174e9` |
| 17 | `lemma` | [summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/summable-and-hassum-factorednumbers-prod-filter-prime-geometric--96d4ffcb83105233bfb42cd5.md) | 294 | `result-track:96d4ffcb83105233bfb42cd5843c4617854805209ab0827b91de245387a6d657` |
| 18 | `lemma` | [prod_filter_prime_geometric_eq_tsum_factoredNumbers](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/prod-filter-prime-geometric-eq-tsum-factorednumbers--c71ce0992f419756372ebc90.md) | 313 | `result-track:c71ce0992f419756372ebc909734db1b1ac4d9c742bee156984eab1213b09d5b` |
| 19 | `lemma` | [summable_and_hasSum_smoothNumbers_prod_primesBelow_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/summable-and-hassum-smoothnumbers-prod-primesbelow-geometric--3a3f12cee838aaf694921199.md) | 323 | `result-track:3a3f12cee838aaf694921199ccfc6653748a11df82ac6e6045dc4998018824e4` |
| 20 | `lemma` | [prod_primesBelow_geometric_eq_tsum_smoothNumbers](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/prod-primesbelow-geometric-eq-tsum-smoothnumbers--304bf427ef7889ab70c48075.md) | 332 | `result-track:304bf427ef7889ab70c480758937cdfb2ae2d44b306d5fa541d16ebb55f93667` |
| 21 | `theorem` | [eulerProduct_completely_multiplicative_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/eulerproduct-completely-multiplicative-hasprod--6f8587f2971ee6669ab5caac.md) | 342 | `result-track:6f8587f2971ee6669ab5caaca7e17f327b0da585eee08c43481980802152f5df` |
| 22 | `theorem` | [eulerProduct_completely_multiplicative_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/eulerproduct-completely-multiplicative-tprod--414aa069669abb9cd4308c6e.md) | 353 | `result-track:414aa069669abb9cd4308c6eb9c07cf9513e50d01950997134432cad8e019419` |
| 23 | `theorem` | [eulerProduct_completely_multiplicative](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/declarations/eulerproduct-completely-multiplicative--56a8eac6b5df37b6326a53f2.md) | 363 | `result-track:56a8eac6b5df37b6326a53f290c09b43fa36ecb09431a8a5d5df079e85275a4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
