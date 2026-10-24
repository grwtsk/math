# Verification target: GRWTSK.Algebra.Grading.Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f8c9070af9a8a62f99f45f24aeddfe4466b4546",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f8c9070af9a8a62f99f45f24aeddfe4466b4546`.

Source path: `GRWTSK/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Internal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [gradeBy](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/gradeby--c04125b6c61e6737c5ea46a9.md) | 54 | `declaration-track:c04125b6c61e6737c5ea46a9b86f13ec8b008b3d4a97745415247fedd6ba0ff2` |
| 2 | `abbrev` | [grade](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/grade--69aabae5361afa110b97fe03.md) | 62 | `declaration-track:69aabae5361afa110b97fe036e96ca4aafbbd7e4743320397d904d3ac3bf585d` |
| 3 | `theorem` | [gradeBy_id](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/gradeby-id--e0b8fb8ecdbc12f19989bfce.md) | 65 | `result-track:e0b8fb8ecdbc12f19989bfceb93a2652ca7cc01ce2742278ade3c652b32dcd88` |
| 4 | `theorem` | [mem_gradeBy_iff](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/mem-gradeby-iff--354731829393065034c0c639.md) | 67 | `result-track:354731829393065034c0c63908cc20b801f43f1a2534da1c9078ee9432c618ef` |
| 5 | `theorem` | [mem_grade_iff](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/mem-grade-iff--ee5281859a78e090be75198e.md) | 70 | `result-track:ee5281859a78e090be75198e4969c8abe8f9e1cfab0ca12537f778a1ca1c0bdd` |
| 6 | `theorem` | [mem_grade_iff'](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/mem-grade-iff--cee9f02df4ef34e2f5c60936.md) | 74 | `result-track:cee9f02df4ef34e2f5c609366dc01d10e6b36fe863113aee5abfdbcc3bc7f4bb` |
| 7 | `theorem` | [grade_eq_lsingle_range](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/grade-eq-lsingle-range--d24e6ac6a41848d0053dddbc.md) | 82 | `result-track:d24e6ac6a41848d0053dddbc888b0e0d7a49b22cd989fd8814a2c7ef48f6c24a` |
| 8 | `theorem` | [single_mem_gradeBy](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/single-mem-gradeby--6a1afbedbb1f25493c9ec1cc.md) | 86 | `result-track:6a1afbedbb1f25493c9ec1cc8c05553de60d3ba71c23fb948947db3ac3bd33fb` |
| 9 | `theorem` | [single_mem_grade](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/single-mem-grade--42e3cd8145b99f543118b7da.md) | 91 | `result-track:42e3cd8145b99f543118b7da4735e4064fd41c142c3d5d3fd1e71ca24f19b524` |
| 10 | `instance` | [gradeBy.gradedMonoid](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/gradeby-gradedmonoid--029dbcbbad5cdd7037b8ae73.md) | 98 | `declaration-track:029dbcbbad5cdd7037b8ae73874a9c55b8bcaf10097dd44eb4a52be70f3e9c57` |
| 11 | `instance` | [grade.gradedMonoid](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/grade-gradedmonoid--c5e5e8ec798e47297a474dcf.md) | 110 | `declaration-track:c5e5e8ec798e47297a474dcf001dc053323a51051f1cc106d9f7544277ddd10d` |
| 12 | `def` | [decomposeAux](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/decomposeaux--ff5c951fbaa62b33e0dac0ff.md) | 118 | `declaration-track:ff5c951fbaa62b33e0dac0ff71ac7364f94cdc27cd8a3afd604e2b08269fb825` |
| 13 | `theorem` | [decomposeAux_single](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/decomposeaux-single--be0feb48cbba318b39ef3ac5.md) | 135 | `result-track:be0feb48cbba318b39ef3ac55f21ba81d9c00a18dcb008c24de576ad730d858c` |
| 14 | `theorem` | [decomposeAux_coe](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/decomposeaux-coe--2cbc2c7245c5b0569a3524f4.md) | 147 | `result-track:2cbc2c7245c5b0569a3524f427cd9784eb559a4b2c538212f83e49ec19a1be13` |
| 15 | `instance` | [gradeBy.gradedAlgebra](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/gradeby-gradedalgebra--cf827ea84bd8c677fdb1a895.md) | 173 | `declaration-track:cf827ea84bd8c677fdb1a895ada245d26ca600e710d44904d507934d8979348b` |
| 16 | `instance` | [gradeBy.decomposition](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/gradeby-decomposition--d773718e7d6d849248e3c3bb.md) | 183 | `declaration-track:d773718e7d6d849248e3c3bb6eaa0023e5f17d2b43db9644b3da7845cf992757` |
| 17 | `theorem` | [decomposeAux_eq_decompose](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/decomposeaux-eq-decompose--95c1576c719753166707a36d.md) | 186 | `result-track:95c1576c719753166707a36dd3a7ed2b3613d74a3f10e46e8e020eac6b47a33e` |
| 18 | `theorem` | [GradesBy.decompose_single](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/gradesby-decompose-single--d045460a856a23c709efa4c0.md) | 191 | `result-track:d045460a856a23c709efa4c067da2deb2fef21485128377d02026a01e391b5c5` |
| 19 | `instance` | [grade.gradedAlgebra](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/grade-gradedalgebra--f88916f510bce80360178011.md) | 197 | `declaration-track:f88916f510bce80360178011443119b8d530852668e1a230972895237aa505ee` |
| 20 | `instance` | [grade.decomposition](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/grade-decomposition--4a488409d04c2db007cb2370.md) | 201 | `declaration-track:4a488409d04c2db007cb2370756be8f7aa93441af07ff514fb3533d0f3850f9e` |
| 21 | `theorem` | [grade.decompose_single](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/grade-decompose-single--0adc5b422274e459835eb129.md) | 204 | `result-track:0adc5b422274e459835eb129c34bd7f095b3b73eb45140bf0617e8df7f8f1d79` |
| 22 | `theorem` | [gradeBy.isInternal](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/gradeby-isinternal--c32704e33ecf2d1406611e17.md) | 210 | `result-track:c32704e33ecf2d1406611e174bbc22dba8c69684f70caf1b0073e7bbdf5e4e74` |
| 23 | `theorem` | [grade.isInternal](../../../../mathematics/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/declarations/grade-isinternal--e1f4da367358b95038fa07aa.md) | 214 | `result-track:e1f4da367358b95038fa07aa7ba16bed824dbdb96b8f17c3fcc267fcbf1c8f51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
