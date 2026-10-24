# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Canonical.Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "662d7704698468f11564511370e234f5d02cac62",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `662d7704698468f11564511370e234f5d02cac62`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isSheafFor_bind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/issheaffor-bind--6abafeb35d5fa3d478c9f2e3.md) | 64 | `result-track:6abafeb35d5fa3d478c9f2e368d94f349708388ee70a5fc5097ce23d3a2e3354` |
| 2 | `theorem` | [isSheafFor_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/issheaffor-trans--e7282a845a8bf734a523edac.md) | 123 | `result-track:e7282a845a8bf734a523edac9fca291fc07fb7909f58318d0af893e447caf75b` |
| 3 | `def` | [finestTopologySingle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/finesttopologysingle--286903751689765d23d6d24b.md) | 153 | `declaration-track:286903751689765d23d6d24b562a7546bceadd480bf20ae497ae471ba47d55f9` |
| 4 | `def` | [finestTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/finesttopology--39aa616467ddda21ebd1b659.md) | 176 | `declaration-track:39aa616467ddda21ebd1b659dfbf2bd15c59a3c092d11b9bec9d89d398511ae6` |
| 5 | `theorem` | [sheaf_for_finestTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/sheaf-for-finesttopology--65a4a8ebb26274d7c822c732.md) | 180 | `result-track:65a4a8ebb26274d7c822c732bd1d08f1a16dc93e4ada3c0b825ed49b235536d8` |
| 6 | `theorem` | [le_finestTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/le-finesttopology--2a99987c73dbedafb98bad32.md) | 187 | `result-track:2a99987c73dbedafb98bad325a6683a2b926027b68deb524ff33de41a521297a` |
| 7 | `def` | [canonicalTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/canonicaltopology--26f5a3a07a0efce78535d2ef.md) | 197 | `declaration-track:26f5a3a07a0efce78535d2efa36f329ff80a370db32d4aa774a331840745a36d` |
| 8 | `theorem` | [isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/issheaf-yoneda-obj--71b73dfefc1ae6d8cb3d0a30.md) | 201 | `result-track:71b73dfefc1ae6d8cb3d0a305ff0bbbca375e198358b57a6ff63fd26cdc0c1fd` |
| 9 | `theorem` | [isSheaf_of_isRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/issheaf-of-isrepresentable--0d6b831efe22483122de2887.md) | 205 | `result-track:0d6b831efe22483122de288773b12dcf0b440d2e21ab68bcf009c7e59139c065` |
| 10 | `class` | [Subcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/subcanonical--8fcd674245c2074fd206b397.md) | 218 | `declaration-track:8fcd674245c2074fd206b397f55cd5930325819dbc477c7e59122f725d08e4c5` |
| 11 | `lemma` | [le_canonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/le-canonical--8e832d8fd36e1fffc0bdd34f.md) | 221 | `result-track:8e832d8fd36e1fffc0bdd34fd19928fa1778f40188f78a9030e436310b71e8d5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/instance--b8c9741e2d666e327bcbea43.md) | 224 | `declaration-track:b8c9741e2d666e327bcbea43505a82b2e09181a9620bddddde2abce6c58d7fea` |
| 13 | `theorem` | [of_isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/of-issheaf-yoneda-obj--bbe474f1f41ce6249313495c.md) | 230 | `result-track:bbe474f1f41ce6249313495cd67273dee5ce01bdabe2dca70b8418b5c6b7a654` |
| 14 | `theorem` | [isSheaf_of_isRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/issheaf-of-isrepresentable--63322312a6c8d2f5dafcdab6.md) | 235 | `result-track:63322312a6c8d2f5dafcdab6e741e609120c5f5ee2fa109d7ac241d940452c7d` |
| 15 | `def` | [yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/yoneda--4041849f8dd19ce2430638c6.md) | 250 | `declaration-track:4041849f8dd19ce2430638c6b30d4075ebd2ce891413927772ee4dfbada9dbc4` |
| 16 | `def` | [yonedaCompSheafToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/yonedacompsheaftopresheaf--d79a8ee32dbf25eda82ae131.md) | 262 | `declaration-track:d79a8ee32dbf25eda82ae13189239202a609d48454a173ee77663c955b7385c8` |
| 17 | `def` | [yonedaFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/yonedafullyfaithful--363f4c71abc8f731466e2805.md) | 267 | `declaration-track:363f4c71abc8f731466e2805734687da5b8b6a0b5ad552edab47b47dcdfb84dc` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/instance--3ef97498feb01d3a6553d060.md) | 270 | `declaration-track:3ef97498feb01d3a6553d0605b922e567fbd111e62f0a5e27117523994c4fa3f` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/declarations/instance--4a77907582ced00e9320ef31.md) | 272 | `declaration-track:4a77907582ced00e9320ef31cf3b12910046af3a96b373ea15d2c3ba5de023e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
