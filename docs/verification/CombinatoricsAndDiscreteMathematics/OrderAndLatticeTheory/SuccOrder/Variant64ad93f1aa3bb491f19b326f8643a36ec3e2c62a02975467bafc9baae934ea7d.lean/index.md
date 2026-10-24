# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccOrder.Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cc2260a24bec9c2ca23c0b345801dcb606842b0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cc2260a24bec9c2ca23c0b345801dcb606842b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.LatticeIntervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Iic.coe_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d.lean/declarations/iic-coe-succ-of-not-ismax--0df6cbf80379e31764f05394.md) | 22 | `result-track:0df6cbf80379e31764f05394905139ba8ea4ab8d8ddaa061063a26ca32b1cbe3` |
| 2 | `lemma` | [Iic.succ_eq_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d.lean/declarations/iic-succ-eq-of-not-ismax--06722d06906ce675f669efa7.md) | 29 | `result-track:06722d06906ce675f669efa7bf7105a1c2cc02cc330fd9b13ed84f6105dce530` |
| 3 | `lemma` | [Ici.coe_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d.lean/declarations/ici-coe-pred-of-not-ismin--003c4c415d19fa59da4187f9.md) | 37 | `result-track:003c4c415d19fa59da4187f93e52f6dac97fb7ce71de54e18a53347689f557b8` |
| 4 | `lemma` | [Ici.pred_eq_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccOrder/Variant64ad93f1aa3bb491f19b326f8643a36ec3e2c62a02975467bafc9baae934ea7d.lean/declarations/ici-pred-eq-of-not-ismin--cb08d45b758cf8b0e42d8c55.md) | 44 | `result-track:cb08d45b758cf8b0e42d8c555e3959b7ab1265ef20957f5257d5bd7a658d4158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
