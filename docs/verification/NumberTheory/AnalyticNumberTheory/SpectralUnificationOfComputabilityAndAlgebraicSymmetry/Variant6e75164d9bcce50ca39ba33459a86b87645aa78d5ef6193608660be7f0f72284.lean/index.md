# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0650d99ed8929b18de14c0caf38ed073c52b5b98",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0650d99ed8929b18de14c0caf38ed073c52b5b98`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeFirstMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/primefirstmoment--fa80dde69354dd031bf122b5.md) | 24 | `declaration-track:fa80dde69354dd031bf122b5c1f2827ba74a3a1ecc676e98cc16cbacb3e8fe6e` |
| 2 | `def` | [evenPowerMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/evenpowermoment--3407a70f8bd17d83dd4df8f0.md) | 30 | `declaration-track:3407a70f8bd17d83dd4df8f0c8196e9a68d490b54b3f4397679b79b0123c8132` |
| 3 | `def` | [oddHigherMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/oddhighermoment--b225a6c5e5745e1c168a1015.md) | 35 | `declaration-track:b225a6c5e5745e1c168a1015c80cd1b2a8f0431e41747e2a989b8eb00dc374a1` |
| 4 | `theorem` | [square_cutoff_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/square-cutoff-iff--a317821a4b6bf8ae52688353.md) | 43 | `result-track:a317821a4b6bf8ae5268835364637ab1978f555b4e119ad5fc7d72a9387e64c3` |
| 5 | `theorem` | [square_mem_inventory_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/square-mem-inventory-iff--28e05456a6b408f098951aeb.md) | 49 | `result-track:28e05456a6b408f098951aebd7b4407f9c27a464685d9855b2396736c9c0d297` |
| 6 | `theorem` | [sum_square_inventory](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/sum-square-inventory--698197e08360cab664def544.md) | 63 | `result-track:698197e08360cab664def544ac8baeea60280632fee2a306a9f872de5f63a31f` |
| 7 | `theorem` | [odd_power_properties](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/odd-power-properties--54977483608195cdf082a955.md) | 82 | `result-track:54977483608195cdf082a955837466f446d7b5259737c1570c6f2019bed94f1d` |
| 8 | `theorem` | [sum_odd_prime_power_inventory](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/sum-odd-prime-power-inventory--402fee96204255771dda00be.md) | 97 | `result-track:402fee96204255771dda00bea3216ebd9abd008c2d2820a08d4d486d756956ea` |
| 9 | `def` | [sourceTerm](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/sourceterm--f2d2731e5496dd1b2f43335d.md) | 153 | `declaration-track:f2d2731e5496dd1b2f43335d66a4cf0acd9a41a3bddd5eaef24015060df86221` |
| 10 | `theorem` | [sourceTerm_partition](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/sourceterm-partition--f13d7ecf1082056286ba91af.md) | 157 | `result-track:f13d7ecf1082056286ba91affe51a47c0d2bd3045e5d6d2c1cf319bf4813f02a` |
| 11 | `theorem` | [sourceTerm_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/sourceterm-prime--ce00f8ef01ce89c2e74c2360.md) | 177 | `result-track:ce00f8ef01ce89c2e74c23607b03b550b867f63b34aea16cf913caff11fc9770` |
| 12 | `theorem` | [sourceTerm_square](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/sourceterm-square--eb3e60adcf7b81c512dc01f9.md) | 182 | `result-track:eb3e60adcf7b81c512dc01f9c2a80ff06efbf5b97ac0d50442a6b166d686fdf1` |
| 13 | `theorem` | [sourceTerm_odd_power](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/sourceterm-odd-power--f7e635ecc5fbd1e68d0f0167.md) | 188 | `result-track:f7e635ecc5fbd1e68d0f01674143339ec34ff7b5d7c51d30083660273377ebac` |
| 14 | `theorem` | [closedPrimeMoment_eq_prime_power_sectors](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/closedprimemoment-eq-prime-power-sectors--d1e0fff40a9d6a5127912c59.md) | 196 | `result-track:d1e0fff40a9d6a5127912c59eb4e7a414e74bab5781163425da8d32a8ce818af` |
| 15 | `theorem` | [mertensResidual_eq_prime_power_sectors](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/mertensresidual-eq-prime-power-sectors--eb518993d4c3d90a5f55ff76.md) | 231 | `result-track:eb518993d4c3d90a5f55ff762ed7ff0f9bed6216a2a9465ca305c38b5abbeb79` |
| 16 | `theorem` | [primePowerContribution_eq_prime_power_sectors](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/declarations/primepowercontribution-eq-prime-power-sectors--cd99c881f0a4c05d380765f8.md) | 236 | `result-track:cd99c881f0a4c05d380765f851dd92fee1e84d4540ee39aff09f69da8c498341` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
