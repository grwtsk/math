# Verification target: GRWTSK.Algebra.GroupTheory.Cyclic.Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb93a05c1b79c927c778756bad363f3dd5d0d421",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb93a05c1b79c927c778756bad363f3dd5d0d421`.

Source path: `GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Group` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAddCyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/isaddcyclic--0b8a5d815c72fdea6c9f1607.md) | 56 | `declaration-track:0b8a5d815c72fdea6c9f16077f2f7041a9f8e14b539f81f1199cf28bcd57d02d` |
| 2 | `class` | [IsCyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic--43eb99564880f1b9b13aa1eb.md) | 62 | `declaration-track:43eb99564880f1b9b13aa1eb5949fb3474389874ce3167a0efeb8b491d2b5343` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/instance--15f99443b650f9d4a134704f.md) | 67 | `declaration-track:15f99443b650f9d4a134704fc6ce6a01217c88a80059711e0b8bc24405b91b31` |
| 4 | `def` | [IsCyclic.commGroup](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-commgroup--09cd7e123fa339e0f939ded2.md) | 79 | `declaration-track:09cd7e123fa339e0f939ded2ca5ec1ac5607dc88b48dc794314deb06bd69e035` |
| 5 | `theorem` | [MonoidHom.map_cyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/monoidhom-map-cyclic--9c0757e4f20bd2c77688524d.md) | 92 | `result-track:9c0757e4f20bd2c77688524d135e8c7b4da06c17e03ded6b7a643bb655590316` |
| 6 | `theorem` | [isCyclic_of_orderOf_eq_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-of-orderof-eq-card--d77fe351fdcbe5f5366c3669.md) | 103 | `result-track:d77fe351fdcbe5f5366c3669e0605b851e6fdefac5e6fab0f091f43c696614d3` |
| 7 | `theorem` | [isCyclic_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-of-prime-card--3f2f24d0b67f7eff17e1fa25.md) | 115 | `result-track:3f2f24d0b67f7eff17e1fa25dd749a14faff7605f42f7c2ed20589d9903e5e1e` |
| 8 | `theorem` | [orderOf_eq_card_of_forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/orderof-eq-card-of-forall-mem-zpowers--995e6b50f65f8cceddfc2d58.md) | 146 | `result-track:995e6b50f65f8cceddfc2d58d5ba4f8f9ed316f9f931c8df908867656b8e502e` |
| 9 | `theorem` | [Infinite.orderOf_eq_zero_of_forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/infinite-orderof-eq-zero-of-forall-mem-zpowers--3c533b48f418e57cbd098fad.md) | 156 | `result-track:3c533b48f418e57cbd098fadd6c225e177051fa365d3add6317eab601fdf61f8` |
| 10 | `instance` | [Bot.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/bot-iscyclic--ae5e9a6757cf132baafdff49.md) | 179 | `declaration-track:ae5e9a6757cf132baafdff491196003b2ad00aaeece947c3bf5064692c0098f0` |
| 11 | `instance` | [Subgroup.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/subgroup-iscyclic--5b09667bb138ebc91e2d0ae9.md) | 185 | `declaration-track:5b09667bb138ebc91e2d0ae9baae41f9b4c7dac8b86dd72973407ef463a4c720` |
| 12 | `theorem` | [IsCyclic.card_pow_eq_one_le](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-card-pow-eq-one-le--423278052605a1a6740db6cb.md) | 242 | `result-track:423278052605a1a6740db6cb5a653bf602d3483f4a0538a35a2e8bcbcb68efca` |
| 13 | `theorem` | [IsCyclic.exists_monoid_generator](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-exists-monoid-generator--cfe0884ec903465292d8fcc4.md) | 280 | `result-track:cfe0884ec903465292d8fcc492ab7737b1ca5b3504f0cfeaf7a964ba487884e7` |
| 14 | `theorem` | [IsCyclic.image_range_orderOf](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-image-range-orderof--f773a5be2bd30e8723f3c9f3.md) | 292 | `result-track:f773a5be2bd30e8723f3c9f376b87d9b62f5990d2566a35f8d6674287f593c05` |
| 15 | `theorem` | [IsCyclic.image_range_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-image-range-card--99bdc5eaf898da5de1733a61.md) | 300 | `result-track:99bdc5eaf898da5de1733a612f7b21ee8816bc2bb00a1560f3e9e007b083e931` |
| 16 | `theorem` | [card_pow_eq_one_eq_orderOf_aux](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/card-pow-eq-one-eq-orderof-aux--53e9b676dd01711c681a794a.md) | 313 | `result-track:53e9b676dd01711c681a794a494bb9fd2245d744261e9e03f074a50701d3a3ea` |
| 17 | `theorem` | [card_orderOf_eq_totient_aux₁](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/card-orderof-eq-totient-aux--dd7efec180cff32a9b895747.md) | 336 | `result-track:dd7efec180cff32a9b89574762cd87e868bdb6e2157daaacfc86ff1df841370b` |
| 18 | `theorem` | [card_orderOf_eq_totient_aux₂](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/card-orderof-eq-totient-aux--010df220af813136afa69b54.md) | 362 | `result-track:010df220af813136afa69b54cb66bfef4047e963fdbd1fef3b8dba5078042a9b` |
| 19 | `theorem` | [isCyclic_of_card_pow_eq_one_le](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-of-card-pow-eq-one-le--82f269129a37294d6fbb3c23.md) | 395 | `result-track:82f269129a37294d6fbb3c236e7a30a973ff9889d6ac204c7a4a028b4e26a42b` |
| 20 | `theorem` | [isAddCyclic_of_card_pow_eq_one_le](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/isaddcyclic-of-card-pow-eq-one-le--b6bbf44876c2c482fb21e67d.md) | 404 | `result-track:b6bbf44876c2c482fb21e67d252c3cc7344f45ba3776e7042d3276ccaa69789f` |
| 21 | `theorem` | [IsCyclic.card_orderOf_eq_totient](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-card-orderof-eq-totient--050daff011465fb0ecd3c51a.md) | 414 | `result-track:050daff011465fb0ecd3c51a8e76e1580d67a35658d27210692bd7a48f5bf80f` |
| 22 | `theorem` | [IsAddCyclic.card_orderOf_eq_totient](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/isaddcyclic-card-orderof-eq-totient--a4ef809215ad1ee5d1aa1ad4.md) | 419 | `result-track:a4ef809215ad1ee5d1aa1ad47c8d9af214c90e7f049cf60513bf71607c3df85b` |
| 23 | `theorem` | [isSimpleGroup_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/issimplegroup-of-prime-card--859a847520b7ce9927de471f.md) | 431 | `result-track:859a847520b7ce9927de471fc81f01f2b9e39c9e743d3edd7942905d1df9b821` |
| 24 | `theorem` | [commutative_of_cyclic_center_quotient](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/commutative-of-cyclic-center-quotient--75b93981f520aac69e0ca0c3.md) | 461 | `result-track:75b93981f520aac69e0ca0c3a242ea50bddbc8dbdc55904ba2f70a2a115f4746` |
| 25 | `def` | [commGroupOfCycleCenterQuotient](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/commgroupofcyclecenterquotient--9781c7f1c8d788b651d9eb7d.md) | 485 | `declaration-track:9781c7f1c8d788b651d9eb7d71d87f9426548dad0b02bd7d6c30ca20ea5e8c47` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/instance--36ab892c10f2975769c00c83.md) | 500 | `declaration-track:36ab892c10f2975769c00c839f6f524a9efb4789f64b130d97f911696b8103f5` |
| 27 | `theorem` | [prime_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/prime-card--4b08717dc4e88af138752a96.md) | 516 | `result-track:4b08717dc4e88af138752a963f30a86c22f602d4df97343e5f8864b35f835c6d` |
| 28 | `theorem` | [CommGroup.is_simple_iff_isCyclic_and_prime_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/commgroup-is-simple-iff-iscyclic-and-prime-card--5671aa8d273b81b3bb140194.md) | 545 | `result-track:5671aa8d273b81b3bb1401940c0f67ea52e73a918c13b329f3141ac8c87d1051` |
| 29 | `theorem` | [IsCyclic.exponent_eq_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-exponent-eq-card--17006ac93529144e02d4d43b.md) | 561 | `result-track:17006ac93529144e02d4d43b62e2c70e7e6964ad90fab0560d827263d341ab76` |
| 30 | `theorem` | [IsCyclic.of_exponent_eq_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-of-exponent-eq-card--c1122b21c7fda67778563955.md) | 573 | `result-track:c1122b21c7fda677785639553730ecdd407bcc9506bc2f96ad96ae85f6115af9` |
| 31 | `theorem` | [IsCyclic.iff_exponent_eq_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-iff-exponent-eq-card--142e1066a3e14efb9b3b9050.md) | 581 | `result-track:142e1066a3e14efb9b3b905052035315533d1fe94ac0f847b0ff6437b721a37d` |
| 32 | `theorem` | [IsCyclic.exponent_eq_zero_of_infinite](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/declarations/iscyclic-exponent-eq-zero-of-infinite--129eef9b31f3a0a9860b809c.md) | 588 | `result-track:129eef9b31f3a0a9860b809cc4ee640014d9eb1e0361f037a0239caab9c8c4a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
