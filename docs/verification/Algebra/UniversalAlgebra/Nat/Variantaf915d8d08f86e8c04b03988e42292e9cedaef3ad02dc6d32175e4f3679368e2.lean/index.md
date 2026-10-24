# Verification target: GRWTSK.Algebra.UniversalAlgebra.Nat.Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74467ee1cc0b8651cf33473385101fe21fc094a4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74467ee1cc0b8651cf33473385101fe21fc094a4`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharZero.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddMonoidWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/declarations/instaddmonoidwithone--8390e7d634fae80ab33806a3.md) | 20 | `declaration-track:8390e7d634fae80ab33806a3a052449b7c940dd83fa3e780d86f56fa7dbe21a4` |
| 2 | `instance` | [instAddCommMonoidWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/declarations/instaddcommmonoidwithone--d2afdabaef4e995c2463d581.md) | 25 | `declaration-track:d2afdabaef4e995c2463d581a6694a2c98fbf3794aa71759c994a633483f43a5` |
| 3 | `instance` | [instDistrib](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/declarations/instdistrib--0c35a3733ded420d7b158fc5.md) | 29 | `declaration-track:0c35a3733ded420d7b158fc50f1daedcc331df3ae202bf9f49aa7f79dfe95de1` |
| 4 | `instance` | [instNonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/declarations/instnonunitalnonassocsemiring--233c6936ec2a10ac09a8d2c1.md) | 33 | `declaration-track:233c6936ec2a10ac09a8d2c12748cf0737137df35e2d4ee5f4ffbf854015a86d` |
| 5 | `instance` | [instNonUnitalSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/declarations/instnonunitalsemiring--f3e084f9eb1e49c5aed3b386.md) | 38 | `declaration-track:f3e084f9eb1e49c5aed3b386dff3bac4160955bd942cd46097455edb69248db0` |
| 6 | `instance` | [instNonAssocSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/declarations/instnonassocsemiring--2459a0731ffa606205e728b4.md) | 42 | `declaration-track:2459a0731ffa606205e728b4b33f524a88218ceb4157c38b594cb1e3e6c3ae02` |
| 7 | `instance` | [instSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/declarations/instsemiring--70a092ee477a1bea1e68260e.md) | 47 | `declaration-track:70a092ee477a1bea1e68260ec2ce2bd86a709f0f0f65cfbc33ca15e66608a999` |
| 8 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/declarations/instcommsemiring--d45e6270cbe07ae6e03ed3de.md) | 52 | `declaration-track:d45e6270cbe07ae6e03ed3deb146cd010eb7523af988aee2d1f4acd84f639868` |
| 9 | `instance` | [instCharZero](../../../../../mathematics/Algebra/UniversalAlgebra/Nat/Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2.lean/declarations/instcharzero--8207a27e5b90313233fbe594.md) | 56 | `declaration-track:8207a27e5b90313233fbe5948b7d7421ced10283a53b714160fe79e650ddc649` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
