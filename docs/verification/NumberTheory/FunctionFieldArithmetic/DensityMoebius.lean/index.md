# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebius

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d1b16e34acf75034e641c5fcbfb014b2547b8e7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d1b16e34acf75034e641c5fcbfb014b2547b8e7`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moebiusReal](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/moebiusreal--2224f9bd53a403f1fedbdef1.md) | 17 | `declaration-track:2224f9bd53a403f1fedbdef1513f91933db8bdb232f7bfb4664274f8281135e0` |
| 2 | `def` | [densityPrimeWeight](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/densityprimeweight--1e7781ef631002b711585a31.md) | 18 | `declaration-track:1e7781ef631002b711585a317479ea0ec30e71218d4d7a806e4b62d08449d672` |
| 3 | `def` | [densityMobiusCoefficient](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/densitymobiuscoefficient--4fcb3afc46ac61d5496b8b4b.md) | 19 | `declaration-track:4fcb3afc46ac61d5496b8b4ba68be1cfed0bb593f19bf6da936523a91ac951c8` |
| 4 | `def` | [densityClosedInventory](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/densityclosedinventory--7d134124dce12aba9a058539.md) | 20 | `declaration-track:7d134124dce12aba9a0585394af711f0ea459e09ef7cb6c76c1d863385c1459f` |
| 5 | `theorem` | [density_mobius_coefficient_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/density-mobius-coefficient-one--d93b5cda13bcc15f51f49466.md) | 22 | `result-track:d93b5cda13bcc15f51f49466fa23dad9469c96c072feceadb4fe149e3b8b1b64` |
| 6 | `theorem` | [density_mobius_coefficient_zero](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/density-mobius-coefficient-zero--9e1e4c27f04425f89652446f.md) | 24 | `result-track:9e1e4c27f04425f89652446ff4c144f6aa993e6e6ac87606a8a07f64c92fe1c1` |
| 7 | `theorem` | [density_mobius_coefficient_prime](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/density-mobius-coefficient-prime--6605d624e7224684f07e892d.md) | 26 | `result-track:6605d624e7224684f07e892d654b5e1a079ff34f507a9e1a0629b3dd6eab29b5` |
| 8 | `theorem` | [density_mobius_coefficient_zero_of_not_squarefree](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/density-mobius-coefficient-zero-of-not-squarefree--37c49357b9d67ee121ecc0a4.md) | 30 | `result-track:37c49357b9d67ee121ecc0a41787509079060bf2c0527a630d41ecf4cde32d67` |
| 9 | `theorem` | [density_prime_weight_mul_of_coprime](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/density-prime-weight-mul-of-coprime--86506a55f906c1934f597f15.md) | 34 | `result-track:86506a55f906c1934f597f1525eb164c8b54cb27c6c13c643bbce671853baace` |
| 10 | `theorem` | [density_coefficient_mul_of_coprime](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/density-coefficient-mul-of-coprime--6c07070e5200c84a3225a30a.md) | 38 | `result-track:6c07070e5200c84a3225a30ac80a2f57741f4d52801bd245c2ac125de9f06a96` |
| 11 | `theorem` | [density_coefficient_mul_zero_of_not_coprime](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/density-coefficient-mul-zero-of-not-coprime--82f18731e51dd8c6488a613c.md) | 46 | `result-track:82f18731e51dd8c6488a613cd757d19832629cbc5464928f24ef44fd11f4459a` |
| 12 | `theorem` | [density_coefficient_mul_restricted](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/declarations/density-coefficient-mul-restricted--bf9764d675f55c82c8f513ae.md) | 49 | `result-track:bf9764d675f55c82c8f513aed39899316fe0b988aad24342bdef4b462e5fc64a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
