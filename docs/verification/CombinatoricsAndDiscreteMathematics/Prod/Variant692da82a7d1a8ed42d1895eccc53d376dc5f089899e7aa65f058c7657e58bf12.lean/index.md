# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Prod.Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6a59a32942f53acf57eb1a9da377c65236e91ac",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6a59a32942f53acf57eb1a9da377c65236e91ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toFinset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/tofinset-prod--34e51655482f93ab4ac71f2b.md) | 31 | `result-track:34e51655482f93ab4ac71f2b53685c7a2aa825131c7ac4c408af998233cc7a21` |
| 2 | `theorem` | [toFinset_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/tofinset-offdiag--842681af4b741ae0575b6b7e.md) | 36 | `result-track:842681af4b741ae0575b6b7e5563aeee83112a9c2c5ecffc04e19756f10dd51b` |
| 3 | `instance` | [instFintypeProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/instfintypeprod--ef5b8c132824fe449859f76e.md) | 42 | `declaration-track:ef5b8c132824fe449859f76e5e843419126106b95dbe5dc441c08d6c914bd6ea` |
| 4 | `lemma` | [univ_product_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/univ-product-univ--964302fc4dba6f423ef5e9dc.md) | 48 | `result-track:964302fc4dba6f423ef5e9dcc3314a4d85d7c6388d10d121041cdb372a318b1c` |
| 5 | `lemma` | [product_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/product-eq-univ--383b11fe0fdac573b92e9461.md) | 50 | `result-track:383b11fe0fdac573b92e9461ee5a4aa36e89f72a629827770466ecfbaca81f5b` |
| 6 | `theorem` | [Fintype.card_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/fintype-card-prod--f24d9d4f38bc99a48cb3ed38.md) | 56 | `result-track:f24d9d4f38bc99a48cb3ed380318e32b07a43b82e655bdf35d18f3b9e06732fd` |
| 7 | `lemma` | [Fintype.card_product_filter_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/fintype-card-product-filter-lt--522d400307de6c7349d5cfea.md) | 61 | `result-track:522d400307de6c7349d5cfea9a20418fdfa9af7f74a16cb4f8f2e4ab185f10b2` |
| 8 | `theorem` | [infinite_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/infinite-prod--194c2d0c38aa0c8112cbdeb2.md) | 69 | `result-track:194c2d0c38aa0c8112cbdeb2cbb3ceea928151a5f42dbbc63ece7f8dbcbac41a` |
| 9 | `instance` | [Pi.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/pi-infinite-of-left--09e99cf673fd0c495d464977.md) | 78 | `declaration-track:09e99cf673fd0c495d4649771be2633f67b491350c62accbcbce23ecdfbd732b` |
| 10 | `theorem` | [Pi.infinite_of_exists_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/pi-infinite-of-exists-right--f40a48fcadf5fd27c31b1ad2.md) | 87 | `result-track:f40a48fcadf5fd27c31b1ad221bc1bec858e9472631bf23c163b0464316a2fac` |
| 11 | `instance` | [Pi.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/pi-infinite-of-right--ecb2b2ed24ddc5c95cac7430.md) | 94 | `declaration-track:ecb2b2ed24ddc5c95cac74305659b7f418e1c94718b81df66eaea35a3a02b9f2` |
| 12 | `instance` | [Function.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/function-infinite-of-left--25ee3ab49e02407191754642.md) | 99 | `declaration-track:25ee3ab49e0240719175464273c760b71fe52b8d85905cb2426329b7efc46ad8` |
| 13 | `instance` | [Function.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant692da82a7d1a8ed42d1895eccc53d376dc5f089899e7aa65f058c7657e58bf12.lean/declarations/function-infinite-of-right--905865bfdf6378fa5c45bd07.md) | 104 | `declaration-track:905865bfdf6378fa5c45bd07e04fff79d9bf5a5abe4117c37764b90ae1640de5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
