# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompletePartialOrder.Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2df36e0f7df0ac7edb2e876fce635dcf93c0798b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2df36e0f7df0ac7edb2e876fce635dcf93c0798b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.OmegaCompletePartialOrder` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletePartialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/declarations/completepartialorder--e905d109fc2d66e1daaec86c.md) | 40 | `declaration-track:e905d109fc2d66e1daaec86c10a8073b79224f893ffe1fe5bdc54bd5d7e17512` |
| 2 | `lemma` | [DirectedOn.isLUB_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/declarations/directedon-islub-ssup--627cf460028276b91e72e8fa.md) | 46 | `result-track:627cf460028276b91e72e8fa4e0770e8f26b7a2c3860ec6786deffd814e635cf` |
| 3 | `lemma` | [DirectedOn.le_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/declarations/directedon-le-ssup--d029a970e8c770d713023f1e.md) | 49 | `result-track:d029a970e8c770d713023f1e9f1ebe3781d168002a02dd2c68126c32cd363538` |
| 4 | `lemma` | [DirectedOn.sSup_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/declarations/directedon-ssup-le--5285da6bc4c9fa9d4abb0b8e.md) | 52 | `result-track:5285da6bc4c9fa9d4abb0b8e92e8418ee7dd661d00e02386374e68819393e98b` |
| 5 | `lemma` | [Directed.le_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/declarations/directed-le-isup--5e6493fff531bf7e877e9ff0.md) | 55 | `result-track:5e6493fff531bf7e877e9ff02040094d541266d304edafdcff8036f7dc9f3c33` |
| 6 | `lemma` | [Directed.iSup_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/declarations/directed-isup-le--12d9c76967184622e7898039.md) | 58 | `result-track:12d9c76967184622e7898039f3e4beb377e4612fc68b4b56bc9119e58e2555a9` |
| 7 | `lemma` | [CompletePartialOrder.scottContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/declarations/completepartialorder-scottcontinuous--9a69b9ae615e42243ce7177a.md) | 64 | `result-track:9a69b9ae615e42243ce7177af897d2c50882fe7c7e6fa4420657d0d028d8a3d4` |
| 8 | `instance` | [CompletePartialOrder.toOmegaCompletePartialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/declarations/completepartialorder-toomegacompletepartialorder--227b6831286d325d56bdacfc.md) | 74 | `declaration-track:227b6831286d325d56bdacfc38d9d24661a8d8d3590c8cbe39381cadf98c8c52` |
| 9 | `instance` | [CompleteLattice.toCompletePartialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant57aec948cf65cf605a2609e1232c1a9f8d3f8148389553f833583c69e76057e6.lean/declarations/completelattice-tocompletepartialorder--2ae9ebf924ba86288ee0cf91.md) | 82 | `declaration-track:2ae9ebf924ba86288ee0cf9148eb3a5df198839f1c91a12d66b8d238f6d6c623` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
