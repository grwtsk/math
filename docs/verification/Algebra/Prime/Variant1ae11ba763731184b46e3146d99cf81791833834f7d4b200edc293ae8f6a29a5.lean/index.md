# Verification target: GRWTSK.Algebra.Prime.Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71eab680c979eb85213a902487c6af6510f09123",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71eab680c979eb85213a902487c6af6510f09123`.

Source path: `GRWTSK/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean.json)

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
| 1 | `class` | [IsPrime](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime--91fdee900e22b4d411245e28.md) | 41 | `declaration-track:91fdee900e22b4d411245e28e7127ebaa1b6853668022870e3e9b59cbf4b7895` |
| 2 | `theorem` | [isPrime_iff](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-iff--447ecf8a326b828a81d8cafd.md) | 47 | `result-track:447ecf8a326b828a81d8cafd7a18cbd159ea37d8175eead36b7d0f7642bc436a` |
| 3 | `theorem` | [IsPrime.ne_top](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-ne-top--ed895829d4ee6c2ecd273be1.md) | 50 | `result-track:ed895829d4ee6c2ecd273be1a5e2ebc6f08d560677846e6f308df6930bea748a` |
| 4 | `lemma` | [notMem_of_isUnit](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/notmem-of-isunit--830bc224c124f21b813fd28b.md) | 53 | `result-track:830bc224c124f21b813fd28b63c6468488a4f194d6f698bc464a31542bcec390` |
| 5 | `theorem` | [IsPrime.one_notMem](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-one-notmem--516cbc5f8e58571e4d646b66.md) | 56 | `result-track:516cbc5f8e58571e4d646b66527707957e5c408a4b2388c7851b6d776efa136d` |
| 6 | `theorem` | [one_notMem](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/one-notmem--3838f79ffccd7bca603a93bf.md) | 59 | `result-track:3838f79ffccd7bca603a93bf5da41951bf6040d60029a071bdab78feed02691a` |
| 7 | `theorem` | [IsPrime.mem_or_mem](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-mem-or-mem--c49d0bea6414633d0fc61589.md) | 62 | `result-track:c49d0bea6414633d0fc6158914737923078406fc2b58dea795ab5181987de177` |
| 8 | `theorem` | [IsPrime.mul_notMem](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-mul-notmem--abd82f3d63bf37bbc63ca3e9.md) | 65 | `result-track:abd82f3d63bf37bbc63ca3e938eaf87227f56bfbfd6adbc6adb9e0ca1eada587` |
| 9 | `theorem` | [IsPrime.mem_or_mem_of_mul_eq_zero](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-mem-or-mem-of-mul-eq-zero--6f53ead48442c571d08614f9.md) | 69 | `result-track:6f53ead48442c571d08614f94e1f64fe908f15ab16ca63dd9d98a119583e6629` |
| 10 | `theorem` | [IsPrime.mem_of_pow_mem](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-mem-of-pow-mem--087c476e030552f2e323eef6.md) | 73 | `result-track:087c476e030552f2e323eef67fb36249517f0fd8173dcee3c55d94edce0fa1af` |
| 11 | `theorem` | [not_isPrime_iff](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/not-isprime-iff--297978260c85753427641b7a.md) | 83 | `result-track:297978260c85753427641b7ad27ee1b33b2d5200e970e3d2f276ae66eb35aad3` |
| 12 | `instance` | [isPrime_bot](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-bot--26165e9a68dbcd4ed94ca606.md) | 91 | `declaration-track:26165e9a68dbcd4ed94ca6062a79155773472d31a78c066e4201dece7b21b060` |
| 13 | `theorem` | [IsPrime.mul_mem_iff_mem_or_mem](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-mul-mem-iff-mem-or-mem--718a389ce625ca4dc8303453.md) | 95 | `result-track:718a389ce625ca4dc83034536eb8567a3607d1b0fda54f2ef02470efb4fba18c` |
| 14 | `theorem` | [IsPrime.pow_mem_iff_mem](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-pow-mem-iff-mem--276b124fa4ce25c3ddea05ab.md) | 101 | `result-track:276b124fa4ce25c3ddea05ab06d655f28f204435e7ee0fd0a9e49cc6e0f6fbd0` |
| 15 | `lemma` | [IsPrime.mul_mem_left_iff](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-mul-mem-left-iff--3d71820236cd7a2a31160316.md) | 105 | `result-track:3d71820236cd7a2a311603166737daadfa6cac9d1e42834aa03226b897584477` |
| 16 | `lemma` | [IsPrime.mul_mem_right_iff](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isprime-mul-mem-right-iff--809018bc37e39c125a9ebe23.md) | 109 | `result-track:809018bc37e39c125a9ebe23167a35947f2e6e1beb3785861c1ce78b511145cf` |
| 17 | `def` | [primeCompl](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/primecompl--6fedcaf0b83f24a67c8cf81c.md) | 114 | `declaration-track:6fedcaf0b83f24a67c8cf81cc08b0ba3f03267db164e9af980cf64c76068d52b` |
| 18 | `theorem` | [mem_primeCompl_iff](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/mem-primecompl-iff--64db7cb8b274a94254aacf2f.md) | 120 | `result-track:64db7cb8b274a94254aacf2f82dc737b00a3e0915011495f24fd6adcc636bdec` |
| 19 | `theorem` | [primeCompl_bot](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/primecompl-bot--bde772549b7f0e78c037cd9f.md) | 123 | `result-track:bde772549b7f0e78c037cd9f938e7be3d22b27ce375a651d5ec222a78edb5603` |
| 20 | `theorem` | [IsDomain.of_bot_isPrime](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/isdomain-of-bot-isprime--daa0edf5f4d6f5cea0d1bac0.md) | 134 | `result-track:daa0edf5f4d6f5cea0d1bac06583804306cbcf6bde2ec9449729f4977e8a6197` |
| 21 | `theorem` | [eq_bot_of_prime](../../../../mathematics/Algebra/Prime/Variant1ae11ba763731184b46e3146d99cf81791833834f7d4b200edc293ae8f6a29a5.lean/declarations/eq-bot-of-prime--9677c9d7d296e9316c1e6c37.md) | 145 | `result-track:9677c9d7d296e9316c1e6c379be0f15a7dc4be5d35181c846bb1969d36c0641b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
