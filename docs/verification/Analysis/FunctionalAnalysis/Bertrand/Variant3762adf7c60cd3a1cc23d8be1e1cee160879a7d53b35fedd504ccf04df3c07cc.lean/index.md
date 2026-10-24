# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Bertrand.Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48ee97fc0d7b5fd151a64a8146f2c348e0cb2373",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48ee97fc0d7b5fd151a64a8146f2c348e0cb2373`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Factorization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeNormNum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Primorial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Deriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [real_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean/declarations/real-main-inequality--4eec62f9621f11107b6d0b28.md) | 54 | `result-track:4eec62f9621f11107b6d0b28c1ec9d655d1e042b2177aef27ea8f941c62a51f6` |
| 2 | `theorem` | [bertrand_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean/declarations/bertrand-main-inequality--27e5fb8b1c5a7c93b15cbb2c.md) | 125 | `result-track:27e5fb8b1c5a7c93b15cbb2cf386306d8d0d113c2ebda9b47c70927b09ddbef1` |
| 3 | `theorem` | [centralBinom_factorization_small](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean/declarations/centralbinom-factorization-small--3632304cfbba19d8747ae8ef.md) | 145 | `result-track:3632304cfbba19d8747ae8ef9e95d9558d6deea45656930272c2922c53281dd4` |
| 4 | `theorem` | [centralBinom_le_of_no_bertrand_prime](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean/declarations/centralbinom-le-of-no-bertrand-prime--2fd0a00c5aefd5996a577c94.md) | 169 | `result-track:2fd0a00c5aefd5996a577c9463dc2f983d363bf9af0bfba90bc1e646382deeda` |
| 5 | `theorem` | [exists_prime_lt_and_le_two_mul_eventually](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean/declarations/exists-prime-lt-and-le-two-mul-eventually--1e3e3447fcb23a4b61ecde5a.md) | 203 | `result-track:1e3e3447fcb23a4b61ecde5a195817c8265ad441462baf30e9f95563110f926b` |
| 6 | `theorem` | [exists_prime_lt_and_le_two_mul_succ](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean/declarations/exists-prime-lt-and-le-two-mul-succ--0d13c7cf582f077d0562bc30.md) | 222 | `result-track:0d13c7cf582f077d0562bc30078cd59baf10f985abfe1db51a62afdc75a1dd08` |
| 7 | `theorem` | [exists_prime_lt_and_le_two_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant3762adf7c60cd3a1cc23d8be1e1cee160879a7d53b35fedd504ccf04df3c07cc.lean/declarations/exists-prime-lt-and-le-two-mul--d6762805d96ec413f663ccc6.md) | 233 | `result-track:d6762805d96ec413f663ccc68eb87c3a74f1aa11ea2477ea98b93768924fc90c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
