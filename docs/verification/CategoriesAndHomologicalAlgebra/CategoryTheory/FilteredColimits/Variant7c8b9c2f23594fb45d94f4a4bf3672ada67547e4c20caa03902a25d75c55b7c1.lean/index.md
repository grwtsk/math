# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cabd926dfb7aafd3cdee91eaa7dfdda854b9e70",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cabd926dfb7aafd3cdee91eaa7dfdda854b9e70`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.FilteredColimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/m--768d4a0ce360f4522dc29f82.md) | 49 | `declaration-track:768d4a0ce360f4522dc29f82188b8c67ff17f7a51c333fcc96ef0fdf2a19d878` |
| 2 | `abbrev` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/m-mk--a17c7b8b3e71136c9712a754.md) | 56 | `declaration-track:a17c7b8b3e71136c9712a7548080dd87cfe590996d16c6c66b1eccd59e2a39f9` |
| 3 | `theorem` | [M.mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/m-mk-eq--d419e06dfdd1d2f5ad36de4e.md) | 61 | `result-track:d419e06dfdd1d2f5ad36de4ecac4058283581cdd5be9d74c90d615e915659c32` |
| 4 | `def` | [colimitSMulAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitsmulaux--13201e00af84c5d6d967b92a.md) | 68 | `declaration-track:13201e00af84c5d6d967b92ad64e78ac1ef620830716ff1cc286fed08b0e8268` |
| 5 | `theorem` | [colimitSMulAux_eq_of_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitsmulaux-eq-of-rel--28531526cc00792416512247.md) | 73 | `result-track:28531526cc0079241651224716ad8b260213a21b0c4acc3c05d36d63919d99f5` |
| 6 | `instance` | [colimitHasSmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimithassmul--dcfa9705aaf9548b96684f65.md) | 85 | `declaration-track:dcfa9705aaf9548b96684f65eb53539f69c0fa23963f24a221c39bfd4bbbcf33` |
| 7 | `theorem` | [colimit_smul_mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimit-smul-mk-eq--ad9937273ea51b3c88bc39fb.md) | 96 | `result-track:ad9937273ea51b3c88bc39fb489f10e5ef115b3398fe3d94c976829964b12c24` |
| 8 | `theorem` | [colimitModule.one_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitmodule-one-smul--d96bf79fcbcb967160672bdd.md) | 101 | `result-track:d96bf79fcbcb967160672bddff36103df78c44e0d41ec13db8e8b837c73e8560` |
| 9 | `instance` | [colimitMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitmulaction--a62130b81999f7c15451180f.md) | 108 | `declaration-track:a62130b81999f7c15451180f8097e66c5c85de16f4404ae90ff34153694710a9` |
| 10 | `instance` | [colimitSMulWithZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitsmulwithzero--0dc8a1a2a770006c8fc59b7d.md) | 118 | `declaration-track:0dc8a1a2a770006c8fc59b7d7e7cb3095d28dcb2eac068fc1b995ea0735040a5` |
| 11 | `theorem` | [colimitModule.add_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitmodule-add-smul--ae6e937debeaffc1ec491333.md) | 128 | `result-track:ae6e937debeaffc1ec491333dd8d99789415d274f777d94e57bdbf5902dc8e6e` |
| 12 | `instance` | [colimitModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitmodule--fc6ddacd0b9bcead25e3e78b.md) | 135 | `declaration-track:fc6ddacd0b9bcead25e3e78b05102d53f7fff04fabf936e2a01c2c91d5161a81` |
| 13 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimit--34e69de40de528ed28d5ba21.md) | 151 | `declaration-track:34e69de40de528ed28d5ba21e863d72d84687bbae8281af2d98dfeab54d6c7b3` |
| 14 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/coconemorphism--f54140db48190aa6f67da171.md) | 157 | `declaration-track:f54140db48190aa6f67da171a90e410c2385f264b292732de54b912e8e4e06b7` |
| 15 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitcocone--18304ec7316857d254d9f401.md) | 165 | `declaration-track:18304ec7316857d254d9f401f21c9c738faf19ed13c062992389deb8bd595521` |
| 16 | `def` | [colimitDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitdesc--d5d9c70ff83575be9dd91211.md) | 178 | `declaration-track:d5d9c70ff83575be9dd91211badedc432018197246f3adce8b70456f53bd4cb5` |
| 17 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/colimitcoconeiscolimit--6f151dfb115a55a176fd508d.md) | 190 | `declaration-track:6f151dfb115a55a176fd508de494f513b06b71001813c589b3665d4b67f112a1` |
| 18 | `instance` | [forget₂AddCommGroupPreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/forget-addcommgrouppreservesfilteredcolimits--220060d02d7cc5448957114c.md) | 203 | `declaration-track:220060d02d7cc5448957114c5be12497e4e1fd8600d3af28d41eed8298b37263` |
| 19 | `instance` | [forgetPreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/declarations/forgetpreservesfilteredcolimits--c326d9cbbff5b9e3d57d7cd4.md) | 215 | `declaration-track:c326d9cbbff5b9e3d57d7cd450f0939347f851507aca31223a6fd8124ecac89e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
