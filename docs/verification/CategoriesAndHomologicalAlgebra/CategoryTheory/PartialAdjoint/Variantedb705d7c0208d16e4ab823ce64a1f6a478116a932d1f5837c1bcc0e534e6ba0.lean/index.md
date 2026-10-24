# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PartialAdjoint.Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffd9c0b46dad347b16756d52516aa8283fbbdf3a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffd9c0b46dad347b16756d52516aa8283fbbdf3a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdjointObjIsDefined](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/leftadjointobjisdefined--271ce87678b1b2dd22d04746.md) | 56 | `declaration-track:271ce87678b1b2dd22d04746fda5ed632cac9774bb3373d88bc7c1956413fc0b` |
| 2 | `lemma` | [leftAdjointObjIsDefined_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/leftadjointobjisdefined-iff--b5956ab6d3d84d0c75b75c5f.md) | 61 | `result-track:b5956ab6d3d84d0c75b75c5ff874da5dad1d611250855460fb0ccee1111d12ac` |
| 3 | `lemma` | [leftAdjointObjIsDefined_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/leftadjointobjisdefined-of-adjunction--58de8c32acd627564d6a5c56.md) | 65 | `result-track:58de8c32acd627564d6a5c56f1b6275a27b955ff98488219aae790408d41565b` |
| 4 | `abbrev` | [PartialLeftAdjointSource](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/partialleftadjointsource--9557c6f5dfe1572ccbe6ea0f.md) | 70 | `declaration-track:9557c6f5dfe1572ccbe6ea0fef7689ff3ecad789814ea32364f0badf004f852b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/instance--8554b301dbd16eccefbe9520.md) | 72 | `declaration-track:8554b301dbd16eccefbe9520549714906a13ae5ccc9027e559aaa9d810e1ec72` |
| 6 | `def` | [partialLeftAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/partialleftadjointobj--404b4ca02015dc71c1bac4dc.md) | 78 | `declaration-track:404b4ca02015dc71c1bac4dc939e87d646c965aab56a72e2586edad8a062c132` |
| 7 | `def` | [partialLeftAdjointHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/partialleftadjointhomequiv--9060ac756f215afdbdc83b24.md) | 84 | `declaration-track:9060ac756f215afdbdc83b248aa364fa977ba1ef0f5fa277b6d440bf4e69f2d8` |
| 8 | `lemma` | [partialLeftAdjointHomEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/partialleftadjointhomequiv-comp--180ae34a2d18d2442909d12f.md) | 88 | `result-track:180ae34a2d18d2442909d12f36c26011cff0cc916949bab3dc8937861c1d893d` |
| 9 | `def` | [partialLeftAdjointMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/partialleftadjointmap--0a36682e5ff889e87270aaaf.md) | 95 | `declaration-track:0a36682e5ff889e87270aaaf77b9c6e44d68ebb40778d3604a3de58a61f7ed83` |
| 10 | `lemma` | [partialLeftAdjointHomEquiv_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/partialleftadjointhomequiv-map--2ebf3db9d2c05231d912cf01.md) | 100 | `result-track:2ebf3db9d2c05231d912cf01ff9d05a1f8edc5caf0a31e4af31223bd3393fb08` |
| 11 | `lemma` | [partialLeftAdjointHomEquiv_map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/partialleftadjointhomequiv-map-comp--62958eb07900acd9e05f96ff.md) | 106 | `result-track:62958eb07900acd9e05f96ff922961867d6e9ecb1baaa39c7c121656c1244c45` |
| 12 | `def` | [partialLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/partialleftadjoint--aa29bb85e1d3e46c5a580acf.md) | 115 | `declaration-track:aa29bb85e1d3e46c5a580acf61a1eaf3427a98fa1ec1b21a1f65fabba0c51a46` |
| 13 | `lemma` | [isRightAdjoint_of_leftAdjointObjIsDefined_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/isrightadjoint-of-leftadjointobjisdefined-eq-top--d2c45f9da6faa72115c7d119.md) | 134 | `result-track:d2c45f9da6faa72115c7d119696240c2477c71e3b76a9177342bb0cf44c17220` |
| 14 | `lemma` | [isRightAdjoint_iff_leftAdjointObjIsDefined_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/isrightadjoint-iff-leftadjointobjisdefined-eq-top--3d7407d977e9c35c213985fe.md) | 143 | `result-track:3d7407d977e9c35c213985feeb80e340e0a6ac0225c2a130856a72b458d6e15b` |
| 15 | `def` | [corepresentableByCompCoyonedaObjOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/corepresentablebycompcoyonedaobjofiscolimit--56c0ae03f15c698079413060.md) | 151 | `declaration-track:56c0ae03f15c698079413060f12bad3ccaa34984a8a4ff658bd930310825e69f` |
| 16 | `lemma` | [leftAdjointObjIsDefined_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/leftadjointobjisdefined-of-iscolimit--5e77957e61d704af53d51985.md) | 178 | `result-track:5e77957e61d704af53d519850e2ec429362ffe5a412184c03fd27a9dd4a1f782` |
| 17 | `lemma` | [leftAdjointObjIsDefined_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantedb705d7c0208d16e4ab823ce64a1f6a478116a932d1f5837c1bcc0e534e6ba0.lean/declarations/leftadjointobjisdefined-colimit--07a5a85a1a0155a439a3a8ed.md) | 185 | `result-track:07a5a85a1a0155a439a3a8ed861df81279900f13b6c42b85a3abd329cad7a5b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
