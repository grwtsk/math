# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Disjointed.Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dad8beb3f8dbc2d56809fc6c54aef91ada5a5fd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dad8beb3f8dbc2d56809fc6c54aef91ada5a5fd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.PartialSups` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjointed_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean/declarations/disjointed-add-one--58e846a99147b5884f9d1d36.md) | 37 | `result-track:58e846a99147b5884f9d1d365fb22363dcff42b7973bc1960363c9b3a55c3344` |
| 2 | `lemma` | [Monotone.disjointed_add_one_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean/declarations/monotone-disjointed-add-one-sup--0b18f9e2097346ea687be912.md) | 41 | `result-track:0b18f9e2097346ea687be912367199ea7cb247727b279bf44e8c3f40279bc992` |
| 3 | `lemma` | [Monotone.disjointed_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean/declarations/monotone-disjointed-add-one--f402edbe4ec3f8092cb0e5f5.md) | 45 | `result-track:f402edbe4ec3f8092cb0e5f5130acb8c20222486e623af4ffc4fafbbb4fe8709` |
| 4 | `def` | [Nat.disjointedRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean/declarations/nat-disjointedrec--bcd443d96311c47c797cf5b2.md) | 59 | `declaration-track:bcd443d96311c47c797cf5b2d02248cfa593facbd7e7701fe9068a365a536de3` |
| 5 | `theorem` | [disjointedRec_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantf089f5cd5118f7a8277a37a17dcd055139b0585ae7c5c4403c9c48d377281328.lean/declarations/disjointedrec-zero--6fd2d1f3f54eb0e4042c34b7.md) | 70 | `result-track:6fd2d1f3f54eb0e4042c34b768789aa86db3a876de5d6576d8051950dc8d7d57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
