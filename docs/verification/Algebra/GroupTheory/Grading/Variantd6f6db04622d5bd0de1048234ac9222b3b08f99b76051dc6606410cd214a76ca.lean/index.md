# Verification target: GRWTSK.Algebra.GroupTheory.Grading.Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63bd96a03ca8ff0956814d451e5654bd03a9ed58",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63bd96a03ca8ff0956814d451e5654bd03a9ed58`.

Source path: `GRWTSK/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Internal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [gradeBy](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/gradeby--6a182f9267bea5a11ac1d86e.md) | 55 | `declaration-track:6a182f9267bea5a11ac1d86e00c20921e44fcb21b6c3c71596d5961f0a9a2054` |
| 2 | `abbrev` | [grade](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/grade--10ee72fc8b03d71cba984fff.md) | 63 | `declaration-track:10ee72fc8b03d71cba984fff985d1ee40bad1013c77dbeb57120fd282597e28b` |
| 3 | `theorem` | [gradeBy_id](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/gradeby-id--113a6296f57f63bca6392ca9.md) | 67 | `result-track:113a6296f57f63bca6392ca9dca35f33eb9332cc31b909217f2de2150dd9a697` |
| 4 | `theorem` | [mem_gradeBy_iff](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/mem-gradeby-iff--0f13e6d777900ea3b9f557a0.md) | 70 | `result-track:0f13e6d777900ea3b9f557a0116c00d743df9debb4ce1f549c974f2272510ada` |
| 5 | `theorem` | [mem_grade_iff](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/mem-grade-iff--8702b7c56d34e1b6c8a45e41.md) | 74 | `result-track:8702b7c56d34e1b6c8a45e418ff9b3721a3c96d8ebf579c07aca89e6eaff2ed6` |
| 6 | `theorem` | [mem_grade_iff'](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/mem-grade-iff--438b3e9d9b6e527e566ae1ae.md) | 79 | `result-track:438b3e9d9b6e527e566ae1ae154ce34f9d8cdd53817ef526c88a290f97673f7f` |
| 7 | `theorem` | [grade_eq_lsingle_range](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/grade-eq-lsingle-range--a85c8940af4ca803dbb1d062.md) | 88 | `result-track:a85c8940af4ca803dbb1d062e8dca02f254391d5b78f4f361bd4cd4e27fd0172` |
| 8 | `theorem` | [single_mem_gradeBy](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/single-mem-gradeby--639896d4454817644f920b00.md) | 93 | `result-track:639896d4454817644f920b00f4b7d948d84ab8c83e2a01f2853c0e81ce236e9d` |
| 9 | `theorem` | [single_mem_grade](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/single-mem-grade--deca86351461d74b854fd4f4.md) | 99 | `result-track:deca86351461d74b854fd4f41f322a8dc13ec6d420295d9b97028ba0110380da` |
| 10 | `instance` | [gradeBy.gradedMonoid](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/gradeby-gradedmonoid--30d0dd126acf523d0f860ad8.md) | 107 | `declaration-track:30d0dd126acf523d0f860ad89efecdc557f5661b6dab8edbb60c415f2cebf985` |
| 11 | `instance` | [grade.gradedMonoid](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/grade-gradedmonoid--59a0269e09f2730f6d89d704.md) | 124 | `declaration-track:59a0269e09f2730f6d89d7047d8c845bed7f294fe85943b9f04dbbf67b187b23` |
| 12 | `def` | [decomposeAux](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/decomposeaux--e4b084cd91f7d253f29d9d8e.md) | 134 | `declaration-track:e4b084cd91f7d253f29d9d8ed5551b9308bed4d82cc5dfc3cad0b771a8bccba7` |
| 13 | `theorem` | [decomposeAux_single](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/decomposeaux-single--06cc2daa434dafd232412d01.md) | 152 | `result-track:06cc2daa434dafd232412d01aedd069dafe37e2e6d0b32156718b7955ec6650c` |
| 14 | `theorem` | [decomposeAux_coe](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/decomposeaux-coe--770a831dc9012a8bbeab165c.md) | 165 | `result-track:770a831dc9012a8bbeab165cdc635d57bc2a2fc54f9dfb7231f1bd27047b1c9b` |
| 15 | `instance` | [gradeBy.gradedAlgebra](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/gradeby-gradedalgebra--dab5cd948ade18dbf18bbe2b.md) | 191 | `declaration-track:dab5cd948ade18dbf18bbe2b1e16ba0c5e2f8a0e65fbc476d3e1f2048265acff` |
| 16 | `instance` | [gradeBy.decomposition](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/gradeby-decomposition--d34d0b6fac0866e9ff188f81.md) | 202 | `declaration-track:d34d0b6fac0866e9ff188f814cc546cd568c366fb84abd4dbf92ec8541e90f8f` |
| 17 | `theorem` | [decomposeAux_eq_decompose](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/decomposeaux-eq-decompose--f27271a135e64b614985a5dc.md) | 206 | `result-track:f27271a135e64b614985a5dc02391232aafacc0410408a99aac0d20bb7925033` |
| 18 | `theorem` | [GradesBy.decompose_single](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/gradesby-decompose-single--83acb0166f04aa5b75f273f4.md) | 213 | `result-track:83acb0166f04aa5b75f273f4ac68ba0ab6d8803503f42f5ce2fccfefaed1a4cf` |
| 19 | `instance` | [grade.gradedAlgebra](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/grade-gradedalgebra--941e2454672a05f8f3868672.md) | 220 | `declaration-track:941e2454672a05f8f3868672c66a4aad735137cdb164691662aa20c1d640ab8e` |
| 20 | `instance` | [grade.decomposition](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/grade-decomposition--f04e725efe2fc79315f1c7d4.md) | 225 | `declaration-track:f04e725efe2fc79315f1c7d496980d0b34c99b8983aa3c93d4af371e3ce7e859` |
| 21 | `theorem` | [grade.decompose_single](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/grade-decompose-single--d743bf6952b3ce966c4dc309.md) | 230 | `result-track:d743bf6952b3ce966c4dc309b63bd96ad1492ac8536661853442a47bdc33f826` |
| 22 | `theorem` | [gradeBy.isInternal](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/gradeby-isinternal--cc3a12f4cba9f8384bc07529.md) | 237 | `result-track:cc3a12f4cba9f8384bc075294571a10c40ad078bcedb8a73ed06bc309563f544` |
| 23 | `theorem` | [grade.isInternal](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantd6f6db04622d5bd0de1048234ac9222b3b08f99b76051dc6606410cd214a76ca.lean/declarations/grade-isinternal--dce48f0598ed448c0979537b.md) | 242 | `result-track:dce48f0598ed448c0979537ba33e20086abe13744f48f24e0d2811606bc85c5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
