# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EulerCharacteristic.Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e4ff495deaff81c0e560e13688afb1ed618e830",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e4ff495deaff81c0e560e13688afb1ed618e830`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sphereEuler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/sphereeuler--9a44935053636c15998b393e.md) | 30 | `declaration-track:9a44935053636c15998b393e17cbb6a9a4ba0c64f1e31bd66d5c6cc4110731b4` |
| 2 | `structure` | [Dimension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/dimension--6a04a7ee975075e87a6d73dc.md) | 34 | `declaration-track:6a04a7ee975075e87a6d73dc86c39a31e23ffa23549775c568cdcf562fc63969` |
| 3 | `def` | [ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/ambient--5ca6340b37db9a94cc873d05.md) | 42 | `declaration-track:5ca6340b37db9a94cc873d05b1968ef2c49b7fe4e65d77651431cbeb66a45d67` |
| 4 | `def` | [eulerChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/eulerchange--4eee0422fddbc0e1a236384e.md) | 46 | `declaration-track:4eee0422fddbc0e1a236384ee37955677e434dce23ff9862d5af9b52384ce431` |
| 5 | `theorem` | [eulerChange_eq_sign_difference](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/eulerchange-eq-sign-difference--ea7dc405ad69292b66ec9031.md) | 50 | `result-track:ea7dc405ad69292b66ec90317f4c844d0d03713f67e2b28f78b8db5b0ed0b047` |
| 6 | `theorem` | [eulerChange_eq_zero_of_odd_ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/eulerchange-eq-zero-of-odd-ambient--1ced86d92210955b49ee355e.md) | 57 | `result-track:1ced86d92210955b49ee355eb1476a09bb1e3c55e6321820874adf514ed59b66` |
| 7 | `theorem` | [eulerChange_eq_two_mul_sign_of_even_ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/eulerchange-eq-two-mul-sign-of-even-ambient--1feff053d65ef9c4e427a6b4.md) | 84 | `result-track:1feff053d65ef9c4e427a6b4250d2b11b11850f69335dd4eeefd28e67f4e361e` |
| 8 | `theorem` | [eulerChange_eq_zero_of_odd_dimension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/eulerchange-eq-zero-of-odd-dimension--c269b07b2709ceff84ea2a1c.md) | 112 | `result-track:c269b07b2709ceff84ea2a1c384acf62d36937a604a8d3b4d2680523cdec2339` |
| 9 | `theorem` | [eulerChange_eq_two_mul_sign_of_even_dimension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/eulerchange-eq-two-mul-sign-of-even-dimension--1b70314c5eadc112fe44aeea.md) | 121 | `result-track:1b70314c5eadc112fe44aeeabf55459ce7d07056bde342b05c9f08ba339b178c` |
| 10 | `structure` | [EulerGluingData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/eulergluingdata--b91ef2539eb061c8499a35de.md) | 139 | `declaration-track:b91ef2539eb061c8499a35de9981cc83f769f715116d2d2f73f5c2735ff13901` |
| 11 | `theorem` | [difference_eq_eulerChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/difference-eq-eulerchange--56c0db0a90db2c38cd064e9d.md) | 152 | `result-track:56c0db0a90db2c38cd064e9d92b44f572631f44ffbc1cc87fed9f55a2a4f7b71` |
| 12 | `theorem` | [surgered_eq_original_of_odd_ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/surgered-eq-original-of-odd-ambient--618e8a16acd75fb7a33ecc74.md) | 161 | `result-track:618e8a16acd75fb7a33ecc74bfd5a69641469622e08a171a904a8515f011bb87` |
| 13 | `theorem` | [difference_eq_two_mul_sign_of_even_ambient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/difference-eq-two-mul-sign-of-even-ambient--7b86927af8392dd30d48b22c.md) | 172 | `result-track:7b86927af8392dd30d48b22cbba64139b4949126a2bf87fb063a5d027b6df248` |
| 14 | `def` | [familyEulerChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/familyeulerchange--f597f8f5b731154fb10b8317.md) | 184 | `declaration-track:f597f8f5b731154fb10b831759eaa61f2042cbc0935376d61f7a8ddd17b9d73e` |
| 15 | `theorem` | [familyEulerChange_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/familyeulerchange-nil--45a4c6bedbab9c3a984864a8.md) | 188 | `result-track:45a4c6bedbab9c3a984864a88579704f21ffb7c57e2206daac73048312c95f31` |
| 16 | `theorem` | [familyEulerChange_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/familyeulerchange-cons--601f2a9686af7f5f4a242bee.md) | 193 | `result-track:601f2a9686af7f5f4a242bee941b781c5ba3746cd86a4092b3e8c349f20a49d0` |
| 17 | `theorem` | [familyEulerChange_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/familyeulerchange-append--039c2c610bafc0415a34ce0e.md) | 202 | `result-track:039c2c610bafc0415a34ce0eb846e6dea06dd946ed4feb7be63d552ad9f7252b` |
| 18 | `theorem` | [familyEulerChange_eq_sum_sign_differences](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/familyeulerchange-eq-sum-sign-differences--730a72a45eafeb3f02542276.md) | 209 | `result-track:730a72a45eafeb3f025422763217c8c3119f6cb0b9cad76be78e986780af1509` |
| 19 | `theorem` | [familyEulerChange_eq_zero_of_all_odd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/familyeulerchange-eq-zero-of-all-odd--7bfcd8ba7ac3364e74626280.md) | 224 | `result-track:7bfcd8ba7ac3364e7462628069a3e68d856def039028705c48388c9fc5c3eb03` |
| 20 | `theorem` | [familyEulerChange_eq_sum_even_signs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerCharacteristic/Variantf8612a1885aa65c221a5e361b9d3ffff6919ca103f1dd5554077daa656ac0c6c.lean/declarations/familyeulerchange-eq-sum-even-signs--59b2a9c87fc05f9a36a84e50.md) | 241 | `result-track:59b2a9c87fc05f9a36a84e507c5fd3826b94ac685962bd1434d76b406f7ad630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
