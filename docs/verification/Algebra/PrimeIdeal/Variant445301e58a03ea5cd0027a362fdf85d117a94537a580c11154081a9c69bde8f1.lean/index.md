# Verification target: GRWTSK.Algebra.PrimeIdeal.Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39a47d584ffe9e8c3cbb1bae404b51411e5c49b4",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/index.md) · [Full source](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39a47d584ffe9e8c3cbb1bae404b51411e5c49b4`.

Source path: `GRWTSK/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PFilter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimePair](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/primepair--9cea2d8bcc44f30a0c3faf69.md) | 52 | `declaration-track:9cea2d8bcc44f30a0c3faf698c272b431234a2dc25d3242431deb6fb3b0f527a` |
| 2 | `theorem` | [compl_I_eq_F](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/compl-i-eq-f--321d57c39179c68600b28133.md) | 61 | `result-track:321d57c39179c68600b28133ca385ec199950995bda8833d79ca020821fe4f10` |
| 3 | `theorem` | [compl_F_eq_I](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/compl-f-eq-i--9f37bba0e4ded1bdb774b49e.md) | 64 | `result-track:9f37bba0e4ded1bdb774b49e94e4001f897f7d6cd32b04fed21a243fa899a77a` |
| 4 | `theorem` | [I_isProper](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/i-isproper--0808dfddbcde216588077128.md) | 67 | `result-track:0808dfddbcde21658807712885e64cb67c9f736ce40acc1968d4990f6f05b671` |
| 5 | `theorem` | [disjoint](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/disjoint--bd7835ddef8d1188c7657437.md) | 72 | `result-track:bd7835ddef8d1188c7657437f56bc7d95ec9839a9495bc3c326b65c989dfae5d` |
| 6 | `theorem` | [I_union_F](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/i-union-f--ffa54050de3a6cd8835193be.md) | 75 | `result-track:ffa54050de3a6cd8835193beb9bfa18bf20fc34dc33b4c26d9bfb91bc4137cd7` |
| 7 | `theorem` | [F_union_I](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/f-union-i--01d0b26a0f16867f39e3de58.md) | 78 | `result-track:01d0b26a0f16867f39e3de583f7b6fc081550aeec1a8a73d0cea0c34e336ee2b` |
| 8 | `class` | [IsPrime](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime--86274e3de96de16e8639fd12.md) | 86 | `declaration-track:86274e3de96de16e8639fd124e17b3b4cac14d2d683ed2eccfb725a961ca17c2` |
| 9 | `def` | [IsPrime.toPrimePair](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime-toprimepair--087644ffe4e71e1448574aa0.md) | 95 | `declaration-track:087644ffe4e71e1448574aa0e45651cb0152c20336e2bd84f503b37262279084` |
| 10 | `theorem` | [PrimePair.I_isPrime](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/primepair-i-isprime--5ee00da84e1f6cc42eeaed22.md) | 100 | `result-track:5ee00da84e1f6cc42eeaed226ef37bd4a2c25c3b1418bf9c9975d5265aea7314` |
| 11 | `theorem` | [IsPrime.mem_or_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime-mem-or-mem--3145306ce71d929b895fb8aa.md) | 112 | `result-track:3145306ce71d929b895fb8aae48c293cb1a45fff1551055743954a9d2097c05c` |
| 12 | `theorem` | [IsPrime.of_mem_or_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime-of-mem-or-mem--fe29ef0d0020d9f4633e02a6.md) | 118 | `result-track:fe29ef0d0020d9f4633e02a61ca90116cb043c91ddc89a480a1707ea7a5359ad` |
| 13 | `theorem` | [isPrime_iff_mem_or_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime-iff-mem-or-mem--7221de7acb6450253e7a391a.md) | 128 | `result-track:7221de7acb6450253e7a391a1e8dfc6e9285418f191ecbea9ff46396cf812665` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/instance--50a1bb771c5785f8f261eb73.md) | 137 | `declaration-track:50a1bb771c5785f8f261eb73e30e49aa6ea8a9ff349504cd79f97fce135724ca` |
| 15 | `theorem` | [IsPrime.mem_or_compl_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime-mem-or-compl-mem--4c05bf6af84d1d480acfcfa3.md) | 160 | `result-track:4c05bf6af84d1d480acfcfa35b300193d20d77d4f05195416902a17a0ddba765` |
| 16 | `theorem` | [IsPrime.compl_mem_of_notMem](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime-compl-mem-of-notmem--993b2ace5b8d62348c91032f.md) | 165 | `result-track:993b2ace5b8d62348c91032fd33fc0496f7c20c9f9a121db46f1935ab0116186` |
| 17 | `theorem` | [isPrime_of_mem_or_compl_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime-of-mem-or-compl-mem--fc548dde2b7aacac84d9cf20.md) | 171 | `result-track:fc548dde2b7aacac84d9cf20e2d9c2520b6fc05dc4bc541d3cac50eb46f41ca1` |
| 18 | `theorem` | [isPrime_iff_mem_or_compl_mem](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime-iff-mem-or-compl-mem--c3c50b22be6263379caa1a8c.md) | 178 | `result-track:c3c50b22be6263379caa1a8c037428b28a30214092892c683e4e0ae4bdf9f090` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/instance--18fbafe4eae1aa76a8c042e1.md) | 181 | `declaration-track:18fbafe4eae1aa76a8c042e1c81d1a97ca9621b93ed9bad6e7788846849fbc7f` |
| 20 | `class` | [IsPrime](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime--b51b9a19a662cace41f5b3b1.md) | 201 | `declaration-track:b51b9a19a662cace41f5b3b1d3a90194653deb842dff235fd5181de8b7b960b9` |
| 21 | `def` | [IsPrime.toPrimePair](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/isprime-toprimepair--efd88b5504b2d9e68908e5bc.md) | 206 | `declaration-track:efd88b5504b2d9e68908e5bc7a684a9603d35fc33a1ab0b8e2a30b41cb09d445` |
| 22 | `theorem` | [_root_.GRWTSK.Algebra.PrimePair.Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.Order.Ideal.PrimePair.F_isPrime](../../../../mathematics/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/declarations/root-grwtsk-algebra-primepair-variantefaa4c598ac9173e8be539b4015bf67085d--c7d530cbb72cfb4ec687fe10.md) | 211 | `result-track:c7d530cbb72cfb4ec687fe10c5f5f17af7656e301677a84d11020eef846ead72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
