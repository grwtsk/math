# Verification target: GRWTSK.Algebra.Maximal.Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61f8b83b2aa0bd2bde236ef781cb3dcc3e6fd1ce",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61f8b83b2aa0bd2bde236ef781cb3dcc3e6fd1ce`.

Source path: `GRWTSK/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean.json)

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
| 1 | `class` | [IsMaximal](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal--39c91030c2de1f9eb209a82d.md) | 55 | `declaration-track:39c91030c2de1f9eb209a82d9f8e0bd0a48b472d47b03f4581c0dfedc6ef6f6c` |
| 2 | `theorem` | [isMaximal_def](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal-def--ba538c76471445790c43555a.md) | 60 | `result-track:ba538c76471445790c43555a194348fb9619848e6cc0b59722750f8410d96d0c` |
| 3 | `theorem` | [IsMaximal.ne_top](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal-ne-top--b17bb80a9aa8d15e0b0ddbda.md) | 63 | `result-track:b17bb80a9aa8d15e0b0ddbdad9e5fb0ead2984d167771f4b7124506a32aa97b7` |
| 4 | `theorem` | [IsMaximal.lt_top](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal-lt-top--98d5a91b9cbae878ca350f2d.md) | 66 | `result-track:98d5a91b9cbae878ca350f2d4735267d3deaac8c6e8ef28f2f27acf751413959` |
| 5 | `theorem` | [isMaximal_iff](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal-iff--e37ec201a0c1beb64d47e5f1.md) | 69 | `result-track:e37ec201a0c1beb64d47e5f1031ee8eee3578753c331754bf91755b29382401e` |
| 6 | `theorem` | [IsMaximal.eq_of_le](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal-eq-of-le--b28da057c129a185b66a484d.md) | 73 | `result-track:b28da057c129a185b66a484dd16b1d8ae548a6380d755d1e6a6ec774a67db3fb` |
| 7 | `theorem` | [IsMaximal.eq_iff_le](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal-eq-iff-le--869dfc12693f296ec98371a7.md) | 76 | `result-track:869dfc12693f296ec98371a7e7006ac633886d5921d0147e9b963344081236c8` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/instance--95619df875bfd03647f34d61.md) | 79 | `declaration-track:95619df875bfd03647f34d61acb890db262cd1e4d6b58d72f62b07e20d627f76` |
| 9 | `theorem` | [IsMaximal.coprime_of_ne](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal-coprime-of-ne--c56d2354fc95083f6ad3d15f.md) | 81 | `result-track:c56d2354fc95083f6ad3d15fc7dead29767d1582d4f3027f8ae1e35654601d93` |
| 10 | `theorem` | [exists_le_maximal](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/exists-le-maximal--d4cdbcb0160cd5d4c902d95c.md) | 88 | `result-track:d4cdbcb0160cd5d4c902d95c6eca168eb12618285ac5bb5f410255808299d869` |
| 11 | `theorem` | [exists_maximal](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/exists-maximal--f1ce72c9ee9081634ea70785.md) | 94 | `result-track:f1ce72c9ee9081634ea70785df9650f716ea0192b59bbaa6efca617aa18281d5` |
| 12 | `theorem` | [ne_top_iff_exists_maximal](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ne-top-iff-exists-maximal--41328f4b9e6e7099032fc92c.md) | 98 | `result-track:41328f4b9e6e7099032fc92cf038e137ad4249a8e5c64d58c35a22d90fea76d6` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/instance--2b9ae601bfb6e0a90bcff422.md) | 105 | `declaration-track:2b9ae601bfb6e0a90bcff42244eba7ca2bc0c532f5bd7b7e30bb8f18cb7a8fb2` |
| 14 | `theorem` | [maximal_of_no_maximal](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/maximal-of-no-maximal--820a0fc47a55bad6626369e7.md) | 111 | `result-track:820a0fc47a55bad6626369e74419ca53cd346d3367a47b0e87c7bd2d74e1e109` |
| 15 | `theorem` | [IsMaximal.exists_inv](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal-exists-inv--c1bf61cb603d128d61de784d.md) | 117 | `result-track:c1bf61cb603d128d61de784dbb374842ef400a6062371e55ccab35435db8d7f8` |
| 16 | `theorem` | [sInf_isPrime_of_isChain](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/sinf-isprime-of-ischain--1fe4646df0d386d186d05090.md) | 127 | `result-track:1fe4646df0d386d186d05090285292d8c60dc82a4507044bcda0808e1406ccab` |
| 17 | `theorem` | [span_singleton_prime](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/span-singleton-prime--20cb03b72be6a10dbd4dfe5c.md) | 156 | `result-track:20cb03b72be6a10dbd4dfe5c46067d9715d2905e9bcd4331173a752c30758b2f` |
| 18 | `theorem` | [isPrime_span_singleton_of_prime](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/isprime-span-singleton-of-prime--a134c7dcde950836e3145288.md) | 159 | `result-track:a134c7dcde950836e314528864393cb82eea8c462d1622a6ec872dfe47ee0b44` |
| 19 | `theorem` | [IsMaximal.isPrime](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/ismaximal-isprime--4270d3af9f1e27bc5fefd0c2.md) | 162 | `result-track:4270d3af9f1e27bc5fefd0c2d669d66ed9e24c2374aea92b6dd5850332d04239` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/instance--b421d81550af589d3ea01cf5.md) | 177 | `declaration-track:b421d81550af589d3ea01cf58c92a1c17c3cc3eb1fd436821f5ee89892e93d71` |
| 21 | `theorem` | [exists_disjoint_powers_of_span_eq_top](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/exists-disjoint-powers-of-span-eq-top--577b4378193a2612a80755e1.md) | 180 | `result-track:577b4378193a2612a80755e11865cf691dc7219c9b1f56a922bcb70a8ab36488` |
| 22 | `theorem` | [span_singleton_lt_span_singleton](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/span-singleton-lt-span-singleton--68d6e974fa2d0a7558c67128.md) | 189 | `result-track:68d6e974fa2d0a7558c67128762bfc95e4be5f14aeaabcae55de6d171afba91e` |
| 23 | `lemma` | [isPrime_of_maximally_disjoint](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/isprime-of-maximally-disjoint--f7d8de271c51e42d3cc163da.md) | 194 | `result-track:f7d8de271c51e42d3cc163da7a5b9193934090478868b0e2d644aa45763bbe66` |
| 24 | `theorem` | [exists_le_prime_disjoint](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/exists-le-prime-disjoint--9644fd3b2aee8976840f42fd.md) | 218 | `result-track:9644fd3b2aee8976840f42fd8e03ea8115402d208cae6a3d8e8d1e2fe87d1028` |
| 25 | `theorem` | [exists_le_prime_notMem_of_isIdempotentElem](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/exists-le-prime-notmem-of-isidempotentelem--5cbe18a302a363d067147990.md) | 229 | `result-track:5cbe18a302a363d067147990bc587470ed55837120e8ffc452045c5ee8e40ae2` |
| 26 | `theorem` | [irreducible_of_isMaximal_of_eq_span_singleton_of_not_isIdempotentElem](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/irreducible-of-ismaximal-of-eq-span-singleton-of-not-isidempotentelem--800099a25b68696af183ab80.md) | 240 | `result-track:800099a25b68696af183ab805fbf959611689470a3661a79ab5c8e05c8dd1e99` |
| 27 | `theorem` | [irreducible_of_isMaximal_span_singleton](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/irreducible-of-ismaximal-span-singleton--72060b4a307508b500491667.md) | 261 | `result-track:72060b4a307508b5004916671c2c70a47463dc9b508a9390373e0e2214f37401` |
| 28 | `theorem` | [isPrime_iff_of_isPrincipalIdealRing](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/isprime-iff-of-isprincipalidealring--181462dad14659aa0d1f1ae8.md) | 270 | `result-track:181462dad14659aa0d1f1ae8495b882fc28d7dda5bb1b62491b563d525414131` |
| 29 | `theorem` | [isPrime_iff_of_isPrincipalIdealRing_of_noZeroDivisors](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/isprime-iff-of-isprincipalidealring-of-nozerodivisors--bcd4a35e513ac9b8261f95bd.md) | 279 | `result-track:bcd4a35e513ac9b8261f95bdf63f2ef193e89cde2c17ba1298555284bff15e08` |
| 30 | `theorem` | [bot_isMaximal](../../../../mathematics/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/declarations/bot-ismaximal--650fd2137a3ea2b17a7b6d7b.md) | 297 | `result-track:650fd2137a3ea2b17a7b6d7b6cce5fb5595e033fa1752f62239d543c93f84c04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
