# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Free.Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1604bbbf49e2b6b63152d30c4fc7c4907fce3fcf",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1604bbbf49e2b6b63152d30c4fc7c4907fce3fcf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Pseudofunctor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeBicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/freebicategory--60deb681965f2d86e7169ac0.md) | 33 | `declaration-track:60deb681965f2d86e7169ac0ee356810534649e613be891a1fb1b6ecaad4549a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/instance--924bb4aa3cc2fd97d522f4e5.md) | 36 | `declaration-track:924bb4aa3cc2fd97d522f4e5f5d8ce9c8324edd497921fd0279c8b0ad7cc6d8b` |
| 3 | `inductive` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/hom--06254d45b1b9e8004914bfba.md) | 47 | `declaration-track:06254d45b1b9e8004914bfba91fb47a52a506c1bb677063e5d2ae4e5af902096` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/instance--a3686e9211810b797b7c7684.md) | 52 | `declaration-track:a3686e9211810b797b7c7684fcc0214bd2626e9e908f3a7a740d303492e24959` |
| 5 | `instance` | [quiver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/quiver--624fd34c0475d1333244e10c.md) | 55 | `declaration-track:624fd34c0475d1333244e10c715ce47cc44a6d0e3987fbd2a59f77142121704d` |
| 6 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/categorystruct--d3ee31ea7c1041ac3f3ff9bb.md) | 58 | `declaration-track:d3ee31ea7c1041ac3f3ff9bba08a5704a9d6b5e8f924a3a01c231806d35eecd9` |
| 7 | `inductive` | [Hom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/hom--4bcd5871a74a384d6b3a317e.md) | 63 | `declaration-track:4bcd5871a74a384d6b3a317ef02bbf6157e42bc4fd4f190aef82d9451d441f93` |
| 8 | `inductive` | [Rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/rel--6433b03512fab82bf3fa3c8d.md) | 102 | `declaration-track:6433b03512fab82bf3fa3c8d4c433f5f680728eabcc0eda4dee963ddac0fe8b5` |
| 9 | `instance` | [homCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/homcategory--0bf7124af1529c3e35d7aa64.md) | 146 | `declaration-track:0bf7124af1529c3e35d7aa6418518aa36c274504779b78e20cd18b9a01c80b42` |
| 10 | `instance` | [bicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/bicategory--e5de32c1ce50ef887c8eca14.md) | 161 | `declaration-track:e5de32c1ce50ef887c8eca1403ff4825e78e0ee455fdb3fd069392fbc486872f` |
| 11 | `abbrev` | [Hom₂.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/hom-mk--792fc86752f507dcbfd36959.md) | 212 | `declaration-track:792fc86752f507dcbfd3695989d61907e645ba7dab340bf413a64de2bf968f84` |
| 12 | `theorem` | [mk_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-vcomp--5231ace1a95ab099c8cb2726.md) | 216 | `result-track:5231ace1a95ab099c8cb272611f2f284c0456f9765b0febeb4007e54a8adb548` |
| 13 | `theorem` | [mk_whisker_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-whisker-left--f21cbaadabeffa326f40cfe5.md) | 221 | `result-track:f21cbaadabeffa326f40cfe56cd0d48b746c3ab7cdfa3d1e976f8c658fd78378` |
| 14 | `theorem` | [mk_whisker_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-whisker-right--a0a1a56d3557500e5b4fd846.md) | 226 | `result-track:a0a1a56d3557500e5b4fd846edfc5db93d4e9b9a9daad48596e5e701509dda76` |
| 15 | `theorem` | [comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/comp-def--0fd98f1ccc8b87c0b1ace011.md) | 236 | `result-track:0fd98f1ccc8b87c0b1ace0118cb11a3cd030db0601bb71b5d644f9e1c72619b7` |
| 16 | `theorem` | [mk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-id--e6d78b358539a04bc32357c0.md) | 240 | `result-track:e6d78b358539a04bc32357c0b34f8c238b7411d93b6abe0a535fa8b7b9c7cecc` |
| 17 | `theorem` | [mk_associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-associator-hom--f2826be1116194ae0047dd59.md) | 244 | `result-track:f2826be1116194ae0047dd59881f435874e14dd88075a7a0540cc27b2230339d` |
| 18 | `theorem` | [mk_associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-associator-inv--55b913643b8329151a72e91a.md) | 248 | `result-track:55b913643b8329151a72e91a1462ddedaa0838645b788ae06e63bdb51af6c35b` |
| 19 | `theorem` | [mk_left_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-left-unitor-hom--4343ee08235b7f447520e8c9.md) | 252 | `result-track:4343ee08235b7f447520e8c98f06c94672408f82c7b17992b8da2ae156d758b4` |
| 20 | `theorem` | [mk_left_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-left-unitor-inv--2d209b05d071ec231605736b.md) | 256 | `result-track:2d209b05d071ec231605736b496044ba35a1d049476feb71b23ffc8227189027` |
| 21 | `theorem` | [mk_right_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-right-unitor-hom--39599f8347889a40a5e252b4.md) | 260 | `result-track:39599f8347889a40a5e252b4d981c7970bfa84530cf96e3af6977b6806195cfb` |
| 22 | `theorem` | [mk_right_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/mk-right-unitor-inv--c7bc8e563f5a5768924e2aa1.md) | 264 | `result-track:c7bc8e563f5a5768924e2aa11d7e1c9d3c03d0b3b58b39b82c16294d56f16f76` |
| 23 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/of--f71c0a023d527ea0b80ed38b.md) | 269 | `declaration-track:f71c0a023d527ea0b80ed38bf03636341904557fb1fcb2c4fcad22de27254ab3` |
| 24 | `def` | [liftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/lifthom--f2d9781f007b74fc505c6f57.md) | 282 | `declaration-track:f2d9781f007b74fc505c6f570072dbb64cbd5e1a545d8c8c5a4c699a7e526547` |
| 25 | `theorem` | [liftHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/lifthom-id--dae220ea4251546860306ca2.md) | 288 | `result-track:dae220ea4251546860306ca26d94deee7a8dd6f98cff7b6e24c8e87adc1a1446` |
| 26 | `theorem` | [liftHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/lifthom-comp--9f1ea1f8792ea13133468953.md) | 292 | `result-track:9f1ea1f8792ea13133468953ac5e330bd3af783918ad37a19d11324ae7172d24` |
| 27 | `def` | [liftHom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/lifthom--a7d67a7d4c5a1a4cf8733a76.md) | 304 | `declaration-track:a7d67a7d4c5a1a4cf8733a767878f043c3b0b9a74791b98b3e4cb9dcad553f5f` |
| 28 | `theorem` | [liftHom₂_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/lifthom-congr--9457d2817b90b9a87850cbd1.md) | 317 | `result-track:9457d2817b90b9a87850cbd17ef68db81d3f6645956dc5a46c5c9f5674ac159f` |
| 29 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/declarations/lift--8a1bbd160d013cccb4014ce7.md) | 324 | `declaration-track:8a1bbd160d013cccb4014ce7bc38293decc0af2ae7cadd9ca867366db0c9c110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
