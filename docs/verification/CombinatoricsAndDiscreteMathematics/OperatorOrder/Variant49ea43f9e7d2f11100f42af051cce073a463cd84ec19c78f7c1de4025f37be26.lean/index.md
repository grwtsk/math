# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OperatorOrder.Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba7a82fbd5f71529843b3709c2f61ee7dfdbeeff",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba7a82fbd5f71529843b3709c2f61ee7dfdbeeff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.PrimeUniverse` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OperatorModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/declarations/operatormodel--ebf18b3b5e5362235056838f.md) | 25 | `declaration-track:ebf18b3b5e5362235056838fb5334961ff3aea91bbd292fc484a83064c8344c4` |
| 2 | `def` | [OperatorLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/declarations/operatorle--acb210daecba779fdff55c8e.md) | 60 | `declaration-track:acb210daecba779fdff55c8ec294f32ac2d81ad5dc8063ffb0d9fb163646f9ae` |
| 3 | `theorem` | [operatorLE_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/declarations/operatorle-refl--0b3b6997a2801a06cd8d7dca.md) | 65 | `result-track:0b3b6997a2801a06cd8d7dca4dbbf85bde37e0baf758d2ece939458cbc407469` |
| 4 | `theorem` | [operatorLE_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/declarations/operatorle-trans--17a39cf175a3197bbc6113b9.md) | 71 | `result-track:17a39cf175a3197bbc6113b9d724d07ced2b820549907cc84bc3e936a54ba5f7` |
| 5 | `theorem` | [operatorLE_antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/declarations/operatorle-antisymm--2d1071ce679020637d748022.md) | 84 | `result-track:2d1071ce679020637d748022177332be15ab1469f93292be2ef57d37245fda26` |
| 6 | `def` | [OperatorPositive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/declarations/operatorpositive--7d7de9f4b2ec1848d253c365.md) | 98 | `declaration-track:7d7de9f4b2ec1848d253c3657f9ad972340d522210101d8e0acfdc6df116db7e` |
| 7 | `theorem` | [operatorFinsetSum_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variant49ea43f9e7d2f11100f42af051cce073a463cd84ec19c78f7c1de4025f37be26.lean/declarations/operatorfinsetsum-nonnegative--15e85d93d92fbd9d65e1894b.md) | 103 | `result-track:15e85d93d92fbd9d65e1894b6d9535a32774f91eb858d0c61db6950c9f926c9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
