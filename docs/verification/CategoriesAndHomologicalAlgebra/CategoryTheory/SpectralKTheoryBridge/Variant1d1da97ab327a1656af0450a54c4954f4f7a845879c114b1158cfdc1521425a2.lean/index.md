# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralKTheoryBridge.Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f51c0fc2071fdaf4284f40f9149fd64563deb1e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f51c0fc2071fdaf4284f40f9149fd64563deb1e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.CategoricalSpectrum` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.KTheoryIndex` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.ModuliStackKTheory` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiracSpectrumToKTheoryClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/declarations/diracspectrumtoktheoryclass--31ac55928540729ec62deddc.md) | 26 | `declaration-track:31ac55928540729ec62deddc64f3424bd34303633a25b0a4b0601742966b6879` |
| 2 | `theorem` | [dirac_spectrum_maps_to_k_class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/declarations/dirac-spectrum-maps-to-k-class--2fb2ad8238305879bc8323ac.md) | 36 | `result-track:2fb2ad8238305879bc8323ac2a2dfeed20e6e557f433c3173e8d00e20c4455d9` |
| 3 | `theorem` | [dirac_spectrum_k_class_compatible_with_index](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/declarations/dirac-spectrum-k-class-compatible-with-index--8162c0f28c3d59fcb7d9ca0e.md) | 42 | `result-track:8162c0f28c3d59fcb7d9ca0e18b7dbcad3bd7537069cafbac70d5e427c2fa7ac` |
| 4 | `structure` | [DiracSpectrumKTheoryFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/declarations/diracspectrumktheoryfunctor--9ee26dcf39a9221ae077896d.md) | 53 | `declaration-track:9ee26dcf39a9221ae077896d1620b00ab1299e0a18efb60bdf982ed54fe83ea3` |
| 5 | `theorem` | [dirac_spectrum_k_functor_morphism_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/declarations/dirac-spectrum-k-functor-morphism-compatible--49169f9f2db66abd5ae98dcf.md) | 71 | `result-track:49169f9f2db66abd5ae98dcf7589cbd4a575eef79c77a248bedd390ff9e5e537` |
| 6 | `structure` | [DiracSpectrumRealizesKTheoryIndex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/declarations/diracspectrumrealizesktheoryindex--40eb04ac06d7eae7c9ae62c8.md) | 81 | `declaration-track:40eb04ac06d7eae7c9ae62c85d5b32bc14223ac79f918e26de81b53ec14251df` |
| 7 | `theorem` | [dirac_spectrum_realizes_k_index](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/declarations/dirac-spectrum-realizes-k-index--36f26cdb50de4a5d28caee2f.md) | 90 | `result-track:36f26cdb50de4a5d28caee2fb947738c56b350e30ce7c7bb45b9dc73f28c8e05` |
| 8 | `theorem` | [dirac_spectrum_k_index_same_class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralKTheoryBridge/Variant1d1da97ab327a1656af0450a54c4954f4f7a845879c114b1158cfdc1521425a2.lean/declarations/dirac-spectrum-k-index-same-class--8c8f62b64beccc6035c30015.md) | 97 | `result-track:8c8f62b64beccc6035c3001526a84ccd75afc79d1d787e7a013d54307dd63df6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
