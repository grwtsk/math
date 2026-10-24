# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProducts.Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f22ab27dbaf0c7ff6525edb5f4c10c1c7c98f319",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f22ab27dbaf0c7ff6525edb5f4c10c1c7c98f319`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeBinaryFanEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/islimitmapconebinaryfanequiv--9ca7f1248a98526906325e74.md) | 48 | `declaration-track:9ca7f1248a98526906325e743ffb00ccc790cba97132ccea1037e9ac8f46faee` |
| 2 | `def` | [mapIsLimitOfPreservesOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/mapislimitofpreservesofislimit--408ed6bbe23b62c4d61eb64c.md) | 56 | `declaration-track:408ed6bbe23b62c4d61eb64c95434978fb6e6ef0cf671bab9e0d4783fb653a52` |
| 3 | `def` | [isLimitOfReflectsOfMapIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/islimitofreflectsofmapislimit--7df26c49a2a829f0ac70fa84.md) | 61 | `declaration-track:7df26c49a2a829f0ac70fa84e416aaf44587db1d05eaf196c4558e77d6771f7d` |
| 4 | `def` | [isLimitOfHasBinaryProductOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/islimitofhasbinaryproductofpreserveslimit--ae97ef68afdd59ab3bea6b7c.md) | 71 | `declaration-track:ae97ef68afdd59ab3bea6b7c828523f2e12f4b5da041cb0ea6a52551071a73f9` |
| 5 | `lemma` | [PreservesLimitPair.of_iso_prod_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preserveslimitpair-of-iso-prod-comparison--72438f1e2cfb3f9d44d934c2.md) | 80 | `result-track:72438f1e2cfb3f9d44d934c29aa5fb055f099c27e8966e4358073e1958e43c6f` |
| 6 | `def` | [PreservesLimitPair.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preserveslimitpair-iso--27704e82669598e6761ed844.md) | 92 | `declaration-track:27704e82669598e6761ed84479f4e8dbe1f1b45f17a9e00b1302d5f211e074d4` |
| 7 | `theorem` | [PreservesLimitPair.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preserveslimitpair-iso-hom--4265b47981020c02d03368c5.md) | 96 | `result-track:4265b47981020c02d03368c585b80b7dfc42f9b2941274cde6b913cce098978a` |
| 8 | `theorem` | [PreservesLimitPair.iso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preserveslimitpair-iso-inv-fst--c007ff0b4d814932033d3c91.md) | 100 | `result-track:c007ff0b4d814932033d3c91f9116974258cd09e106e9a4b07a7d8d5159fa44f` |
| 9 | `theorem` | [PreservesLimitPair.iso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preserveslimitpair-iso-inv-snd--2aa3558ec51deacbf33af9f0.md) | 106 | `result-track:2aa3558ec51deacbf33af9f0ec1c41b7750bc3ec21158b1c585c035be0f7f073` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/instance--5036e63d52778eb04936b4ce.md) | 111 | `declaration-track:5036e63d52778eb04936b4ce2aeff73104a51092e8992cde0c5164a402a6f6fe` |
| 11 | `lemma` | [preservesBinaryProducts_of_isIso_prodComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preservesbinaryproducts-of-isiso-prodcomparison--ac44a7866a53c73f1d901896.md) | 117 | `result-track:ac44a7866a53c73f1d901896142fa1287339d32239b8dc09afa8c38c77611f9e` |
| 12 | `def` | [isColimitMapCoconeBinaryCofanEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/iscolimitmapcoconebinarycofanequiv--5f5b877deb8eb66af756cf09.md) | 137 | `declaration-track:5f5b877deb8eb66af756cf092d8fbd2373bc2c53bc441f1debefb6619047deb0` |
| 13 | `def` | [mapIsColimitOfPreservesOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/mapiscolimitofpreservesofiscolimit--10cc06b40a77976e86ffead2.md) | 146 | `declaration-track:10cc06b40a77976e86ffead2c1de1ca992fe546b83ce4afe6445a9a454bff0ff` |
| 14 | `def` | [isColimitOfReflectsOfMapIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/iscolimitofreflectsofmapiscolimit--752997b9c8684faf995624fc.md) | 151 | `declaration-track:752997b9c8684faf995624fce5ad3019aba302c7c8e4e82e2f5ab70135b7f11d` |
| 15 | `def` | [isColimitOfHasBinaryCoproductOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/iscolimitofhasbinarycoproductofpreservescolimit--0ad76803d8c0fcf28ffe69f4.md) | 162 | `declaration-track:0ad76803d8c0fcf28ffe69f43c0d79ffbe5d026a67cc3ef3fb1772706f942a82` |
| 16 | `lemma` | [PreservesColimitPair.of_iso_coprod_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preservescolimitpair-of-iso-coprod-comparison--21d4fd0ff075103d536474bd.md) | 171 | `result-track:21d4fd0ff075103d536474bdd0aecddfddc95c46cfff7af374c5bfc952fcd697` |
| 17 | `def` | [PreservesColimitPair.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preservescolimitpair-iso--f05be857f8171da98a691be7.md) | 184 | `declaration-track:f05be857f8171da98a691be7511cf0a68ecb44f132229e850420d952450f4140` |
| 18 | `theorem` | [PreservesColimitPair.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preservescolimitpair-iso-hom--612b35fc56bd73899498c08a.md) | 189 | `result-track:612b35fc56bd73899498c08a764c828f7eff257c8b797f34e1baf4bc74a60f9f` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/instance--c73eb224f664d3b872506f45.md) | 192 | `declaration-track:c73eb224f664d3b872506f451be002db592a0fe08c443be56ca54be8cab64188` |
| 20 | `lemma` | [preservesBinaryCoproducts_of_isIso_coprodComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variantaf9e8698794eaa9605756d64a277cf743de054a4012751381d2dcfac8149f8e6.lean/declarations/preservesbinarycoproducts-of-isiso-coprodcomparison--d78ab6c70c408ad5819cbdae.md) | 198 | `result-track:d78ab6c70c408ad5819cbdaec63821f4033a70d1a4323cc8e4b4fb2207530508` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
