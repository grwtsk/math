# Verification target: GRWTSK.Algebra.GroupTheory.ULift.Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "392214248ec4c29b9c51dc6b2fd0dffb4088fa00",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `392214248ec4c29b9c51dc6b2fd0dffb4088fa00`.

Source path: `GRWTSK/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/one--59defd46c637ca97e6e3cfae.md) | 29 | `declaration-track:59defd46c637ca97e6e3cfaefcc80338c5d6f868f812956d2f4a92535fa759f6` |
| 2 | `theorem` | [one_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/one-down--aa1a8a8524935928cbc010fe.md) | 33 | `result-track:aa1a8a8524935928cbc010fea0a93d748ba9fa033cf2516c36f26f6619679212` |
| 3 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/mul--6652b1862afb22b8aa4d7e67.md) | 37 | `declaration-track:6652b1862afb22b8aa4d7e67eb378254a792331fd8db06e38e65f0e15a7ed14a` |
| 4 | `theorem` | [mul_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/mul-down--906c6a952e4ce6b802b3d1c2.md) | 41 | `result-track:906c6a952e4ce6b802b3d1c2988376e36a07636055bf11649edc5594f2890fe1` |
| 5 | `instance` | [div](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/div--4195d7d2d12d84bd054941a4.md) | 45 | `declaration-track:4195d7d2d12d84bd054941a4c646468691e95843d4e503b506857846e8ecde95` |
| 6 | `theorem` | [div_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/div-down--c244ec7fac1aad8545b1f5fe.md) | 49 | `result-track:c244ec7fac1aad8545b1f5fec4ca01491b8ae00049f45ce2f7dc8ce1ca328b28` |
| 7 | `instance` | [inv](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/inv--956854f2c29a9b4a32667b5c.md) | 53 | `declaration-track:956854f2c29a9b4a32667b5c64f287f6b6bd5698190e5caac132681e37c27fd7` |
| 8 | `theorem` | [inv_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/inv-down--b19f1131b4ebee85b5b28ffd.md) | 57 | `result-track:b19f1131b4ebee85b5b28ffd18009d3ee85ba0a946461570032ce0a78c6984da` |
| 9 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/smul--a1c1db67dd4792507860a6c8.md) | 61 | `declaration-track:a1c1db67dd4792507860a6c827f65b06b7d789571234c5babb321b250d6afe58` |
| 10 | `theorem` | [smul_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/smul-down--5e953c61f5b0fcf7c541203e.md) | 65 | `result-track:5e953c61f5b0fcf7c541203ecd60b002e0f0af60977ff640a07e7295d03d41ec` |
| 11 | `instance` | [pow](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/pow--d1bc07656b8c58c0bcbed2df.md) | 69 | `declaration-track:d1bc07656b8c58c0bcbed2df48d46be5b6fc21401b8d2c1ecddfd29aa6411805` |
| 12 | `theorem` | [pow_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/pow-down--41d0e417cc77c0f9fdf36d98.md) | 73 | `result-track:41d0e417cc77c0f9fdf36d9890d1e299351555f4b84aeff6995443c4c6d01cb2` |
| 13 | `def` | [_root_.MulEquiv.ulift](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/root-mulequiv-ulift--4ed425d24e25e6984a99f3d0.md) | 79 | `declaration-track:4ed425d24e25e6984a99f3d0bd0ee14682667b09cbad7f60d1131ebd555301e9` |
| 14 | `instance` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/semigroup--4327c3f9d68990ea38772131.md) | 83 | `declaration-track:4327c3f9d68990ea38772131b76a86ed1107c525cf467a29d7c2ffbd3690c9b2` |
| 15 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/commsemigroup--641f02bea9f738a5f628bd03.md) | 87 | `declaration-track:641f02bea9f738a5f628bd031a5196cd246e0c556a8b62e7cdba6dff0d753ce2` |
| 16 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/muloneclass--465f07298957ac5699e91af4.md) | 91 | `declaration-track:465f07298957ac5699e91af407e9430549b7ab712e4336938a2b4c0098949ca5` |
| 17 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/monoid--8b1c7eda7bd17ffc0343ecac.md) | 95 | `declaration-track:8b1c7eda7bd17ffc0343ecac3a1926beb6848076e83132389881202466ba2c19` |
| 18 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/commmonoid--085799be5273871a1d92539f.md) | 99 | `declaration-track:085799be5273871a1d92539f4fd6c07b20d69f1fd938f15675d6db4df6b4e1e1` |
| 19 | `instance` | [instNatCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/instnatcast--ae85474d01c50344ec62ce5b.md) | 102 | `declaration-track:ae85474d01c50344ec62ce5be835efd077eca8c04dd36da434d414f13dd86871` |
| 20 | `instance` | [instIntCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/instintcast--211bed2382a27de94bc61e02.md) | 103 | `declaration-track:211bed2382a27de94bc61e023493b5c69128e37462825cbd822df5ad826b0aad` |
| 21 | `theorem` | [up_natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/up-natcast--c44dff17fb1954dd2cd5f87a.md) | 106 | `result-track:c44dff17fb1954dd2cd5f87a3a7909127dc72660804b2f6a48ab171d8f935dbe` |
| 22 | `theorem` | [up_ofNat](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/up-ofnat--1410a344875761e9deee4c55.md) | 110 | `result-track:1410a344875761e9deee4c559872c8846061f6f2d18add12ee4fc6d1bd0bb9c9` |
| 23 | `theorem` | [up_intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/up-intcast--4f5ed48c54a6bc878201d8ec.md) | 115 | `result-track:4f5ed48c54a6bc878201d8ecc5cfda18ddafcfa371fe340a7304a0afe88ed737` |
| 24 | `theorem` | [down_natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/down-natcast--1a137fd0fa95d3378943b431.md) | 119 | `result-track:1a137fd0fa95d3378943b43154af437831618a94be722cfb9907c067676b2318` |
| 25 | `theorem` | [down_ofNat](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/down-ofnat--981b204340ce19f1a9447599.md) | 123 | `result-track:981b204340ce19f1a9447599d56124f7a346f61867574ea62c759b0cbffb8113` |
| 26 | `theorem` | [down_intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/down-intcast--16cc43c1c69a15bcc957ba9b.md) | 128 | `result-track:16cc43c1c69a15bcc957ba9b2f41b2ad00a1c370a514e0c72355c36306bc50f7` |
| 27 | `instance` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/addmonoidwithone--19ac1b5b52f79241203c54bc.md) | 131 | `declaration-track:19ac1b5b52f79241203c54bce88bcb700bd7d8556074e563ef2ce02ad3ffbcb6` |
| 28 | `instance` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/addcommmonoidwithone--e49a439b1ddd684b1f41f034.md) | 137 | `declaration-track:e49a439b1ddd684b1f41f0342a153165e3fd50d14e8ee52f13221a05adecf9cc` |
| 29 | `instance` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/divinvmonoid--cb8f0079a433ec8a079ce88c.md) | 141 | `declaration-track:cb8f0079a433ec8a079ce88ca9cae7223316a4e5dbebb4d7d0e95e9ce1fe2470` |
| 30 | `instance` | [group](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/group--bbc8b4bc87c734f50db9d460.md) | 146 | `declaration-track:bbc8b4bc87c734f50db9d460f62ee34242f9eecdd236788b8ab32bbb51dfc926` |
| 31 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/commgroup--23ee8d36d0a8e1f04513d0f2.md) | 151 | `declaration-track:23ee8d36d0a8e1f04513d0f2b9ed348228d129d0d55e0821911b041acb353587` |
| 32 | `instance` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/addgroupwithone--d676d400a380ce7c866906d2.md) | 155 | `declaration-track:d676d400a380ce7c866906d2fff365f9784f25c37018c30ef16cf549da95affa` |
| 33 | `instance` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/addcommgroupwithone--4483802a3807987fdd49a247.md) | 161 | `declaration-track:4483802a3807987fdd49a247cce183a0cf8ccf1733d79fb6275ac0d76c33fc7e` |
| 34 | `instance` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/leftcancelsemigroup--5073a85e328aaae82770d566.md) | 165 | `declaration-track:5073a85e328aaae82770d566ecd797e351ceaadfc955f915486d6b63fdf65295` |
| 35 | `instance` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/rightcancelsemigroup--6dfe8cc90ddaf01ba39a2442.md) | 169 | `declaration-track:6dfe8cc90ddaf01ba39a24428a10c4550769c883cebcf46156a2cd49f2a69dfe` |
| 36 | `instance` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/leftcancelmonoid--d9c35f1cd5f97d62c4b4e5bb.md) | 173 | `declaration-track:d9c35f1cd5f97d62c4b4e5bbe46117c3cfa78e4969c8e99439d18af37e0f00b3` |
| 37 | `instance` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/rightcancelmonoid--002d1635aac9e1a51e193076.md) | 177 | `declaration-track:002d1635aac9e1a51e1930763a4c9f7567eb7ab65f8b45779dc452daa0cdd60f` |
| 38 | `instance` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/cancelmonoid--2520ce34f6113577653af634.md) | 181 | `declaration-track:2520ce34f6113577653af634e4842ed228bcff3e8a678ac983cd94c31d62400f` |
| 39 | `instance` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/cancelcommmonoid--f1846d6ea4854fade5847234.md) | 185 | `declaration-track:f1846d6ea4854fade5847234e7e58c4d1054c887617a6a70ac3be3d3494599d3` |
| 40 | `instance` | [nontrivial](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant49ac0b840f1b60539e8aaf00de4eff0e0a9bf14c39aa83b40b7a81b6666285db.lean/declarations/nontrivial--2922807727fc8b9c5d73c228.md) | 188 | `declaration-track:2922807727fc8b9c5d73c228c95302a3e0f975421210e6b33c5e9738586ffac2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
