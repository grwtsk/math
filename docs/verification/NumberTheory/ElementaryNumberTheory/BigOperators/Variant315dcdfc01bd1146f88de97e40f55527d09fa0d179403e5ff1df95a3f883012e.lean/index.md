# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.BigOperators.Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb84079ef3f8c9ba48613323b3a0afbea39adbd2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb84079ef3f8c9ba48613323b3a0afbea39adbd2`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/BigOperators/Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.GCD.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coprime_prod_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e.lean/declarations/coprime-prod-left--b2476b61733f9efb8577dcff.md) | 22 | `result-track:b2476b61733f9efb8577dcffc732b7871560754a7f348685b687a22699301546` |
| 2 | `theorem` | [coprime_prod_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e.lean/declarations/coprime-prod-right--85b7d768da8dbf68d0359e65.md) | 28 | `result-track:85b7d768da8dbf68d0359e65dd065ab0a298589b296d874ba88b05356420e479` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
