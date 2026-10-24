# Verification target: GRWTSK.Algebra.LinearAlgebra.RuleEngine.Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f874016157cdbfeae674c7eef410a2ded8bc17e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f874016157cdbfeae674c7eef410a2ded8bc17e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.IndexSpinRef` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Archive.PresentationRule` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrixStream` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BuiltinRuleId](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/declarations/builtinruleid--63869be83ef315ff03720ba0.md) | 20 | `declaration-track:63869be83ef315ff03720ba03dcd4512f9c5c912ca9a8c24337abf24956fa4f4` |
| 2 | `structure` | [RuleEngine](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/declarations/ruleengine--0e4c44dcc76edd7bc0bc00a1.md) | 26 | `declaration-track:0e4c44dcc76edd7bc0bc00a14845796018af736fa2d65f2fcb716d147e78e885` |
| 3 | `def` | [copyRuleEngine](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/declarations/copyruleengine--851d4123c363f77ab2f87bb1.md) | 33 | `declaration-track:851d4123c363f77ab2f87bb1643c104e7283d797e2bb8a647ae8a74e24fa59ed` |
| 4 | `structure` | [LayerRecipe](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/declarations/layerrecipe--51279b7b9a18e542336d68f6.md) | 40 | `declaration-track:51279b7b9a18e542336d68f6bc3124d7ae61d4c69db27639ee24acf98c21ffbe` |
| 5 | `def` | [realizeLayerRecipe?](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/declarations/realizelayerrecipe--736a98781f28c1a50a111b68.md) | 44 | `declaration-track:736a98781f28c1a50a111b68a33437f6cd33dbe73aec319bbb1ce65dead9219b` |
| 6 | `def` | [realizeLayerRecipeAsStep?](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/declarations/realizelayerrecipeasstep--c0707ba0d345355c273341b9.md) | 54 | `declaration-track:c0707ba0d345355c273341b900ca428375029d7517f356e987df0cbd5aa16b36` |
| 7 | `theorem` | [realize_copy_recipe](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/declarations/realize-copy-recipe--2a984173eb131b8ac255e4e1.md) | 71 | `result-track:2a984173eb131b8ac255e4e1747f1be6fa9dc461b47c58360f354f0919fd45ad` |
| 8 | `theorem` | [copyRuleEngine_realize](../../../../../mathematics/Algebra/LinearAlgebra/RuleEngine/Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372.lean/declarations/copyruleengine-realize--38ca12c4d7fdcd4437039b76.md) | 81 | `result-track:38ca12c4d7fdcd4437039b76b68d0fa5bae4e48c8dadb157971f3250f424eda3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
