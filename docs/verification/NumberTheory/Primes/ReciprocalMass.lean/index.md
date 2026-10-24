# Verification target: GRWTSK.NumberTheory.Prime.ReciprocalMass

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f20f7dc568798f47a70048e03ffdd4723f2b550",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Prime/ReciprocalMass.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f20f7dc568798f47a70048e03ffdd4723f2b550`.

Source path: `GRWTSK/NumberTheory/Prime/ReciprocalMass.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Prime/ReciprocalMass.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimeFactorFilters`](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicPrimeMass](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/harmonicprimemass--c40835d92c6a7da2df0d6e10.md) | 16 | `declaration-track:c40835d92c6a7da2df0d6e10dff7291c4bdf364464f3b3341cfc600fee3fdf02` |
| 2 | `theorem` | [harmonicPrimeMass_nonneg](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/harmonicprimemass-nonneg--6f8855135f588f7e41efd38e.md) | 18 | `result-track:6f8855135f588f7e41efd38e490912f8f5a297a7ecc903e6307d59915b3dd4ff` |
| 3 | `def` | [massWeight](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/massweight--b8555cf576569f94044aa9f4.md) | 23 | `declaration-track:b8555cf576569f94044aa9f46ed26a62c95549397d4d042568905d9dc8287340` |
| 4 | `def` | [massDensity](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/massdensity--9368319be921c6eb9a6bdc0e.md) | 24 | `declaration-track:9368319be921c6eb9a6bdc0e9304aea90461f16fd657edef4f72a146b5535429` |
| 5 | `def` | [massPrimitive](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/massprimitive--7daaaaf0bd377f3cde0714b7.md) | 25 | `declaration-track:7daaaaf0bd377f3cde0714b7482f0881e5d2985f9a3fc317f8da47968a38b529` |
| 6 | `theorem` | [massWeight_deriv](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/massweight-deriv--14e6074ea862b78254f5c026.md) | 27 | `result-track:14e6074ea862b78254f5c02653ed996bfc714b6f4ede89dc65e6dade2ceecec7` |
| 7 | `theorem` | [massPrimitive_deriv](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/massprimitive-deriv--220be1bc208a8d70526cb1f8.md) | 36 | `result-track:220be1bc208a8d70526cb1f899010d8b7a002a8ad386a62d2db3119151ade053` |
| 8 | `theorem` | [prime_mass_abel](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/prime-mass-abel--e87c13ff41a321618486ab79.md) | 46 | `result-track:e87c13ff41a321618486ab7958abba460735e2e50b74b6ca06e0df0716f5ba91` |
| 9 | `theorem` | [prime_mass_bound](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/prime-mass-bound--e029f12b9cd5df13e68f9d34.md) | 77 | `result-track:e029f12b9cd5df13e68f9d3441c323950e01a422d3fabef49861539f3d246e4a` |
| 10 | `theorem` | [harmonicPrimeMass_log_bound](../../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/declarations/harmonicprimemass-log-bound--84cacbe15d2be6daaacd3a78.md) | 136 | `result-track:84cacbe15d2be6daaacd3a7872972991760ad747fdf1e9f7ec371e7fa463bad8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
