# Verification target: GRWTSK.Algebra.CommutativeAlgebra.HasseDeriv.Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fddedaa2f5d81920441a9510d936f857187f65b8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fddedaa2f5d81920441a9510d936f857187f65b8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv--c7996f90b59e72c6dd57be7b.md) | 67 | `declaration-track:c7996f90b59e72c6dd57be7ba23b245f9f7c3dd8ca9e751d447925d572a4ae43` |
| 2 | `theorem` | [hasseDeriv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-apply--361cab061f6a3ef9568d21ea.md) | 70 | `result-track:361cab061f6a3ef9568d21eab20d9c935cc8082da7c8ab425ae6aade25d84aa1` |
| 3 | `theorem` | [hasseDeriv_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-coeff--ecfebe59d6a796003a2c6020.md) | 75 | `result-track:ecfebe59d6a796003a2c60203995859ba0f759c4df5ba536a5e4e99eff6c1657` |
| 4 | `theorem` | [hasseDeriv_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-zero--23138b173fd68a0935883f1f.md) | 90 | `result-track:23138b173fd68a0935883f1fce99cbebbec56e17ab757e4b2b70d37008b9a8e4` |
| 5 | `theorem` | [hasseDeriv_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-zero--54a76b8e8b15161297a4f5e3.md) | 94 | `result-track:54a76b8e8b15161297a4f5e31ec022658cdb400d3b91a02c95705946be3508a5` |
| 6 | `theorem` | [hasseDeriv_eq_zero_of_lt_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-eq-zero-of-lt-natdegree--79960a257fd02506d5bee095.md) | 97 | `result-track:79960a257fd02506d5bee09527c3ae2b8afa7a2bc9f8a830f1c2087ed4067161` |
| 7 | `theorem` | [hasseDeriv_one'](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-one--cbc8ac9cf47c66101db19889.md) | 103 | `result-track:cbc8ac9cf47c66101db19889d07404d7bd0450eaf6ee9e462e95b09c7873c46e` |
| 8 | `theorem` | [hasseDeriv_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-one--abe86a3125331ae2858df12b.md) | 108 | `result-track:abe86a3125331ae2858df12b94c7e67c96aeb3ce051c62fe09d6a0060528c17c` |
| 9 | `theorem` | [hasseDeriv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-monomial--0e01908702843aa4e681e472.md) | 112 | `result-track:0e01908702843aa4e681e472129a8bd94ecdf36e9f5a0005d5f23c1c19cccd11` |
| 10 | `theorem` | [hasseDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-c--96de812b5fc4bdf1c972fcd1.md) | 124 | `result-track:96de812b5fc4bdf1c972fcd18d95f38c5a701631a1309a690a416e051fff9044` |
| 11 | `theorem` | [hasseDeriv_apply_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-apply-one--102bbcd0972ee33d9fcab413.md) | 128 | `result-track:102bbcd0972ee33d9fcab4131f6507b7e43e628923a6991cf0b5b282aade8cdb` |
| 12 | `theorem` | [hasseDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-x--7ad9aefde35ac6a36bdd525c.md) | 131 | `result-track:7ad9aefde35ac6a36bdd525cddd2837a1f15d78d07d498be5033dab3e306ef2d` |
| 13 | `theorem` | [hasseDeriv_map](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-map--1eb472e11f785fe99c1cefa9.md) | 136 | `result-track:1eb472e11f785fe99c1cefa9928d3010d021adcddb1f882f2d4c130618fbd320` |
| 14 | `theorem` | [factorial_smul_hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/factorial-smul-hassederiv--f1f328ba1ed22bd9918a1114.md) | 141 | `result-track:f1f328ba1ed22bd9918a11141462386e2d817bb9a500227c97b9026e3cb92668` |
| 15 | `theorem` | [hasseDeriv_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-comp--aae6767af495c0d4ff32a3c4.md) | 162 | `result-track:aae6767af495c0d4ff32a3c414d566f09c9f9fadee039ad50aebe67e3e2abac9` |
| 16 | `theorem` | [natDegree_hasseDeriv_le](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/natdegree-hassederiv-le--fc3c7bfc35388a37a2c74904.md) | 187 | `result-track:fc3c7bfc35388a37a2c74904113a8980f8ce98ec933c7aaf53d3367e95780d99` |
| 17 | `theorem` | [hasseDeriv_natDegree_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-natdegree-eq-c--b7f0ef5f5e2593f102297731.md) | 201 | `result-track:b7f0ef5f5e2593f1022977316351dd09a5ceb64250b54c62467cfc166066bc2d` |
| 18 | `theorem` | [natDegree_hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/natdegree-hassederiv--d80ea26aa5d6903117b581e4.md) | 206 | `result-track:d80ea26aa5d6903117b581e4f239419a9efacb326b4077d777bba3f96452106d` |
| 19 | `theorem` | [hasseDeriv_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/declarations/hassederiv-mul--578021f1a13aaa370f5d5ddb.md) | 219 | `result-track:578021f1a13aaa370f5d5ddbaed53f299d82d430f380cbc58a3097c8eeb08593` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
