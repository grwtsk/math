# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SOP.Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c18b0ed498871d9ce99bce4fe513c2805e286ffc",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c18b0ed498871d9ce99bce4fe513c2805e286ffc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Eval` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Tree.List` — import line 7; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Normalize` — import line 8; external provider; requires a separately pinned dependency.
- `Boolean.Tree.MatrixEncoding` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Literal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/literal--fcddc3c69f69d277c1d39fef.md) | 19 | `declaration-track:fcddc3c69f69d277c1d39fef798ee84c5bf5961d1868da96dc458fd1b1dbecb1` |
| 2 | `abbrev` | [ProductTerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/productterm--220927189febe1f5729acfa9.md) | 25 | `declaration-track:220927189febe1f5729acfa96b8da062dfb8fa06a5adcf41658411f895304098` |
| 3 | `abbrev` | [SumOfProducts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sumofproducts--251ace973e92938873227d66.md) | 29 | `declaration-track:251ace973e92938873227d66860984a77a6f9e40f7314b0be49a1b6e7a6709fd` |
| 4 | `def` | [Literal.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/literal-eval--2c8c01e992602b98a1867f8f.md) | 33 | `declaration-track:2c8c01e992602b98a1867f8feff3fce25c98e71235193e84494669cf96cef508` |
| 5 | `def` | [Literal.toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/literal-totree--f6ab20407867b644f88fa209.md) | 38 | `declaration-track:f6ab20407867b644f88fa209f1b5b55fd3d784646b512c51644a38bedd47f846` |
| 6 | `def` | [ProductTerm.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/productterm-eval--221a927c4ebd9eef922ca308.md) | 43 | `declaration-track:221a927c4ebd9eef922ca3083111e47ace8d015d0d69e3ceab892372aa0318ad` |
| 7 | `def` | [ProductTerm.anyLit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/productterm-anylit--dd3e64f7ae2f20637ff08a22.md) | 48 | `declaration-track:dd3e64f7ae2f20637ff08a22f18165d7925f0e65d1390194ed29b34b29c7193b` |
| 8 | `def` | [ProductTerm.toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/productterm-totree--1c45a14f3a55f939ee41ecbf.md) | 57 | `declaration-track:1c45a14f3a55f939ee41ecbf03234d64c76de890c7ab46ab65d40f6b8feb2af9` |
| 9 | `def` | [ProductTerm.hasPositiveAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/productterm-haspositiveat--8ab2e2fa37a5171b3cfddc73.md) | 61 | `declaration-track:8ab2e2fa37a5171b3cfddc73ca0ef0ea6f17158951bd20ec64b68835376e42c2` |
| 10 | `def` | [ProductTerm.hasNegativeAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/productterm-hasnegativeat--15b36f46aff3c098bc6266ae.md) | 74 | `declaration-track:15b36f46aff3c098bc6266ae9d21fcc3d1c6bbecafe8f17944770d3064054017` |
| 11 | `def` | [SumOfProducts.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sumofproducts-eval--e5d5259c2e0103f7fe7e3726.md) | 87 | `declaration-track:e5d5259c2e0103f7fe7e37261c6cd25525c35b2a020fad510a77e59cc7461b70` |
| 12 | `def` | [SumOfProducts.multiply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sumofproducts-multiply--bb2ecdcdfc244360295b07e4.md) | 94 | `declaration-track:bb2ecdcdfc244360295b07e4c8600d9e42ab0cdcad1b6c9b0ac2c523450fdaaa` |
| 13 | `def` | [SumOfProducts.toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sumofproducts-totree--0f9347e05fb8ba02c5de87df.md) | 102 | `declaration-track:0f9347e05fb8ba02c5de87dff3a909b99b926846378bfb45c9ff34e4493f2a20` |
| 14 | `theorem` | [Literal.eval_toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/literal-eval-totree--9712c4ad9a0de9b10ef22d03.md) | 105 | `result-track:9712c4ad9a0de9b10ef22d0328aac45494c8537b6953c0e82650a01d5d0c5a7a` |
| 15 | `theorem` | [ProductTerm.eval_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/productterm-eval-append--0e2ebdf014ea09bbbf8fd055.md) | 111 | `result-track:0e2ebdf014ea09bbbf8fd055cc0dc45cbef0733261931c361c41a6e3cb93045c` |
| 16 | `theorem` | [ProductTerm.eval_toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/productterm-eval-totree--efa68c608f26fda40605a462.md) | 124 | `result-track:efa68c608f26fda40605a462455b8d0eee989c36d91caed169026d686dbda3b3` |
| 17 | `theorem` | [SumOfProducts.eval_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sumofproducts-eval-append--93ca85238d95c1be13e848a6.md) | 136 | `result-track:93ca85238d95c1be13e848a6018b410ccb12fba04da4ad2ca30e896f239f1241` |
| 18 | `theorem` | [SumOfProducts.eval_map_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sumofproducts-eval-map-append-left--27c025122a68d9701bd8342b.md) | 149 | `result-track:27c025122a68d9701bd8342b0319d8fea68665255c250d87ccc1398620c6c968` |
| 19 | `theorem` | [SumOfProducts.eval_multiply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sumofproducts-eval-multiply--213af35964dae67f15fcca7d.md) | 164 | `result-track:213af35964dae67f15fcca7d4041ae1683cf1e8a603d4233b641a9bca42c4509` |
| 20 | `theorem` | [SumOfProducts.eval_toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sumofproducts-eval-totree--5d948d2450e78340fe50940d.md) | 178 | `result-track:5d948d2450e78340fe50940dc8097daf556fb5bab50bcaf9f9806f0674b225aa` |
| 21 | `def` | [Tree.toSOPNnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/tree-tosopnnf--0b48333d9c790ba43c68becc.md) | 200 | `declaration-track:0b48333d9c790ba43c68becc8e9f65b016bd183ecb1bcc315a31321794c9d74d` |
| 22 | `def` | [Tree.toSOP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/tree-tosop--d77b7032c5068c178ad1e73d.md) | 223 | `declaration-track:d77b7032c5068c178ad1e73d8b58123712b9ec4002edb666d6d7e43a298e66c1` |
| 23 | `theorem` | [Tree.eval_toSOPNnf_nnf_and_negNnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/tree-eval-tosopnnf-nnf-and-negnnf--5fb9c812ddfadba7e8884fef.md) | 226 | `result-track:5fb9c812ddfadba7e8884feff39d1f3ffed1eb5cf7830928f92e05881362f204` |
| 24 | `theorem` | [Tree.eval_toSOPNnf_nnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/tree-eval-tosopnnf-nnf--32c93162be045094a6c648c9.md) | 274 | `result-track:32c93162be045094a6c648c9d9b87ea6833f03f3ea7992df4829f5c94c1b4bc8` |
| 25 | `theorem` | [Tree.eval_toSOPNnf_negNnf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/tree-eval-tosopnnf-negnnf--056c2dd3ca8728e7478156b5.md) | 281 | `result-track:056c2dd3ca8728e7478156b5685a56780941708ee97cd29061dab341baa1eeb3` |
| 26 | `theorem` | [Tree.eval_toSOP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/tree-eval-tosop--0c68dd4abcb2b24c286f50e7.md) | 288 | `result-track:0c68dd4abcb2b24c286f50e70e1b259f4803e75e357fed48d34eb17f55f8c631` |
| 27 | `theorem` | [Tree.eval_toSOP_tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/tree-eval-tosop-tree--17f68ad94e31c55d4df253c3.md) | 294 | `result-track:17f68ad94e31c55d4df253c39e6ba98f32181948d3ce4f489468becabbbec6de` |
| 28 | `structure` | [SOPMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sopmatrix--724082d4ee970c2ce3f67637.md) | 312 | `declaration-track:724082d4ee970c2ce3f676374eb6aeaf82ae502c6af6b039ded32a2112a4ddbe` |
| 29 | `def` | [SOPMatrix.ConflictFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sopmatrix-conflictfree--e0741591fec8e3dcbb1bd798.md) | 317 | `declaration-track:e0741591fec8e3dcbb1bd7981c044588caf93347513a4fc6769ad7c470e697af` |
| 30 | `def` | [SOPMatrix.literalTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sopmatrix-literaltree--7eb367ae5d012a4354d8dc89.md) | 325 | `declaration-track:7eb367ae5d012a4354d8dc898553e942834bbf37ac3eb4382a9258b834959173` |
| 31 | `def` | [SOPMatrix.rowTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sopmatrix-rowtree--2cf03194ee3c0e7f47e4b446.md) | 338 | `declaration-track:2cf03194ee3c0e7f47e4b4462008eba73bd08a01407d0041659ffb5d43f0ac8a` |
| 32 | `def` | [SOPMatrix.toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sopmatrix-totree--746b60ad39c35e4e62809a09.md) | 352 | `declaration-track:746b60ad39c35e4e62809a091229bd99d6bb925afa391c9428851c8bfdfa6caf` |
| 33 | `def` | [SOPMatrix.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sopmatrix-eval--39ec0f1c6f0f4049b3c8897d.md) | 361 | `declaration-track:39ec0f1c6f0f4049b3c8897d527fbb0179d132b5f150a626a1077382b0d34855` |
| 34 | `def` | [SumOfProducts.toMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/sumofproducts-tomatrix--2c029539c52b87ed769a763a.md) | 374 | `declaration-track:2c029539c52b87ed769a763aeb5e71c80eed4eb5aa90821044116efe339e15f7` |
| 35 | `def` | [Tree.toSOPMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean/declarations/tree-tosopmatrix--98fadd6d7f0aef6977fb60c0.md) | 392 | `declaration-track:98fadd6d7f0aef6977fb60c06e558899577018ee165117c5a9f2af8b05822676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
