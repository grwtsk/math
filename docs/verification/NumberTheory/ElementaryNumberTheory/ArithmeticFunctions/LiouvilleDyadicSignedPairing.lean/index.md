# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicSignedPairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c0bcfb623c68d0704260017d75b85dd41f7bc1d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c0bcfb623c68d0704260017d75b85dd41f7bc1d`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleOddLiftCanonicalTransport`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicSignedMixedEnergy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/declarations/dyadicsignedmixedenergy--06b420db4a00f65da5f466b4.md) | 47 | `declaration-track:06b420db4a00f65da5f466b426e3927c41c851783965c091e1d23b7918ab928a` |
| 2 | `theorem` | [oddLiftedMean_square_exact](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/declarations/oddliftedmean-square-exact--9c7eaaa546ce5c6145b88355.md) | 56 | `result-track:9c7eaaa546ce5c6145b88355b460fc570f9b0ac0fe93ae679a02ca84c6ab02a7` |
| 3 | `theorem` | [oddLiftedAllOrderEnergy_signed_identity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/declarations/oddliftedallorderenergy-signed-identity--a3007d27d5e2e8ae9906c614.md) | 90 | `result-track:a3007d27d5e2e8ae9906c614a855e8f83853bec62c7a3289bbdfb271dedef66f` |
| 4 | `theorem` | [canonicalOddLiftEnergy_signed_identity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/declarations/canonicaloddliftenergy-signed-identity--7026d6f52ad732e5f3a1c8fc.md) | 123 | `result-track:7026d6f52ad732e5f3a1c8fc19baa7fdacd846a5af41950b478d34dbe22b26a4` |
| 5 | `theorem` | [canonicalOddLiftEnergy_eq_signed_budget](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/declarations/canonicaloddliftenergy-eq-signed-budget--85c6b782a741b7c62ca7f746.md) | 136 | `result-track:85c6b782a741b7c62ca7f746f617572e30fcbd67c2c2ac7aff15790834b45c98` |
| 6 | `def` | [DyadicSignedMixedBudget](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/declarations/dyadicsignedmixedbudget--c1b1a56631b5dc9a2b1bb16c.md) | 149 | `declaration-track:c1b1a56631b5dc9a2b1bb16c3ce16a3ace24933ed175ed9c0400036b91c52d26` |
| 7 | `theorem` | [canonicalOddLiftEnergy_le_of_signed_budget](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/declarations/canonicaloddliftenergy-le-of-signed-budget--6543b9e8ecb9e408a4bd8c89.md) | 159 | `result-track:6543b9e8ecb9e408a4bd8c890647637a035158f64195528ab7c6df2261105024` |
| 8 | `theorem` | [canonicalOddLiftCyclicTV_le_of_signed_budget](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/declarations/canonicaloddliftcyclictv-le-of-signed-budget--938ed41b6989e9c7101f0483.md) | 170 | `result-track:938ed41b6989e9c7101f048399c280b5cd4e0a0d7f986de20bc9ae1d640512c0` |
| 9 | `theorem` | [dyadicSignedMixedEnergy_lower_bound](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/declarations/dyadicsignedmixedenergy-lower-bound--a5069eefe77011c7bae9f38d.md) | 195 | `result-track:a5069eefe77011c7bae9f38da66c1736b1deb6ea488c947951be9752a23d8afd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
