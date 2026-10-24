# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a321d236658e896744880bc853bb7bdc52c2a0a7",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a321d236658e896744880bc853bb7bdc52c2a0a7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.CharZero` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [linearOrderedCommRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/linearorderedcommring--14ad5723b7a4723a2bb52e0a.md) | 35 | `declaration-track:14ad5723b7a4723a2bb52e0a8452b2bbab33db952be02e2113bc91e7110e729d` |
| 2 | `instance` | [orderedCommRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/orderedcommring--fc0be7ea60aa982c34b724bf.md) | 44 | `declaration-track:fc0be7ea60aa982c34b724bf951c00688131f2acbbd056d8bbda51c5160e3164` |
| 3 | `instance` | [orderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/orderedring--aba9e6cafbafa557ec5b35cc.md) | 47 | `declaration-track:aba9e6cafbafa557ec5b35cc3098badb70150130d1e8c59185ff486374860964` |
| 4 | `instance` | [linearOrderedAddCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/linearorderedaddcommgroup--c5c6626f2528d01671ed6154.md) | 50 | `declaration-track:c5c6626f2528d01671ed6154630a65e9a289324533d95437d4487313cca40778` |
| 5 | `theorem` | [abs_eq_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/abs-eq-natabs--649728a3af032b0a16376a62.md) | 56 | `result-track:649728a3af032b0a16376a6292604ddd6515cf4be153c6b6ed59a2db95639f12` |
| 6 | `lemma` | [coe_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/coe-natabs--67496d9e5d39c35b3a9ff303.md) | 61 | `result-track:67496d9e5d39c35b3a9ff303b7fb6ba4c147fe20265f082d74b5b003d2ee14c3` |
| 7 | `lemma` | [_root_.Nat.cast_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/root-nat-cast-natabs--6a6aff0fc7102ff13edec60d.md) | 64 | `result-track:6a6aff0fc7102ff13edec60d11c5d0786c4fddee8fcdc486162460cbde7ea36a` |
| 8 | `theorem` | [natAbs_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/natabs-abs--0e89e896723c5470542ac637.md) | 68 | `result-track:0e89e896723c5470542ac6371391da8a9777378b35f167daa8996e6df03cb74d` |
| 9 | `theorem` | [sign_mul_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/sign-mul-abs--9f7e072e7b4413b21fc9e7d6.md) | 71 | `result-track:9f7e072e7b4413b21fc9e7d693bd1ddb1a9af82f76edd6a7d4eabb8054fbc18c` |
| 10 | `theorem` | [coe_nat_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/coe-nat-eq-zero--1a1ae24ee56d983268b4254a.md) | 75 | `result-track:1a1ae24ee56d983268b4254aa1ac521720fac8ee24134ad67d18646067d88630` |
| 11 | `theorem` | [coe_nat_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/coe-nat-ne-zero--2b6a0b49cf0b6785a11d79fa.md) | 79 | `result-track:2b6a0b49cf0b6785a11d79fafe41134fa64fc3e7e6ae8733a5b97351aabbfd00` |
| 12 | `theorem` | [coe_nat_ne_zero_iff_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/coe-nat-ne-zero-iff-pos--048755abe6a8c8a332059a07.md) | 82 | `result-track:048755abe6a8c8a332059a07ed5c27919206ee6e567e99d8ec2a9a11b4950515` |
| 13 | `lemma` | [abs_coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/abs-coe-nat--a45e8a4ab3576526905ff3e3.md) | 87 | `result-track:a45e8a4ab3576526905ff3e3d20393551819446d86f4f1e6f79ecef55c8844e8` |
| 14 | `theorem` | [sign_add_eq_of_sign_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/sign-add-eq-of-sign-eq--3eb427d49a3d6b94e4cb57e6.md) | 90 | `result-track:3eb427d49a3d6b94e4cb57e61ded4a98cbcc291b98e3fccf60e46336d3a90669` |
| 15 | `theorem` | [lt_succ_self](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/lt-succ-self--a2e5db7b5d2e1b9c3d4c0c3f.md) | 100 | `result-track:a2e5db7b5d2e1b9c3d4c0c3f35fdb81a38428d654fe02ad4c59d053db7e1ad5a` |
| 16 | `theorem` | [pred_self_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/pred-self-lt--42eef802f99aedf39fd6d50b.md) | 104 | `result-track:42eef802f99aedf39fd6d50b5a886cfc589c4583be89bcd1353018a1dcffd0b4` |
| 17 | `theorem` | [sub_one_lt_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/sub-one-lt-iff--3f4b49910b2b7e046b1cea1d.md) | 111 | `result-track:3f4b49910b2b7e046b1cea1d5582537b042d80c2ce548049a0e0627744855f23` |
| 18 | `theorem` | [le_sub_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/le-sub-one-iff--533a2659c8f1e3f31e8d36a6.md) | 115 | `result-track:533a2659c8f1e3f31e8d36a67a07ad6e394f0524fb834e054de6fc1b6568dfe4` |
| 19 | `theorem` | [abs_lt_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/abs-lt-one-iff--61056a52e3f6df204b04e783.md) | 120 | `result-track:61056a52e3f6df204b04e7830988ece8bd55adafa0c02b3c35e3a185bbb46b25` |
| 20 | `theorem` | [abs_le_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/abs-le-one-iff--9969a8d5a4b3d50cc26c691f.md) | 129 | `result-track:9969a8d5a4b3d50cc26c691f4e52b94cb04db8cd53c5931dded3e482d3f4ba43` |
| 21 | `theorem` | [one_le_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/one-le-abs--2a8b56d51fa83cabb10779e7.md) | 133 | `result-track:2a8b56d51fa83cabb10779e74f62f7e785ff81352a0cc91235d54460fa808aee` |
| 22 | `def` | [inductionOn'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/inductionon--3b417d6870f65564be61a077.md) | 139 | `declaration-track:3b417d6870f65564be61a0777d3a4bf2f3544bbb89d12ba4450b98d1f1d4e586` |
| 23 | `theorem` | [le_induction](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/le-induction--124a96fa56a4c78dfb05a340.md) | 163 | `result-track:124a96fa56a4c78dfb05a34019140a90d14370c2980ad5f94108f29f2d6a1c1e` |
| 24 | `theorem` | [le_induction_down](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/le-induction-down--2fb4f7d4d1b647666da6ccca.md) | 176 | `result-track:2fb4f7d4d1b647666da6ccca302270be46ae50e6db1e24c87fd8cbd3da97fe6c` |
| 25 | `theorem` | [ediv_eq_zero_of_lt_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-eq-zero-of-lt-abs--0824e9d6015b579671638474.md) | 201 | `result-track:0824e9d6015b579671638474b7207d752a9a63b20940ef8ac9d82bf29d24824b` |
| 26 | `theorem` | [emod_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/emod-abs--11329dfb8f911337e2fc4993.md) | 227 | `result-track:11329dfb8f911337e2fc499330dee6128fc18a9c1b4164259d0730b65e96180e` |
| 27 | `theorem` | [emod_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/emod-lt--2560d974ba0c3ea706b22a10.md) | 235 | `result-track:2560d974ba0c3ea706b22a1091bfacfc0e8b76311b4e2b6d7347f490e728cb1a` |
| 28 | `theorem` | [add_emod_eq_add_mod_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/add-emod-eq-add-mod-right--8de091773033d510d4670b4f.md) | 253 | `result-track:8de091773033d510d4670b4f2fc3e58ee254c2ef80963a98a7ddf01cfa0f66a2` |
| 29 | `theorem` | [neg_emod_two](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/neg-emod-two--254e04998776c1937f1c7343.md) | 288 | `result-track:254e04998776c1937f1c7343a57d7b39c08e997638f181a87b588286328ec90b` |
| 30 | `theorem` | [abs_ediv_le_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/abs-ediv-le-abs--55c885d10809f08366a19226.md) | 298 | `result-track:55c885d10809f08366a192262035cf67a2c6acd314f3e3f75f131ce7d93b9f0c` |
| 31 | `theorem` | [emod_two_eq_zero_or_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/emod-two-eq-zero-or-one--9ddb97ea8017738fc1cf35f4.md) | 315 | `result-track:9ddb97ea8017738fc1cf35f403fdfb79cf241007d8e975ff2be4c823d3c1f26c` |
| 32 | `theorem` | [ediv_dvd_ediv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-dvd-ediv--34cbf103c13a78c0ee8390a4.md) | 350 | `result-track:34cbf103c13a78c0ee8390a4f22a871621d3acca961c5bfa15c7ccec618b856b` |
| 33 | `theorem` | [abs_sign_of_nonzero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/abs-sign-of-nonzero--420255b96f967e7fd1edeea3.md) | 376 | `result-track:420255b96f967e7fd1edeea3aa8b78634a6a5b5918cf67c319471519beadec77` |
| 34 | `theorem` | [exists_lt_and_lt_iff_not_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/exists-lt-and-lt-iff-not-dvd--2d040990a657f32d15bd7789.md) | 382 | `result-track:2d040990a657f32d15bd77890b9c0346176291b7a026a0258f76791efa7a2bf1` |
| 35 | `theorem` | [sign_eq_ediv_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/sign-eq-ediv-abs--02914d5b0d3816bf85e42c66.md) | 410 | `result-track:02914d5b0d3816bf85e42c66b2795bf54012664bacfcc294ffa3c6627e2aea38` |
| 36 | `theorem` | [ediv_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-mul-le--2eb22fd9790c44051c0e5f3d.md) | 418 | `result-track:2eb22fd9790c44051c0e5f3d7fe8ee1541749269ce4bb5a956972f976efe864c` |
| 37 | `theorem` | [ediv_le_of_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-le-of-le-mul--719bd0101cff5e8bc8892eb3.md) | 422 | `result-track:719bd0101cff5e8bc8892eb3ff2d85a0329db36874751f2db6a87462361a7a04` |
| 38 | `theorem` | [mul_lt_of_lt_ediv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/mul-lt-of-lt-ediv--8fdb25853a219aa19f42f31d.md) | 426 | `result-track:8fdb25853a219aa19f42f31d566484b87da0436caff8f9abe059c373ea0b76dd` |
| 39 | `theorem` | [mul_le_of_le_ediv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/mul-le-of-le-ediv--8b5b24256c5783d12ed889f3.md) | 430 | `result-track:8b5b24256c5783d12ed889f370cd351c6dd2c3661048f7a9493545b8c4b1c33f` |
| 40 | `theorem` | [le_ediv_of_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/le-ediv-of-mul-le--b47bef50c6f24786e21c6e67.md) | 434 | `result-track:b47bef50c6f24786e21c6e67e9f1b1748b782bf28a56dc358c0b48a507a3a22e` |
| 41 | `theorem` | [le_ediv_iff_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/le-ediv-iff-mul-le--cb29cab38bcce18b94e3bbc2.md) | 439 | `result-track:cb29cab38bcce18b94e3bbc239f5d810252c278d10232159dd37ec19bda10781` |
| 42 | `theorem` | [ediv_le_ediv](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-le-ediv--38ae39c4e791e4d406396147.md) | 443 | `result-track:38ae39c4e791e4d4063961479cf786fd68a29b95617015b5450152ad6dbf81a2` |
| 43 | `theorem` | [ediv_lt_of_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-lt-of-lt-mul--ced64353ab12ff7e2f94a040.md) | 447 | `result-track:ced64353ab12ff7e2f94a0404a334c21cf096432f14741553d35025ec927827c` |
| 44 | `theorem` | [lt_mul_of_ediv_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/lt-mul-of-ediv-lt--2137625486d58269ccffde40.md) | 451 | `result-track:2137625486d58269ccffde4053686b6ca1d77b106a25a5758cbff0bb986eceb2` |
| 45 | `theorem` | [ediv_lt_iff_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-lt-iff-lt-mul--83808edb25635687fcd00e1d.md) | 455 | `result-track:83808edb25635687fcd00e1d995401f0ebe3047709cb4c2c860ea392d5180730` |
| 46 | `theorem` | [le_mul_of_ediv_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/le-mul-of-ediv-le--46ba785eb5213c0c1daf7723.md) | 459 | `result-track:46ba785eb5213c0c1daf772353947f07d605c8a5b70e2e2685d9c3ef7819e39b` |
| 47 | `theorem` | [lt_ediv_of_mul_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/lt-ediv-of-mul-lt--947dc1c4742eccffd6bc4e0c.md) | 463 | `result-track:947dc1c4742eccffd6bc4e0c97f29ed7596c5dbf0d3e0e75601d36d48ecad73a` |
| 48 | `theorem` | [lt_ediv_iff_mul_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/lt-ediv-iff-mul-lt--232ac518db81866e6b1afde0.md) | 468 | `result-track:232ac518db81866e6b1afde096e835345409d86efedb7a148081906eb9a8868c` |
| 49 | `theorem` | [ediv_pos_of_pos_of_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-pos-of-pos-of-dvd--57e79bd4e7e9ea79ad5ef932.md) | 473 | `result-track:57e79bd4e7e9ea79ad5ef932cde3adaba599232d1963f87547887626c4f4747a` |
| 50 | `theorem` | [natAbs_eq_of_dvd_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/natabs-eq-of-dvd-dvd--5c9c79394327fbebfdb53845.md) | 477 | `result-track:5c9c79394327fbebfdb5384578e1e6ceab39797e3fc3b58bacb882974ebb084b` |
| 51 | `theorem` | [ediv_eq_ediv_of_mul_eq_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-eq-ediv-of-mul-eq-mul--824296177c9556e8f853144f.md) | 481 | `result-track:824296177c9556e8f853144f8a1edeb1f6ca9e14d4f9bc31ee6d40baf1defcd9` |
| 52 | `theorem` | [ediv_dvd_of_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/ediv-dvd-of-dvd--535b74ad1d31cdac650ffdf2.md) | 487 | `result-track:535b74ad1d31cdac650ffdf26fc67a31c3d78d282e4d86d0694f8a76a21a4ce7` |
| 53 | `theorem` | [toNat_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/tonat-le--b9eb8de17e97a243c459858c.md) | 498 | `result-track:b9eb8de17e97a243c459858cc06c07e283b08f0b0fa1ad86428bd612b6242fdc` |
| 54 | `theorem` | [lt_toNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/lt-tonat--018eed66663b48f29956c940.md) | 503 | `result-track:018eed66663b48f29956c940bd17a561a5ffc8db55f92231fdac045c8735749a` |
| 55 | `theorem` | [coe_nat_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/coe-nat-nonpos-iff--031f81024324fc12d9a699a3.md) | 508 | `result-track:031f81024324fc12d9a699a36ddf3f6fd994fb4ef93f4ad0919de534a02dbbdf` |
| 56 | `theorem` | [toNat_le_toNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/tonat-le-tonat--a51b708105c48ce351e3b1f5.md) | 513 | `result-track:a51b708105c48ce351e3b1f5cea6d9858d34eac0ee43ffdec56e7e48364aab7b` |
| 57 | `theorem` | [toNat_lt_toNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/tonat-lt-tonat--471b8b6725276d2d679433c6.md) | 517 | `result-track:471b8b6725276d2d679433c620ddcf93466e99efe3f9bca0e29a4b78c29642d3` |
| 58 | `theorem` | [lt_of_toNat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/lt-of-tonat-lt--91d2854c734e586d1825d10b.md) | 522 | `result-track:91d2854c734e586d1825d10b0d004b92c79b26e5160eb5a9cc3ced1e026c9a43` |
| 59 | `theorem` | [toNat_pred_coe_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/tonat-pred-coe-of-pos--e4b27c1a7ec95c0bd768357c.md) | 527 | `result-track:e4b27c1a7ec95c0bd768357ce6125ae41bdcf3b729a27afb1f664799a86f42ec` |
| 60 | `theorem` | [toNat_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/tonat-eq-zero--88b22f2605f332b5bbefe158.md) | 532 | `result-track:88b22f2605f332b5bbefe1582e24fa135ff2b39c6ff06f7e87c332f86ac1b045` |
| 61 | `theorem` | [toNat_sub_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant08514bbdf36d15288a73e375e1b4ada9916c1417e43616b6d40726b363ca3856.lean/declarations/tonat-sub-of-le--b5a92283c8c548be8d0f0ea8.md) | 547 | `result-track:b5a92283c8c548be8d0f0ea8005d58cd1c1c0daa8448f355c52081bd03729807` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
