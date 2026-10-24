# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.BigOperators.Variant97802fd401a81b0e810bef7a5fdcf293fe0c7d8c4e7f7d6e42108e6b7648556e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "304222ebb2ab882b8dbe37ee2ce09ae653ee1a97",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant97802fd401a81b0e810bef7a5fdcf293fe0c7d8c4e7f7d6e42108e6b7648556e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant97802fd401a81b0e810bef7a5fdcf293fe0c7d8c4e7f7d6e42108e6b7648556e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant97802fd401a81b0e810bef7a5fdcf293fe0c7d8c4e7f7d6e42108e6b7648556e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `304222ebb2ab882b8dbe37ee2ce09ae653ee1a97`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant97802fd401a81b0e810bef7a5fdcf293fe0c7d8c4e7f7d6e42108e6b7648556e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/BigOperators/Variant97802fd401a81b0e810bef7a5fdcf293fe0c7d8c4e7f7d6e42108e6b7648556e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.GCD.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coprime_prod_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant97802fd401a81b0e810bef7a5fdcf293fe0c7d8c4e7f7d6e42108e6b7648556e.lean/declarations/coprime-prod-left--fe3b1c5705214b9211615b9b.md) | 30 | `result-track:fe3b1c5705214b9211615b9ba1542fbf88fd5e27f80ae672771f50a17c2159b9` |
| 2 | `theorem` | [coprime_prod_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant97802fd401a81b0e810bef7a5fdcf293fe0c7d8c4e7f7d6e42108e6b7648556e.lean/declarations/coprime-prod-right--89a918bb96f0c3a3725fd748.md) | 36 | `result-track:89a918bb96f0c3a3725fd748fdd9bca98b8aa0ad018bbc743081015e76eeb358` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
