# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "552787d84963be4e62c5a760628817701376fa8b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `552787d84963be4e62c5a760628817701376fa8b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Univariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MvPFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/mvpfunctor--b05c985c15d57a75098ec273.md) | 35 | `declaration-track:b05c985c15d57a75098ec273fd704e9f6a50d2fdea0aea4ae97f69dfbfee0c39` |
| 2 | `def` | [Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/obj--c3b39ec2f475af510c2e7d1a.md) | 49 | `declaration-track:c3b39ec2f475af510c2e7d1af36c90b5e3b46d4598fd1ba809633243174f6063` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/map--cb1d94240f5563bdd23d5d39.md) | 54 | `declaration-track:cb1d94240f5563bdd23d5d39a274eba9d4445a7aaa07d0932977e9e6a14f4ac9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/instance--009f6b904c6cf03987e64724.md) | 57 | `declaration-track:009f6b904c6cf03987e647245979f4c0900036c5de262b8a31454d71c9c0c3cd` |
| 5 | `instance` | [Obj.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/obj-inhabited--cc42e9a9b904d7a8f2361317.md) | 60 | `declaration-track:cc42e9a9b904d7a8f2361317ef1d2bf8710df39cfb676bf3cd7eb29bc1e21222` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/instance--2ac5bb3c5cd3515b5fd0c91f.md) | 65 | `declaration-track:2ac5bb3c5cd3515b5fd0c91f24952e5ad4626506248f9c87edf7662532da53da` |
| 7 | `theorem` | [map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/map-eq--94340695a059f0b404db786b.md) | 68 | `result-track:94340695a059f0b404db786b335a7b05b0127f9645922630ecc169783a56d07f` |
| 8 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/id-map--224b15e419b0c9015433e976.md) | 73 | `result-track:224b15e419b0c9015433e976a8a93710fff42a4ac2dfae326de5cf3efdea0489` |
| 9 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/comp-map--bcb4a9a7bd2c20eabe6fbb24.md) | 77 | `result-track:bcb4a9a7bd2c20eabe6fbb249c9ac66f5db15371323b918e0571f48f069b657b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/instance--03609d761d52fb32fdc97185.md) | 82 | `declaration-track:03609d761d52fb32fdc9718562281f2d7a51ee88a6acc6c181dbc843eef4ea86` |
| 11 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/const--44c3a2be3ee2b9c1ce6918e8.md) | 87 | `declaration-track:44c3a2be3ee2b9c1ce6918e80bb0bc4f290225e92ccee01871b3b570c4244131` |
| 12 | `def` | [const.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/const-mk--b54278498de6b545b634e266.md) | 97 | `declaration-track:b54278498de6b545b634e266a5b52ec49f0720d4d557b8dade3969b26b6ffeb4` |
| 13 | `def` | [const.get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/const-get--68d3d9f48a11eab154773b6d.md) | 104 | `declaration-track:68d3d9f48a11eab154773b6d1526cb7e45c2f1593b5e1879acee544d3453abbc` |
| 14 | `theorem` | [const.get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/const-get-map--84a0a6055129bc10d7724791.md) | 109 | `result-track:84a0a6055129bc10d7724791fd74fe4b0cc0923dc715d935d8cc59f35aeb58aa` |
| 15 | `theorem` | [const.get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/const-get-mk--e38ce64303d6c1e996aac8ff.md) | 115 | `result-track:e38ce64303d6c1e996aac8fff1b5867e43003ec03e81e85eebc60507f6663d22` |
| 16 | `theorem` | [const.mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/const-mk-get--8a1efb67c6ff09f14f3afcfb.md) | 119 | `result-track:8a1efb67c6ff09f14f3afcfb1907e9ac481137340d941eb669d9a8b7ef5d6e1e` |
| 17 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/comp--c8341a3d607a17c58a6a361c.md) | 128 | `declaration-track:c8341a3d607a17c58a6a361c8314b926e96837298a2f6d71461bc8c41cb96aeb` |
| 18 | `def` | [comp.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/comp-mk--eff17240be773ccd23f9edcf.md) | 137 | `declaration-track:eff17240be773ccd23f9edcf0809e4da312e394433924695775e65672cda685f` |
| 19 | `def` | [comp.get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/comp-get--ca480e6eada6b2cd86bee0a2.md) | 142 | `declaration-track:ca480e6eada6b2cd86bee0a2757ef318f96f542bb971db371e1bb3b59dc8b759` |
| 20 | `theorem` | [comp.get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/comp-get-map--3a442cd51a1047dc895d72fa.md) | 146 | `result-track:3a442cd51a1047dc895d72fa015cebc5b369238887c37c85acf17b2e41c4ff7a` |
| 21 | `theorem` | [comp.get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/comp-get-mk--e0bfc3d4042316bcfabad984.md) | 152 | `result-track:e0bfc3d4042316bcfabad98453358cc65589f4a6d50d562c26d6b39b06d9fc57` |
| 22 | `theorem` | [comp.mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/comp-mk-get--3f009fe21de01876511ea731.md) | 157 | `result-track:3f009fe21de01876511ea731018d1fb99ec6478b5c7c6cd58e44c9a64221529f` |
| 23 | `theorem` | [liftP_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/liftp-iff--64b94f860de23b03b59fed5b.md) | 164 | `result-track:64b94f860de23b03b59fed5bf8f6e91469632936fcd161ef0b607d02eedfe26d` |
| 24 | `theorem` | [liftP_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/liftp-iff--95f42ec8e49c1666354b312e.md) | 177 | `result-track:95f42ec8e49c1666354b312eb051c358af22330549e529b07c73f33713db12ee` |
| 25 | `theorem` | [liftR_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/liftr-iff--85a0dfe7c8df8810157efb50.md) | 186 | `result-track:85a0dfe7c8df8810157efb50e9769adc81d0f7011d37fb6a801bf8d9761b8615` |
| 26 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/supp-eq--4b5436ac20f5a80d418e4f7e.md) | 210 | `result-track:4b5436ac20f5a80d418e4f7e07948be69f741ea9aebbb6c6a7fb9064cd319b7d` |
| 27 | `def` | [drop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/drop--965c7b69616a59f32d2751a3.md) | 237 | `declaration-track:965c7b69616a59f32d2751a3235caf691502c056124c5fae8a580252fd9863a7` |
| 28 | `def` | [last](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/last--9339d993fd06edf5b4702375.md) | 244 | `declaration-track:9339d993fd06edf5b4702375d2428a919d9eecc38bac195440dd48fe5affda8a` |
| 29 | `def` | [appendContents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante223fefaabc0eb29f05e0d79223a5019cbf7185ba8be9f79a55745cd6744d97c.lean/declarations/appendcontents--72c689fc29664a8831981f42.md) | 252 | `declaration-track:72c689fc29664a8831981f42a46bcfa6e0fce965abd26898183cc80390bc910c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
