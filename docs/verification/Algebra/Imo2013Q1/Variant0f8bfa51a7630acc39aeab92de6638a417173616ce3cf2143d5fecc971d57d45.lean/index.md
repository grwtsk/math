# Verification target: GRWTSK.Algebra.Imo2013Q1.Variant0f8bfa51a7630acc39aeab92de6638a417173616ce3cf2143d5fecc971d57d45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c9ee5d4ff1f704b18dff0d01ac0c2ec4f70bf58",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo2013Q1/Variant0f8bfa51a7630acc39aeab92de6638a417173616ce3cf2143d5fecc971d57d45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Imo2013Q1/Variant0f8bfa51a7630acc39aeab92de6638a417173616ce3cf2143d5fecc971d57d45.lean/index.md) · [Full source](../../../../mathematics/Algebra/Imo2013Q1/Variant0f8bfa51a7630acc39aeab92de6638a417173616ce3cf2143d5fecc971d57d45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c9ee5d4ff1f704b18dff0d01ac0c2ec4f70bf58`.

Source path: `GRWTSK/Algebra/Imo2013Q1/Variant0f8bfa51a7630acc39aeab92de6638a417173616ce3cf2143d5fecc971d57d45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo2013Q1/Variant0f8bfa51a7630acc39aeab92de6638a417173616ce3cf2143d5fecc971d57d45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [arith_lemma](../../../../mathematics/Algebra/Imo2013Q1/Variant0f8bfa51a7630acc39aeab92de6638a417173616ce3cf2143d5fecc971d57d45.lean/declarations/arith-lemma--e2567c1489905c098762968e.md) | 30 | `result-track:e2567c1489905c098762968e271d0f0e0e33eb757b28dc07555434dfc0396314` |
| 2 | `theorem` | [prod_lemma](../../../../mathematics/Algebra/Imo2013Q1/Variant0f8bfa51a7630acc39aeab92de6638a417173616ce3cf2143d5fecc971d57d45.lean/declarations/prod-lemma--32bb447496ec261de7451f87.md) | 32 | `result-track:32bb447496ec261de7451f87fe5efe4401e98af412a5a4dc3e51aac9ed90e34f` |
| 3 | `theorem` | [imo2013_q1](../../../../mathematics/Algebra/Imo2013Q1/Variant0f8bfa51a7630acc39aeab92de6638a417173616ce3cf2143d5fecc971d57d45.lean/declarations/imo2013-q1--e3dea81278dbfcf7903ebe30.md) | 43 | `result-track:e3dea81278dbfcf7903ebe303231a9c749a602ece1a13033dff8febc5b6d1584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
