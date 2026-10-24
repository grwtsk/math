# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NormalForms.Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaffd15df70f808e797dc2908ccfc144de46f37f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaffd15df70f808e797dc2908ccfc144de46f37f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Zify` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Ineq` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAdmissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/isadmissible--9b82881c4bafb4e762f8bd46.md) | 52 | `declaration-track:9b82881c4bafb4e762f8bd46763422a0bb33d61394841711195635f972964f62` |
| 2 | `lemma` | [nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/nil--620738e647e5ab14a52bd865.md) | 58 | `result-track:620738e647e5ab14a52bd86524420a5c8ba83fe2e8f0d32625e62f5ee2ad5bbf` |
| 3 | `lemma` | [sorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/sorted--b69a4f0748a5e504082e215d.md) | 62 | `result-track:b69a4f0748a5e504082e215d6d36fff275b9e380e499a0bb5153250758d40f22` |
| 4 | `lemma` | [le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/le--ae0640355a6415f16d021bf4.md) | 64 | `result-track:ae0640355a6415f16d021bf443dc570d069efb09e241201738c8da7d2aae74bf` |
| 5 | `lemma` | [head_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/head-lt--073d6fc393937bc0c5b84238.md) | 67 | `result-track:073d6fc393937bc0c5b84238882f25398a32d2472e8ecd6607b5240e7a8bad6f` |
| 6 | `lemma` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/cons--f4f3f80b64eab0c7be0b5479.md) | 72 | `result-track:f4f3f80b64eab0c7be0b5479604b5d8938a821c8a834ae9e6b17488787e77821` |
| 7 | `lemma` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/tail--6763cc4db528245e608d9414.md) | 94 | `result-track:6763cc4db528245e608d9414bfb1e952ddf587634d0f8bb853c3051ddd854368` |
| 8 | `def` | [getElemAsFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/getelemasfin--0e9670e59ad5080d86c2ceca.md) | 102 | `declaration-track:0e9670e59ad5080d86c2cecafb7ee2e250f1d7cf76fce6ceda1af6a15b60dc42` |
| 9 | `def` | [head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/head--04849e165901c5b90d63e23a.md) | 108 | `declaration-track:04849e165901c5b90d63e23a2891b8d72bc3c9083b2e184b2df90a9bfbfbddaa` |
| 10 | `def` | [simplicialInsert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/simplicialinsert--24dfee85ba91ce23f4b258cd.md) | 121 | `declaration-track:24dfee85ba91ce23f4b258cd4017f162c13f4c4a5f94072dce3ea2ace393ef03` |
| 11 | `lemma` | [simplicialInsert_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/simplicialinsert-length--456b91323889ed1f5281af17.md) | 126 | `result-track:456b91323889ed1f5281af17cc0b221160452a671a29742e97d854263bf710aa` |
| 12 | `theorem` | [simplicialInsert_isAdmissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantd42517dc4eb0c93e7d19e76b99d5e494a5e7666f8e568131023498de73294e59.lean/declarations/simplicialinsert-isadmissible--698bb34514358ee4f241895e.md) | 135 | `result-track:698bb34514358ee4f241895ef0126c77e7fa6b4df2c74b1d23b5ca7e4723e337` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
