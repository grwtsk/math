# Verification target: GRWTSK.Algebra.UniversalAlgebra.GradedMulAction.Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f093be968869ed21b16a69bdc7f15e97658d367",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f093be968869ed21b16a69bdc7f15e97658d367`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/gsmul--304f62138308753df189cbf4.md) | 69 | `declaration-track:304f62138308753df189cbf4d2a7219d0f53305f57f483878e82f4a0e612d3d0` |
| 2 | `instance` | [GMul.toGSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/gmul-togsmul--28d8ba6c879d32e74ad8ae78.md) | 74 | `declaration-track:28d8ba6c879d32e74ad8ae7843e2db027d0cf74c0163dc49efc0adc37e493302` |
| 3 | `instance` | [GSMul.toSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/gsmul-tosmul--27beef78d237c71377315803.md) | 76 | `declaration-track:27beef78d237c71377315803a0613cd46ec8895f24009a1846e9b88d796bbb75` |
| 4 | `theorem` | [mk_smul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/mk-smul-mk--039bcaaf17067a885c4ec501.md) | 79 | `result-track:039bcaaf17067a885c4ec5014a9d75a7662a92935b520d06f98b5a3ef5393f2d` |
| 5 | `class` | [GMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/gmulaction--5e80b4fa177ddec8172d33fa.md) | 84 | `declaration-track:5e80b4fa177ddec8172d33fab0b2bc8009bb68653cb70e42031b5be39956ac9c` |
| 6 | `instance` | [GMonoid.toGMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/gmonoid-togmulaction--390572c6ad50181885e82f03.md) | 91 | `declaration-track:390572c6ad50181885e82f033112ef04c63de2920c5da49ac5756085fe057532` |
| 7 | `instance` | [GMulAction.toMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/gmulaction-tomulaction--148f1f0497f1f8ed8ae842bd.md) | 96 | `declaration-track:148f1f0497f1f8ed8ae842bd36d1c25c96cba7b275979ccf22a110f26a213606` |
| 8 | `class` | [SetLike.GradedSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/setlike-gradedsmul--45410bfc85d3356692cd6fbd.md) | 113 | `declaration-track:45410bfc85d3356692cd6fbdf4a4117d5fc70b6758c62588be0ddc8ba3437b23` |
| 9 | `instance` | [SetLike.toGSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/setlike-togsmul--24e44f4d1938404139282bbd.md) | 118 | `declaration-track:24e44f4d1938404139282bbd8e91e202ba958f550e6c1dfbb87d5342f1febdb0` |
| 10 | `theorem` | [SetLike.coe_GSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/setlike-coe-gsmul--597dab9b1b0108c90473129d.md) | 124 | `result-track:597dab9b1b0108c90473129dc7862ac1b28a746920329bbde3fc1bd3b153b8ea` |
| 11 | `instance` | [SetLike.GradedMul.toGradedSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/setlike-gradedmul-togradedsmul--8cf0ce54a7ba9d0cb3777e54.md) | 130 | `declaration-track:8cf0ce54a7ba9d0cb3777e54e8e6c06b60018d641a7e6666e95be92ba39b1451` |
| 12 | `theorem` | [SetLike.IsHomogeneousElem.graded_smul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variantf8bc3240f60035f0cda8c36195d83e4e92f1cdef4704aa1144ef65ac4188ef44.lean/declarations/setlike-ishomogeneouselem-graded-smul--6a58ddcb109aae5fa5a4e983.md) | 140 | `result-track:6a58ddcb109aae5fa5a4e983d76fc4d0be0c4248886957ca55598070c46867db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
