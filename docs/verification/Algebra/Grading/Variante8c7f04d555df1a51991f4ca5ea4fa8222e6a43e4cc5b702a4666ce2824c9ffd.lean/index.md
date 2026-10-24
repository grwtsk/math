# Verification target: GRWTSK.Algebra.Grading.Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76193752fbd1fe12a5fd0d75285b0facc52bb01b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76193752fbd1fe12a5fd0d75285b0facc52bb01b`.

Source path: `GRWTSK/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Internal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [gradeBy](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/gradeby--b042b84703efeab3ea83524a.md) | 46 | `declaration-track:b042b84703efeab3ea83524af9bd2791f826bd00807bbb2b89f4e00d9fcb16f6` |
| 2 | `abbrev` | [grade](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/grade--51233f098f5bd0d4fc019ce5.md) | 54 | `declaration-track:51233f098f5bd0d4fc019ce5cac4b2077a2f138e539f3c176b880eecfa6a319f` |
| 3 | `theorem` | [gradeBy_id](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/gradeby-id--db7a789149814504f620a7ff.md) | 57 | `result-track:db7a789149814504f620a7ff37b15fd5ea58d16dba1fb789b549a44e1f5d1cf0` |
| 4 | `theorem` | [mem_gradeBy_iff](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/mem-gradeby-iff--985d410e26cbc73c4d4350ee.md) | 59 | `result-track:985d410e26cbc73c4d4350ee7382f6118852115fd4145ab0d7d5708c60bfc0f1` |
| 5 | `theorem` | [mem_grade_iff](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/mem-grade-iff--44b1886bdd3da34bd71ef9ea.md) | 62 | `result-track:44b1886bdd3da34bd71ef9ea9465f061759311c1c2cc60f79d6c4132006d81cc` |
| 6 | `theorem` | [mem_grade_iff'](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/mem-grade-iff--93ff99edfabadbd504c641d4.md) | 66 | `result-track:93ff99edfabadbd504c641d434df73d2daf423efd0aa509998ed2c4d43301af5` |
| 7 | `theorem` | [grade_eq_lsingle_range](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/grade-eq-lsingle-range--e2bd5025c477a8930abe92fa.md) | 74 | `result-track:e2bd5025c477a8930abe92fa679bc129ba566d7ba8df242f5498b8ef486c9ffe` |
| 8 | `theorem` | [single_mem_gradeBy](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/single-mem-gradeby--218eedfc9458a1f3d560410b.md) | 78 | `result-track:218eedfc9458a1f3d560410b7ee9398d13a543795c557b19b431cc336a87d4c8` |
| 9 | `theorem` | [single_mem_grade](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/single-mem-grade--27c8b9d9ef16d8bbaf9b4b34.md) | 83 | `result-track:27c8b9d9ef16d8bbaf9b4b346b56d486920580564a048868136e1116c44fb4e1` |
| 10 | `instance` | [gradeBy.gradedMonoid](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/gradeby-gradedmonoid--530388b0fbaf0b2fb93ad263.md) | 90 | `declaration-track:530388b0fbaf0b2fb93ad2634576c950cafc910694cffd8b0438b2185b1849dc` |
| 11 | `instance` | [grade.gradedMonoid](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/grade-gradedmonoid--3c4d471a655c20fd67d0a4b6.md) | 102 | `declaration-track:3c4d471a655c20fd67d0a4b654dedcaf71d8ff1fec98e9fcb7f9b15f412551ee` |
| 12 | `def` | [decomposeAux](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/decomposeaux--18b9a11f5145ae6185f4720a.md) | 110 | `declaration-track:18b9a11f5145ae6185f4720ac7d8f61ffc5b71cc4bc606efb086888f3a648609` |
| 13 | `theorem` | [decomposeAux_single](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/decomposeaux-single--91e2986537506e173c1b1a98.md) | 127 | `result-track:91e2986537506e173c1b1a9844ac103bf916bbc2dcd6856d3b5015c4755249ac` |
| 14 | `theorem` | [decomposeAux_coe](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/decomposeaux-coe--da10c056dc6fd39ca5b88956.md) | 139 | `result-track:da10c056dc6fd39ca5b88956512b07951a5ae66171c5263fcf603eb141cdbf48` |
| 15 | `instance` | [gradeBy.gradedAlgebra](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/gradeby-gradedalgebra--908e32789daa350eef01dc59.md) | 165 | `declaration-track:908e32789daa350eef01dc593d4fbbc8adfc53c89d2655c1f80e5a11712d0739` |
| 16 | `instance` | [gradeBy.decomposition](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/gradeby-decomposition--bac435cc2ba4c15005638ab0.md) | 175 | `declaration-track:bac435cc2ba4c15005638ab01ebe1276ae3782b540ee03103e430bd1fe27e5ce` |
| 17 | `theorem` | [decomposeAux_eq_decompose](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/decomposeaux-eq-decompose--e3625d7c00e7afd189b7e704.md) | 178 | `result-track:e3625d7c00e7afd189b7e704d81d3ee2c6de1bbe29cc921f51b418ed316f6cea` |
| 18 | `theorem` | [GradesBy.decompose_single](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/gradesby-decompose-single--f1dbcf78726026b5376fd727.md) | 183 | `result-track:f1dbcf78726026b5376fd7270df5065f2935ed95a1b4e6b268b25dc5f14f35de` |
| 19 | `instance` | [grade.gradedAlgebra](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/grade-gradedalgebra--b73482c11c66fb82156c6415.md) | 189 | `declaration-track:b73482c11c66fb82156c64151f2c228dfd62488cc1156e4c17fc12f2109ab685` |
| 20 | `instance` | [grade.decomposition](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/grade-decomposition--457be94e0325d3ba6b5b7657.md) | 193 | `declaration-track:457be94e0325d3ba6b5b7657504c9c0d4ab2535f3bcf37e3a042e9549ff782bd` |
| 21 | `theorem` | [grade.decompose_single](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/grade-decompose-single--012c48cbabaa039079c61ab2.md) | 196 | `result-track:012c48cbabaa039079c61ab2be2a4556e4198860b1f6908f27a3106c3c36d680` |
| 22 | `theorem` | [gradeBy.isInternal](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/gradeby-isinternal--13f909c2d741aa9d584832b1.md) | 202 | `result-track:13f909c2d741aa9d584832b1331fd57886712879c88e70b4de4d5f387add285c` |
| 23 | `theorem` | [grade.isInternal](../../../../mathematics/Algebra/Grading/Variante8c7f04d555df1a51991f4ca5ea4fa8222e6a43e4cc5b702a4666ce2824c9ffd.lean/declarations/grade-isinternal--5a4b0c6beb7064f65fc09516.md) | 206 | `result-track:5a4b0c6beb7064f65fc095166d231a4d82cd9f83149027dd70991b80167ea5d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
