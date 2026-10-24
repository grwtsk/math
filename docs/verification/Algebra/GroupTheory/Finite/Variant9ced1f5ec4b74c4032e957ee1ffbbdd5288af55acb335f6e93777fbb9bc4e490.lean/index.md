# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0824df3586b63930f0e623cdbe09b57cb0f51e2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0824df3586b63930f0e623cdbe09b57cb0f51e2`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/instance--f02f91c80da124379bb358d3.md) | 38 | `declaration-track:f02f91c80da124379bb358d3a0df899b3dc269cb09510c5547cd442c2820f15b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/instance--e22b0080283c26e7d84c7d20.md) | 42 | `declaration-track:e22b0080283c26e7d84c7d204ae2b162c720bcfb9616f77cd7929f0b9e2d4edd` |
| 3 | `theorem` | [list_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/list-prod-mem--40aa84530d68c3bca0986e30.md) | 58 | `result-track:40aa84530d68c3bca0986e30522f67fdfdd905eb651b952b28d63a3d25f4d818` |
| 4 | `theorem` | [multiset_prod_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/multiset-prod-mem--d75198726692f1167b2511ce.md) | 66 | `result-track:d75198726692f1167b2511ce07b88e46f08c9e2e67d3abf83549f61ecb75b020` |
| 5 | `theorem` | [multiset_noncommProd_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/multiset-noncommprod-mem--fcd95f145c8d8c6ff60184c8.md) | 73 | `result-track:fcd95f145c8d8c6ff60184c8161893325dd73891ad2509929b794a34cfa04ae1` |
| 6 | `theorem` | [prod_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/prod-mem--e6bd62a402b8a33675e7ceb8.md) | 83 | `result-track:e6bd62a402b8a33675e7ceb8a7bfaf7922f526228d088d4d2c5aa3e8bda912d9` |
| 7 | `theorem` | [noncommProd_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/noncommprod-mem--9f197beb9b68903352254f2e.md) | 90 | `result-track:9f197beb9b68903352254f2ef46dc34d7ad0a98b0ef33351e18408ce97af38d5` |
| 8 | `theorem` | [val_list_prod](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/val-list-prod--4e8f1e2399e2670b58149037.md) | 98 | `result-track:4e8f1e2399e2670b58149037d073984d628811943dc55d291d221b9f8612e96a` |
| 9 | `theorem` | [val_multiset_prod](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/val-multiset-prod--2ddb5efd3bd58a0b556eb8b9.md) | 105 | `result-track:2ddb5efd3bd58a0b556eb8b947e1f3c190419acc1f618a77d89a25d0f0216876` |
| 10 | `theorem` | [val_finset_prod](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/val-finset-prod--da45bbbf61858ef0dc821519.md) | 113 | `result-track:da45bbbf61858ef0dc821519e1c5bc9fe1b9245af79df6e6fd7f18f757adc7e2` |
| 11 | `instance` | [fintypeBot](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/fintypebot--392610cd3804cd900ddec055.md) | 120 | `declaration-track:392610cd3804cd900ddec0552eb5f1fd2939134ba548d2b24f30616b0e8c9ab3` |
| 12 | `theorem` | [card_bot](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/card-bot--1c357c7fa2883dfe96cefe35.md) | 130 | `result-track:1c357c7fa2883dfe96cefe359887b2503b61f2f086123509f97db34f3dd4463a` |
| 13 | `theorem` | [card_top](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/card-top--8726545b922801fb3322cf3b.md) | 137 | `result-track:8726545b922801fb3322cf3bc08ab3285b3bfb87823767bae3f8cae759f1e32c` |
| 14 | `theorem` | [eq_top_of_card_eq](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/eq-top-of-card-eq--f9621082ed7f0f024d325bbe.md) | 142 | `result-track:f9621082ed7f0f024d325bbeb91390dc70b33aa340c49804efef3a907f77e344` |
| 15 | `theorem` | [card_eq_iff_eq_top](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/card-eq-iff-eq-top--29c2d5eb3c1b8a7d74de2723.md) | 152 | `result-track:29c2d5eb3c1b8a7d74de272358b2934ed635ae880ee235a6c3473be2498cef5a` |
| 16 | `theorem` | [eq_top_of_le_card](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/eq-top-of-le-card--10f030053fa57a95dd5502b1.md) | 156 | `result-track:10f030053fa57a95dd5502b1b15d85bf75bc118aeebbaebcc1586580e4722b0f` |
| 17 | `theorem` | [eq_bot_of_card_le](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/eq-bot-of-card-le--c5a87130520b240fed4e9bd7.md) | 163 | `result-track:c5a87130520b240fed4e9bd70ecb305030b82a49bff561e5de6ccf2513a6eaca` |
| 18 | `theorem` | [eq_bot_of_card_eq](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/eq-bot-of-card-eq--cdf36b9e5797bb2259ed199a.md) | 170 | `result-track:cdf36b9e5797bb2259ed199ab7388a2ffe79d67c9982cfaf708ebbb4e2b63afd` |
| 19 | `theorem` | [card_le_one_iff_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/card-le-one-iff-eq-bot--469d1427b497a26fe1b1384d.md) | 176 | `result-track:469d1427b497a26fe1b1384d769ba8b0a4570158a50210033671aaa4849815c9` |
| 20 | `theorem` | [one_lt_card_iff_ne_bot](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/one-lt-card-iff-ne-bot--3035f020dcff60deacd664c8.md) | 185 | `result-track:3035f020dcff60deacd664c89b7bb302949fb7ef3b69d0bb31182136513d4c4a` |
| 21 | `theorem` | [card_le_card_group](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/card-le-card-group--a61e648b769f54ea0080acd1.md) | 191 | `result-track:a61e648b769f54ea0080acd1e4193464ed6ddd03641da287d858fcf2241f1774` |
| 22 | `theorem` | [pi_mem_of_mulSingle_mem_aux](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/pi-mem-of-mulsingle-mem-aux--6e753aeb9871bff41d49b03c.md) | 205 | `result-track:6e753aeb9871bff41d49b03c1b61b60f27cf0f2b56d7bfc6b7a566857019f4a6` |
| 23 | `theorem` | [pi_mem_of_mulSingle_mem](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/pi-mem-of-mulsingle-mem--669c09ca5d87ca2d0760b1e7.md) | 241 | `result-track:669c09ca5d87ca2d0760b1e76194770c178dd15f2bf2af7f556fba3a8ee6046c` |
| 24 | `theorem` | [pi_le_iff](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/pi-le-iff--4c37d4aca86beec0e9086820.md) | 251 | `result-track:4c37d4aca86beec0e9086820ac0a73d2c4bd8bdc71e20ad8d9691446b3b8e059` |
| 25 | `theorem` | [mem_normalizer_fintype](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/mem-normalizer-fintype--8da1c2d00bc50eb22839ac48.md) | 269 | `result-track:8da1c2d00bc50eb22839ac4800cbe9e6d504bdea12985ec4f8aa44768ec88d7b` |
| 26 | `instance` | [decidableMemRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/decidablememrange--99f3e095ee16d2011c60e975.md) | 294 | `declaration-track:99f3e095ee16d2011c60e975521ec8ede4ee0d7f94107556621c18fdac54b797` |
| 27 | `instance` | [fintypeMrange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/fintypemrange--e4fd10295cfd566b9e81d5fa.md) | 309 | `declaration-track:e4fd10295cfd566b9e81d5fa0a2672e75bb810fa4b443405b36c18d5a67fa965` |
| 28 | `instance` | [fintypeRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/declarations/fintyperange--4d4a04e7e22769c13403375e.md) | 323 | `declaration-track:4d4a04e7e22769c13403375e73750b3aebaa7c6a03e0f3304de2791adc22084d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
