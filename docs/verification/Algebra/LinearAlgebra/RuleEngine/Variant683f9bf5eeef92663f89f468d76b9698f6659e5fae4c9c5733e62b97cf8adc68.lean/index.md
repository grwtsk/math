# Verification target: GRWTSK.Algebra.LinearAlgebra.RuleEngine.Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7213c048ca2f4ee975edf46deb574f84be02fb2b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7213c048ca2f4ee975edf46deb574f84be02fb2b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.IndexSpinRef` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Archive.PresentationRule` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrixStream` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BuiltinRuleId](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/declarations/builtinruleid--ecdd40de20396bdd31dcc761.md) | 28 | `declaration-track:ecdd40de20396bdd31dcc7614cf3b680d3a065ea3392c821cdc6a9801dc9e631` |
| 2 | `structure` | [RuleEngine](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/declarations/ruleengine--7e28777d45ac0ced49bd69f8.md) | 34 | `declaration-track:7e28777d45ac0ced49bd69f8461b4ae059708c526b876498819986d2704f31b9` |
| 3 | `def` | [copyRuleEngine](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/declarations/copyruleengine--0b1fb67ffe9c3b8762a93203.md) | 41 | `declaration-track:0b1fb67ffe9c3b8762a932031158c0139c289b94a344f19345fbbeaa1046cbee` |
| 4 | `structure` | [LayerRecipe](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/declarations/layerrecipe--8784cab4059ce7bff9f57e91.md) | 48 | `declaration-track:8784cab4059ce7bff9f57e9120c9cde55218cc0113ff7e6b9843d5fe37a2d63c` |
| 5 | `def` | [realizeLayerRecipe?](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/declarations/realizelayerrecipe--e69d8ccd99cdad34292e9e60.md) | 52 | `declaration-track:e69d8ccd99cdad34292e9e60c6c64c9883f598c48c51ade669e9524c5f6f60ea` |
| 6 | `def` | [realizeLayerRecipeAsStep?](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/declarations/realizelayerrecipeasstep--bfb49dfd2269fcb6f4a7b73a.md) | 62 | `declaration-track:bfb49dfd2269fcb6f4a7b73a7f4d35766d8348e51c16d9b51f8b993975af2adc` |
| 7 | `theorem` | [realize_copy_recipe](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/declarations/realize-copy-recipe--2872895523bbd16599d4f7a9.md) | 79 | `result-track:2872895523bbd16599d4f7a9f826454d83b45acb6df7b62df6149fd7880c28c3` |
| 8 | `theorem` | [copyRuleEngine_realize](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68.lean/declarations/copyruleengine-realize--50c2fe0ac577fc4f545d67db.md) | 89 | `result-track:50c2fe0ac577fc4f545d67dbf59c0e64e91f995523011062b8eb975bee7ffb9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
