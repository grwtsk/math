# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebius

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d1b16e34acf75034e641c5fcbfb014b2547b8e7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityMoebius.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d1b16e34acf75034e641c5fcbfb014b2547b8e7`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DensityMoebius.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DensityMoebius.lean.json)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moebiusReal](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/moebiusreal--80a88ede3bcfedb8b65971cb.md) | 17 | `declaration-track:80a88ede3bcfedb8b65971cb82879caeea33fc015dc95716f941ab187e99e8c2` |
| 2 | `def` | [densityPrimeWeight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/densityprimeweight--79856706bed8d54f4174fa4d.md) | 18 | `declaration-track:79856706bed8d54f4174fa4d5a4e38861c0222447628a8f2deedf593b462f0e4` |
| 3 | `def` | [densityMobiusCoefficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/densitymobiuscoefficient--c0fe3126e213c60003929dcc.md) | 19 | `declaration-track:c0fe3126e213c60003929dcc28eb60d771c3d36e60c8e4574b958de0adafe195` |
| 4 | `def` | [densityClosedInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/densityclosedinventory--ebe9ca22dfede45f9d547af5.md) | 20 | `declaration-track:ebe9ca22dfede45f9d547af5997038b3669c336bd1c527ea0c163898a3f5526c` |
| 5 | `theorem` | [density_mobius_coefficient_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/density-mobius-coefficient-one--2cf1690c001d9793a4d394e1.md) | 22 | `result-track:2cf1690c001d9793a4d394e1efe72aaa094cbf91d10c768b978deffbd30f4420` |
| 6 | `theorem` | [density_mobius_coefficient_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/density-mobius-coefficient-zero--0110e90d13296474d373a97f.md) | 24 | `result-track:0110e90d13296474d373a97f14e426b7a8e673f6174fd6172b7bd69988b85545` |
| 7 | `theorem` | [density_mobius_coefficient_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/density-mobius-coefficient-prime--79b38c1b3a3282b1873ad972.md) | 26 | `result-track:79b38c1b3a3282b1873ad9722dc8d88dc54d2cdd158890d8efda10bb81f37c4a` |
| 8 | `theorem` | [density_mobius_coefficient_zero_of_not_squarefree](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/density-mobius-coefficient-zero-of-not-squarefree--d91cef02f7a745f2f4704b9a.md) | 30 | `result-track:d91cef02f7a745f2f4704b9af8e8c725d0f2304b122785b8229aac71c3f15126` |
| 9 | `theorem` | [density_prime_weight_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/density-prime-weight-mul-of-coprime--acef5591b7379c212bcc9bc0.md) | 34 | `result-track:acef5591b7379c212bcc9bc046354225a861a7f5e1b9bc19d958ef7598040fa4` |
| 10 | `theorem` | [density_coefficient_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/density-coefficient-mul-of-coprime--98011ca0562279af2913834e.md) | 38 | `result-track:98011ca0562279af2913834e45a3930228f280863f77529506dcb678808d4ada` |
| 11 | `theorem` | [density_coefficient_mul_zero_of_not_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/density-coefficient-mul-zero-of-not-coprime--e8853f1ef520703499cadfef.md) | 46 | `result-track:e8853f1ef520703499cadfef94cd05b0fa73323b906c216082e990272177009c` |
| 12 | `theorem` | [density_coefficient_mul_restricted](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/declarations/density-coefficient-mul-restricted--ef444f16956ee0c1a9fcca72.md) | 49 | `result-track:ef444f16956ee0c1a9fcca724b8882394b76ffcc9e7e7e9af736f446da7a170f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
