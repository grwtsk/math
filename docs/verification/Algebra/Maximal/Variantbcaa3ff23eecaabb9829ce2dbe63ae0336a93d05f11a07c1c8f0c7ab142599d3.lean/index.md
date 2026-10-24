# Verification target: GRWTSK.Algebra.Maximal.Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcd05babd6e01a85e9d5457e9d693384065fb250",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcd05babd6e01a85e9d5457e9d693384065fb250`.

Source path: `GRWTSK/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Prime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsMaximal](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/ismaximal--0a496ba62d8e7436451c08bd.md) | 50 | `declaration-track:0a496ba62d8e7436451c08bd800418fc396fe12c7acbf8a1a0480c73ab3a586d` |
| 2 | `theorem` | [isMaximal_def](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/ismaximal-def--69756a9678c7c39695dd1e2b.md) | 55 | `result-track:69756a9678c7c39695dd1e2b73c8d96005ef4b80c113f0aae77d2072c35dedfb` |
| 3 | `theorem` | [IsMaximal.ne_top](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/ismaximal-ne-top--126ffe5ca41f6facf3843a90.md) | 58 | `result-track:126ffe5ca41f6facf3843a90e8875c3361a2aa864bde19b023e738c1cfef0bca` |
| 4 | `theorem` | [isMaximal_iff](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/ismaximal-iff--b1eda0eb4776da5055695164.md) | 61 | `result-track:b1eda0eb4776da5055695164f2795e22307436f0de11cce8e7ba4b069aea4f28` |
| 5 | `theorem` | [IsMaximal.eq_of_le](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/ismaximal-eq-of-le--9bfe7bd170dbe104b01ce589.md) | 65 | `result-track:9bfe7bd170dbe104b01ce589a4751a9795b16225fcc874392c61afd973a2f986` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/instance--405df4a5e01f45a31247ba49.md) | 68 | `declaration-track:405df4a5e01f45a31247ba49648880aaf730f3382fd48028845bb736c9606206` |
| 7 | `theorem` | [IsMaximal.coprime_of_ne](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/ismaximal-coprime-of-ne--ef24596511fef94867a65220.md) | 70 | `result-track:ef24596511fef94867a652208867953a3f84d068f60eeb3a746d6a3f3adbe139` |
| 8 | `theorem` | [exists_le_maximal](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/exists-le-maximal--1854ccef14f6295ae7cc788b.md) | 77 | `result-track:1854ccef14f6295ae7cc788bd43089ed691effdba3138d4b0139aa1293e01ded` |
| 9 | `theorem` | [exists_maximal](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/exists-maximal--575acfddd14141813da4d628.md) | 83 | `result-track:575acfddd14141813da4d628b0375594c9b443bb5a5c7321dd0a24a73ab33990` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/instance--d4a75b7b43122d3acca2979b.md) | 87 | `declaration-track:d4a75b7b43122d3acca2979b3c9a2241ca0b7c0a6614416ee91f616a1c0d3fa1` |
| 11 | `theorem` | [maximal_of_no_maximal](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/maximal-of-no-maximal--f68a12fac0536bebe7ba14d3.md) | 93 | `result-track:f68a12fac0536bebe7ba14d3e51c1aceccf600479884b338cbf0fc5d2d131ccd` |
| 12 | `theorem` | [IsMaximal.exists_inv](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/ismaximal-exists-inv--2f2809410464f34804177198.md) | 99 | `result-track:2f2809410464f348041771982b3fe737a5f353aa82345257382f1991cbfec2d6` |
| 13 | `theorem` | [sInf_isPrime_of_isChain](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/sinf-isprime-of-ischain--3a6206e1e89afc7476240fc9.md) | 109 | `result-track:3a6206e1e89afc7476240fc9928c07ba8ff2caffb63ed0fad579193aa2a93c89` |
| 14 | `theorem` | [span_singleton_prime](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/span-singleton-prime--db38558db8424919f5034b22.md) | 138 | `result-track:db38558db8424919f5034b226355d3a4ff9e305c026a88fbf6b3fc127668183a` |
| 15 | `theorem` | [IsMaximal.isPrime](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/ismaximal-isprime--d51038d2e018ee46fe9d2cd9.md) | 141 | `result-track:d51038d2e018ee46fe9d2cd9a06bb3e3e73ec066e39eacd0b41dc1c4fa4a154f` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/instance--5d13f1ca819bf270b8a0ec56.md) | 156 | `declaration-track:5d13f1ca819bf270b8a0ec56633cbdf23da2bfe35d39dfea367b067ba115f0ed` |
| 17 | `theorem` | [exists_disjoint_powers_of_span_eq_top](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/exists-disjoint-powers-of-span-eq-top--7394c60bf1da82b4ca46a0f9.md) | 159 | `result-track:7394c60bf1da82b4ca46a0f9648581be9260162c6a297ba429b93dcbf0a8fab0` |
| 18 | `theorem` | [span_singleton_lt_span_singleton](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/span-singleton-lt-span-singleton--3f9e5827fbc059a7dc6beaf5.md) | 168 | `result-track:3f9e5827fbc059a7dc6beaf5fc623a8296b165d8d3a6a34be4443e291aaabff9` |
| 19 | `lemma` | [isPrime_of_maximally_disjoint](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/isprime-of-maximally-disjoint--675bb9328b7436d407d153c6.md) | 173 | `result-track:675bb9328b7436d407d153c61effe82430126c5ac0565e7c2753a3ce4de06578` |
| 20 | `theorem` | [exists_le_prime_disjoint](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/exists-le-prime-disjoint--1d98017241ebb0fcf913bb3a.md) | 197 | `result-track:1d98017241ebb0fcf913bb3a96d1dfaee8275d8b66dac3606ccd346a006a4a50` |
| 21 | `theorem` | [exists_le_prime_notMem_of_isIdempotentElem](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/exists-le-prime-notmem-of-isidempotentelem--69557691faf63489262cc0f9.md) | 208 | `result-track:69557691faf63489262cc0f9a802361cde7c9923f907771e8ad2edae03501a1d` |
| 22 | `theorem` | [bot_isMaximal](../../../../mathematics/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/declarations/bot-ismaximal--da99a21f763e78fc25871617.md) | 230 | `result-track:da99a21f763e78fc258716177b208cc53624a006bd09ce48ac2ccafab692a22f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
