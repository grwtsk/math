# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e51796cc4bfeef0a905716fb32d785f6957fa2cf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e51796cc4bfeef0a905716fb32d785f6957fa2cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean/declarations/mulleft--3cfea7e4dd264782278fb041.md) | 32 | `declaration-track:3cfea7e4dd264782278fb041f7b13a380172792cb5333469437670e97515e07e` |
| 2 | `lemma` | [mulLeft₀_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean/declarations/mulleft-symm--41b31ade9ab08ec6bd392d08.md) | 36 | `result-track:41b31ade9ab08ec6bd392d082a63acff373804cfd92d6b52a6e4b5494c79469b` |
| 3 | `def` | [mulRight₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean/declarations/mulright--59e9e46a00144e2183d66720.md) | 48 | `declaration-track:59e9e46a00144e2183d6672048beb87b88c263c3cd3e5fce68b966dbb5b28846` |
| 4 | `lemma` | [mulRight₀_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean/declarations/mulright-symm--b3e9d40f07b47f13d2032226.md) | 52 | `result-track:b3e9d40f07b47f13d2032226dd05bf234fbba6cb05e4773578037a0a9e0eef2a` |
| 5 | `def` | [divRight₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900.lean/declarations/divright--a86fe9b03de58d0fe9acc12a.md) | 57 | `declaration-track:a86fe9b03de58d0fe9acc12a3cd8f63609c7747f3da23f9a56c832cbc73c9d7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
