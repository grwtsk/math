# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7618953030baaed4a19107335fa4b412c97625c8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7618953030baaed4a19107335fa4b412c97625c8`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.WithOne.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearOrderedCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/linearorderedcommmonoidwithzero--941cc12c6d1a0eee9ad0a91b.md) | 22 | `declaration-track:941cc12c6d1a0eee9ad0a91b8f56e29d59b01fc074d08d7b9f2e35c8c6419d66` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/instance--aaa4ed68d8ce88fbdc0baf58.md) | 28 | `declaration-track:aaa4ed68d8ce88fbdc0baf58888c0d774b9fc27ce0be93919cf9406003bfb82e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/instance--43160701b2f36bc6533f3d8f.md) | 33 | `declaration-track:43160701b2f36bc6533f3d8f6c47e9a988381281412620fb6e660722358d543d` |
| 4 | `instance` | [preorder](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/preorder--a09caf227095b6104182fce9.md) | 40 | `declaration-track:a09caf227095b6104182fce9f0e430a3ef094a200d39661b726d983dfac5bb6d` |
| 5 | `instance` | [partialOrder](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/partialorder--bd6ad415c1794c1ff27f251f.md) | 43 | `declaration-track:bd6ad415c1794c1ff27f251f612ff245a4ce4cfc93e2556c50669c04f284892f` |
| 6 | `instance` | [orderBot](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/orderbot--91ae2ecf550372dfe867e690.md) | 46 | `declaration-track:91ae2ecf550372dfe867e6907b54f9c841a2c6ef325ec3e7476027b9f9979f22` |
| 7 | `theorem` | [zero_le](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/zero-le--771da858e66574f01fe23094.md) | 49 | `result-track:771da858e66574f01fe23094d8488347f396f3972476fd71b41e475883c128ba` |
| 8 | `theorem` | [zero_lt_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/zero-lt-coe--dc55f7ddee8c85ab3c48ad9e.md) | 53 | `result-track:dc55f7ddee8c85ab3c48ad9e9196b8a05ea8bfa282ecded9766f6ef1a8dd11d4` |
| 9 | `theorem` | [zero_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/zero-eq-bot--ffee21c1c163c9d7e04b5098.md) | 57 | `result-track:ffee21c1c163c9d7e04b5098e76a0e121226db162f8e76d7cc71970154851f40` |
| 10 | `theorem` | [coe_lt_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/coe-lt-coe--d5480b18d3569b5f7a30f6ba.md) | 62 | `result-track:d5480b18d3569b5f7a30f6baf6c98b41df9ca06a84933bc036a31c88ac19c721` |
| 11 | `theorem` | [coe_le_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/coe-le-coe--bac6a0f66d8837076792f684.md) | 67 | `result-track:bac6a0f66d8837076792f684686a978a2973639574b65703e487861142b4e9ef` |
| 12 | `instance` | [lattice](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/lattice--641a9c1aeea9a6ac072b3f96.md) | 71 | `declaration-track:641a9c1aeea9a6ac072b3f96d2fa0b8a8e88b3c26e110032c266b9ecbb81da84` |
| 13 | `instance` | [linearOrder](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/linearorder--155a7ea2f7567b5b29570cb8.md) | 74 | `declaration-track:155a7ea2f7567b5b29570cb801ad11fac8a7cd33cb57192feccc32cb874fa7e7` |
| 14 | `instance` | [covariantClass_mul_le](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/covariantclass-mul-le--ad7f7309690ad33453e0a21f.md) | 77 | `declaration-track:ad7f7309690ad33453e0a21f68970d908eb0b809430b09b9d730b6a6118806a6` |
| 15 | `theorem` | [le_max_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/le-max-iff--65ccefefa8ce34f0fef403cf.md) | 93 | `result-track:65ccefefa8ce34f0fef403cf21d7296a7409f259ba5b76a51c2b8f546d0f3b87` |
| 16 | `theorem` | [min_le_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/min-le-iff--6619591f208774456725b5cf.md) | 99 | `result-track:6619591f208774456725b5cf0b068c063b401ab8647168f60c1cc406b5b5939f` |
| 17 | `instance` | [orderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/orderedcommmonoid--57a053135f0ab96f4b7d9364.md) | 104 | `declaration-track:57a053135f0ab96f4b7d9364203528307d2582a51d277a1bf640b79b3506605c` |
| 18 | `theorem` | [covariantClass_add_le](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/covariantclass-add-le--fdc1e43aef3aada44473b530.md) | 111 | `result-track:fdc1e43aef3aada44473b5301844e289576a4242c553a453f1883889598b05a5` |
| 19 | `def` | [orderedAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/orderedaddcommmonoid--c41d8d4b5b721db03e44a85c.md) | 140 | `declaration-track:c41d8d4b5b721db03e44a85c82ef4a953ec866df928f7e8ba5ef4755785498cf` |
| 20 | `instance` | [existsAddOfLE](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/existsaddofle--9da1eac95952c2a7e2dfe9b0.md) | 148 | `declaration-track:9da1eac95952c2a7e2dfe9b0012bc396b74fab8712c022ac0c063a1fb9961dad` |
| 21 | `instance` | [canonicallyOrderedAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/canonicallyorderedaddmonoid--1448611e9862ee5a37ca373b.md) | 162 | `declaration-track:1448611e9862ee5a37ca373b7069c2c16e0a69992a72f7a9c2043e4eb844c867` |
| 22 | `instance` | [canonicallyLinearOrderedAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/declarations/canonicallylinearorderedaddmonoid--a975c04c16f4fd4914ce54dd.md) | 179 | `declaration-track:a975c04c16f4fd4914ce54ddf02d57849543f818a34f3ba6dec9dcaaf9b72149` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
