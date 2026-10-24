# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoherenceLemmas.Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef4ecbd8d358485f32b37effd9417527200d0b0a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef4ecbd8d358485f32b37effd9417527200d0b0a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Monoidal.PureCoherence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [leftUnitor_tensor''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/leftunitor-tensor--74b670ed04ac02179214407e.md) | 27 | `result-track:74b670ed04ac02179214407e198316b4b370c283c2b80a45f7c4e06ec53eb0fe` |
| 2 | `theorem` | [leftUnitor_tensor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/leftunitor-tensor--d89f13d6419142e14ec7aff9.md) | 32 | `result-track:d89f13d6419142e14ec7aff99335e3701a33ceaa641b00b96558627db1b18d72` |
| 3 | `theorem` | [leftUnitor_tensor_inv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/leftunitor-tensor-inv--dbbc3ae39fce5ebd2156d944.md) | 37 | `result-track:dbbc3ae39fce5ebd2156d944fb7123f5075f48ff3e77585b19dc956f60824325` |
| 4 | `theorem` | [id_tensor_rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/id-tensor-rightunitor-inv--dfa4a8785005f6bd90d47790.md) | 41 | `result-track:dfa4a8785005f6bd90d47790b73120699244bcdf32997e36e6b5f55ac24d4596` |
| 5 | `theorem` | [leftUnitor_inv_tensor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/leftunitor-inv-tensor-id--d6024d1113c8f8f3b14ad81f.md) | 45 | `result-track:d6024d1113c8f8f3b14ad81fc5da3c2150600acc37860b735b7d741cc3c35580` |
| 6 | `theorem` | [pentagon_inv_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/pentagon-inv-inv-hom--9523c50d136af0c85fd17759.md) | 49 | `result-track:9523c50d136af0c85fd177591db8f157507bee9c5ad62b70baf210ab9281cd8f` |
| 7 | `theorem` | [unitors_equal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/unitors-equal--8be2b09d673ab80039e5ab46.md) | 54 | `result-track:8be2b09d673ab80039e5ab467d89c632874b7f354ae3ff1cca74580719116f16` |
| 8 | `theorem` | [unitors_inv_equal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/unitors-inv-equal--82671d2cb218c896c9589a69.md) | 57 | `result-track:82671d2cb218c896c9589a69b1f2e4c65b6f156e4f81ffac1e05d65df4847716` |
| 9 | `theorem` | [pentagon_hom_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/pentagon-hom-inv--59e13321dc2b042e13ef1111.md) | 61 | `result-track:59e13321dc2b042e13ef1111ca7c46a0ddab019541ade4d86acc770015f88548` |
| 10 | `theorem` | [pentagon_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherenceLemmas/Varianta318901dead0f376652d4c1dabd130a0ac0163d90d053b478115ff93b4041c86.lean/declarations/pentagon-inv-hom--af46d2d4815623fcc35d24bd.md) | 67 | `result-track:af46d2d4815623fcc35d24bda857f6e2616f77628f6251f670019c02a4fbddc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
