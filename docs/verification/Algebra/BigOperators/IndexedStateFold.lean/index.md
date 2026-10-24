# Verification target: GRWTSK.Algebra.BigOperators.IndexedStateFold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0ee5a47b61e4c36189b701741ed8a689ef8d5b4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BigOperators/IndexedStateFold.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BigOperators/IndexedStateFold.lean/index.md) · [Full source](../../../../mathematics/Algebra/BigOperators/IndexedStateFold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0ee5a47b61e4c36189b701741ed8a689ef8d5b4`.

Source path: `GRWTSK/Algebra/BigOperators/IndexedStateFold.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BigOperators/IndexedStateFold.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [run](../../../../mathematics/Algebra/BigOperators/IndexedStateFold.lean/declarations/run--5f25c3bc932110207eb9efc1.md) | 22 | `declaration-track:5f25c3bc932110207eb9efc1fe832ca1ddbe35f0ae184bdf4f26c20c53225583` |
| 2 | `theorem` | [run_spec](../../../../mathematics/Algebra/BigOperators/IndexedStateFold.lean/declarations/run-spec--90d87a2b65dfed8936b280bc.md) | 28 | `result-track:90d87a2b65dfed8936b280bcb7c1924a23930651cdcfc4910e3431db9e8bef38` |
| 3 | `theorem` | [run_add](../../../../mathematics/Algebra/BigOperators/IndexedStateFold.lean/declarations/run-add--fd6b6aeda6508458ec2e99dd.md) | 39 | `result-track:fd6b6aeda6508458ec2e99dd73ee22abf1d388ec5ce1002e3769cffcabb4ca20` |
| 4 | `theorem` | [run_congr](../../../../mathematics/Algebra/BigOperators/IndexedStateFold.lean/declarations/run-congr--3b4d0e9ed307ddfe75edfce6.md) | 50 | `result-track:3b4d0e9ed307ddfe75edfce66dd47a52c1ebcb39960c67ebe88f8533751f6a31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
