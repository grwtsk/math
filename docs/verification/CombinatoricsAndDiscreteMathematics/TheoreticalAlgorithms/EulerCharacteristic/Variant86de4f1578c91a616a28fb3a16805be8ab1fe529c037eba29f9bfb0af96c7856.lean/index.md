# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EulerCharacteristic.Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0752fe243668de4dee9b26c5772d32693e91d6dc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0752fe243668de4dee9b26c5772d32693e91d6dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sphereEuler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/sphereeuler--c0b0f4344f2765be6cb7ffaf.md) | 22 | `declaration-track:c0b0f4344f2765be6cb7ffaf4640abf1755f9a4865bd36d58dd0613d4277a476` |
| 2 | `structure` | [Dimension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/dimension--1a46025a6b6c6e303e65f7be.md) | 26 | `declaration-track:1a46025a6b6c6e303e65f7be6dc43228be3d62a9d6b57b01f5583f63e6970d9d` |
| 3 | `def` | [ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/ambient--0049decaf15c055e60393041.md) | 34 | `declaration-track:0049decaf15c055e603930413dfdc3a396cbf9740b7773bb55412fa062e40d83` |
| 4 | `def` | [eulerChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/eulerchange--8a322d160e373ba4245bde30.md) | 38 | `declaration-track:8a322d160e373ba4245bde30538adf4785b2270e1c911c2b17f89f133b41e3b0` |
| 5 | `theorem` | [eulerChange_eq_sign_difference](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/eulerchange-eq-sign-difference--0101c507dac35c03d3adc511.md) | 42 | `result-track:0101c507dac35c03d3adc51100ab8314638b3c5d23b73fc601bab92d91a785ac` |
| 6 | `theorem` | [eulerChange_eq_zero_of_odd_ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/eulerchange-eq-zero-of-odd-ambient--412e0c71bca118e4104f51e6.md) | 49 | `result-track:412e0c71bca118e4104f51e62ba866ba56857425bb3537de13f6f48745af7188` |
| 7 | `theorem` | [eulerChange_eq_two_mul_sign_of_even_ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/eulerchange-eq-two-mul-sign-of-even-ambient--2e7355dc228860b33aae22e3.md) | 76 | `result-track:2e7355dc228860b33aae22e3ee19f76fadd56d1201db63a650d0fea2ecbaff86` |
| 8 | `theorem` | [eulerChange_eq_zero_of_odd_dimension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/eulerchange-eq-zero-of-odd-dimension--de3cd29bcb16dc938e11c7a8.md) | 104 | `result-track:de3cd29bcb16dc938e11c7a8466dddc463ebb8ae437268836e29c256df0e38ea` |
| 9 | `theorem` | [eulerChange_eq_two_mul_sign_of_even_dimension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/eulerchange-eq-two-mul-sign-of-even-dimension--e3b8f055118bb1c0a49b672c.md) | 113 | `result-track:e3b8f055118bb1c0a49b672c13a55775c1c01476fbb7d7e11f72577a8a716cb1` |
| 10 | `structure` | [EulerGluingData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/eulergluingdata--5642537b4197142251a0bc38.md) | 131 | `declaration-track:5642537b4197142251a0bc38899cc3bcd663d7b5a03625eb54712f5e0265f409` |
| 11 | `theorem` | [difference_eq_eulerChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/difference-eq-eulerchange--34ac5ba8b7398a7839fc5cbb.md) | 144 | `result-track:34ac5ba8b7398a7839fc5cbb98790f5ad8baa0257de087d9c557d6ae057a3e5f` |
| 12 | `theorem` | [surgered_eq_original_of_odd_ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/surgered-eq-original-of-odd-ambient--843e8762c1a3dce528ad538f.md) | 153 | `result-track:843e8762c1a3dce528ad538ffb9efffecd5aa11cbc00aa267a51c3d24d684456` |
| 13 | `theorem` | [difference_eq_two_mul_sign_of_even_ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/difference-eq-two-mul-sign-of-even-ambient--096b94f7a8820dd393d1020a.md) | 164 | `result-track:096b94f7a8820dd393d1020aa4ab79f3397fef9e8b3bd16b898fca3ac3bbc5c9` |
| 14 | `def` | [familyEulerChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/familyeulerchange--eadccb53b82c69cd6d4ca69a.md) | 176 | `declaration-track:eadccb53b82c69cd6d4ca69a138b5a7cc218ceef0b5f6c6547fbd1032ac2926f` |
| 15 | `theorem` | [familyEulerChange_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/familyeulerchange-nil--9b8bcdce4bd1c5ac0c1c53c4.md) | 180 | `result-track:9b8bcdce4bd1c5ac0c1c53c4b3fa256aa6f39702b6d4ed397c75a4ee436bc761` |
| 16 | `theorem` | [familyEulerChange_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/familyeulerchange-cons--862a82a9ab3dae915076c498.md) | 185 | `result-track:862a82a9ab3dae915076c498dee654e90872c3caf4936194e8b1783046361b13` |
| 17 | `theorem` | [familyEulerChange_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/familyeulerchange-append--904ccd26351b62515dc1f4df.md) | 194 | `result-track:904ccd26351b62515dc1f4dfff2eb2df25366944a6677c97a2668c6e0348206e` |
| 18 | `theorem` | [familyEulerChange_eq_sum_sign_differences](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/familyeulerchange-eq-sum-sign-differences--bfdd700b5da1542c3a1825a4.md) | 201 | `result-track:bfdd700b5da1542c3a1825a45ba07fc330cdf10759ad4859120e8cea0a65eca1` |
| 19 | `theorem` | [familyEulerChange_eq_zero_of_all_odd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/familyeulerchange-eq-zero-of-all-odd--ec598d826eed8f474002f726.md) | 216 | `result-track:ec598d826eed8f474002f72618214190f3f9230264de76ed55009fc807958003` |
| 20 | `theorem` | [familyEulerChange_eq_sum_even_signs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856.lean/declarations/familyeulerchange-eq-sum-even-signs--d80c7fec1e3cbacd5f27ab41.md) | 233 | `result-track:d80c7fec1e3cbacd5f27ab41b820c7c2886e041899410b4a9d8d16788ee96cf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
