# Verification target: GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90a542761e2027420766f5d406882cea10c27c8d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DiagonalEnergyBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90a542761e2027420766f5d406882cea10c27c8d`.

Source path: `GRWTSK/NumberTheory/Moebius/DiagonalEnergyBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DiagonalEnergyBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [atom_upper_bound](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/declarations/atom-upper-bound--17a477221d98b485cd9d27fd.md) | 16 | `result-track:17a477221d98b485cd9d27fd4328e7e8d425c260cba75a707f42ef9b755dc818` |
| 2 | `theorem` | [atom_square_bound](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/declarations/atom-square-bound--894d29bc5148141abfef0d77.md) | 24 | `result-track:894d29bc5148141abfef0d775019b49cc07fbc28b417eeeef077e2a8c2a9e3af` |
| 3 | `theorem` | [gram_diagonal_bound](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/declarations/gram-diagonal-bound--8420baef75aca1bfe1840ef6.md) | 36 | `result-track:8420baef75aca1bfe1840ef60d05682002cdd9174b65bf15cc0e8cd5ec4b7873` |
| 4 | `theorem` | [realMoebius_square_le_one](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/declarations/realmoebius-square-le-one--b9f3c99477b945c22d2ae955.md) | 50 | `result-track:b9f3c99477b945c22d2ae9550438cefa2f337532a64c2d967349a4edc7f0aa9d` |
| 5 | `theorem` | [inventory_reciprocal_sum_bound](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/declarations/inventory-reciprocal-sum-bound--c55ba6147d9fcd80b18dac4f.md) | 53 | `result-track:c55ba6147d9fcd80b18dac4fa04cb96b9052be1939724c69946020eea50cfc0d` |
| 6 | `theorem` | [diagonal_quadratic_bound](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/declarations/diagonal-quadratic-bound--4d4af1f7bf1e966d923f4429.md) | 61 | `result-track:4d4af1f7bf1e966d923f4429e022915a7c0a786824029c4b571406f2d73141ee` |
| 7 | `theorem` | [diagonal_polynomial_bound](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/declarations/diagonal-polynomial-bound--9fe38b8d4e2e8c66d4b5e0ed.md) | 74 | `result-track:9fe38b8d4e2e8c66d4b5e0ed6996e80c350b7c1fb1f81de4a0dbb44e16e533c7` |
| 8 | `theorem` | [P04_implies_energy_polynomial](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/declarations/p04-implies-energy-polynomial--9a7e02a12ad0f61a71b67a6b.md) | 82 | `result-track:9a7e02a12ad0f61a71b67a6b2647ff4c3d93f4decdd6ce0756d0b9db91d2e7e9` |
| 9 | `theorem` | [P04_iff_energy_polynomial](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/declarations/p04-iff-energy-polynomial--0f96169a661dfa3489bc27e2.md) | 104 | `result-track:0f96169a661dfa3489bc27e23d3a389f3ab0819ade582bc0a52807ab04cfa26a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
