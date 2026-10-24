# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.BigOperators.Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dfbea627d45c55ba858f89b875a8ec24cb73c34",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dfbea627d45c55ba858f89b875a8ec24cb73c34`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Nat.Gcd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coprime_list_prod_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/declarations/coprime-list-prod-left-iff--76f08f0c48e1a39b2594e05f.md) | 19 | `result-track:76f08f0c48e1a39b2594e05f0123f1b2be99ef56a396159416f6043ac9e63f7a` |
| 2 | `theorem` | [coprime_list_prod_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/declarations/coprime-list-prod-right-iff--11ae3b89770c57ec9437f284.md) | 23 | `result-track:11ae3b89770c57ec9437f284a20486049d5afa1c0b969f5b32ccef502463f1c6` |
| 3 | `theorem` | [coprime_multiset_prod_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/declarations/coprime-multiset-prod-left-iff--4c7a19d80b4034103d3150a9.md) | 27 | `result-track:4c7a19d80b4034103d3150a9bc233c6d976a1b4d496c5dfdf9890052a4f192eb` |
| 4 | `theorem` | [coprime_multiset_prod_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/declarations/coprime-multiset-prod-right-iff--db7542ad718bfb94e8861163.md) | 31 | `result-track:db7542ad718bfb94e8861163cc9cf2037372f9372023a3968bac39697a149573` |
| 5 | `theorem` | [coprime_prod_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/declarations/coprime-prod-left-iff--dba97d561754cc57dcc3dbc7.md) | 35 | `result-track:dba97d561754cc57dcc3dbc79db3224256d369cf71e31bbbebad43c074b9d8ef` |
| 6 | `theorem` | [coprime_prod_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/declarations/coprime-prod-right-iff--bb212fd2f49318a5686d4068.md) | 39 | `result-track:bb212fd2f49318a5686d4068d0aebb37b5693b00d06c6f4c37fe0626c60741fb` |
| 7 | `theorem` | [coprime_fintype_prod_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/declarations/coprime-fintype-prod-left-iff--e5855465a4bbe5dfebceb4ff.md) | 49 | `result-track:e5855465a4bbe5dfebceb4fff82b946b6c5287240528bcfbe32b50ab93ce7230` |
| 8 | `theorem` | [coprime_fintype_prod_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/BigOperators/Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34.lean/declarations/coprime-fintype-prod-right-iff--d66a424c64a7c151c72dfa4f.md) | 53 | `result-track:d66a424c64a7c151c72dfa4fb66cbd1de3fc91d18f3beb28be47d4bf298bb36f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
