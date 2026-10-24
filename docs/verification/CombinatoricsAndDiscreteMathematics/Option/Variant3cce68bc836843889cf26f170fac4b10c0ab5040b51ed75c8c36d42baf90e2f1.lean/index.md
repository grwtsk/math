# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Option.Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3461eaf0d18b3aa2fee542882a8682d404d2339",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3461eaf0d18b3aa2fee542882a8682d404d2339`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Option/Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Option` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1.lean/declarations/prod-insertnone--8bd2451ef41aed95cdb69026.md) | 23 | `result-track:8bd2451ef41aed95cdb690263cd6cb2fe0532eec8816564d05ad8858ce7cf28e` |
| 2 | `theorem` | [mul_prod_eq_prod_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1.lean/declarations/mul-prod-eq-prod-insertnone--ca5350a9c1e6420d68b397c9.md) | 27 | `result-track:ca5350a9c1e6420d68b397c94fbd35aedae27953bb57e98daccecf7c2aede818` |
| 3 | `theorem` | [prod_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1.lean/declarations/prod-erasenone--250c8623a93d0ab76feb61d5.md) | 32 | `result-track:250c8623a93d0ab76feb61d51c5cc046ce47197f0780feaf5759b1d6b8ddd50d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
