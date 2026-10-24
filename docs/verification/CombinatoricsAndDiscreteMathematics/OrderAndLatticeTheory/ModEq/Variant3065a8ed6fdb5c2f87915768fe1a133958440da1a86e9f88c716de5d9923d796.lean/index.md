# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ModEq.Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c160ccd9ea0ec23b95c7905e4dd0b326baae7f0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c160ccd9ea0ec23b95c7905e4dd0b326baae7f0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Monoid` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [frequently_modEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean/declarations/frequently-modeq--772d350ed077d332d5a90d03.md) | 35 | `result-track:772d350ed077d332d5a90d03b6d2d6fa74d32df9e819db5841703ba09fbb857d` |
| 2 | `theorem` | [frequently_mod_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean/declarations/frequently-mod-eq--6a621f9bc2fe8bb32a6eb7ca.md) | 39 | `result-track:6a621f9bc2fe8bb32a6eb7ca460cc9989d0900d0d7852144cdf35aca22ddac7c` |
| 3 | `theorem` | [frequently_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean/declarations/frequently-even--bf60b58a3fcd78ffe13d5c16.md) | 42 | `result-track:bf60b58a3fcd78ffe13d5c16e72745c9307f0d2650e6ee048974fc5fb17f1166` |
| 4 | `theorem` | [frequently_odd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean/declarations/frequently-odd--837c80f73e84dff661db7b8e.md) | 45 | `result-track:837c80f73e84dff661db7b8e77fc73da3a5c4b6f8e4dcc1498c44c9a44c86d25` |
| 5 | `theorem` | [Filter.nonneg_of_eventually_pow_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant3065a8ed6fdb5c2f87915768fe1a133958440da1a86e9f88c716de5d9923d796.lean/declarations/filter-nonneg-of-eventually-pow-nonneg--ae3e412e0332c4c5a64b4ae5.md) | 50 | `result-track:ae3e412e0332c4c5a64b4ae59409e95a2bf5287e0eb03426f787b611dc8b4043` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
