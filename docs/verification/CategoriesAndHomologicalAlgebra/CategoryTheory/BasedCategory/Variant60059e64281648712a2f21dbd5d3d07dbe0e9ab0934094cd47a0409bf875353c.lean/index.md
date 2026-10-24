# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BasedCategory.Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecc3582117dfb32a4edd54ad1f05de29daa57dbe",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecc3582117dfb32a4edd54ad1f05de29daa57dbe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.HomLift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Strict` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BasedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/basedcategory--438280aba99e22f8f0422068.md) | 46 | `declaration-track:438280aba99e22f8f0422068c8da0bcca1bbaba129dec94ad135407163c45714` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/instance--bdf5ed2a1a6a55d47422aa22.md) | 54 | `declaration-track:bdf5ed2a1a6a55d47422aa225524ce32862ec05af21c323c5580b2d23606f74e` |
| 3 | `def` | [BasedCategory.ofFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/basedcategory-offunctor--c8cc4d4431b53da466b6e551.md) | 57 | `declaration-track:c8cc4d4431b53da466b6e551061299887863d35e5659c260aeb062e540364186` |
| 4 | `structure` | [BasedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/basedfunctor--554f6d71ecf1f06391f9de56.md) | 63 | `declaration-track:554f6d71ecf1f06391f9de56b734776f96c778d47664f2af492698faccbe3388` |
| 5 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/id--31a9e570d0ea4595989e59b9.md) | 76 | `declaration-track:31a9e570d0ea4595989e59b976b1ea881c126166a0ef36023578802409a75412` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/comp--304b84c23f75b630551c25b4.md) | 86 | `declaration-track:304b84c23f75b630551c25b4b5dd1524e023a7b5d5a925c38036911927f8f15c` |
| 7 | `lemma` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/comp-id--a30d50c0b5d35db6169d370a.md) | 94 | `result-track:a30d50c0b5d35db6169d370af69156c2587b60f8bf691a74c2b4681b98c104f6` |
| 8 | `lemma` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/id-comp--ed5de8e948e0806b1c180176.md) | 98 | `result-track:ed5de8e948e0806b1c180176d6e4614d8de6b23c28840ddadf7486ff6b8f8202` |
| 9 | `lemma` | [comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/comp-assoc--fba6048a03f514bb1764fde4.md) | 102 | `result-track:fba6048a03f514bb1764fde47d1ee8ddfba2a2def451d97343b85e41fd83ae68` |
| 10 | `lemma` | [w_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/w-obj--b6c1fa68915215e0cc95c6b7.md) | 107 | `result-track:b6c1fa68915215e0cc95c6b7f60c15a3e9151ed9f32339a063b83b37479d5a79` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/instance--3842ae883cca577908d24ee9.md) | 110 | `declaration-track:3842ae883cca577908d24ee9410e49000981464860a26cb52a536b5d00df3147` |
| 12 | `instance` | [preserves_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/preserves-ishomlift--bea2f84d14ef80e515e555dc.md) | 119 | `declaration-track:bea2f84d14ef80e515e555dc7fbf740bd629060987754568e9f17c68891728e9` |
| 13 | `lemma` | [isHomLift_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/ishomlift-map--8d1b14ae46adbbc352b459f8.md) | 127 | `result-track:8d1b14ae46adbbc352b459f804f3c948e6d3c0da2c84498908a033831479eaee` |
| 14 | `lemma` | [isHomLift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/ishomlift-iff--3a6e270e7c7247144e8b89c1.md) | 132 | `result-track:3a6e270e7c7247144e8b89c1f5230b6ad1d7cca6c2f646e0f73af61a7399769e` |
| 15 | `structure` | [BasedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/basednattrans--a362c1c63580e9ed3816005b.md) | 142 | `declaration-track:a362c1c63580e9ed3816005b48610a9846c39d834247df9a637a7ae51a30fb4c` |
| 16 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/ext--7c775847254a2cca5e43f418.md) | 159 | `result-track:7c775847254a2cca5e43f4183150a0543f3ce93d99f6a7bd636ddba1a5bf36ed` |
| 17 | `instance` | [app_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/app-ishomlift--3479724a80548a1d06c90d66.md) | 162 | `declaration-track:3479724a80548a1d06c90d66d39dc481ba64294aa32a5d7f6186f26901adcfa8` |
| 18 | `lemma` | [isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/ishomlift--b2e2dca76937e1cf948126d8.md) | 165 | `result-track:b2e2dca76937e1cf948126d8139a0cfcff8d4cfab5067271d668a01e2d6530c6` |
| 19 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/id--d838ef2226ef8708c0a28e7e.md) | 173 | `declaration-track:d838ef2226ef8708c0a28e7eb58cccd6e33432bd916163b9f01af649e7fe78d0` |
| 20 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/comp--8e48944e58152c4f521f0360.md) | 180 | `declaration-track:8e48944e58152c4f521f0360f54d4d31d8981b3b5d43f454e1ff784a9e575de7` |
| 21 | `instance` | [homCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/homcategory--36874d987e7b9e25d677b29d.md) | 188 | `declaration-track:36874d987e7b9e25d677b29d47cd2cd4fd06f2a713bfe4c9a24c6bdb5b359316` |
| 22 | `lemma` | [homCategory.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/homcategory-ext--912facf468bd8ccc70db6793.md) | 195 | `result-track:912facf468bd8ccc70db679354a3fcf1f7962a383c871e723a3fd2fe5af6bbb9` |
| 23 | `def` | [forgetful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/forgetful--ab8f00159a542642ed8bf319.md) | 201 | `declaration-track:ab8f00159a542642ed8bf3190ee5f9bafde4fcb45b4d943f42e7ad255e777aa6` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/instance--bafee4fcdfd165a67cef31db.md) | 206 | `declaration-track:bafee4fcdfd165a67cef31dbe37293db723ef596fb439ea0125431ef839936a9` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/instance--8a71e7e6fc56b650f62c3618.md) | 214 | `declaration-track:8a71e7e6fc56b650f62c3618f1e6162f36df74379fefadaa4897344f31d8259b` |
| 26 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/id--c8f94e0079ad5802c442b66b.md) | 227 | `declaration-track:c8f94e0079ad5802c442b66b7416e5fa999b6505bb07137f26ba9627588bf1b6` |
| 27 | `def` | [mkNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/mknatiso--387e2883de82cb3bc55b0945.md) | 235 | `declaration-track:387e2883de82cb3bc55b09459101537e33e5901e742af763f53309a96bae94d9` |
| 28 | `lemma` | [isIso_of_toNatTrans_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/isiso-of-tonattrans-isiso--9430e7d59b530198a38b14dc.md) | 245 | `result-track:9430e7d59b530198a38b14dc9b27730ff1d88ff75015c8c9861c6753bd482a4e` |
| 29 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/whiskerleft--f0ceb6679168241ab5ebfe39.md) | 262 | `declaration-track:f0ceb6679168241ab5ebfe39b30a3e5a2ea9e0d6f4f6dbf4d55c39a9bcb267d0` |
| 30 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/whiskerright--44decea7f975da0c60fb98cb.md) | 270 | `declaration-track:44decea7f975da0c60fb98cbd11150ce603be7253dda32167247352773aae273` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/instance--205b4e6bcd56dae40ef846a0.md) | 279 | `declaration-track:205b4e6bcd56dae40ef846a073be471b4fb03ddf5dabcb60a2146dbfa8b2b10c` |
| 32 | `instance` | [bicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/bicategory--518b4fae6bc65f4e20f00282.md) | 285 | `declaration-track:518b4fae6bc65f4e20f002823d2731fa2895147b06c460a362ace4fe883a0139` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant60059e64281648712a2f21dbd5d3d07dbe0e9ab0934094cd47a0409bf875353c.lean/declarations/instance--f9d610ddc8774585f51a947f.md) | 297 | `declaration-track:f9d610ddc8774585f51a947fd044b31a9b67e579012ad299c52c3cf5f4eee9da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
