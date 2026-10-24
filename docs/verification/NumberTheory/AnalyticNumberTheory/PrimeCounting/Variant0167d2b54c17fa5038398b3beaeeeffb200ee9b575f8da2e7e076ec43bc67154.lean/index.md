# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeCounting.Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7caa306df3db2e323017bffff9b461347b99a25e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7caa306df3db2e323017bffff9b461347b99a25e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Nth` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SmoothNumbers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primecounting--895117f41bc08ba8399504c2.md) | 45 | `declaration-track:895117f41bc08ba8399504c25800b67416478328f2c8cf8ad714e5354d418c4c` |
| 2 | `def` | [primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primecounting--6b1d37cf4a3c8eafff5e8e55.md) | 51 | `declaration-track:6b1d37cf4a3c8eafff5e8e552e080729eb4bba28c64bcd63a77edf69c67a0d1f` |
| 3 | `theorem` | [primeCounting_sub_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primecounting-sub-one--4cbd2e27bac60c76dbef6911.md) | 61 | `result-track:4cbd2e27bac60c76dbef69117e9d4e35686049bbeee3a60293d84ffe6587cc61` |
| 4 | `theorem` | [monotone_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/monotone-primecounting--030c79081d3b21d7379af1e7.md) | 64 | `result-track:030c79081d3b21d7379af1e73482778ab1d884cf9f1d0ef0e992ec851838e4cb` |
| 5 | `theorem` | [monotone_primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/monotone-primecounting--43ecd49ac327209616a9a9ed.md) | 67 | `result-track:43ecd49ac327209616a9a9edd7c4615c53ea85dc396e81655b91cb71d30f1cbb` |
| 6 | `theorem` | [primeCounting'_nth_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primecounting-nth-eq--ac7f6e7e2706761d68bc1608.md) | 71 | `result-track:ac7f6e7e2706761d68bc160872e700976e2373099669f6d7981a34f3db374830` |
| 7 | `theorem` | [add_two_le_nth_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/add-two-le-nth-prime--7b7895257e2240c77fe00e9f.md) | 75 | `result-track:7b7895257e2240c77fe00e9f397c5fcec6fa32e978efa31e99d1956d2f19d74b` |
| 8 | `theorem` | [surjective_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/surjective-primecounting--7ff63a36cae946635584ed64.md) | 78 | `result-track:7ff63a36cae946635584ed64e6345691e015475fc05559764f395ecf90961efd` |
| 9 | `theorem` | [surjective_primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/surjective-primecounting--3c9c16a9739417faab344b0b.md) | 81 | `result-track:3c9c16a9739417faab344b0bb205ee112a350f649c6cb0ecb20a28042bc1311b` |
| 10 | `theorem` | [tendsto_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/tendsto-primecounting--b7c8083a7456e2577b5af86e.md) | 89 | `result-track:b7c8083a7456e2577b5af86ee29f24cb8ddba0cd6579e6af6d644f5c2a306631` |
| 11 | `theorem` | [tensto_primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/tensto-primecounting--041663f65410828d4d2a7803.md) | 93 | `result-track:041663f65410828d4d2a7803f76b431b648e0eb52af749906e41922c4abfa1d0` |
| 12 | `theorem` | [prime_nth_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/prime-nth-prime--c08098874ecb29ba6a058e32.md) | 97 | `result-track:c08098874ecb29ba6a058e32170627306b798c37daaae53acf698ac53c788ff7` |
| 13 | `lemma` | [primeCounting'_eq_zero_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primecounting-eq-zero-iff--87b57e220cdba43d6070c2ab.md) | 101 | `result-track:87b57e220cdba43d6070c2abf2e934b80d881c031e5855de82cea821a382c934` |
| 14 | `lemma` | [primeCounting_eq_zero_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primecounting-eq-zero-iff--eca5576ac0773b9f083b5b83.md) | 105 | `result-track:eca5576ac0773b9f083b5b830b978205266470ee02558d53d39364e7a51581c9` |
| 15 | `lemma` | [primeCounting_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primecounting-zero--271f8b6bb12cc0dadb3b0d7d.md) | 109 | `result-track:271f8b6bb12cc0dadb3b0d7d6fc151822aa26723dc40f804bcf01d9096264cc1` |
| 16 | `lemma` | [primeCounting_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primecounting-one--2bc73a9513b3fa63ecff55ac.md) | 113 | `result-track:2bc73a9513b3fa63ecff55acd24a0e416a90d2bfa2f7a899baad65063f646e1d` |
| 17 | `theorem` | [primesBelow_card_eq_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primesbelow-card-eq-primecounting--34744742465f62e29bc49992.md) | 118 | `result-track:34744742465f62e29bc49992c26d70dc686996b014129d0f7b8096b81f1a1a78` |
| 18 | `theorem` | [primeCounting'_add_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant0167d2b54c17fa5038398b3beaeeeffb200ee9b575f8da2e7e076ec43bc67154.lean/declarations/primecounting-add-le--6bd5d6ae1c87ef0db79fa7fe.md) | 123 | `result-track:6bd5d6ae1c87ef0db79fa7fea0c628a8ed8d1c28e8d32a739b4093a37d6cf75d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
