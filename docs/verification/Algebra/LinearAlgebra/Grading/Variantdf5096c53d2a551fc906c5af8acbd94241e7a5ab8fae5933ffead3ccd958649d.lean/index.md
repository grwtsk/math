# Verification target: GRWTSK.Algebra.LinearAlgebra.Grading.Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "097ff8bdc5dbbc737645d97ace311de63fdd9305",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `097ff8bdc5dbbc737645d97ace311de63fdd9305`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenOdd](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/evenodd--10f69ed2536461f7d8cd2ab9.md) | 28 | `declaration-track:10f69ed2536461f7d8cd2ab98415cdd45ade9aede7c875ee13b35bdc902e530a` |
| 2 | `theorem` | [one_le_evenOdd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/one-le-evenodd-zero--299159ace726fc9221ccc606.md) | 31 | `result-track:299159ace726fc9221ccc6068dd3bc0385b80562ce8c6be4f977e168493b3809` |
| 3 | `theorem` | [range_ι_le_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/range-le-evenodd-one--56341bef6675cc7674f1c213.md) | 35 | `result-track:56341bef6675cc7674f1c21356105930be339e049a22c88a33f73319ea6a09fe` |
| 4 | `theorem` | [ι_mem_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/mem-evenodd-one--a4e8d09416fb59ce2323046f.md) | 39 | `result-track:a4e8d09416fb59ce2323046f761eb8b314b3aad570e2776716d1e7b79df14450` |
| 5 | `theorem` | [ι_mul_ι_mem_evenOdd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/mul-mem-evenodd-zero--13daea2e31ddebf0df14c925.md) | 42 | `result-track:13daea2e31ddebf0df14c92558da5289a1fbf4c29bd569cb8ff8663fec5d92ef` |
| 6 | `theorem` | [evenOdd_mul_le](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/evenodd-mul-le--59be6f7f38359a288f674bda.md) | 50 | `result-track:59be6f7f38359a288f674bda502c61086b75c001ab56ac09b361f7a0781604d3` |
| 7 | `instance` | [evenOdd.gradedMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/evenodd-gradedmonoid--233cfd12208c39a2384db90c.md) | 59 | `declaration-track:233cfd12208c39a2384db90c2e1230b02594d0f5a84e12e12f6eb1af3a7fadd1` |
| 8 | `def` | [GradedAlgebra.ι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/gradedalgebra--df7ad0827c4996c21c0170cc.md) | 65 | `declaration-track:df7ad0827c4996c21c0170cc056673c8dbfcdb8550d61d19d0886e2262fbe493` |
| 9 | `theorem` | [GradedAlgebra.ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/gradedalgebra-apply--022f4d8462e832bd06f4be22.md) | 68 | `result-track:022f4d8462e832bd06f4be228aad5346df449042e61ad9d0f2bd6b9bd25da9cc` |
| 10 | `theorem` | [GradedAlgebra.ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/gradedalgebra-sq-scalar--b4a6e8948adc40ebf88e197d.md) | 72 | `result-track:b4a6e8948adc40ebf88e197d831612f2d91f5bc20e396987f7f05edd52cc1760` |
| 11 | `theorem` | [GradedAlgebra.lift_ι_eq](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/gradedalgebra-lift-eq--866cb61b432eff2148d6239c.md) | 77 | `result-track:866cb61b432eff2148d6239ca584a658b5506b277698ed0059befacfe90da30c` |
| 12 | `instance` | [gradedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/gradedalgebra--2075abd050423c19b7061ce9.md) | 107 | `declaration-track:2075abd050423c19b7061ce96198e91b8d5a0d062c6657c0011a7ec4f3944db2` |
| 13 | `theorem` | [iSup_ι_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/isup-range-eq-top--ab8ad2015f328f679e254b5f.md) | 120 | `result-track:ab8ad2015f328f679e254b5f53ec895efab2cd488608b5602cf73cc20708f1d1` |
| 14 | `theorem` | [evenOdd_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/evenodd-iscompl--9a2954321797f73d61ae7d13.md) | 131 | `result-track:9a2954321797f73d61ae7d13d566fc45b5baeadfde5c3466ba063e804ed22c61` |
| 15 | `theorem` | [evenOdd_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/evenodd-induction--39de6f18b0c557c7ec5c8f17.md) | 140 | `result-track:39de6f18b0c557c7ec5c8f17aac1e64d4f8003879c5a4e80e1ad4291ed5c5527` |
| 16 | `theorem` | [even_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/even-induction--2a1a93da2369e307086a6430.md) | 184 | `result-track:2a1a93da2369e307086a6430b75452439cdedc2e4aa44f1b424cbdcb15979369` |
| 17 | `theorem` | [odd_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantdf5096c53d2a551fc906c5af8acbd94241e7a5ab8fae5933ffead3ccd958649d.lean/declarations/odd-induction--3225883e01016acb4ab19732.md) | 200 | `result-track:3225883e01016acb4ab19732b09ae99a815cae57f227640446247a77857a6fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
