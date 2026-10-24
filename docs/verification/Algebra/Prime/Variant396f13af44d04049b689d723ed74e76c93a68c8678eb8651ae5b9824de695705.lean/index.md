# Verification target: GRWTSK.Algebra.Prime.Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f52c6ddd4b092deb960d593dc3e54b9ce9fe4571",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f52c6ddd4b092deb960d593dc3e54b9ce9fe4571`.

Source path: `GRWTSK/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPrime](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isprime--0b0035cc9b8cb668978cffb2.md) | 43 | `declaration-track:0b0035cc9b8cb668978cffb2060a6c0af113be80162e49d102c57e57a0193b55` |
| 2 | `theorem` | [isPrime_iff](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isprime-iff--06c39e50e66e30b9f3ab1b40.md) | 49 | `result-track:06c39e50e66e30b9f3ab1b40480672293221ab2d2a90a5a293a65871527e3f91` |
| 3 | `theorem` | [IsPrime.ne_top](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isprime-ne-top--4c57eb3a60e25228fa7011eb.md) | 52 | `result-track:4c57eb3a60e25228fa7011eb11ca11917d97752d9cf595edccab6549e8661fd0` |
| 4 | `theorem` | [IsPrime.mem_or_mem](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isprime-mem-or-mem--c56ed4d574f099070349432f.md) | 55 | `result-track:c56ed4d574f099070349432fcbf52b82ee1545ceb6ebfacd0552620ccbf89ab6` |
| 5 | `theorem` | [IsPrime.mul_notMem](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isprime-mul-notmem--0788ab19c7e6ab6a028028b1.md) | 58 | `result-track:0788ab19c7e6ab6a028028b17b5c1ff082cf0551469fedea35dca7c16029b232` |
| 6 | `theorem` | [IsPrime.mem_or_mem_of_mul_eq_zero](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isprime-mem-or-mem-of-mul-eq-zero--5dc30967a6b1641a6d0d50ec.md) | 64 | `result-track:5dc30967a6b1641a6d0d50ecccdfba04bc1c2a06bb8c112a6f3cb8103150b94e` |
| 7 | `theorem` | [IsPrime.mem_of_pow_mem](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isprime-mem-of-pow-mem--bd7462dc5a5049ef23752674.md) | 68 | `result-track:bd7462dc5a5049ef23752674b89ea1dc62c89242f041a921e149d4e27d5d99fa` |
| 8 | `theorem` | [not_isPrime_iff](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/not-isprime-iff--f528c79a48892a79dd2cbdda.md) | 78 | `result-track:f528c79a48892a79dd2cbdda0eb4dea847c8321cf84a4016617d3c400e8ad99f` |
| 9 | `theorem` | [bot_prime](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/bot-prime--d83fa01066e1d157c6af3a44.md) | 86 | `result-track:d83fa01066e1d157c6af3a44fe893171603425e2c46e3b36805a50f826915d59` |
| 10 | `theorem` | [IsPrime.mul_mem_iff_mem_or_mem](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isprime-mul-mem-iff-mem-or-mem--78c42bc9460e1f6c6166937d.md) | 90 | `result-track:78c42bc9460e1f6c6166937db362ae249358c025d71bafa1c80c72c3a91c69e6` |
| 11 | `theorem` | [IsPrime.pow_mem_iff_mem](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isprime-pow-mem-iff-mem--e2804240f450fed86da609c8.md) | 96 | `result-track:e2804240f450fed86da609c805df4ad342beea603f5f249f4544b48a61935081` |
| 12 | `def` | [primeCompl](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/primecompl--8423c75be8dd6e60be2cd65c.md) | 101 | `declaration-track:8423c75be8dd6e60be2cd65c629995f5345d038ee8fd8d96d8dd1f01c6b68622` |
| 13 | `theorem` | [IsDomain.of_bot_isPrime](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/isdomain-of-bot-isprime--f0b8a0942da73e0645982c9d.md) | 112 | `result-track:f0b8a0942da73e0645982c9d464fec6a960e9e596b24ce62e0c100cff2e5b961` |
| 14 | `theorem` | [eq_bot_of_prime](../../../../mathematics/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/declarations/eq-bot-of-prime--b67f673b199255d2cccab175.md) | 124 | `result-track:b67f673b199255d2cccab175470828d9c8a254c518720ff39a85f535d113d622` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
