# Verification target: GRWTSK.Algebra.Grading.Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c542b81793c299ba8a0acac2ba5efa87d3b3e07",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/index.md) · [Full source](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c542b81793c299ba8a0acac2ba5efa87d3b3e07`.

Source path: `GRWTSK/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [gradeBy](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/gradeby--24933a706cf82ccbae9f5fcd.md) | 58 | `declaration-track:24933a706cf82ccbae9f5fcd9e2dea312a4687faadd8ef85bcc014a3f5350b0e` |
| 2 | `abbrev` | [grade](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/grade--db7e2cf6fd67b802d12943ad.md) | 66 | `declaration-track:db7e2cf6fd67b802d12943ada13d703b1e57756419201753fd97432cd5d9c864` |
| 3 | `theorem` | [gradeBy_id](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/gradeby-id--47ce84fc5d9c84a2ffaec40e.md) | 69 | `result-track:47ce84fc5d9c84a2ffaec40e034810ee50b65a8012044535faba0a4ef57be74c` |
| 4 | `theorem` | [mem_gradeBy_iff](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/mem-gradeby-iff--3629e30df7ce42825646d017.md) | 71 | `result-track:3629e30df7ce42825646d017617e1f164bfc7682ea23b14ac3a84f48149370c3` |
| 5 | `theorem` | [mem_grade_iff](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/mem-grade-iff--61c3c38633257487a8187de6.md) | 74 | `result-track:61c3c38633257487a8187de6aeefb2ba1d35bd238127f8194668c8bcba9304b1` |
| 6 | `theorem` | [mem_grade_iff'](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/mem-grade-iff--f26de9beae17bef31eac528e.md) | 78 | `result-track:f26de9beae17bef31eac528e922c36a1be2f3ddd7db65341043452ae6183d31b` |
| 7 | `theorem` | [grade_eq_lsingle_range](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/grade-eq-lsingle-range--d32603796df17f4df4deb135.md) | 82 | `result-track:d32603796df17f4df4deb1353a369fedb62ef6fb82e45820cb8043b181af20e4` |
| 8 | `theorem` | [single_mem_gradeBy](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/single-mem-gradeby--5dd808c53a15df2805dde2f6.md) | 85 | `result-track:5dd808c53a15df2805dde2f630b807b3bebd6b685693a1ea80ad6a73c061d1e8` |
| 9 | `theorem` | [single_mem_grade](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/single-mem-grade--060eca3ec47130b5ad163aba.md) | 90 | `result-track:060eca3ec47130b5ad163abaf395668e6854f0b011e27465f7365a12afaa07e4` |
| 10 | `instance` | [gradeBy.gradedMonoid](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/gradeby-gradedmonoid--0be2ebf2b5e2c91558fa1143.md) | 98 | `declaration-track:0be2ebf2b5e2c91558fa11435dec65a234fdb93e1f46d9955194d87d4d9940e9` |
| 11 | `instance` | [grade.gradedMonoid](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/grade-gradedmonoid--8815d98cd42f7216719703a5.md) | 110 | `declaration-track:8815d98cd42f7216719703a5e2fe9d398b20aa91cfd1b352e1584fb8ab600076` |
| 12 | `def` | [decomposeAux](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/decomposeaux--8a36024a99e697908d88d9ee.md) | 119 | `declaration-track:8a36024a99e697908d88d9eeeaa9d648cd6214208a962f461fc663f136f4d9f0` |
| 13 | `theorem` | [decomposeAux_single](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/decomposeaux-single--b320dd8fad5a11caee2ed7c8.md) | 128 | `result-track:b320dd8fad5a11caee2ed7c80dcefb358ed823f589cf8f13e971faae81e05f55` |
| 14 | `theorem` | [decomposeAux_coe](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/decomposeaux-coe--cb53d1ca980137b3e2bce7d2.md) | 139 | `result-track:cb53d1ca980137b3e2bce7d2e2ada26f10abd31940a17c802f3dcdeffef222c2` |
| 15 | `instance` | [gradeBy.gradedAlgebra](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/gradeby-gradedalgebra--50fe2bcd3ea9fa05a4593e12.md) | 165 | `declaration-track:50fe2bcd3ea9fa05a4593e12abd213f4310eb47634276c3320f862c3469c3bfc` |
| 16 | `theorem` | [decomposeAux_eq_decompose](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/decomposeaux-eq-decompose--598769296029a8b899d3dc07.md) | 169 | `result-track:598769296029a8b899d3dc076c1a2770337ce79ffbfc91a479417dd11493cfcf` |
| 17 | `theorem` | [GradesBy.decompose_single](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/gradesby-decompose-single--afce73783c1df7c92f90154b.md) | 174 | `result-track:afce73783c1df7c92f90154b955e93dc8d5943d89a04df474bdeba25f743ccc6` |
| 18 | `instance` | [grade.gradedAlgebra](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/grade-gradedalgebra--6b179a7a331a4524413f812b.md) | 179 | `declaration-track:6b179a7a331a4524413f812b5d5c748a4a46e52d05bd6b6882988e308841231f` |
| 19 | `theorem` | [grade.decompose_single](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/grade-decompose-single--1c70858868e732bc5a2c2544.md) | 182 | `result-track:1c70858868e732bc5a2c2544b56e90c41e7e42ced394dd58ee0fbd1f63a7c59d` |
| 20 | `theorem` | [gradeBy.isInternal](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/gradeby-isinternal--0b154a8746db3a5a14bf0656.md) | 188 | `result-track:0b154a8746db3a5a14bf065621645544857a7af4700a9ed629bed39339b6b454` |
| 21 | `theorem` | [grade.isInternal](../../../../mathematics/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/declarations/grade-isinternal--59f3dc129511aec8846e0635.md) | 192 | `result-track:59f3dc129511aec8846e0635f103ecdf2f188c4295927a377ce88a9d3809de45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
