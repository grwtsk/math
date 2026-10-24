# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalBicomplex.Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "906a34f4a12a4de09749f9c34a70ce6f83267a0d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `906a34f4a12a4de09749f9c34a70ce6f83267a0d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HomologicalComplex₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/homologicalcomplex--03ec7dd53f6b98931c96e6da.md) | 42 | `declaration-track:03ec7dd53f6b98931c96e6da9300dc2a36e2bbec7cd7bb67c26c2e8e2085fd7c` |
| 2 | `def` | [toGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/togradedobject--1ac207d7219607ad790e616d.md) | 52 | `declaration-track:1ac207d7219607ad790e616d7f5ec0e396f75fdc93375004695c43b57acc72fd` |
| 3 | `def` | [toGradedObjectMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/togradedobjectmap--67a25ea34b499b0cf0b83476.md) | 57 | `declaration-track:67a25ea34b499b0cf0b8347668b25af332ed7130e3092da3e9b4b7ae844b8973` |
| 4 | `lemma` | [toGradedObjectMap_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/togradedobjectmap-apply--93110d742359ea15f9b8e558.md) | 62 | `result-track:93110d742359ea15f9b8e558373fbd901b0ba94ce0de88b1ec67c4f6c5ff326c` |
| 5 | `def` | [toGradedObjectFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/togradedobjectfunctor--2599fec1d07ca5e1410344ec.md) | 68 | `declaration-track:2599fec1d07ca5e1410344ecf93097cba13ab6c9dc7b8e387f1517a5acfbb791` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/instance--ab729f968a1906b412ce062e.md) | 72 | `declaration-track:ab729f968a1906b412ce062edbfeb98b0447a2dd0419cd7d61b71e8d9b806fb5` |
| 7 | `def` | [ofGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/ofgradedobject--c654d07fe4af4c0c5f0cd1ac.md) | 93 | `declaration-track:c654d07fe4af4c0c5f0cd1ac2bb04224b7d13f063e111cd567d71be45524d62e` |
| 8 | `lemma` | [ofGradedObject_toGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/ofgradedobject-togradedobject--b4232547318825c46ae6d931.md) | 109 | `result-track:b4232547318825c46ae6d931004a8dabde5c0c5d879898fc0b67e13c9e3f9bc4` |
| 9 | `def` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/hommk--557f19ad8eab6fd02288257b.md) | 119 | `declaration-track:557f19ad8eab6fd02288257b08132a64f09279d98dced88b7dbc560408cabef9` |
| 10 | `lemma` | [shape_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/shape-f--26a4bc0cf5c095d3d432b106.md) | 132 | `result-track:26a4bc0cf5c095d3d432b106f3134b0c63774163bac51e5db5205b999c045de9` |
| 11 | `lemma` | [d_f_comp_d_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/d-f-comp-d-f--42301884cf5601b2a9631376.md) | 137 | `result-track:42301884cf5601b2a9631376d7625538eb0de073e62cde49f2c4097c80d704f7` |
| 12 | `lemma` | [d_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/d-comm--6873de979d13a4c4c7db4781.md) | 143 | `result-track:6873de979d13a4c4c7db4781185bd8de25a55d245c3fed49ce00be775df46413` |
| 13 | `lemma` | [comm_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/comm-f--66e6bce0d42601aa2f7ec4cc.md) | 148 | `result-track:66e6bce0d42601aa2f7ec4cc435f2795158289aecce2c37edd25024a7edeeb29` |
| 14 | `def` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/flip--1cc21a0e848429105b809224.md) | 156 | `declaration-track:1cc21a0e848429105b809224f2aaed35d7d11e39189c869e6015fca11215ae58` |
| 15 | `lemma` | [flip_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/flip-flip--3209d4a6f46aa0acd9b8668f.md) | 167 | `result-track:3209d4a6f46aa0acd9b8668f63315da9c4be500dda7fee65bc00ce11d2721241` |
| 16 | `def` | [flipFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/flipfunctor--a2c588374e4c0b77a9ab8397.md) | 173 | `declaration-track:a2c588374e4c0b77a9ab83972cc622d38b19cb5f8f1da8760710ca7b96047fad` |
| 17 | `def` | [flipEquivalenceUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/flipequivalenceunitiso--e8ef908de461801512d0f46b.md) | 184 | `declaration-track:e8ef908de461801512d0f46bc143ca9cecbff54eec32b8690e5591c9266389a4` |
| 18 | `def` | [flipEquivalenceCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/flipequivalencecounitiso--29786e0afc935f319ca2a749.md) | 192 | `declaration-track:29786e0afc935f319ca2a749ab696b7eafb6fa61afc62f1964bf25f8290bafb9` |
| 19 | `def` | [flipEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/flipequivalence--5b2f055dd77fae2be598f4d6.md) | 200 | `declaration-track:5b2f055dd77fae2be598f4d6d00dd268a76205499d8afc3c0959c082f41bea80` |
| 20 | `def` | [XXIsoOfEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/xxisoofeq--60c47d0a18a10d48550cf392.md) | 210 | `declaration-track:60c47d0a18a10d48550cf39283f7dd5daaaa5ceb4873f692f4c508c4afe34ff7` |
| 21 | `lemma` | [XXIsoOfEq_rfl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant87bc1561be23242f51baf012e835d85005e0447bcb407a09a9feeda28c222a64.lean/declarations/xxisoofeq-rfl--acaef9f6b85cee8e02b3e339.md) | 215 | `result-track:acaef9f6b85cee8e02b3e33908aa0656df499e1893b59a92810ec6d5e7a67987` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
