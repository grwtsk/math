# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4f2eb8bbec95bca55a7c157feace34232433f4d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4f2eb8bbec95bca55a7c157feace34232433f4d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Canonical` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [typesGrothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/typesgrothendiecktopology--cec45c7f548a78d17ba5f33f.md) | 29 | `declaration-track:cec45c7f548a78d17ba5f33f3b62ed53071cb45832b81ce9bb50d3bb4ae447a2` |
| 2 | `def` | [discreteSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/discretesieve--33279aa08ebe1b6a26583bab.md) | 38 | `declaration-track:33279aa08ebe1b6a26583babec69db35d1868673837021796f4976f5c35166fa` |
| 3 | `theorem` | [discreteSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/discretesieve-mem--31f8776037077d622dbf130f.md) | 43 | `result-track:31f8776037077d622dbf130fe360f4dece27dc7891769c37c4f4dbd3c6ab6be9` |
| 4 | `def` | [discretePresieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/discretepresieve--83883c22b0745df2e969a28b.md) | 48 | `declaration-track:83883c22b0745df2e969a28b3bffe11668660901979144dcea90be850f6f392d` |
| 5 | `theorem` | [generate_discretePresieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/generate-discretepresieve-mem--f292f5defb94d2fc7de39b38.md) | 52 | `result-track:f292f5defb94d2fc7de39b388205d0830b54676485f52d0f91aba6a7ab20d47a` |
| 6 | `theorem` | [isSheaf_yoneda'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/issheaf-yoneda--651eaebb3747f584e3afe435.md) | 59 | `result-track:651eaebb3747f584e3afe435f62baeff300add1d86aebc4235b537fbaccca762` |
| 7 | `def` | [yoneda'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/yoneda--38614214a95e13fdb0b4b3dd.md) | 69 | `declaration-track:38614214a95e13fdb0b4b3dd61599d68c4f0c8687107b66e27c244b7b08a7e2d` |
| 8 | `theorem` | [yoneda'_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/yoneda-comp--ec87641b17874f0e0a6ea2bb.md) | 75 | `result-track:ec87641b17874f0e0a6ea2bb654f86653c04c1065cc29e0f428de39798e229d1` |
| 9 | `def` | [eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/eval--da948b6c7f378d7eb87e2111.md) | 83 | `declaration-track:da948b6c7f378d7eb87e2111c6d80990952e135c241b0e0259b37a083cb665c6` |
| 10 | `def` | [typesGlue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/typesglue--7a1b0a21ea5b63be0346c53c.md) | 89 | `declaration-track:7a1b0a21ea5b63be0346c53c26311589f6ad2d5d8de273d40a696b2c1a7f6d2a` |
| 11 | `theorem` | [eval_typesGlue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/eval-typesglue--88faa5bf614a9b1decbb59f3.md) | 102 | `result-track:88faa5bf614a9b1decbb59f3c9d866eb2694d486957e7a98d2a9425329f45dc0` |
| 12 | `theorem` | [typesGlue_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/typesglue-eval--590b7648e7ba1cb1dd54885f.md) | 108 | `result-track:590b7648e7ba1cb1dd54885f93bbbf5ce70ea2956ff1d1f67e9bd10f4713cd3d` |
| 13 | `def` | [evalEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/evalequiv--c3a517901ed7af5cb15c3f1e.md) | 122 | `declaration-track:c3a517901ed7af5cb15c3f1e58805abe8ac752990ad06a5b211dfa55c2bf74cc` |
| 14 | `theorem` | [eval_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/eval-map--b6a77b582b54e7499f15e730.md) | 130 | `result-track:b6a77b582b54e7499f15e7303f7543beb96002d93971a805daa6bfeea0d816c9` |
| 15 | `def` | [equivYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/equivyoneda--e2db9b818e4acabf1c0e4d14.md) | 137 | `declaration-track:e2db9b818e4acabf1c0e4d14751ad4afed3f59d58b71c50111ad8e16e6ac0b4f` |
| 16 | `def` | [equivYoneda'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/equivyoneda--b3d88a495fbe047d0d897c8a.md) | 145 | `declaration-track:b3d88a495fbe047d0d897c8ae547824c3e5d36631e4fb9f5627a1b9cde0f8a88` |
| 17 | `theorem` | [eval_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/eval-app--1dc1c4936d3b459d331da4f0.md) | 153 | `result-track:1dc1c4936d3b459d331da4f08a8e5c3b17f43d75752d0c5a346e1eba32fef981` |
| 18 | `def` | [typeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/typeequiv--088cabd226352f753fee8415.md) | 162 | `declaration-track:088cabd226352f753fee84154b5ecb15a560533b3e2239da4cb70edd1b86cd2b` |
| 19 | `theorem` | [subcanonical_typesGrothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/subcanonical-typesgrothendiecktopology--e774c89a7befff0500641964.md) | 178 | `result-track:e774c89a7befff05006419641342c24aff8ee0e125a8f19144574794ff18f7a4` |
| 20 | `theorem` | [typesGrothendieckTopology_eq_canonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/declarations/typesgrothendiecktopology-eq-canonical--ed7c5909fa2f03f7c15c9dec.md) | 182 | `result-track:ed7c5909fa2f03f7c15c9dec70971c8b952ecce58fe28d7e43029a18f9c274dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
