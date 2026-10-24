# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ae32a6bd2c3ae7acea2561270f02483a0e2146c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ae32a6bd2c3ae7acea2561270f02483a0e2146c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Generator.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Preadditive.isSeparating_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/declarations/preadditive-isseparating-iff--f4136de81bc57deeac7d60ba.md) | 26 | `result-track:f4136de81bc57deeac7d60bae068dd337fefbbffe96adf42c0d01412aa72b4b0` |
| 2 | `theorem` | [Preadditive.isCoseparating_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/declarations/preadditive-iscoseparating-iff--ba5fca48eac0f0b6afe48b48.md) | 31 | `result-track:ba5fca48eac0f0b6afe48b48ddb5a13608393dfe7720e0aff40b635d2eacacff` |
| 3 | `theorem` | [Preadditive.isSeparator_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/declarations/preadditive-isseparator-iff--c0e420406b71da038743bc37.md) | 36 | `result-track:c0e420406b71da038743bc37b74a9b73ca04e21403fb5899035002173ef343a4` |
| 4 | `theorem` | [Preadditive.isCoseparator_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/declarations/preadditive-iscoseparator-iff--9cbf497370a4ac257547ad05.md) | 42 | `result-track:9cbf497370a4ac257547ad05387b59b32bb6bdc02b4e346cc13cb3606d557777` |
| 5 | `theorem` | [isSeparator_iff_faithful_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/declarations/isseparator-iff-faithful-preadditivecoyoneda--b197cbe5b8ad78da8e2a6dc6.md) | 48 | `result-track:b197cbe5b8ad78da8e2a6dc6e5a33b427d17409f12b2471d4527997349cdcbff` |
| 6 | `theorem` | [isSeparator_iff_faithful_preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/declarations/isseparator-iff-faithful-preadditivecoyonedaobj--6acd710794ec60397c298e70.md) | 55 | `result-track:6acd710794ec60397c298e701e54dcc03298f279a343cd6de253cc98131a7af6` |
| 7 | `theorem` | [isCoseparator_iff_faithful_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/declarations/iscoseparator-iff-faithful-preadditiveyoneda--657e21411c5cc687842c52e5.md) | 61 | `result-track:657e21411c5cc687842c52e531b77ae857e8ef3925e0b81019903ce611c35b8a` |
| 8 | `theorem` | [isCoseparator_iff_faithful_preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantbec4a3c4cb571568f23deac5ed35eb4748d97c5dbd5265f5f1a431d2d2635ddc.lean/declarations/iscoseparator-iff-faithful-preadditiveyonedaobj--d64f5d3900880821dfa011ef.md) | 68 | `result-track:d64f5d3900880821dfa011efbe7f17f2965a1a5431735aefd370f3d1790c55a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
