# Verification target: GRWTSK.Algebra.Basic.Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46939e4ed3a83b5b98b3c356e2ded49502caef55",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46939e4ed3a83b5b98b3c356e2ded49502caef55`.

Source path: `GRWTSK/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean.json)

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
| 1 | `def` | [Ideal.IsMinimalPrime](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-isminimalprime--db534445139fcbd5a064334c.md) | 40 | `declaration-track:db534445139fcbd5a064334ca8133d2b98daebe22490287f0de7642315cddbf8` |
| 2 | `lemma` | [Ideal.IsMinimalPrime.isPrime](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-isminimalprime-isprime--39915d28bafa13c5bd33a29b.md) | 43 | `result-track:39915d28bafa13c5bd33a29be40fe3b469b9bba9ca5cdf335189e2bffa98d29f` |
| 3 | `lemma` | [Ideal.IsMinimalPrime.le](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-isminimalprime-le--315d639cae128f58f67081fc.md) | 46 | `result-track:315d639cae128f58f67081fc6edf0b23979e61677d2f9979a1de1b90b2e10f20` |
| 4 | `abbrev` | [IsMinimalPrime](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/isminimalprime--172f4687720cfb858d29de0d.md) | 49 | `declaration-track:172f4687720cfb858d29de0dcc71da0e53c46c07305ad587c3655f00320a6250` |
| 5 | `lemma` | [IsMinimalPrime.isPrime](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/isminimalprime-isprime--09e14dba56ff1256f1f22499.md) | 51 | `result-track:09e14dba56ff1256f1f22499fe14f77a6083692c6cacd17ac0c61f063f7b7c41` |
| 6 | `lemma` | [IsMinimalPrime.iff_minimal](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/isminimalprime-iff-minimal--3a2413877e36fe55e19dc698.md) | 53 | `result-track:3a2413877e36fe55e19dc69867c5c3c01dc52ce5a3480faff066139cd196e6bf` |
| 7 | `abbrev` | [Ideal.minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-minimalprimes--412c630ef2692b0993132b52.md) | 57 | `declaration-track:412c630ef2692b0993132b521b4a6780e190bc0cba851ae3f946ef91976784d0` |
| 8 | `abbrev` | [minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/minimalprimes--5e512fcc2107223fd5ddd553.md) | 63 | `declaration-track:5e512fcc2107223fd5ddd5532a5e87887aefff3c265e99be00f8d8bc2139d75c` |
| 9 | `lemma` | [minimalPrimes_eq_minimals](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/minimalprimes-eq-minimals--f0738dc09509e8a7a37cdf0f.md) | 66 | `result-track:f0738dc09509e8a7a37cdf0fadb28964e1ab2efe930a96c1b2b9806042d1e259` |
| 10 | `theorem` | [Ideal.minimalPrimes_isPrime](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-minimalprimes-isprime--812f5725aa67439b2fb98d3f.md) | 72 | `result-track:812f5725aa67439b2fb98d3f601997f642203a65a4973146bade7cbb7ebf01ed` |
| 11 | `theorem` | [Ideal.exists_minimalPrimes_le](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-exists-minimalprimes-le--89225d66311e02807edbae4b.md) | 75 | `result-track:89225d66311e02807edbae4bcc3e4f99bc25280ccaa1a608c51bd380564b12a1` |
| 12 | `theorem` | [Ideal.nonempty_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-nonempty-minimalprimes--2d76787aa5b2297c5195fa30.md) | 93 | `result-track:2d76787aa5b2297c5195fa305e0e3c40e1e196b0034e02891f9675eaea16210a` |
| 13 | `theorem` | [Ideal.eq_bot_of_minimalPrimes_eq_empty](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-eq-bot-of-minimalprimes-eq-empty--c2473897ba2618cd0bf3cf19.md) | 98 | `result-track:c2473897ba2618cd0bf3cf198b6117121f1397d039bb0a4605bbcd31aef03e35` |
| 14 | `theorem` | [Ideal.radical_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-radical-minimalprimes--9b3215ebf68bd7e459fb03b3.md) | 104 | `result-track:9b3215ebf68bd7e459fb03b3a23452f91ede4d88f3d9746f25c09c33fb8e7cee` |
| 15 | `theorem` | [Ideal.sInf_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-sinf-minimalprimes--0c7b0c3bccb7f1a977365d60.md) | 116 | `result-track:0c7b0c3bccb7f1a977365d60208f0ef43e285bbfb0ade5ee34abb37867327e17` |
| 16 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-minimalprimes-eq-subsingleton--024cd3f7b6f258d3b6468d09.md) | 134 | `result-track:024cd3f7b6f258d3b6468d099f39281bf89e4a81851d5e8ad5cd9cd76e0ddedf` |
| 17 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton_self](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-minimalprimes-eq-subsingleton-self--9d9b3c9533097be33fd2fd85.md) | 143 | `result-track:9d9b3c9533097be33fd2fd85dcfd5532ef6466825a554ba881d17fa9b587708f` |
| 18 | `theorem` | [IsDomain.minimalPrimes_eq_singleton_bot](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/isdomain-minimalprimes-eq-singleton-bot--689c5cb420b2047767417783.md) | 150 | `result-track:689c5cb420b2047767417783e29a33578c42e87cc1e20119a8bb7a4d7f97442c` |
| 19 | `theorem` | [Ideal.minimalPrimes_top](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-minimalprimes-top--98f99f66d8cd5e9ec17c27df.md) | 160 | `result-track:98f99f66d8cd5e9ec17c27df8e511a45cb8550ab3ad8003dd3c00805514712fa` |
| 20 | `theorem` | [Ideal.minimalPrimes_eq_empty_iff](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-minimalprimes-eq-empty-iff--4738fbe7c650b92e18c245b8.md) | 166 | `result-track:4738fbe7c650b92e18c245b875164531a6f8b6e36386a78f4987600a200e06da` |
| 21 | `lemma` | [Ideal.mem_minimalPrimes_sup](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-mem-minimalprimes-sup--bfe18db2925c4b51dfbfe963.md) | 178 | `result-track:bfe18db2925c4b51dfbfe963e747c618057fdd676bef376b1111d0d2480292b7` |
| 22 | `lemma` | [Ideal.map_sup_mem_minimalPrimes_of_map_quotientMk_mem_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc29a8af730645024392194f321fe85c55346ada619bb1b2077a5d41f78e399ae.lean/declarations/ideal-map-sup-mem-minimalprimes-of-map-quotientmk-mem-minimalprimes--0d7b43b0d662d78a19756dd5.md) | 194 | `result-track:0d7b43b0d662d78a19756dd52caac675f5ec15125f82fc5c59b3a6a80f675a85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
