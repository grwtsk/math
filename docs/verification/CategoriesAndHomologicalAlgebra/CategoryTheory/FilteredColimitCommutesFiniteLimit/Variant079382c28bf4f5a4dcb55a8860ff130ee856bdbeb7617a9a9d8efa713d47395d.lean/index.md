# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesFiniteLimit.Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8bb1622c853c52dfc3240a13e8efc7c20df4790",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8bb1622c853c52dfc3240a13e8efc7c20df4790`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_lim_obj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/comp-lim-obj-ext--a2d8d7404eff2d3663c2be15.md) | 59 | `result-track:a2d8d7404eff2d3663c2be158e2973c37bc84ebd72edc21789ac596176a2195f` |
| 2 | `theorem` | [colimitLimitToLimitColimit_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/colimitlimittolimitcolimit-injective--acc6f80bbd49f4db9cf9a1b1.md) | 81 | `result-track:acc6f80bbd49f4db9cf9a1b12e1fc201a3113b43beb7520b68752a05f7a9db79` |
| 3 | `theorem` | [colimitLimitToLimitColimit_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/colimitlimittolimitcolimit-surjective--0b123ec3b5cdb20259d2a045.md) | 171 | `result-track:0b123ec3b5cdb20259d2a045604e3a87404fe3ea82ede109f585aa0f7209a1d1` |
| 4 | `instance` | [colimitLimitToLimitColimit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/colimitlimittolimitcolimit-isiso--0e3eaa36b6912406e5178a9c.md) | 330 | `declaration-track:0e3eaa36b6912406e5178a9c5fbcbc0c65ef0b1217846ede077fc91b9f056a6c` |
| 5 | `instance` | [colimitLimitToLimitColimitCone_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/colimitlimittolimitcolimitcone-iso--bc925f55238611a35a5e2eff.md) | 334 | `declaration-track:bc925f55238611a35a5e2effff242f1ea0496376d9f3fa85847f76c88394c11d` |
| 6 | `instance` | [filtered_colim_preservesFiniteLimits_of_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/filtered-colim-preservesfinitelimits-of-types--5311da5787ea01cd1ba3cea4.md) | 343 | `declaration-track:5311da5787ea01cd1ba3cea459de835a55294e566111f59852e11d7045827696` |
| 7 | `instance` | [filtered_colim_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/filtered-colim-preservesfinitelimits--fff82540cca806489c4e3d1a.md) | 362 | `declaration-track:fff82540cca806489c4e3d1a3015f7b13c3a6c8ca8b08318254c6c8f86fc08dd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/instance--aa14445c67fac6b570042098.md) | 372 | `declaration-track:aa14445c67fac6b570042098ac9e01d4381bac07b993acc4d5230dc0bf2b4ecf` |
| 9 | `def` | [colimitLimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/colimitlimitiso--188eddd4923661642bd80ad2.md) | 390 | `declaration-track:188eddd4923661642bd80ad2b209558d3a4d5b40cf8ebc7b121d23198cfbc4fa` |
| 10 | `theorem` | [ι_colimitLimitIso_limit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant079382c28bf4f5a4dcb55a8860ff130ee856bdbeb7617a9a9d8efa713d47395d.lean/declarations/colimitlimitiso-limit--50ee0f9ebc1514282eeb37bc.md) | 395 | `result-track:50ee0f9ebc1514282eeb37bc12c0995bcaad3f857ccc67436171fcbdae11facf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
