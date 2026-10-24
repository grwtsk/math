# Verification target: GRWTSK.Algebra.Prime.Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66f91d6db99842228a2a5b9eacb4a6425b418b88",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66f91d6db99842228a2a5b9eacb4a6425b418b88`.

Source path: `GRWTSK/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean.json)

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
| 1 | `class` | [IsPrime](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime--ee09d17c8d624ac9afbd530e.md) | 49 | `declaration-track:ee09d17c8d624ac9afbd530e9fc71398904571b09d25a51eccd91a6745ee8ef8` |
| 2 | `theorem` | [isPrime_iff](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-iff--1507a2a816b2b559a80aa49c.md) | 55 | `result-track:1507a2a816b2b559a80aa49cb8e31a6369faad350601aecc5862f2d8151328f7` |
| 3 | `theorem` | [IsPrime.ne_top](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-ne-top--0ecad614c9505662fb200d08.md) | 58 | `result-track:0ecad614c9505662fb200d08662bed2d2a80b321ecf46bcc3ce90f7593ba0f9a` |
| 4 | `lemma` | [notMem_of_isUnit](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/notmem-of-isunit--76e71f1da2b7929d56ac2a0b.md) | 61 | `result-track:76e71f1da2b7929d56ac2a0be2e1d98855b7cf6c1416b78dff4598838c968641` |
| 5 | `theorem` | [IsPrime.one_notMem](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-one-notmem--ea9f96be3cbaacf9d3edcf8e.md) | 64 | `result-track:ea9f96be3cbaacf9d3edcf8edb672403fc25b9ef31a1390812865e10f4f5a576` |
| 6 | `theorem` | [one_notMem](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/one-notmem--bc6104e2229a514df9a11af8.md) | 67 | `result-track:bc6104e2229a514df9a11af88fc41c3c662a8d0390e15089c54e5a624667e34b` |
| 7 | `theorem` | [IsPrime.mem_or_mem](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-mem-or-mem--c53eee1c5537d6eb4f6df8d6.md) | 70 | `result-track:c53eee1c5537d6eb4f6df8d665806fed0d0a14d74ef6f7a5284d97075e688812` |
| 8 | `theorem` | [IsPrime.mul_notMem](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-mul-notmem--e825a25e6198213dc3927770.md) | 73 | `result-track:e825a25e6198213dc3927770768a3d4eec4d13a4a229b4815a0e479962ae2707` |
| 9 | `theorem` | [IsPrime.mem_or_mem_of_mul_eq_zero](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-mem-or-mem-of-mul-eq-zero--76248790afd3563f31d2c53c.md) | 77 | `result-track:76248790afd3563f31d2c53c416f6fd344fba10ee7524121aa6bad36d8558002` |
| 10 | `theorem` | [IsPrime.mem_of_pow_mem](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-mem-of-pow-mem--3e557a5e6b9eedaf595ba6a9.md) | 81 | `result-track:3e557a5e6b9eedaf595ba6a9637c8c1c75fe9b93ce4c78db348b8f22d199b1ad` |
| 11 | `theorem` | [not_isPrime_iff](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/not-isprime-iff--7dbb9717c8f1f7e0793ceff3.md) | 91 | `result-track:7dbb9717c8f1f7e0793ceff30c8adacd460812b001e08b283db047313b509b85` |
| 12 | `instance` | [isPrime_bot](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-bot--d3ebfb9b0161b8acdb0ec708.md) | 99 | `declaration-track:d3ebfb9b0161b8acdb0ec7087df5f0d364b4e8c29b91d573cb7f8cc1e260aca9` |
| 13 | `theorem` | [IsPrime.mul_mem_iff_mem_or_mem](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-mul-mem-iff-mem-or-mem--2d5792341d732d87c42e332e.md) | 103 | `result-track:2d5792341d732d87c42e332e0e203221f97715b52043940eefc72fc86aa3ac76` |
| 14 | `theorem` | [IsPrime.pow_mem_iff_mem](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-pow-mem-iff-mem--004e3ad9c7c50bbdfa8e1ff6.md) | 109 | `result-track:004e3ad9c7c50bbdfa8e1ff6ac6c527e74432feed19572d8ffdf81393689b0bf` |
| 15 | `lemma` | [IsPrime.mul_mem_left_iff](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-mul-mem-left-iff--dca786f2ac6bf6357295d5b6.md) | 113 | `result-track:dca786f2ac6bf6357295d5b63f5f7dc32270f4c52e455e3c2ff5bc08390fd773` |
| 16 | `lemma` | [IsPrime.mul_mem_right_iff](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isprime-mul-mem-right-iff--49e73f74c8195dbbeb8bf5f9.md) | 117 | `result-track:49e73f74c8195dbbeb8bf5f9a7cef550cf2b5c0d62b9bdcc39037b267d8a6acb` |
| 17 | `def` | [primeCompl](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/primecompl--272f72a2fa69e412dc74381f.md) | 122 | `declaration-track:272f72a2fa69e412dc74381fa0dd93bec61eaf0d68831563de6d143a2248b8e6` |
| 18 | `theorem` | [mem_primeCompl_iff](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/mem-primecompl-iff--1356d5a7e64af53b84b444ed.md) | 128 | `result-track:1356d5a7e64af53b84b444ed2e235e6cbf51a75ee46c606f5edb1c835def01db` |
| 19 | `theorem` | [primeCompl_bot](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/primecompl-bot--6237e04a81c1da754fdeaafa.md) | 131 | `result-track:6237e04a81c1da754fdeaafa4f5f21fed992d0edf720053f8a66e19ccbf786b8` |
| 20 | `theorem` | [IsDomain.of_bot_isPrime](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/isdomain-of-bot-isprime--f36428948cc9ba0c338a0e50.md) | 142 | `result-track:f36428948cc9ba0c338a0e5062d615967b78e13de09c342bf69e10394a82eddb` |
| 21 | `theorem` | [eq_bot_of_prime](../../../../mathematics/Algebra/Prime/Variant6c8401afecd1ee29d3af781b1fe7a01f7ecc1959c208954509e9d76a8443a7fd.lean/declarations/eq-bot-of-prime--4ddd020da6f8f43edb33fb37.md) | 153 | `result-track:4ddd020da6f8f43edb33fb37e3ea27183916675cb85d9ea67a1379f392f8a0ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
