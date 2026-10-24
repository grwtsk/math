# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ComputeDegree.Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac33c63a04c52d7401c7302d9cf82b0aef7b4941",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac33c63a04c52d7401c7302d9cf82b0aef7b4941`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/natdegree-c-le--ae95504201b06532499864e1.md) | 100 | `result-track:ae95504201b06532499864e1d31237375a7e8e7d53f1a5660187302d29bd250e` |
| 2 | `theorem` | [natDegree_natCast_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/natdegree-natcast-le--88e79b87744fb0256aaf0422.md) | 102 | `result-track:88e79b87744fb0256aaf04226f17c62e10deff42e0e0ed47d412366a423624f5` |
| 3 | `theorem` | [natDegree_zero_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/natdegree-zero-le--87caeb85f0487345a1d096cf.md) | 103 | `result-track:87caeb85f0487345a1d096cf5c45ae23ed6f15cdfd9edd906c9a331b7c47fbb0` |
| 4 | `theorem` | [natDegree_one_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/natdegree-one-le--6e0cc0fbd449240eff25d72c.md) | 104 | `result-track:6e0cc0fbd449240eff25d72cb534409d4b4d3e004db7622df8238c39240bc1bc` |
| 5 | `theorem` | [coeff_add_of_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/coeff-add-of-eq--63f5efe7e57413e1a70ee30f.md) | 106 | `result-track:63f5efe7e57413e1a70ee30f5c74c2e0efdab128042e6d1ee16f61b549786432` |
| 6 | `theorem` | [coeff_mul_add_of_le_natDegree_of_eq_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/coeff-mul-add-of-le-natdegree-of-eq-ite--6df1c5de08d904b1aa42b1df.md) | 110 | `result-track:6df1c5de08d904b1aa42b1dfe8c7284ec68f00ec070f3916cbc34342df8461e5` |
| 7 | `theorem` | [coeff_pow_of_natDegree_le_of_eq_ite'](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/coeff-pow-of-natdegree-le-of-eq-ite--1e8d4859a0b9205bc846fb6d.md) | 122 | `result-track:1e8d4859a0b9205bc846fb6d68c643403422de7de6244293718778e66682af63` |
| 8 | `theorem` | [natDegree_smul_le_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/natdegree-smul-le-of-le--30be482bd1ecaef7281fbc1f.md) | 133 | `result-track:30be482bd1ecaef7281fbc1facb06dccb40eeddf3f1ac33f0bd26fa636682927` |
| 9 | `theorem` | [degree_smul_le_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/degree-smul-le-of-le--0e4da80bd7411d7b44fd1373.md) | 137 | `result-track:0e4da80bd7411d7b44fd1373bfca116afdfb827fb70cc47b12f34c3becd90883` |
| 10 | `theorem` | [coeff_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/coeff-smul--f6c9e0df4643789be1a500d0.md) | 141 | `result-track:f6c9e0df4643789be1a500d03351aeec26f60a3d988c29eeb7e8b2d2e40ff1d6` |
| 11 | `theorem` | [natDegree_eq_of_le_of_coeff_ne_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/natdegree-eq-of-le-of-coeff-ne-zero--f99a37e10c85463909a4b5ad.md) | 155 | `result-track:f99a37e10c85463909a4b5ad772167f1da2d4367fd91ba9a8cb93c26dd36e316` |
| 12 | `theorem` | [degree_eq_of_le_of_coeff_ne_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/degree-eq-of-le-of-coeff-ne-zero--a3c98393aca06d9c5f64104e.md) | 162 | `result-track:a3c98393aca06d9c5f64104e771a43cd6381cc5d7acf1d6e77ce1a1acfc280d3` |
| 13 | `theorem` | [coeff_congr_lhs](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/coeff-congr-lhs--4eebea9026f23ae429b3a7a1.md) | 174 | `result-track:4eebea9026f23ae429b3a7a14b9ac2fe4fd03f63d74ad69b9d159cdbb1af9173` |
| 14 | `theorem` | [coeff_congr](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/coeff-congr--5593f2e96c21b89f515b35b7.md) | 176 | `result-track:5593f2e96c21b89f515b35b7975a1667bc6fa3f6cb98773d8b63bace370adb3e` |
| 15 | `theorem` | [natDegree_intCast_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/natdegree-intcast-le--38588b1fe84cb70fb1f37dd6.md) | 187 | `result-track:38588b1fe84cb70fb1f37dd6db5f37e432d07216883c51335c390711f27b50ac` |
| 16 | `theorem` | [coeff_sub_of_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/coeff-sub-of-eq--a65f3642d8788b89a9bf2c7a.md) | 189 | `result-track:a65f3642d8788b89a9bf2c7af9917991482f45cde93c60c075b2f24ce60782ad` |
| 17 | `theorem` | [coeff_intCast_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/coeff-intcast-ite--1009060726b71f4c74890809.md) | 192 | `result-track:1009060726b71f4c7489080901e0a2676c6f528c9ae027e40b56a136da369e76` |
| 18 | `def` | [twoHeadsArgs](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/twoheadsargs--bda9dcf06298b51e9c96278d.md) | 225 | `declaration-track:bda9dcf06298b51e9c96278d919d01bb0ea9f9c09bf1efe3e1829c1359ff1cd4` |
| 19 | `def` | [getCongrLemma](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/getcongrlemma--44c59be6f9c1da99430c9b97.md) | 272 | `declaration-track:44c59be6f9c1da99430c9b97f52fd8514c8b63fbded3f62d18f00b3dbc1bd3a2` |
| 20 | `def` | [dispatchLemma](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/dispatchlemma--cf815962a0313b524f96b3c4.md) | 301 | `declaration-track:cf815962a0313b524f96b3c4b92a183a59016a4b25f81cf1697cd844d59726aa` |
| 21 | `def` | [try_rfl](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/try-rfl--663c6498df4316282ca7f871.md) | 367 | `declaration-track:663c6498df4316282ca7f871f2c23b09663865ff461d5585be60ba8264401e1f` |
| 22 | `def` | [splitApply](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/splitapply--6ddac181f62ffd8df5f59016.md) | 393 | `declaration-track:6ddac181f62ffd8df5f5901696ebb4183f3a9feaf5b8893cf8076553679473b5` |
| 23 | `def` | [miscomputedDegree?](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/miscomputeddegree--2f79f68d8c769302003db2d0.md) | 422 | `declaration-track:2f79f68d8c769302003db2d045f3bf516017cd2acef898d70d6ccea5271fde67` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/syntax--b90459a0d4f936fd1a0813b9.md) | 451 | `declaration-track:b90459a0d4f936fd1a0813b92da73dd86706f2a6b4f8b7e9e81bb838bbdd4095` |
| 25 | `initialize` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/initialize--5c3efd13715f95b652ce6d6e.md) | 453 | `declaration-track:5c3efd13715f95b652ce6d6e0198e7e3b4409289bfa7de48a109e1939fd62d7c` |
| 26 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/macro--2669e2c0718770722c6c899b.md) | 456 | `declaration-track:2669e2c0718770722c6c899b65d420af0790c49c163a7618ece3b21373dd4ad6` |
| 27 | `elab_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/elab-rules--be5d1a88ea8e832c0ad5b943.md) | 458 | `declaration-track:be5d1a88ea8e832c0ad5b94337db51c87bfb0b9babaa9b38e637085a1658bd71` |
| 28 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/macro--2969369872ae6e1f1e5a0b68.md) | 505 | `declaration-track:2969369872ae6e1f1e5a0b6830487be6e0eaf9de37d8adcebe8e75791973f968` |
| 29 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean/declarations/macro--e0af8bd12236f5a0383a15fb.md) | 509 | `declaration-track:e0af8bd12236f5a0383a15fbda64180a1b31c173a67f0d4bba4dae86d6072ead` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
