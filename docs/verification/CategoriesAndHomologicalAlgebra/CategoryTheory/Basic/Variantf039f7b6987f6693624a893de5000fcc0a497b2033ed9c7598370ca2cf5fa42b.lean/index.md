# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea36f294050affc07361e5169cf698f63992468d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea36f294050affc07361e5169cf698f63992468d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CommSq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Retract` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/hasliftingproperty--7968ab9db5b998b0da0ad1bc.md) | 39 | `declaration-track:7968ab9db5b998b0da0ad1bcb386fca44c48c9799e30466b2fae27894180b43d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/instance--4335b8803c73a6bf2b6a2f30.md) | 43 | `declaration-track:4335b8803c73a6bf2b6a2f3095e348bf5272cf3c9494a5ad9da6a7db5182ca50` |
| 3 | `theorem` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/op--ddbcf75c6fc69bf57269166b.md) | 50 | `result-track:ddbcf75c6fc69bf57269166bc0f4a7cdc15aee1c74e811040c39718121c33a09` |
| 4 | `theorem` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/unop--15db06abe93762a77e44498f.md) | 55 | `result-track:15db06abe93762a77e44498f60c2d7bd816ed816b16622b6950604e447ff1158` |
| 5 | `theorem` | [iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/iff-op--9e3a99923ff883c2cfbbd6f3.md) | 62 | `result-track:9e3a99923ff883c2cfbbd6f32e13820bb40ed16fb837461aa6c50ab1be7de893` |
| 6 | `theorem` | [iff_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/iff-unop--757d211c8e5c2ed4bb73c13e.md) | 65 | `result-track:757d211c8e5c2ed4bb73c13e08570a828e40e350dc39d0bc9723b3f07b2a8b4a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/instance--1d6679db85e923539c28343c.md) | 71 | `declaration-track:1d6679db85e923539c28343c64ea40b1e242183edb1f086051f5b299337216f9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/instance--bc06100c2c43524307f34665.md) | 78 | `declaration-track:bc06100c2c43524307f34665683dbe869e03e6ab9c9eb95c26b18f2d06d1c135` |
| 9 | `instance` | [of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/of-comp-left--8106bae0f621a408e327553f.md) | 85 | `declaration-track:8106bae0f621a408e327553fc5bfd6d91e68b6e517ff91710a36db7007393e57` |
| 10 | `instance` | [of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/of-comp-right--c02e7b455b57207e5ed3665c.md) | 96 | `declaration-track:c02e7b455b57207e5ed3665c87d3c735469472775884e09479fa00a2c0dc6c85` |
| 11 | `theorem` | [of_arrow_iso_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/of-arrow-iso-left--4d0ffb403c3f10993d1b10e2.md) | 108 | `result-track:4d0ffb403c3f10993d1b10e2d7738ec791315265b01ab1a1b99fea670a18919d` |
| 12 | `theorem` | [of_arrow_iso_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/of-arrow-iso-right--edae156e8c25b1215e0e22cb.md) | 114 | `result-track:edae156e8c25b1215e0e22cb95c5a6d67300879c73c3a9e9c3d3c1d72ac0bf74` |
| 13 | `theorem` | [iff_of_arrow_iso_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/iff-of-arrow-iso-left--2bba35195f3db95807032c3a.md) | 119 | `result-track:2bba35195f3db95807032c3a4ede58575586f9ec714466e1bcfc3c0fec06150b` |
| 14 | `theorem` | [iff_of_arrow_iso_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/iff-of-arrow-iso-right--0d6a2cd0f6d9a490ee3a1d2b.md) | 125 | `result-track:0d6a2cd0f6d9a490ee3a1d2b97e05d0274c81a60192fa4cb46e27841114127eb` |
| 15 | `lemma` | [RetractArrow.leftLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/retractarrow-leftliftingproperty--2d3fcdbb3904c59efe4339d4.md) | 132 | `result-track:2d3fcdbb3904c59efe4339d48cd27093a8ddbbe6ad1cae5fa7d080636d3f45ad` |
| 16 | `lemma` | [RetractArrow.rightLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf039f7b6987f6693624a893de5000fcc0a497b2033ed9c7598370ca2cf5fa42b.lean/declarations/retractarrow-rightliftingproperty--4938db08a70ac80a0a4c1b13.md) | 144 | `result-track:4938db08a70ac80a0a4c1b132fc7a50d6498c562c2193c82e5e7c797c6b3f454` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
