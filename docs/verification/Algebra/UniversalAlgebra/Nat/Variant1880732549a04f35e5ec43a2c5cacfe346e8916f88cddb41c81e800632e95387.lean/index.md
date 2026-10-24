# Verification target: GRWTSK.Algebra.UniversalAlgebra.Nat.Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbbfb887fb501090531076e5fa3d62be6f2f9361",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbbfb887fb501090531076e5fa3d62be6f2f9361`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean/declarations/instisstrictorderedring--139861898afaa25e8985ff91.md) | 32 | `declaration-track:139861898afaa25e8985ff91c4711cac7c25e35f4ef6b84f1557ee75584aa0a4` |
| 2 | `instance` | [instLinearOrderedCommMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean/declarations/instlinearorderedcommmonoidwithzero--f48383598184a6aea4071d9c.md) | 40 | `declaration-track:f48383598184a6aea4071d9c4a83cd85a39c97bb2ac67847ffb0c5dacfee8750` |
| 3 | `lemma` | [isCompl_even_odd](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variant1880732549a04f35e5ec43a2c5cacfe346e8916f88cddb41c81e800632e95387.lean/declarations/iscompl-even-odd--624bfeed62d059adc24f606f.md) | 48 | `result-track:624bfeed62d059adc24f606f1e2d78c94da70dfa87ef6089cf9839d45333e46c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
