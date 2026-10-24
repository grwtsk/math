# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeFin.Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "922eee6cc32b559c1c06e4ca5bf51ee718b3949f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `922eee6cc32b559c1c06e4ca5bf51ee718b3949f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_setOf_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/declarations/infinite-setof-prime--0e5601ced3971c640d4befdd.md) | 30 | `result-track:0e5601ced3971c640d4befdd15d1034b80001520125c260bc0f3dbefe9cb9610` |
| 2 | `instance` | [Primes.infinite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/declarations/primes-infinite--ee8abe3672b75fc6eec32ff2.md) | 34 | `declaration-track:ee8abe3672b75fc6eec32ff2ac67865145b19ae381d6fdcb62710b92f4f1f9c5` |
| 3 | `instance` | [Primes.countable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/declarations/primes-countable--a02a984a8b43a63453eb2d8d.md) | 36 | `declaration-track:a02a984a8b43a63453eb2d8d2a01ebe0e88908ca15dc756997369513d7c662f3` |
| 4 | `theorem` | [factors_mul_toFinset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/declarations/factors-mul-tofinset--fb7d23424222160d8fa937b3.md) | 39 | `result-track:fb7d23424222160d8fa937b318388c5312b70261a9c232f08440d0ab88a12257` |
| 5 | `theorem` | [pow_succ_factors_toFinset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/declarations/pow-succ-factors-tofinset--2b00419a45b96b663ba6aded.md) | 45 | `result-track:2b00419a45b96b663ba6aded3a302a52eb938536ff20c630b9e076e04de0f251` |
| 6 | `theorem` | [pow_factors_toFinset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/declarations/pow-factors-tofinset--2ec6076a3ad6ff7841bc74fa.md) | 54 | `result-track:2ec6076a3ad6ff7841bc74fa3ed9d6844536cdb52983b064217f9df096f944a7` |
| 7 | `theorem` | [prime_pow_prime_divisor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/declarations/prime-pow-prime-divisor--7bc0959b32c7b4872130c6c2.md) | 62 | `result-track:7bc0959b32c7b4872130c6c2be13dddb340bf3a372f263ee12c32b00c32bbb5a` |
| 8 | `theorem` | [factors_mul_toFinset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant2d00f34af85987c43b42c43ce99797e5c51501b34c013a75a134ec45d4152240.lean/declarations/factors-mul-tofinset-of-coprime--c25c519ad0d70bdaf78239ea.md) | 66 | `result-track:c25c519ad0d70bdaf78239ea7043b6c708fee629694093b387699cf565443505` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
