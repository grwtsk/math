# Verification target: GRWTSK.Algebra.LinearAlgebra.PrimeSpokes.Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab520faaf8a764bc19c20303357d21dfb72060fe",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab520faaf8a764bc19c20303357d21dfb72060fe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Reflection` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimeSpoke](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean/declarations/finiteprimespoke--84f2673446dca5c4b255293a.md) | 32 | `declaration-track:84f2673446dca5c4b255293a83f34e0ce617a018f4d2947a0e64a1c8bf95bbaa` |
| 2 | `def` | [FinitePrimeSpoke.characterValue](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean/declarations/finiteprimespoke-charactervalue--2e384334748b2d843744f9ac.md) | 40 | `declaration-track:2e384334748b2d843744f9acd4af102de3e451eb23a9731aebb7cfc6fcb89ca9` |
| 3 | `def` | [finitePrimeSpokeBlock](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean/declarations/finiteprimespokeblock--44ba96f895afa58c3a35719b.md) | 46 | `declaration-track:44ba96f895afa58c3a35719b91117c73ed6b1058ac7858d7b4e59b32068e690d` |
| 4 | `theorem` | [finitePrimeSpokeBlock_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean/declarations/finiteprimespokeblock-selfadjoint--393051db14b7a63884422ed6.md) | 52 | `result-track:393051db14b7a63884422ed647452e5261bd8682d49a1d465c68b3e4bbdb99c5` |
| 5 | `def` | [finitePrimeSpokeOperator](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean/declarations/finiteprimespokeoperator--98d7d9155f87f3b6b189497f.md) | 63 | `declaration-track:98d7d9155f87f3b6b189497fdc0dfda1632044dbbd0ee8c915909dd67eb6935a` |
| 6 | `theorem` | [finitePrimeSpokeOperator_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/PrimeSpokes/Variant4cc196f661474cf2c2c1f3fb76e40f8f00c1b942eea05dcfd18ba93094c02520.lean/declarations/finiteprimespokeoperator-selfadjoint--82cfc2e373f07d072d465f8a.md) | 70 | `result-track:82cfc2e373f07d072d465f8a0ead32c64705fd1dc4bab1287766215a121b1bd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
