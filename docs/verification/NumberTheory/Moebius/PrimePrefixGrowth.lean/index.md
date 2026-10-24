# Verification target: GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e1f338f352df006cd8a754f22905c03887c8b23",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/PrimePrefixGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e1f338f352df006cd8a754f22905c03887c8b23`.

Source path: `GRWTSK/NumberTheory/Moebius/PrimePrefixGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/PrimePrefixGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth`](../../../../mathematics/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePrefix](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/primeprefix--f6e355342f146d9626671f6a.md) | 14 | `declaration-track:f6e355342f146d9626671f6a238fba4b39f278f568f7640b131cc925d7927194` |
| 2 | `theorem` | [primePrefix_primes](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/primeprefix-primes--3ef88e175a5fcc6f1fe5cb02.md) | 16 | `result-track:3ef88e175a5fcc6f1fe5cb026df4bcdd47bba11072e63a7ffd7116b0b92a84a9` |
| 3 | `theorem` | [not_mem_primePrefix](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/not-mem-primeprefix--58decc25e8ccdc2b9f8f8346.md) | 19 | `result-track:58decc25e8ccdc2b9f8f83467e5a87656c07fb1ae0e8c3bdebf30db259fb8568` |
| 4 | `theorem` | [primePrefix_succ](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/primeprefix-succ--a8446052168051c88b1c4ec8.md) | 22 | `result-track:a8446052168051c88b1c4ec843eb1e49724281e16614ac9a2cef4631e7551528` |
| 5 | `theorem` | [pickupPrimes_eq_primePrefix](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/pickupprimes-eq-primeprefix--486a7670f17060d8946b1d81.md) | 26 | `result-track:486a7670f17060d8946b1d81c56b40c101eae71748f4fe81b0850826680d6595` |
| 6 | `def` | [PrimePrefixReverberation](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/primeprefixreverberation--4bf357d2a3f0626d1fc81850.md) | 37 | `declaration-track:4bf357d2a3f0626d1fc818505088c2887c32584883f59d8c45b3f2bfbe1539c1` |
| 7 | `theorem` | [PrimeReverberation.prefix](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/primereverberation-prefix--abf6f4ef9c283b00e0ba22d1.md) | 43 | `result-track:abf6f4ef9c283b00e0ba22d18745d9d41a4f48d084b80a5fdaca741ba4ead655` |
| 8 | `theorem` | [pickup_eq_prime_prefix](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/pickup-eq-prime-prefix--42ac2c0eb9bb1166bb49c490.md) | 49 | `result-track:42ac2c0eb9bb1166bb49c490ef287a7aca70f34beeb6e2ef782e734ab93fb3b4` |
| 9 | `theorem` | [prefix_compensated_bound](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/prefix-compensated-bound--27214eecb2c5ee6327501b24.md) | 54 | `result-track:27214eecb2c5ee6327501b247166f30d832936df25e4e6a252196b9d63572b5f` |
| 10 | `theorem` | [pickup_poly_of_prefix_step](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/pickup-poly-of-prefix-step--a2dd7dd6daa3ec48511cf158.md) | 78 | `result-track:a2dd7dd6daa3ec48511cf15880de387c09f11cfa4d3a32e97919106138f27cd4` |
| 11 | `theorem` | [pickupEnergyPoly_of_prefix_reverberation](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/pickupenergypoly-of-prefix-reverberation--a19d115ebe03837a92749212.md) | 113 | `result-track:a19d115ebe03837a92749212d66444ea5707090eeb099f81858868ae75548976` |
| 12 | `theorem` | [p04_of_prefix_reverberation](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/p04-of-prefix-reverberation--c8a602d35c8cb060bcfbfd6d.md) | 164 | `result-track:c8a602d35c8cb060bcfbfd6dc03a88250b3bfc827ea3a818c76baf360f8510e9` |
| 13 | `theorem` | [riemannHypothesis_of_prefix_reverberation](../../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/declarations/riemannhypothesis-of-prefix-reverberation--fb4a3a878f8717a267d974f2.md) | 169 | `result-track:fb4a3a878f8717a267d974f2211d47503a087931a283c630a383f6f3620494ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
