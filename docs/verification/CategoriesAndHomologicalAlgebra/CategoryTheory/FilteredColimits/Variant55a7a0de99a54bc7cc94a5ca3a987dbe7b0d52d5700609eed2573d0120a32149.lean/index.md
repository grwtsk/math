# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbfb2ae941aa1aed8564a48a7f6414fefead3bd0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbfb2ae941aa1aed8564a48a7f6414fefead3bd0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.FilteredColimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [G](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/g--1f862a67e1892bd35d3aef26.md) | 49 | `declaration-track:1f862a67e1892bd35d3aef269d64623d076af043d026ea1f0dda404b74680948` |
| 2 | `abbrev` | [G.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/g-mk--dec5427e4529256f777c0609.md) | 54 | `declaration-track:dec5427e4529256f777c06096474b155d775be7bc8d395f215b8612e43795267` |
| 3 | `theorem` | [G.mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/g-mk-eq--ec7ac20bc1099b59841a6a90.md) | 58 | `result-track:ec7ac20bc1099b59841a6a90385045372d8568613225dde2fab43948f27c9ec9` |
| 4 | `def` | [colimitInvAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimitinvaux--3f711034ee0fb45ba9fc5118.md) | 65 | `declaration-track:3f711034ee0fb45ba9fc511884d66c491a2e47e039f264f65d5207fd6f1d103f` |
| 5 | `theorem` | [colimitInvAux_eq_of_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimitinvaux-eq-of-rel--3983cb9bbb1715b67e2db838.md) | 69 | `result-track:3983cb9bbb1715b67e2db83863a50db1eb017976c7b172da5df2de9a7933641b` |
| 6 | `instance` | [colimitInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimitinv--642c33f0881b954b4fd0dd05.md) | 80 | `declaration-track:642c33f0881b954b4fd0dd05e4625c6f1ad36fffa4a17218c69011467e330c16` |
| 7 | `theorem` | [colimit_inv_mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimit-inv-mk-eq--b5ccac1ce1b15693034efbfb.md) | 89 | `result-track:b5ccac1ce1b15693034efbfbb73d6bcbf849f438276a5a5706d018d6b72a077c` |
| 8 | `instance` | [colimitGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimitgroup--a725bf5c8751f9db0d383c9f.md) | 93 | `declaration-track:a725bf5c8751f9db0d383c9f33e52814a43162fbb859a2bb0eb902f2c6f3054c` |
| 9 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimit--75ad437594d1ef735b98eee6.md) | 104 | `declaration-track:75ad437594d1ef735b98eee6dacd95ff207cc49271dd3a3446ca9c85a860a5c7` |
| 10 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimitcocone--cc3e5fc308df6f5d364b3e34.md) | 109 | `declaration-track:cc3e5fc308df6f5d364b3e343857381e5eb5a4a93e83bed057f9ea436e58329b` |
| 11 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimitcoconeiscolimit--71a5268c03a140e4e0c03ab9.md) | 118 | `declaration-track:71a5268c03a140e4e0c03ab9795a72d4b3a67cd63d8946bbc7d2b41b9e7b8875` |
| 12 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/forget-mon-preservesfilteredcolimits--957abc85c0a17bf3b9b77d09.md) | 133 | `declaration-track:957abc85c0a17bf3b9b77d0904f89da10a3c87089fc846812ca7d61a5856e9bd` |
| 13 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/forget-preservesfilteredcolimits--c49f06e670e379a4b792be10.md) | 141 | `declaration-track:c49f06e670e379a4b792be103d22782bb9c172eb2864369214e42a4cc7983ab2` |
| 14 | `abbrev` | [G](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/g--854ed2b915fb30cb4d67b87e.md) | 163 | `declaration-track:854ed2b915fb30cb4d67b87efcc820997b931f89db776f2675af4a07c2d6eaa4` |
| 15 | `instance` | [colimitCommGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimitcommgroup--bf0ffa7e65d82581ce64faa3.md) | 167 | `declaration-track:bf0ffa7e65d82581ce64faa3c1d6da91019584ba008630afdb73f137a92a1c5a` |
| 16 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimit--8be847c1043b6ad4be62ae18.md) | 174 | `declaration-track:8be847c1043b6ad4be62ae18229a1dcd957489237a13e4e6b644334d14443506` |
| 17 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimitcocone--2c26f800ec42ccf890b73b73.md) | 179 | `declaration-track:2c26f800ec42ccf890b73b73d844a5013bb71374f7c705f03499d1502077b233` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/colimitcoconeiscolimit--502d5cba60bd1a55525dda5b.md) | 188 | `declaration-track:502d5cba60bd1a55525dda5b6eced21055a34285ddb7f4764e6775dfe2d62390` |
| 19 | `instance` | [forget₂Group_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/forget-group-preservesfilteredcolimits--333bb473f82b1338eaebe2bc.md) | 203 | `declaration-track:333bb473f82b1338eaebe2bcc6d5a7cfc3e2f22506056957a395fc1fc6178f32` |
| 20 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant55a7a0de99a54bc7cc94a5ca3a987dbe7b0d52d5700609eed2573d0120a32149.lean/declarations/forget-preservesfilteredcolimits--9f73d8ee00497ba5f504d069.md) | 213 | `declaration-track:9f73d8ee00497ba5f504d0698e40c4ad9a51a75847eb28f0d1c55868d29d89f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
