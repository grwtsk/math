# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "233732d6944d569c908994a860106520a5be9563",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `233732d6944d569c908994a860106520a5be9563`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/const--b47683755af8d0b14ed76849.md) | 38 | `declaration-track:b47683755af8d0b14ed76849e97e73cf6c747b09c3e891dd05c2c7c86ad844be` |
| 2 | `instance` | [Const.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/const-inhabited--b155adc0fcea0dabe3a96e7d.md) | 40 | `declaration-track:b155adc0fcea0dabe3a96e7d5d1447d5ee9471191693dd1322e6fefd02d7729a` |
| 3 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/mk--1a92770ba52bcf2f3c26199e.md) | 49 | `declaration-track:1a92770ba52bcf2f3c26199e098bfad0712e63c55b4905d342f45ab0a0725ac3` |
| 4 | `def` | [get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/get--9317727b6cd40c585bd18409.md) | 52 | `declaration-track:9317727b6cd40c585bd1840990300db830f4bab5a509b33412eac07c04dca369` |
| 5 | `theorem` | [mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/mk-get--8651f590b0fde363e0125a1c.md) | 55 | `result-track:8651f590b0fde363e0125a1ca75e95706c4f9fa244daeeaa147d182ab89bda40` |
| 6 | `theorem` | [get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/get-mk--9493e200be9ce87d5bc1c630.md) | 58 | `result-track:9493e200be9ce87d5bc1c63049388146615a70953ffdf8cd89019f9d06099423` |
| 7 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/map--090875cc8f813e34b83a4201.md) | 61 | `declaration-track:090875cc8f813e34b83a420153857cadf8d43f15b98caee667d941bc2b4c9192` |
| 8 | `instance` | [MvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/mvfunctor--ad2c3185df240b990ab29adb.md) | 63 | `declaration-track:ad2c3185df240b990ab29adb25f3247421074be2147b0b42987f65e80ef0f0ce` |
| 9 | `theorem` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/map-mk--13ee5312085a3e0e7cd88a4e.md) | 65 | `result-track:13ee5312085a3e0e7cd88a4ef22ef843102792307e2e1f9bef52c1a52a93b7ef` |
| 10 | `theorem` | [get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/get-map--c5375ff4aa8c42080f53c40e.md) | 67 | `result-track:c5375ff4aa8c42080f53c40ed4f7add5479c7108951f58d21de94c183471dd56` |
| 11 | `instance` | [mvqpf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b.lean/declarations/mvqpf--a6d0623fc692a484ab3fbb5f.md) | 69 | `declaration-track:a6d0623fc692a484ab3fbb5f92757527a847ae129dcb243f2533883a5a68535c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
