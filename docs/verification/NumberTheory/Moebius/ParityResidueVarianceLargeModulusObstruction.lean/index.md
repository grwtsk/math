# Verification target: GRWTSK.NumberTheory.Moebius.ParityResidueVarianceLargeModulusObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d1ec38cf19de026fec5a6303c686037851a750f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d1ec38cf19de026fec5a6303c686037851a750f`.

Source path: `GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ParityFourierResidueVariance`](../../../../mathematics/NumberTheory/Moebius/ParityFourierResidueVariance.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squarefreeMobiusMass](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/squarefreemobiusmass--571875db58d4ded746fb94b7.md) | 52 | `declaration-track:571875db58d4ded746fb94b7f541fda56c71ba13fc0d2b3c640bff7dd1d40613` |
| 2 | `theorem` | [squarefreeMobiusMass_eq_parityDiagonals](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/squarefreemobiusmass-eq-paritydiagonals--aca77664425f3cc22954ac31.md) | 57 | `result-track:aca77664425f3cc22954ac315a5f3e84651b8a3a9152c5799ffc088f8c5f072b` |
| 3 | `theorem` | [abs_moebiusReal_eq_sq](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/abs-moebiusreal-eq-sq--acff4b0b578b3d93314bdad3.md) | 82 | `result-track:acff4b0b578b3d93314bdad3d9788e906468531760cc10fc6e5467d14b8a16e9` |
| 4 | `theorem` | [abs_parityMertensPrefix_le_squarefreeDiagonal](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/abs-paritymertensprefix-le-squarefreediagonal--b724a636d5e194de0bbc27f1.md) | 99 | `result-track:b724a636d5e194de0bbc27f1e827677cc4ad0755b6e054fe7ab28d38033a7f10` |
| 5 | `theorem` | [parityMertensSquares_le_squarefreeMobiusMass_sq](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/paritymertenssquares-le-squarefreemobiusmass-sq--1279aa94b635ba6729a9b8ea.md) | 115 | `result-track:1279aa94b635ba6729a9b8ea4c841c572632f16ed1eb810e981a3b414a36bf0d` |
| 6 | `theorem` | [parityHalfResidue_injective_of_half_lt_square](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/parityhalfresidue-injective-of-half-lt-square--34fede0bbfaacbc8c81f73ca.md) | 139 | `result-track:34fede0bbfaacbc8c81f73caf41c887de12548fb8fb08192ded05eddebc3229c` |
| 7 | `theorem` | [sum_sq_indicatorFibres_eq_of_injOn](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/sum-sq-indicatorfibres-eq-of-injon--61a82c9a9e0a7e1fe1401246.md) | 166 | `result-track:61a82c9a9e0a7e1fe1401246b154b9da9f92c6db1d1ede684749ab757131e71b` |
| 8 | `theorem` | [parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/paritymertensresidueenergy-eq-squarefreediagonal-of-half-lt-square--92383d0fddec013dfa00b348.md) | 195 | `result-track:92383d0fddec013dfa00b348fe5d3ac8a4a7e8b79264966736200c6353f5078b` |
| 9 | `def` | [QuarterThreeQuarterSquarefreeMass](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/quarterthreequartersquarefreemass--072b57f70513f31da1efcb63.md) | 227 | `declaration-track:072b57f70513f31da1efcb63f54d21a3cf14a6a777bf800e9a8f96127ea1ae2e` |
| 10 | `theorem` | [parityResidueVarianceSum_ge_endpoint_div_64](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/parityresiduevariancesum-ge-endpoint-div-64--a6b4d84fd7d935530ae92179.md) | 234 | `result-track:a6b4d84fd7d935530ae92179a5c05e3dd33dc934cf0f1734096b927ce7c77c73` |
| 11 | `theorem` | [parityResidueVarianceDiagonalModulusMajorant_ge_endpoint_div_128](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/parityresiduevariancediagonalmodulusmajorant-ge-endpoint-div-128--4ca0ee271e115eaad6679108.md) | 288 | `result-track:4ca0ee271e115eaad6679108dd70afe5af150a48d4e183e60f94cc67078b9870` |
| 12 | `def` | [largeSquareModulusWindow](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/largesquaremoduluswindow--a9f249a4591ddb4c9448d215.md) | 310 | `declaration-track:a9f249a4591ddb4c9448d2152d503e2ade456fe1f42d926b0588208893e081ab` |
| 13 | `theorem` | [largeSquareModulusWindow_subset_effective](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/largesquaremoduluswindow-subset-effective--1c6dda2e341b71bfd3581ffa.md) | 316 | `result-track:1c6dda2e341b71bfd3581ffa3c30ca3fe8595769213c12b43e9212f60994be05` |
| 14 | `theorem` | [largeSquareModulusWindow_scale](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/largesquaremoduluswindow-scale--857dda373cbf5e6f9a448a9f.md) | 330 | `result-track:857dda373cbf5e6f9a448a9f01a6f87f88cfc3499d04d9e1549bb6d27cd07973` |
| 15 | `theorem` | [card_largeSquareModulusWindow_ge](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/card-largesquaremoduluswindow-ge--965f2ab5a4442f756979102c.md) | 355 | `result-track:965f2ab5a4442f756979102cf0aea85e7279e26dd542508e3b3c37a1658fb695` |
| 16 | `theorem` | [parityResidueVarianceDiagonalModulusMajorant_nonneg](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/parityresiduevariancediagonalmodulusmajorant-nonneg--9395c8ae53dcb081bfd40417.md) | 363 | `result-track:9395c8ae53dcb081bfd404179e265e0bc97799e2ad319be0ca2b5f1b599a2fd3` |
| 17 | `theorem` | [parityResidueVarianceDiagonalEndpointMajorant_ge_window](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/parityresiduevariancediagonalendpointmajorant-ge-window--a0d9c2a9ff136c1375e02229.md) | 381 | `result-track:a0d9c2a9ff136c1375e02229588e18bec98a6964854ac63ac049743409e10141` |
| 18 | `theorem` | [parityResidueVarianceDiagonalEndpointMajorant_ge_cubic](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/parityresiduevariancediagonalendpointmajorant-ge-cubic--f771186fb14a7aeef24bc6ec.md) | 430 | `result-track:f771186fb14a7aeef24bc6ec54622990833297d1ee7aa7e407ae22d3cfd3c27a` |
| 19 | `def` | [EventuallyQuarterThreeQuarterSquarefreeMass](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/eventuallyquarterthreequartersquarefreemass--52d86d8a869906e78ae5cb52.md) | 462 | `declaration-track:52d86d8a869906e78ae5cb52004d32aa2d17d3fe33ff10a6d5e5ea95f6ddc058` |
| 20 | `def` | [DyadicQuarterPowerOutgrowth](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/dyadicquarterpoweroutgrowth--b1d772db6ff144327c8ebc45.md) | 471 | `declaration-track:b1d772db6ff144327c8ebc45c34fa8d3d4381c8a9ec90044c1a30b16aa0deddc` |
| 21 | `theorem` | [not_dyadicNaturalScaleParityResidueVarianceDiagonalBudget](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/not-dyadicnaturalscaleparityresiduevariancediagonalbudget--621563799dae2c812e6e54d1.md) | 483 | `result-track:621563799dae2c812e6e54d159df30f26046d84d54b5a33236f7634cda59a2de` |
| 22 | `def` | [PositiveResidueVarianceNaturalScaleRefutedAtScope](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/positiveresiduevariancenaturalscalerefutedatscope--c5e97f7a4ff91141b190ce86.md) | 510 | `declaration-track:c5e97f7a4ff91141b190ce8636992d19e4c9242d6c3b75257da48e6ae49eaf04` |
| 23 | `theorem` | [positiveResidueVarianceNaturalScaleRefutedAtScope](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/positiveresiduevariancenaturalscalerefutedatscope--6cece3ca3c68d4d9a2440063.md) | 516 | `result-track:6cece3ca3c68d4d9a2440063e68836265a3ab85f46c797036b3605b9d2c4c882` |
| 24 | `structure` | [SignedSquareDiagonalCancellationRepair](../../../../mathematics/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/declarations/signedsquarediagonalcancellationrepair--89fab2a741e7a9bbe8c08f48.md) | 524 | `declaration-track:89fab2a741e7a9bbe8c08f483f457839bc8fd2f479674a811be6b896abf84c54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
