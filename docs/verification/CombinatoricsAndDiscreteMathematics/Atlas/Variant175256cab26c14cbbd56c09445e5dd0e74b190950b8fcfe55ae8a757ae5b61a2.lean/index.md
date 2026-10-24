# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Atlas.Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a856e13ab46312dbcf20eb134fc54fb7da904842",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a856e13ab46312dbcf20eb134fc54fb7da904842`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/rule--df20672742fcac4626c77000.md) | 30 | `declaration-track:df20672742fcac4626c7700050e320d9678be09ee68fe8174218d7241af7a9e5` |
| 2 | `def` | [RuleClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/ruleclosed--5fc26c3e35923b073e04cffb.md) | 40 | `declaration-track:5fc26c3e35923b073e04cffb219a1f5107555b0e7c660b9ea729992b8493d641` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/instance--5c9eee5a2c7a15f86171139a.md) | 43 | `declaration-track:5c9eee5a2c7a15f86171139a35c1e49b91bf439d8e2fa9bd6af0bfd96e555f7e` |
| 4 | `def` | [saturate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/saturate--5bbfda0ff02e80fce059e584.md) | 53 | `declaration-track:5bbfda0ff02e80fce059e58438611b7933c8751cbc6b6f2e013fe0c5977bd9fe` |
| 5 | `theorem` | [mem_saturate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/mem-saturate--257da5fcda830aa04aba6798.md) | 58 | `result-track:257da5fcda830aa04aba67984d3dce267e85e072aebc79ec4e96afcfe77298ec` |
| 6 | `theorem` | [saturation_extensive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/saturation-extensive--5eee2ff0320da6794a15001b.md) | 64 | `result-track:5eee2ff0320da6794a15001b933a9bc7d5809fe300dc53be77985a1c05ac9fe4` |
| 7 | `theorem` | [saturation_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/saturation-monotone--a0784865b41637895b1805d6.md) | 70 | `result-track:a0784865b41637895b1805d619188ea0040085d69368a4b51c1128461513fbe2` |
| 8 | `theorem` | [saturation_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/saturation-closed--dc59c0ad625204dccef67776.md) | 76 | `result-track:dc59c0ad625204dccef67776f785c38ebc1f1fbcb1f4c5805eb566790f08d22e` |
| 9 | `theorem` | [saturation_least](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/saturation-least--8dbf680dcd38f89bdfaf64ee.md) | 86 | `result-track:8dbf680dcd38f89bdfaf64ee31424a1aca207ff468c9c2a35bf3b1023898a4e9` |
| 10 | `theorem` | [saturation_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/saturation-idempotent--4585588d28a4fae73d5311e4.md) | 93 | `result-track:4585588d28a4fae73d5311e45fd7aa7a6c93a6b3b48c1abae4d403ca0f6bc8d8` |
| 11 | `def` | [saturation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/saturation--712839fa3bfaf6629b72ea4b.md) | 100 | `declaration-track:712839fa3bfaf6629b72ea4b4962f52c5b5075674769e14c2219688c435a1f45` |
| 12 | `theorem` | [saturation_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/saturation-sound--0652ad1f79e13e1681f9bf0f.md) | 107 | `result-track:0652ad1f79e13e1681f9bf0f9fb935fb1947282216b828ca3c746f99b168c732` |
| 13 | `def` | [attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/attach--d88bf9742cfc4fecf226cb3f.md) | 132 | `declaration-track:d88bf9742cfc4fecf226cb3f460a483aa862e51c2ae115119d9475da1ad9d29e` |
| 14 | `theorem` | [attach_extends_atlas](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/attach-extends-atlas--1cb3587afb346485bcdca896.md) | 135 | `result-track:1cb3587afb346485bcdca89677b16413c741d19c73e98daa8ebf053ca019494b` |
| 15 | `theorem` | [attach_preserves_old_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/attach-preserves-old-closure--d83cf6f6270a460f3f651efc.md) | 139 | `result-track:d83cf6f6270a460f3f651efc85d9b6f6fe819b5a1350623f257f5ec1b50114a4` |
| 16 | `theorem` | [attach_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/attach-attach--b539d2f8a70b12665fceab9a.md) | 144 | `result-track:b539d2f8a70b12665fceab9aa3909a51384ed2563135682e0243db4d593380dd` |
| 17 | `theorem` | [attachment_order_final_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/attachment-order-final-equiv--df574c51583e86c764275de3.md) | 149 | `result-track:df574c51583e86c764275de3eabe81da149fdcf6a3fd9c500e411a41ff96476a` |
| 18 | `theorem` | [attach_order_independent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Atlas/Variant175256cab26c14cbbd56c09445e5dd0e74b190950b8fcfe55ae8a757ae5b61a2.lean/declarations/attach-order-independent--ea58a1bbb6c7cdeb320ec358.md) | 154 | `result-track:ea58a1bbb6c7cdeb320ec3589b6844adde26d0c00f2e2890860c15cc48a94fa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
