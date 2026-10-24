# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55de55effc470ae25abb351cc847872defdc3f54",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55de55effc470ae25abb351cc847872defdc3f54`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/orderedcommmonoid--2c4cee2bb5ed77a548c5880f.md) | 28 | `declaration-track:2c4cee2bb5ed77a548c5880fbe7fc830d4d1e1e7758fec2d8f5ce101ecb5917d` |
| 2 | `class` | [OrderedAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/orderedaddcommmonoid--de9f3b6dc9e8e17659a65bf8.md) | 36 | `declaration-track:de9f3b6dc9e8e17659a65bf8415c58eb0f03489fdcc244f1e59aa0bd035a1d3c` |
| 3 | `instance` | [OrderedCommMonoid.to_covariantClass_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/orderedcommmonoid-to-covariantclass-left--e8036bb26af29d0a6193fbe3.md) | 46 | `declaration-track:e8036bb26af29d0a6193fbe399bde5dbe1b9846f38c54b2e626fb3a4aa8f8a64` |
| 4 | `instance` | [OrderedCommMonoid.to_covariantClass_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/orderedcommmonoid-to-covariantclass-right--a34227edd7a1dc85f181aa61.md) | 55 | `declaration-track:a34227edd7a1dc85f181aa61a298ee99d735af75dff75670ffe68758d122c7c4` |
| 5 | `theorem` | [Mul.to_covariantClass_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/mul-to-covariantclass-left--0a6fc8c41585b46c33654130.md) | 65 | `result-track:0a6fc8c41585b46c33654130b6e264b211f60aab8fa8e92f5261e68602cf6546` |
| 6 | `theorem` | [Mul.to_covariantClass_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/mul-to-covariantclass-right--e65812337254eecd62689f40.md) | 77 | `result-track:e65812337254eecd62689f40a7b9857b75aa95a5285b198cdcfa93cf25ac7650` |
| 7 | `theorem` | [bit0_pos](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/bit0-pos--438ba8683054ea6467f068b1.md) | 87 | `result-track:438ba8683054ea6467f068b1288be63e31697a5db13670353a66ca1fd7ede3a9` |
| 8 | `class` | [LinearOrderedAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/linearorderedaddcommmonoid--1d91690bc113edfb8af5c73c.md) | 92 | `declaration-track:1d91690bc113edfb8af5c73cab9d4d619931ddbfa00febc79f46b46276725f21` |
| 9 | `class` | [LinearOrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/linearorderedcommmonoid--5c171c8ae98d0e74bc21d563.md) | 97 | `declaration-track:5c171c8ae98d0e74bc21d5633099e0d043207d04241bc39df0610cee7fe57bd9` |
| 10 | `class` | [LinearOrderedAddCommMonoidWithTop](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/linearorderedaddcommmonoidwithtop--f1a73bc5a7af4d32113ca54b.md) | 104 | `declaration-track:f1a73bc5a7af4d32113ca54b152ed0ba900b40dd125250376830c520d09a225e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/instance--36290946220564f748cf01dd.md) | 113 | `declaration-track:36290946220564f748cf01dd649a63a0ae7b72bff5365f373c8ccec8752e0abb` |
| 12 | `theorem` | [top_add](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/top-add--806827b3b239361a75a62ae2.md) | 123 | `result-track:806827b3b239361a75a62ae2bc91c6996e2b7280304a071f86884a0c6298eb57` |
| 13 | `theorem` | [add_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969.lean/declarations/add-top--c23ed511cbd06b309614f6aa.md) | 128 | `result-track:c23ed511cbd06b309614f6aa172fa4893abf00841bb35be8fd02d308b1f6ff70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
