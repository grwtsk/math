# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a22ad558e60350fd45bb8cffc8a7e71026caa2bf",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a22ad558e60350fd45bb8cffc8a7e71026caa2bf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.KanExtension.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLeftDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/isleftderivedfunctor--efc674d84e5ee37600c93f7d.md) | 56 | `declaration-track:efc674d84e5ee37600c93f7daf8b713654339a55f72172d3f9e7fa9776c2cb57` |
| 2 | `lemma` | [isLeftDerivedFunctor_iff_isRightKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/isleftderivedfunctor-iff-isrightkanextension--589848bbfadb3623721bc626.md) | 60 | `result-track:589848bbfadb3623721bc62647d7f9272095be6a5e5c56e7f9501ca09652b808` |
| 3 | `lemma` | [isLeftDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/isleftderivedfunctor-iff-of-iso--7bcc4f2c5c2fc96def8ce1a5.md) | 67 | `result-track:7bcc4f2c5c2fc96def8ce1a527dec7b71665142403cda3f67cf41c617b0ca050` |
| 4 | `def` | [leftDerivedLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderivedlift--c09d72ec2c279db8baba2fc8.md) | 78 | `declaration-track:c09d72ec2c279db8baba2fc82bccc3ce6f8d8136da64cc8ed1ed846b238aeaa1` |
| 5 | `lemma` | [leftDerived_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderived-fac--e0ba7482802c95959c1e836d.md) | 83 | `result-track:e0ba7482802c95959c1e836dace51ab02ad1806052beec7571d8977ad2abb828` |
| 6 | `lemma` | [leftDerived_fac_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderived-fac-app--54d30e2857ae3117437b5151.md) | 89 | `result-track:54d30e2857ae3117437b515197666af993f2eb1172c35aba16a6838667aed743` |
| 7 | `lemma` | [leftDerived_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderived-ext--c865c2e3c07ab2bb63ba1b99.md) | 95 | `result-track:c865c2e3c07ab2bb63ba1b990b3bc5a6088135c2962fcb28e521431338844f8a` |
| 8 | `def` | [leftDerivedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderivednattrans--578f286190b39f7e3693c101.md) | 102 | `declaration-track:578f286190b39f7e3693c1013264ae297bf97317e6ca09fdddfa121df1b5b72f` |
| 9 | `lemma` | [leftDerivedNatTrans_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderivednattrans-fac--7ea6301f5572ab8fc1e4ca3b.md) | 106 | `result-track:7ea6301f5572ab8fc1e4ca3b2ffb205858505cc84b376b2d89059431aa3c48ef` |
| 10 | `lemma` | [leftDerivedNatTrans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderivednattrans-app--cfb33f95525541161350781a.md) | 112 | `result-track:cfb33f95525541161350781ad2c6dd822156c86fe3b783e34a9b292baf1b393c` |
| 11 | `lemma` | [leftDerivedNatTrans_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderivednattrans-id--ea3b5c8d7bd6e8ef53b62876.md) | 119 | `result-track:ea3b5c8d7bd6e8ef53b628766a198c10ea4982789eb82ef8489a17f4fd062472` |
| 12 | `lemma` | [leftDerivedNatTrans_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderivednattrans-comp--88c6691f241eb0bfb921c330.md) | 126 | `result-track:88c6691f241eb0bfb921c33020d820c56a52705b6c8479e347993ea799f32c22` |
| 13 | `def` | [leftDerivedNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderivednatiso--05ca4416e4e3ce4e34d24177.md) | 134 | `declaration-track:05ca4416e4e3ce4e34d241771b5774d4c0ab47aa60bcfd1817597924b6126ddc` |
| 14 | `abbrev` | [leftDerivedUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/leftderivedunique--7c43a9a064f94021a6cc6c3c.md) | 140 | `declaration-track:7c43a9a064f94021a6cc6c3cdabc0b47b8ad3cca6f98964ca87ecc5d726de53e` |
| 15 | `lemma` | [isLeftDerivedFunctor_iff_isIso_leftDerivedLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/isleftderivedfunctor-iff-isiso-leftderivedlift--488b7ad7352cce70c8e43fa6.md) | 143 | `result-track:488b7ad7352cce70c8e43fa642771437fe424e3fd65963b4875ba45bb1b10967` |
| 16 | `class` | [HasLeftDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/hasleftderivedfunctor--b67ee80b1f39a02ef2ce32de.md) | 157 | `declaration-track:b67ee80b1f39a02ef2ce32de8c9f462c2a7ede64aa2f2c57c05a03f42b152c9a` |
| 17 | `lemma` | [hasLeftDerivedFunctor_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/hasleftderivedfunctor-iff--ab255b04ffeeb1beb6ab83ac.md) | 163 | `result-track:ab255b04ffeeb1beb6ab83aca557725ea15debaabfeaad6c0ee84511545abd43` |
| 18 | `lemma` | [hasLeftDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/hasleftderivedfunctor-iff-of-iso--76ac1a9426cbec723d92bb8a.md) | 172 | `result-track:76ac1a9426cbec723d92bb8acc9c86574a99a884d17376a51ba30c70bd5dd6c7` |
| 19 | `lemma` | [HasLeftDerivedFunctor.hasRightKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/hasleftderivedfunctor-hasrightkanextension--488f911565714be473b64152.md) | 179 | `result-track:488f911565714be473b64152b35b1c2e24639f15070ffd5a02d3ffb50642dbc0` |
| 20 | `lemma` | [HasLeftDerivedFunctor.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/hasleftderivedfunctor-mk--ea93cf79fd5a545681fd56c9.md) | 185 | `result-track:ea93cf79fd5a545681fd56c93020199437f10405b2d49cc11e6a2bce08142bf3` |
| 21 | `def` | [totalLeftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/totalleftderived--23ff427aab4948a712edae6b.md) | 197 | `declaration-track:23ff427aab4948a712edae6b166dd8b3ad096f684b481d8951ae632d6f63e813` |
| 22 | `def` | [totalLeftDerivedCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/totalleftderivedcounit--933069e6a463d4a6cd6e51d7.md) | 202 | `declaration-track:933069e6a463d4a6cd6e51d7da02c8d7a4b7d223264c961509fa2a552cd1a7a5` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant916fe39cffd66d7b12ed79446fcc9f55f2146e92f5a149e5d577dc0d30847af6.lean/declarations/instance--45839760a84940b49c1abc49.md) | 206 | `declaration-track:45839760a84940b49c1abc491c4da0ac2142d0490abbda4ad1d88cf6269a1cff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
