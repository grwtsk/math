# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSheafOneHypercover.Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1321e04d6369a6f2e8871929e969b63d55b43e6f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1321e04d6369a6f2e8871929e969b63d55b43e6f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.OneHypercover` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OneHypercoverFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/onehypercoverfamily--296e3c1516baee88fe993331.md) | 48 | `declaration-track:296e3c1516baee88fe9933316404c0f89e8c6190e1494e5ef9dbcd6a52331eaf` |
| 2 | `class` | [IsGenerating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/isgenerating--69275295838623aacf49d13e.md) | 58 | `declaration-track:69275295838623aacf49d13e30bdae8f11060abea67ce23b3500ace66873f41e` |
| 3 | `lemma` | [exists_oneHypercover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/exists-onehypercover--c4682ccda37f3b6805a3e60f.md) | 62 | `result-track:c4682ccda37f3b6805a3e60f075a8fbd992732c298cded1ef9bfa824aae0d095` |
| 4 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/hom-ext--3bb796739ff2558d4cde2833.md) | 73 | `result-track:3bb796739ff2558d4cde2833fc4ed5f49fceecef212dcabc04977e89222da790` |
| 5 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/lift--0e14584543ae32a83e8e9ec1.md) | 88 | `declaration-track:0e14584543ae32a83e8e9ec1259a04078a44eb2c43e8b3ad65ab01cb6d05ebda` |
| 6 | `lemma` | [fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/fac--e7cb04f02866d62238abcd7d.md) | 99 | `result-track:e7cb04f02866d62238abcd7deaf0820920df33f11467d7ab03cdac19b80204c9` |
| 7 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/fac--d52171cb1c45e22357658e4d.md) | 104 | `result-track:d52171cb1c45e22357658e4d90a257f0c55c4241a91f503fbb893697dc68578f` |
| 8 | `def` | [isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/islimit--0552139f9cf5db7e7a9434f9.md) | 120 | `declaration-track:0552139f9cf5db7e7a9434f93cdbdeb46153b7556091e8667796f37d0754888f` |
| 9 | `lemma` | [isSheaf_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/issheaf-iff--01d8db6b40fa155fa2e524a7.md) | 135 | `result-track:01d8db6b40fa155fa2e524a7991a5e709040687d30c62008db9c179baabefd7e` |
| 10 | `abbrev` | [IsGeneratedByOneHypercovers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/isgeneratedbyonehypercovers--01ad80ee191348687ca05a28.md) | 150 | `declaration-track:01ad80ee191348687ca05a2845b7e801aaf02ee2631ddfe96b9014753b79bc67` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/instance--fe2f78dfaca70943b0aa824f.md) | 153 | `declaration-track:fe2f78dfaca70943b0aa824fe7986608fb7758db70775f9587b4a2f32afe3d11` |
| 12 | `lemma` | [isSheaf_iff_of_isGeneratedByOneHypercovers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantc682fdcdb480f77006e69d24a535cdd2bee210935d399d7e4cab06a30b564f78.lean/declarations/issheaf-iff-of-isgeneratedbyonehypercovers--add92c09f0c44ecaaf957817.md) | 160 | `result-track:add92c09f0c44ecaaf95781775cdfd97a724bb127648e8660562dddd9b46276f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
