# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Disjointed.Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d65197cb1c8a1a710dd94d72decc4029f7c876f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d65197cb1c8a1a710dd94d72decc4029f7c876f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.PartialSups` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjointed_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean/declarations/disjointed-add-one--00855483277ce8cbede93110.md) | 29 | `result-track:00855483277ce8cbede93110ccaa2e8e5b7aa0b9591829f8fad954bb3b9ff99a` |
| 2 | `lemma` | [Monotone.disjointed_add_one_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean/declarations/monotone-disjointed-add-one-sup--b085c4839e2bfe5ae5f18f6c.md) | 33 | `result-track:b085c4839e2bfe5ae5f18f6c9cd6cf080499a1b2cd101bcfc545da10fb32fa22` |
| 3 | `lemma` | [Monotone.disjointed_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean/declarations/monotone-disjointed-add-one--daafdec4f5e753f8d7582817.md) | 37 | `result-track:daafdec4f5e753f8d7582817fba7c9317cb0e8a5185e55cac44fa295490e293e` |
| 4 | `def` | [Nat.disjointedRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean/declarations/nat-disjointedrec--b6558ed4f3feb830963f9a01.md) | 51 | `declaration-track:b6558ed4f3feb830963f9a0163dfe517da09d6dca18389900fa8a883020c4009` |
| 5 | `theorem` | [disjointedRec_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4.lean/declarations/disjointedrec-zero--c78ecda63104c53735dc8df5.md) | 62 | `result-track:c78ecda63104c53735dc8df5b9e1e8fb8ef7a0c0fdc775c7186927d195772c76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
