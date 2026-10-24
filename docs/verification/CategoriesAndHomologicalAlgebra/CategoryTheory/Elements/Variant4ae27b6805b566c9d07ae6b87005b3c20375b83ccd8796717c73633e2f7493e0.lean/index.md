# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elements.Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb5a2888e8723ad0679a43efb886f380d01490bb",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb5a2888e8723ad0679a43efb886f380d01490bb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.Elements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/functor-elements--10a6c4dcb74bd432ae3174e0.md) | 51 | `declaration-track:10a6c4dcb74bd432ae3174e0d28c6482eb3cd11bb5c6bb7cbd63c3285a9e481f` |
| 2 | `abbrev` | [Functor.elementsMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/functor-elementsmk--7062f404ed3d17f3ef5b9357.md) | 55 | `declaration-track:7062f404ed3d17f3ef5b9357f2c80f5804eada6d74e6459e2829e3d0af86bfff` |
| 3 | `lemma` | [Functor.Elements.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/functor-elements-ext--2efcd65c8f646a63beca397f.md) | 57 | `result-track:2efcd65c8f646a63beca397f32d6489c4980a83a19ca1c0a27d2d0caf4aa3995` |
| 4 | `instance` | [categoryOfElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/categoryofelements--ed14566164443ba4a4ffaea1.md) | 68 | `declaration-track:ed14566164443ba4a4ffaea103e4567bee6e98a8f9598d87a9c7c062e1aef9e5` |
| 5 | `def` | [NatTrans.mapElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/nattrans-mapelements--8e48228a652e86c9d1d3899f.md) | 75 | `declaration-track:8e48228a652e86c9d1d3899f33919504d4eac898b2ccefb696b2605db7d84e39` |
| 6 | `def` | [Functor.elementsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/functor-elementsfunctor--8af600f7a7724712bba9fe52.md) | 81 | `declaration-track:8af600f7a7724712bba9fe5270bb3aaaafedc42c430b0c91ced6bcf1dfc6e103` |
| 7 | `def` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/hommk--efce0a1f9ba5fa695eb0ae0b.md) | 89 | `declaration-track:efce0a1f9ba5fa695eb0ae0b4896941d68f77bd79bbf5431b61e8a5211d39d4e` |
| 8 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/ext--b35cae9c25f2953723a69dbf.md) | 94 | `result-track:b35cae9c25f2953723a69dbfc39e10ec032daf81006411c4f79c45cf316224c2` |
| 9 | `theorem` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/comp-val--986eb31b99210a68aa62f6b6.md) | 98 | `result-track:986eb31b99210a68aa62f6b688f8829145f5e4eca7f88a1c6f716019063cbb0f` |
| 10 | `theorem` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/id-val--5c2bbc42faf0da95dd1d6212.md) | 103 | `result-track:5c2bbc42faf0da95dd1d6212e51fa6b8c6387c7d88557a4676ae5e36f27c2dcc` |
| 11 | `theorem` | [map_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/map-snd--fd0d596a82277ca311a70960.md) | 107 | `result-track:fd0d596a82277ca311a7096046f1765bc22808f72f2280cb0cedd98344be8d77` |
| 12 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/isomk--016519e14576076fe81cd73b.md) | 112 | `declaration-track:016519e14576076fe81cd73b5f103d61f175128f8f5456ad719b8f7528887454` |
| 13 | `instance` | [groupoidOfElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/groupoidofelements--5003f9ae7fe283c351228df1.md) | 119 | `declaration-track:5003f9ae7fe283c351228df13218df464c7baca6c95f4eb77fdc0cb21411a369` |
| 14 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/anonymous--6ca95d7f5232b17343155990.md) | 143 | `declaration-track:6ca95d7f5232b17343155990c5ad914e9d2723d6988ec103ffbe9e8446fe228d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/instance--d26bdf4860ef8a7a8f5d5f9f.md) | 147 | `declaration-track:d26bdf4860ef8a7a8f5d5f9ff2fa17efb95d44ac472330280eb79fd7573ab730` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/instance--2793ba79fb8341fae1ec9803.md) | 149 | `declaration-track:2793ba79fb8341fae1ec9803f6565728b26c97bfff970753a2af1610dc131d8b` |
| 17 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/map--bfcba635d0f6636f0a80ac83.md) | 156 | `declaration-track:bfcba635d0f6636f0a80ac83a7957e000e60a55ecaef6cafda958a71483a5696` |
| 18 | `theorem` | [map_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/map--333a7d473b207d643e49d15b.md) | 161 | `result-track:333a7d473b207d643e49d15b746dd04271833838036a629655aaaf2ca2557acf` |
| 19 | `def` | [toStructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/tostructuredarrow--5c6ce1232751587ffa5a35e3.md) | 165 | `declaration-track:5c6ce1232751587ffa5a35e39a1f1ed867009922a15ae02601dd2c61e0fcca5e` |
| 20 | `theorem` | [toStructuredArrow_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/tostructuredarrow-obj--99019e18f959286816a43075.md) | 170 | `result-track:99019e18f959286816a43075cb34144fe9bf852c12250680db94572ec2541c96` |
| 21 | `theorem` | [to_comma_map_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/to-comma-map-right--2303eb60b2a1384936df816b.md) | 178 | `result-track:2303eb60b2a1384936df816baf398f8bc2a51b76166e0de6777db2940e29413f` |
| 22 | `def` | [fromStructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/fromstructuredarrow--ce49b9f0d8f634cb4f242e00.md) | 182 | `declaration-track:ce49b9f0d8f634cb4f242e0065105a91b848b3d3e95f6da1c44f868f9a909dc2` |
| 23 | `theorem` | [fromStructuredArrow_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/fromstructuredarrow-obj--688272930826579fb9945b75.md) | 187 | `result-track:688272930826579fb9945b75cf9379b1a2d540d201d86995fb8dec099fc685ee` |
| 24 | `theorem` | [fromStructuredArrow_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/fromstructuredarrow-map--e44a135e360beb3f3f947630.md) | 191 | `result-track:e44a135e360beb3f3f947630c82d0fecd50d64b0e0e7d7bd54d7d0c124673bd6` |
| 25 | `def` | [structuredArrowEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/structuredarrowequivalence--258103dd6574a9c6c3fb244a.md) | 198 | `declaration-track:258103dd6574a9c6c3fb244a8aa21fb42845be2a854fcda325d5d93c5d5c7684` |
| 26 | `def` | [toCostructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/tocostructuredarrow--2af0f8ad90e240771d095b28.md) | 210 | `declaration-track:2af0f8ad90e240771d095b282dc2f1b0cedccf617b16e479e75b8ff2b25fc6da` |
| 27 | `def` | [fromCostructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/fromcostructuredarrow--8fe1a34277d211de28cba92e.md) | 222 | `declaration-track:8fe1a34277d211de28cba92e12d2373bbe6b72a9814c5e00838540710e0ef1d8` |
| 28 | `theorem` | [fromCostructuredArrow_obj_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/fromcostructuredarrow-obj-mk--513796c0fa1f671987b64177.md) | 236 | `result-track:513796c0fa1f671987b641776dba0b544ed0b6ca99fdc80927ec0e0de99cfc70` |
| 29 | `def` | [costructuredArrowYonedaEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/costructuredarrowyonedaequivalence--f0b3f7add4f39cc6a3720021.md) | 242 | `declaration-track:f0b3f7add4f39cc6a3720021657da44dba95e0de21eaf055ca3b69fbf1b24b92` |
| 30 | `theorem` | [costructuredArrow_yoneda_equivalence_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/costructuredarrow-yoneda-equivalence-naturality--3a5acdb0efb1fe5294b48ba5.md) | 255 | `result-track:3a5acdb0efb1fe5294b48ba5c49b59c4e71fb5f0eccf18a6292cd66599526387` |
| 31 | `def` | [costructuredArrowYonedaEquivalenceFunctorProj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/costructuredarrowyonedaequivalencefunctorproj--a0ae788a83294f4e32410b72.md) | 268 | `declaration-track:a0ae788a83294f4e32410b724434ef75b0fddd78a89636d28c7e6b2af9dbbb2c` |
| 32 | `def` | [costructuredArrowYonedaEquivalenceInverseπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/costructuredarrowyonedaequivalenceinverse--0e57b99b009625d7e9e4cefa.md) | 274 | `declaration-track:0e57b99b009625d7e9e4cefab42e34c0c37db9547f3df4b0aa7288163d466ea8` |
| 33 | `def` | [Elements.initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/elements-initial--85d827f110d97ddc6ed5af46.md) | 286 | `declaration-track:85d827f110d97ddc6ed5af46bca9685715cae1241fe4082728eca38b3cbd2acd` |
| 34 | `def` | [Elements.isInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant4ae27b6805b566c9d07ae6b87005b3c20375b83ccd8796717c73633e2f7493e0.lean/declarations/elements-isinitial--78b48945e15076a0999c8c29.md) | 291 | `declaration-track:78b48945e15076a0999c8c294a6c359f66f99477920027195145d62ac7baa9b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
