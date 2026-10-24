# Verification target: GRWTSK.Algebra.UniversalAlgebra.Idempotent.Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b7907ca9678728eb920531a9922fb691aa70eaf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b7907ca9678728eb920531a9922fb691aa70eaf`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Idempotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zero](../../../../../mathematics/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean/declarations/zero--8c3c86824ebf2ac6a5caeb66.md) | 22 | `result-track:8c3c86824ebf2ac6a5caeb6652c3380818e48a620bc63ce9a5f881b7246ce797` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean/declarations/instance--78c068a78e55add2385fc47b.md) | 24 | `declaration-track:78c068a78e55add2385fc47bdc45a5079dab33be35546ef1470743372157cf36` |
| 3 | `lemma` | [coe_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean/declarations/coe-zero--c4c5a47cecf042f8e9d789dc.md) | 26 | `result-track:c4c5a47cecf042f8e9d789dc9de1820c6550e658806a24d4d38d4274844232a0` |
| 4 | `lemma` | [iff_eq_zero_or_one](../../../../../mathematics/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean/declarations/iff-eq-zero-or-one--1413adc85b1d6f3ef14108de.md) | 34 | `result-track:1413adc85b1d6f3ef14108dec548c7cbab66df0a68ec02e73c9fb218f8ff63b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
