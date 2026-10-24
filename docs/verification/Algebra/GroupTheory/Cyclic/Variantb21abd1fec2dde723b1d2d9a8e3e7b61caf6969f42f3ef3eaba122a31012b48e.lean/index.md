# Verification target: GRWTSK.Algebra.GroupTheory.Cyclic.Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab4df74739cd427e9035d6118afbba657142a311",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab4df74739cd427e9035d6118afbba657142a311`.

Source path: `GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Group` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAddCyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/isaddcyclic--ac97b706942f976de1bbccba.md) | 64 | `declaration-track:ac97b706942f976de1bbccbaa3301ab4b320670516b4867544cc8bd4ecdee38d` |
| 2 | `class` | [IsCyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic--145c6458114d06a215206f49.md) | 70 | `declaration-track:145c6458114d06a215206f4951a5b61912d75a141b00009aed9a557011527dcb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/instance--331955c2b6ccd8a908451316.md) | 75 | `declaration-track:331955c2b6ccd8a908451316370d154b5b09b4145503ca7313ae924d4b29a156` |
| 4 | `def` | [IsCyclic.commGroup](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-commgroup--a5f34f0c9657055223f493dd.md) | 87 | `declaration-track:a5f34f0c9657055223f493dd47535de7d7ffe0e623532a8a76e20234130862e8` |
| 5 | `theorem` | [MonoidHom.map_cyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/monoidhom-map-cyclic--1254390ad771e2b1fe77735c.md) | 100 | `result-track:1254390ad771e2b1fe77735c72bad400ccf15bc9644995d45d3882a4cc74b2ee` |
| 6 | `theorem` | [isCyclic_of_orderOf_eq_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-of-orderof-eq-card--962540c86504bdb54938e8ef.md) | 111 | `result-track:962540c86504bdb54938e8ef4b981a8a761f5eba499142344816c47f37ac86d8` |
| 7 | `theorem` | [isCyclic_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-of-prime-card--459e65b1b5b4a69d6641d504.md) | 123 | `result-track:459e65b1b5b4a69d6641d50478a1cf7783750d8748684e33cf3c47d019c06528` |
| 8 | `theorem` | [orderOf_eq_card_of_forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/orderof-eq-card-of-forall-mem-zpowers--a81c5c3591079ac569db7f8f.md) | 154 | `result-track:a81c5c3591079ac569db7f8f1fb3b20682019cec994c95ce0db8b8c1ce2bebec` |
| 9 | `theorem` | [Infinite.orderOf_eq_zero_of_forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/infinite-orderof-eq-zero-of-forall-mem-zpowers--5554129459a2dec325c82710.md) | 164 | `result-track:5554129459a2dec325c82710160e3070169dec5194681ad2bbb27f17cf522597` |
| 10 | `instance` | [Bot.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/bot-iscyclic--bdfe55704469d5ff497e58cc.md) | 187 | `declaration-track:bdfe55704469d5ff497e58cc0e5830519dff80a0fd478409fa6d8f9f596b9157` |
| 11 | `instance` | [Subgroup.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/subgroup-iscyclic--5ca304c7ebac85c8141da3bf.md) | 193 | `declaration-track:5ca304c7ebac85c8141da3bf3d0cb46426301f9932c68bde3e97bb2087f5ea9c` |
| 12 | `theorem` | [IsCyclic.card_pow_eq_one_le](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-card-pow-eq-one-le--05715fd955b13bebb568d909.md) | 250 | `result-track:05715fd955b13bebb568d9093451499687f3cf88ceb8d52f12b205bd34f99573` |
| 13 | `theorem` | [IsCyclic.exists_monoid_generator](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-exists-monoid-generator--f069afcd778211494b83998e.md) | 288 | `result-track:f069afcd778211494b83998e9d437507226f759984711c16a7f9ff763b7f6875` |
| 14 | `theorem` | [IsCyclic.image_range_orderOf](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-image-range-orderof--17daec07a5c27259138d31a5.md) | 300 | `result-track:17daec07a5c27259138d31a5a61bf360358246f60f55847316ea1378d1e4a050` |
| 15 | `theorem` | [IsCyclic.image_range_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-image-range-card--f70c4fdf05fde0afb0b7e413.md) | 308 | `result-track:f70c4fdf05fde0afb0b7e413e3a8bd7f8ab7cc044238350bbcaf6e6b6afd1301` |
| 16 | `theorem` | [card_pow_eq_one_eq_orderOf_aux](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/card-pow-eq-one-eq-orderof-aux--6cd5bed7bf085625a47a9d98.md) | 321 | `result-track:6cd5bed7bf085625a47a9d985229edc036a7ee90beaa4677b5ec40ea685be031` |
| 17 | `theorem` | [card_orderOf_eq_totient_aux₁](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/card-orderof-eq-totient-aux--63e107065891b0b16d303a3c.md) | 344 | `result-track:63e107065891b0b16d303a3cb5c7459e7b07238bad9d1e4fb80f7da60cebb543` |
| 18 | `theorem` | [card_orderOf_eq_totient_aux₂](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/card-orderof-eq-totient-aux--2765d8a581cf8777bc525892.md) | 370 | `result-track:2765d8a581cf8777bc525892d55e38221f26113ee6d16cfc81b9929269eea1bc` |
| 19 | `theorem` | [isCyclic_of_card_pow_eq_one_le](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-of-card-pow-eq-one-le--e8c42730481a16a65b8fec8f.md) | 403 | `result-track:e8c42730481a16a65b8fec8fec0f510e8fb2ce3b425393de13dfb5389e70f98f` |
| 20 | `theorem` | [isAddCyclic_of_card_pow_eq_one_le](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/isaddcyclic-of-card-pow-eq-one-le--0812d1f1db49433f6820aaae.md) | 412 | `result-track:0812d1f1db49433f6820aaae3aec9210079bc2ca0b7b5fa85b79d90eaf702f33` |
| 21 | `theorem` | [IsCyclic.card_orderOf_eq_totient](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-card-orderof-eq-totient--01980b484357f4a2df066aca.md) | 422 | `result-track:01980b484357f4a2df066aca7da5ae8ac46b12f02bb38219d6e37167fa7f43c4` |
| 22 | `theorem` | [IsAddCyclic.card_orderOf_eq_totient](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/isaddcyclic-card-orderof-eq-totient--2a7f6787ed085d9eafc49a09.md) | 427 | `result-track:2a7f6787ed085d9eafc49a0932b1fd31de4095b1fca25a6cb0307477c8ba74cb` |
| 23 | `theorem` | [isSimpleGroup_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/issimplegroup-of-prime-card--a7925a4532eb8d5f74b6576f.md) | 439 | `result-track:a7925a4532eb8d5f74b6576fedb184132ca925aac931640cef01fc378bd2146a` |
| 24 | `theorem` | [commutative_of_cyclic_center_quotient](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/commutative-of-cyclic-center-quotient--e1e650d1f7e0fc2faa5d8d04.md) | 469 | `result-track:e1e650d1f7e0fc2faa5d8d047361240c607ceffedd1b6250b287dec981acb10c` |
| 25 | `def` | [commGroupOfCycleCenterQuotient](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/commgroupofcyclecenterquotient--a182402ae557bf13171b1250.md) | 493 | `declaration-track:a182402ae557bf13171b12501c0cd38fd44722f11b1b46122714cf6ea7c32b84` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/instance--f627b56165cb37cabc2790f2.md) | 508 | `declaration-track:f627b56165cb37cabc2790f24c1a2908a9991ff20d5dc23b7b204df05359909c` |
| 27 | `theorem` | [prime_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/prime-card--f4a304365ae1dfd103d28998.md) | 524 | `result-track:f4a304365ae1dfd103d28998f23c85dc8aed75335990eab58a9292ad61c1223f` |
| 28 | `theorem` | [CommGroup.is_simple_iff_isCyclic_and_prime_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/commgroup-is-simple-iff-iscyclic-and-prime-card--efd3dc9efb2cf1e2286c35a4.md) | 553 | `result-track:efd3dc9efb2cf1e2286c35a4801bfccf27ecfabe397fcb041e038e2469c65e94` |
| 29 | `theorem` | [IsCyclic.exponent_eq_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-exponent-eq-card--6d3c0a216c0a06bef06ee369.md) | 569 | `result-track:6d3c0a216c0a06bef06ee369489d9c9eb3dc854d9c1b58c6bad7afb9e2252af2` |
| 30 | `theorem` | [IsCyclic.of_exponent_eq_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-of-exponent-eq-card--ab5f37bc98711821f8314811.md) | 581 | `result-track:ab5f37bc98711821f831481190e247d6e25c8b29077575f83cd2285f12f096d8` |
| 31 | `theorem` | [IsCyclic.iff_exponent_eq_card](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-iff-exponent-eq-card--e17dcf1e720a3e3635e635cc.md) | 589 | `result-track:e17dcf1e720a3e3635e635cc2fee16da26f421a8634e37b301749850a149288b` |
| 32 | `theorem` | [IsCyclic.exponent_eq_zero_of_infinite](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/declarations/iscyclic-exponent-eq-zero-of-infinite--de85741c631ad90f5c81ff23.md) | 596 | `result-track:de85741c631ad90f5c81ff23ab42a4b4f618e22609d802ff7f737e358b3fa439` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
