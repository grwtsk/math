# Verification target: GRWTSK.NumberTheory.Primes.LandauStatements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1a832db00a832bcdb7b1cd03b46faf30910fd27",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/LandauStatements.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1a832db00a832bcdb7b1cd03b46faf30910fd27`.

Source path: `GRWTSK/NumberTheory/Primes/LandauStatements.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/LandauStatements.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.ConfigurationCounts`](../../../../mathematics/NumberTheory/Primes/ConfigurationCounts.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Goldbach](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/goldbach--2de5ccfa2fbc6b623feb75f9.md) | 23 | `declaration-track:2de5ccfa2fbc6b623feb75f9bebd86e781e80c9f7e37a48367c7cf3ec49787c1` |
| 2 | `def` | [TwinPrimes](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/twinprimes--f2a153671a03210724166e27.md) | 28 | `declaration-track:f2a153671a03210724166e27120feaa051026e78e881fae2518f0b0bb207436c` |
| 3 | `def` | [Legendre](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/legendre--307b56091999227faffc5c9e.md) | 32 | `declaration-track:307b56091999227faffc5c9ea3138ced2d090c4604026ddb663e615623025827` |
| 4 | `def` | [QuadraticPrimeValues](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/quadraticprimevalues--72e89333f728bcbb74afd550.md) | 36 | `declaration-track:72e89333f728bcbb74afd5509ab24f66772c76dab41f40ae2cce263d96047e54` |
| 5 | `theorem` | [goldbach_iff_positive_counts](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/goldbach-iff-positive-counts--2da76fbbf61c79dc23938f3f.md) | 40 | `result-track:2da76fbbf61c79dc23938f3f3c60a0bd6f78abab6f8fe6b619fedb355b45c49d` |
| 6 | `theorem` | [twinPrimes_iff_positive_tails](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/twinprimes-iff-positive-tails--8b6afc93186691811b7e6b21.md) | 49 | `result-track:8b6afc93186691811b7e6b21227884b5a0e9896a1d47a81050723a1eea691bb3` |
| 7 | `theorem` | [legendre_iff_positive_counts](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/legendre-iff-positive-counts--17d64c6d2fca4b43e7918905.md) | 55 | `result-track:17d64c6d2fca4b43e791890594cd000161aa723cb897d68d5aa9047e87302954` |
| 8 | `theorem` | [quadraticPrimeValues_iff_positive_tails](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/quadraticprimevalues-iff-positive-tails--457e293ef662b2eb5a79bdfd.md) | 64 | `result-track:457e293ef662b2eb5a79bdfd6ffa708517f4bf457ac0cd884f56f3154034b14f` |
| 9 | `def` | [LegendreThrough](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/legendrethrough--0441a1a5c7a61ae16f465d0c.md) | 70 | `declaration-track:0441a1a5c7a61ae16f465d0c53eff39c7361d05feb7a8eef5b99011c6c110981` |
| 10 | `def` | [LegendreBeyond](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/legendrebeyond--5de98c958c3abec56571d0d1.md) | 74 | `declaration-track:5de98c958c3abec56571d0d12e6802a36f20ddc20eced8d26aad7d1fdd1b3340` |
| 11 | `theorem` | [legendre_of_prefix_and_tail](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/legendre-of-prefix-and-tail--08d1aed7b3b70c833f3e6fb7.md) | 78 | `result-track:08d1aed7b3b70c833f3e6fb785a52081108606f174b545fb9438c43cfcf68d00` |
| 12 | `theorem` | [legendre_through_of_legendre](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/declarations/legendre-through-of-legendre--ab99330f5aeb9b1e582da872.md) | 87 | `result-track:ab99330f5aeb9b1e582da872e52daf5ffe264b57d02b07ad402fdfaf0b5b0676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
