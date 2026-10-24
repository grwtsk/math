# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomEquiv.Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "315d8a4ee63a637630ccd7c697f1221ccce767de",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `315d8a4ee63a637630ccd7c697f1221ccce767de`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.LocalizerMorphism` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/hommap--52412e464271f18fab919244.md) | 54 | `declaration-track:52412e464271f18fab9192446781269e894d5b85e520811d5aa9a7580a2b64c3` |
| 2 | `lemma` | [homMap_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/hommap-map--3b9f23328ce0e5ef59334261.md) | 60 | `result-track:3b9f23328ce0e5ef59334261639f4f36fbc498937b359b7e5f10e4373d53086c` |
| 3 | `lemma` | [homMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/hommap-id--220cea3bef7c1a13ecfc1451.md) | 68 | `result-track:220cea3bef7c1a13ecfc1451749564323d12cb60084dfb6e8236b68cd92d437e` |
| 4 | `lemma` | [homMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/hommap-comp--41c15861d7d214b62c3647e8.md) | 73 | `result-track:41c15861d7d214b62c3647e80c3ebfacac77fc3ce8f983053bc31c39b08963bc` |
| 5 | `lemma` | [homMap_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/hommap-apply--2f7cdf240a381fdb752c6922.md) | 78 | `result-track:2f7cdf240a381fdb752c6922e790870f240ea93cc699a4873382be513298ce76` |
| 6 | `lemma` | [id_homMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/id-hommap--a7c052d39b9d2f2061bd3e2a.md) | 95 | `result-track:a7c052d39b9d2f2061bd3e2aaa5478532ba66897a93ddcc1c72f308e7e98b600` |
| 7 | `lemma` | [homMap_homMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/hommap-hommap--262fe5a811ac7a1ceb22f214.md) | 100 | `result-track:262fe5a811ac7a1ceb22f214820719d205c17c8d29fc2c67a8f7df2fe185271f` |
| 8 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/homequiv--66ccb5f25a199bfc39e50862.md) | 125 | `declaration-track:66ccb5f25a199bfc39e50862583e750e8972e9130816d753c5506919675d18f2` |
| 9 | `lemma` | [homEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/homequiv-symm-apply--b06a7ff92320cf35271cb497.md) | 137 | `result-track:b06a7ff92320cf35271cb497d59cbcebe35acb3df4ea26aeedfc611b476b804d` |
| 10 | `lemma` | [homEquiv_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/homequiv-eq--ae5885e23ec2c054962933b7.md) | 140 | `result-track:ae5885e23ec2c054962933b767637b77065d6eec7e092a15ce6041aba25677f2` |
| 11 | `lemma` | [homEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/homequiv-refl--5f95168fd35a15c9e5ca8a52.md) | 146 | `result-track:5f95168fd35a15c9e5ca8a521528911f029bb3fed2360125b31023354262cc96` |
| 12 | `lemma` | [homEquiv_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/homequiv-trans--0226265d6d3600768882a9e0.md) | 150 | `result-track:0226265d6d3600768882a9e0f3d8dfd57c62bf14a02d38e45765a778e39de104` |
| 13 | `lemma` | [homEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/homequiv-comp--f7ce585b28c9bd56a9713708.md) | 155 | `result-track:f7ce585b28c9bd56a9713708a1a104e2587dd0f031d58f3da072df1a32af19b0` |
| 14 | `lemma` | [homEquiv_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/homequiv-map--f02b14e236a9f2fb0ead5a8e.md) | 160 | `result-track:f02b14e236a9f2fb0ead5a8ee01a7bc616a8f731ff9968e9615a0e4fabbe72eb` |
| 15 | `lemma` | [homEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/homequiv-id--4ad27300eeac269e47bd820a.md) | 165 | `result-track:4ad27300eeac269e47bd820a552438864916a289da04a9d04bfae5e427dfcebb` |
| 16 | `lemma` | [homEquiv_isoOfHom_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/declarations/homequiv-isoofhom-inv--ac7ebaec8ff2d2bfecd55358.md) | 168 | `result-track:ac7ebaec8ff2d2bfecd5535804a08b25d06dc276528006cf4bfeb96bede59d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
