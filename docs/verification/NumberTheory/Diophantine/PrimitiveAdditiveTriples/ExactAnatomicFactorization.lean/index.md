# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExactAnatomicFactorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7435811adf3ef6d8cc94c8ca0a6b6f48844437a8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7435811adf3ef6d8cc94c8ca0a6b6f48844437a8`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/index.md) — import line 17; pinned internal source present.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.BigOperators` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplicityLayer](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/multiplicitylayer--94a7b0316689e15f7cac42cd.md) | 35 | `declaration-track:94a7b0316689e15f7cac42cd0880c8c186a433b2d330cad03538e86bff22b697` |
| 2 | `theorem` | [multiplicityLayer_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/multiplicitylayer-zero--40fa6c3dfd5b983d05f2415c.md) | 39 | `result-track:40fa6c3dfd5b983d05f2415c85248a5989b4410e3f68b2659fed38882f89720f` |
| 3 | `theorem` | [multiplicityLayer_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/multiplicitylayer-pos--5a97d5f7acf78681a8153f9d.md) | 42 | `result-track:5a97d5f7acf78681a8153f9d759960458501d0365455d91502351b2fcce33151` |
| 4 | `theorem` | [prod_multiplicityLayer_pow_eq_self_of_cover](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/prod-multiplicitylayer-pow-eq-self-of-cover--7dde55537ee0e52d9a6ff597.md) | 48 | `result-track:7dde55537ee0e52d9a6ff5977d47ac8a4b90707a5d6691760811e9a3cad109ff` |
| 5 | `theorem` | [prod_multiplicityLayer_pow_eq_self](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/prod-multiplicitylayer-pow-eq-self--b2e1a4e72436f5d1635cd281.md) | 71 | `result-track:b2e1a4e72436f5d1635cd2811776d1f83754a36757a88fa49f89afd660b51c7a` |
| 6 | `theorem` | [prime_dvd_multiplicityLayer_imp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/prime-dvd-multiplicitylayer-imp--1a32cb11a29d5c8c48a71eb0.md) | 80 | `result-track:1a32cb11a29d5c8c48a71eb07fbe494a1abbcb1c46bdfff53c49cccdf0f0665b` |
| 7 | `theorem` | [multiplicityLayer_coprime](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/multiplicitylayer-coprime--9f62b972a12449c509cdc8ae.md) | 91 | `result-track:9f62b972a12449c509cdc8aefbd1ffe483a9066dabde8907d42da31b26c873f5` |
| 8 | `theorem` | [squarefree_finset_prod](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/squarefree-finset-prod--3d4d28a3694143bc704e9b9f.md) | 99 | `result-track:3d4d28a3694143bc704e9b9f2b1bb26a4671140a67c2560cc1c98354ee385690` |
| 9 | `theorem` | [multiplicityLayer_squarefree](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/multiplicitylayer-squarefree--682b38b36111a9665e743e63.md) | 117 | `result-track:682b38b36111a9665e743e63a64a27e5967a6122c8b32529c6e8c2a7edf13db0` |
| 10 | `theorem` | [prod_multiplicityLayer_eq_radical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/prod-multiplicitylayer-eq-radical--6905cffba412d480d43487be.md) | 127 | `result-track:6905cffba412d480d43487be3887ad15f43ecd402569830b048fc242426b322d` |
| 11 | `structure` | [Data](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/data--d8daae97a76a3210b50ac90f.md) | 150 | `declaration-track:d8daae97a76a3210b50ac90fea7d78c6d3843d412a8727427382eb1b90877eb9` |
| 12 | `def` | [canonical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/canonical--cb4747841aaca088fd61cb60.md) | 158 | `declaration-track:cb4747841aaca088fd61cb601ba5b0eab1ddb9ec402b0bfbe557c5284c42b7e0` |
| 13 | `theorem` | [canonical_layer](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExactAnatomicFactorization.lean/declarations/canonical-layer--7ea59aecec3a49f1cf5a45e0.md) | 166 | `result-track:7ea59aecec3a49f1cf5a45e03e989aff0ca93a5419f9a9301652e6043df4a8a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
