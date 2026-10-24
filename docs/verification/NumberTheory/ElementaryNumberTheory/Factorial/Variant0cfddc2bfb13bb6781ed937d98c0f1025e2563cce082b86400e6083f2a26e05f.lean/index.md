# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Factorial.Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c0f69036ade81c16f3c2bbac4c8b6910805d7e2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c0f69036ade81c16f3c2bbac4c8b6910805d7e2`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Prime.dvd_factorial](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean/declarations/prime-dvd-factorial--56d213632f357b7627637e65.md) | 19 | `result-track:56d213632f357b7627637e65107fdb3f300d8b20edd662eda420e9c20abcf81c` |
| 2 | `theorem` | [coprime_factorial_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factorial/Variant0cfddc2bfb13bb6781ed937d98c0f1025e2563cce082b86400e6083f2a26e05f.lean/declarations/coprime-factorial-iff--d380310c477c4f8e3a25b90d.md) | 27 | `result-track:d380310c477c4f8e3a25b90da9eadc67fdd930d20ef426ac2ffc4e81773ae213` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
