# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prime.Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf1f3761caa0fd5cf17b4354045e71fb2e58dbb4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf1f3761caa0fd5cf17b4354045e71fb2e58dbb4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_prime_mul_of_ble](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/not-prime-mul-of-ble--748fb32938eeaf2c362d2dcc.md) | 39 | `result-track:748fb32938eeaf2c362d2dcc212d728ab6ca2e46398bc53eec6afa9a9d69a856` |
| 2 | `def` | [deriveNotPrime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/derivenotprime--d61f136ea062f6c8354393f2.md) | 45 | `declaration-track:d61f136ea062f6c8354393f290764801a7e343b8e749ac4970ac4f7cc7394e3f` |
| 3 | `def` | [MinFacHelper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/minfachelper--b9bfb5647550ac43fba2b51d.md) | 53 | `declaration-track:b9bfb5647550ac43fba2b51d3a290704cd3ccc30277c3f6017231a159dad0326` |
| 4 | `theorem` | [MinFacHelper.one_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/minfachelper-one-lt--d4f16bba4e9672fdb1c8fcf1.md) | 56 | `result-track:d4f16bba4e9672fdb1c8fcf17af41972719602cb32d14c67cd531a17671f9cdf` |
| 5 | `theorem` | [minFacHelper_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/minfachelper-0--8b1425b697bbc7dfc0bbbfb7.md) | 64 | `result-track:8b1425b697bbc7dfc0bbbfb797b546c31195769dbd625208936ca9509608c4b8` |
| 6 | `theorem` | [minFacHelper_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/minfachelper-1--b6efacc1e43f370a03b86762.md) | 73 | `result-track:b6efacc1e43f370a03b867626953429e8ced68c951116ef4972bdb20ba0e67d6` |
| 7 | `theorem` | [minFacHelper_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/minfachelper-2--3bccfb4bcf608fedf7418ec5.md) | 90 | `result-track:3bccfb4bcf608fedf7418ec5ba21f6e1a99effa5546a3067b7a09f2b8284d773` |
| 8 | `theorem` | [minFacHelper_3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/minfachelper-3--7f42d5144fbdd25a7fd8de66.md) | 96 | `result-track:7f42d5144fbdd25a7fd8de666a3f13e4f7d1f7577d176d3b0c6cda052e6ce17b` |
| 9 | `theorem` | [isNat_minFac_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/isnat-minfac-1--3dcbaaff4ee0e56b36434d18.md) | 103 | `result-track:3dcbaaff4ee0e56b36434d187ce42e358efc3a4c6d16e053c7709d2e18e50575` |
| 10 | `theorem` | [isNat_minFac_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/isnat-minfac-2--0f6adf4611dc5c20d31e2de8.md) | 106 | `result-track:0f6adf4611dc5c20d31e2de87e35a82453239b883e62037047412ed13fa50323` |
| 11 | `theorem` | [isNat_minFac_3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/isnat-minfac-3--f2e80614cc56046f6476fdad.md) | 109 | `result-track:f2e80614cc56046f6476fdad60281bced1f0b05ed34a7a21db2cd205cebe5997` |
| 12 | `theorem` | [isNat_minFac_4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/isnat-minfac-4--c923da0fa2959152c2c6a7d8.md) | 115 | `result-track:c923da0fa2959152c2c6a7d82d3bbd5e6586f0efd4e0fe99d1fb780e12b8cfc9` |
| 13 | `def` | [evalMinFac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/evalminfac--188640053af149beb68fbcc5.md) | 128 | `declaration-track:188640053af149beb68fbcc5ea18f21c81e8cccabeada09d06af604ff29b5852` |
| 14 | `theorem` | [isNat_prime_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/isnat-prime-0--d363c47ccf00a83c5678972e.md) | 173 | `result-track:d363c47ccf00a83c5678972edbe6d406ae9ba3e158f1757a39db40cd3b74dea7` |
| 15 | `theorem` | [isNat_prime_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/isnat-prime-1--b5b8de9cfa91d2921d7d8208.md) | 176 | `result-track:b5b8de9cfa91d2921d7d8208a93e46a1ce4bda100f87329da305287f7b282451` |
| 16 | `theorem` | [isNat_prime_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/isnat-prime-2--58861aa59dfca8a2ccb0ddc7.md) | 179 | `result-track:58861aa59dfca8a2ccb0ddc711b0a2afaf04047b43666ddb32297f4275c13eea` |
| 17 | `theorem` | [isNat_not_prime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/isnat-not-prime--0c23314860ca7d6a7c00ed80.md) | 183 | `result-track:0c23314860ca7d6a7c00ed80a96c3dd29255c5da81ca913119664782623a491a` |
| 18 | `def` | [evalNatPrime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/declarations/evalnatprime--b063b95876ea504e226b0403.md) | 186 | `declaration-track:b063b95876ea504e226b0403ad5f134486809a0a3f4ac26c031f869b04fa70ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
