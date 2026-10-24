# Verification target: GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerCounts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a5706924210c3aba8f55917e08acef8ef431c2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a5706924210c3aba8f55917e08acef8ef431c2`.

Source path: `GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift`](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reducedResidue_mem](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/reducedresidue-mem--cc606d87dbb37badba4f4f04.md) | 27 | `result-track:cc606d87dbb37badba4f4f04883e639eaed58054ca800855bc8e165d3a45df30` |
| 2 | `theorem` | [quadraticPlusOneRootCount_eq_zero_of_dvd](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusonerootcount-eq-zero-of-dvd--404acf55cb60348cce436255.md) | 44 | `result-track:404acf55cb60348cce436255f24e10b76933cb9e76f602f90a322159ec6f455e` |
| 3 | `theorem` | [quadraticPlusOneRootCount_primePower_eq_prime](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusonerootcount-primepower-eq-prime--6de7146ad85845342dd98223.md) | 58 | `result-track:6de7146ad85845342dd98223b5c736128b54bdcb02758dd51428252a89690b57` |
| 4 | `theorem` | [quadraticPlusOneRootCount_primePower_mod_four_one](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusonerootcount-primepower-mod-four-one--52ef2d67770f562f10e9c79c.md) | 70 | `result-track:52ef2d67770f562f10e9c79ca6d8bdf6af92d66c519805d7c2885d5dac9b5b14` |
| 5 | `theorem` | [quadraticPlusOneRootCount_primePower_mod_four_three](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusonerootcount-primepower-mod-four-three--264e08c8839ec38e99a3fa43.md) | 82 | `result-track:264e08c8839ec38e99a3fa430efecf6883f17e1c66886e5992cc0fddb4cdc137` |
| 6 | `theorem` | [quadraticPlusOneRootCount_four](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusonerootcount-four--a9c454a3610a3f5e6710d42c.md) | 94 | `result-track:a9c454a3610a3f5e6710d42c71e079137be502f4f159305cef22bed69b02e584` |
| 7 | `theorem` | [quadraticPlusOneRootCount_two_power](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusonerootcount-two-power--d555ded18c45b5f539539d92.md) | 99 | `result-track:d555ded18c45b5f539539d92bbe591b892326d375db1e65004f5ad1e68c77573` |
| 8 | `theorem` | [quadraticPlusOneRootCount_two_power_iff](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusonerootcount-two-power-iff--9fcc33c2759d5f02843e61ea.md) | 111 | `result-track:9fcc33c2759d5f02843e61ea2d8adfc2d0afcc89e651c35f246011824ffb8d14` |
| 9 | `def` | [quadraticPlusOnePrimePowerDensity](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusoneprimepowerdensity--59fbe319104ba71515b54f3f.md) | 122 | `declaration-track:59fbe319104ba71515b54f3f4192c6fd6b4bf00a2e6dcb94314c7a0ffc532ae9` |
| 10 | `theorem` | [quadraticPlusOnePrimePowerDensity_mod_four_one](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusoneprimepowerdensity-mod-four-one--75ca38325035b0c3e91d9beb.md) | 126 | `result-track:75ca38325035b0c3e91d9beb22f1f1fc6c81866c22bf4230d677a0010f93ff88` |
| 11 | `theorem` | [quadraticPlusOnePrimePowerDensity_mod_four_three](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/declarations/quadraticplusoneprimepowerdensity-mod-four-three--3b037ef304c153d076c61777.md) | 136 | `result-track:3b037ef304c153d076c617776ad95095f7bcd6703b4224baf0b4c5020cc25880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
