# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Traversal.Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c06f1c0aca2874d241271af079fe9ce12b03b200",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c06f1c0aca2874d241271af079fe9ce12b03b200`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Eval` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/mapatoms--c6a49f57c1dd5c8905e05829.md) | 12 | `declaration-track:c6a49f57c1dd5c8905e05829527b5ad19f97e460659c6b9e947a3764dcf96c10` |
| 2 | `theorem` | [mapAtoms_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/mapatoms-const--920defd56722ff4c866e4f22.md) | 22 | `result-track:920defd56722ff4c866e4f22fed3e00e43472d86372f99c65cd0c710509deb0b` |
| 3 | `theorem` | [mapAtoms_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/mapatoms-id--b0684eb0c40179b974bcd7ed.md) | 26 | `result-track:b0684eb0c40179b974bcd7edfa14e969f3d1fc9d13b05b0ba91b4bcc9c662e9f` |
| 4 | `theorem` | [mapAtoms_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/mapatoms-comp--ae930e886523aa16c21a1b3a.md) | 38 | `result-track:ae930e886523aa16c21a1b3a27cf5fe6842c81d3016802524f5fb7a06f95766c` |
| 5 | `theorem` | [eval_mapAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/eval-mapatoms--6440f9aafdcf7396db7cc9dc.md) | 50 | `result-track:6440f9aafdcf7396db7cc9dc8fd8c47910b581630c43e5ecf3712602afb0539e` |
| 6 | `def` | [atoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/atoms--a0b9b951bab890869cd8fc85.md) | 63 | `declaration-track:a0b9b951bab890869cd8fc859f3a1f931be216489705403fb0759eafd591967a` |
| 7 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/size--cbcfb3677d399c9a9b9bf5b9.md) | 74 | `declaration-track:cbcfb3677d399c9a9b9bf5b908a5009fb6e4f6fea749792f004c42ad4d6f81af` |
| 8 | `def` | [depth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/depth--0adc5800d9f27e2c2a611828.md) | 85 | `declaration-track:0adc5800d9f27e2c2a6118286002777c9be31f9f961ba1b1bb7345ed8a0c6872` |
| 9 | `theorem` | [size_mapAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/size-mapatoms--35a4dbc6db7035596e178c5c.md) | 95 | `result-track:35a4dbc6db7035596e178c5cdf13352895ad6351b3357c9dbcb37f72d78c1512` |
| 10 | `theorem` | [depth_mapAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/declarations/depth-mapatoms--f7841b4b2f47e40e7d4cd4a0.md) | 107 | `result-track:f7841b4b2f47e40e7d4cd4a0eca40429ae8f62e2288aea787749b02badb1d74c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
