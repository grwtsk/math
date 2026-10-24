# Verification target: GRWTSK.Algebra.UniversalAlgebra.AddGroupWithTop.Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b77f469f9f0e187bca3a1a0e25967953e7bf108",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b77f469f9f0e187bca3a1a0e25967953e7bf108`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearOrderedAddCommMonoidWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/linearorderedaddcommmonoidwithtop--457e092a6f8384377d07c43e.md) | 38 | `declaration-track:457e092a6f8384377d07c43e83a3cf64ea240ef32cea3abeefb6da2e02efebfd` |
| 2 | `class` | [LinearOrderedAddCommGroupWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/linearorderedaddcommgroupwithtop--91467ec873fd7693965f8bfe.md) | 45 | `declaration-track:91467ec873fd7693965f8bfe8ec9c27d71c7a1c1aaa51ce3b48e1f4b737f3200` |
| 3 | `instance` | [WithTop.linearOrderedAddCommMonoidWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/withtop-linearorderedaddcommmonoidwithtop--fdfbfe93f279fa702505a2d3.md) | 50 | `declaration-track:fdfbfe93f279fa702505a2d34c6949fc000d5e1afb72c015936a5627f4fc86d8` |
| 4 | `theorem` | [top_add](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/top-add--50c1fa108ce71b646605df20.md) | 59 | `result-track:50c1fa108ce71b646605df20067ff64a080933484acdea695874ca447728330e` |
| 5 | `theorem` | [add_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/add-top--cbefabffe106b07696db4e12.md) | 63 | `result-track:cbefabffe106b07696db4e1287a35a5c6bb8c5feb2103f0da18317955a9d7583` |
| 6 | `instance` | [instNeg](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/instneg--1dde99324484ae4c4c790f56.md) | 74 | `declaration-track:1dde99324484ae4c4c790f56650048bb8cea68798a22cd5094ba174634c9a2cc` |
| 7 | `def` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/sub--6d1eef4f1979488a24994eda.md) | 81 | `declaration-track:6d1eef4f1979488a24994edae8740aed4491f45026ad486e0b6d9ee883d79dd8` |
| 8 | `instance` | [instSub](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/instsub--8a7ae1fef3c61f524a79647c.md) | 87 | `declaration-track:8a7ae1fef3c61f524a79647c274e22057bf6e38bf6bfaa3d225e17af414cbb2a` |
| 9 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/coe-neg--1a262ec9c330fb66bd93e9dc.md) | 93 | `result-track:1a262ec9c330fb66bd93e9dc5810defdc9c23eed2860482c028c177dc9a06629` |
| 10 | `theorem` | [neg_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/neg-top--5e3c4c8d0fab3c3150e896dd.md) | 97 | `result-track:5e3c4c8d0fab3c3150e896dd5c8fbae4ffce400f40cbbd751187b1f458d9f173` |
| 11 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/coe-sub--f5576f22e3b3732d63d11727.md) | 100 | `result-track:f5576f22e3b3732d63d11727e007668e3887cf839f5062c621892af53f63a999` |
| 12 | `theorem` | [top_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/top-sub--4456edbb89456a7a108fd812.md) | 103 | `result-track:4456edbb89456a7a108fd812d7c64b4a2274a386d400d4cafb9d3bfadfffe303` |
| 13 | `theorem` | [sub_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/sub-top--faf415f74e8c0797a4b87460.md) | 107 | `result-track:faf415f74e8c0797a4b87460ad3ce759c0c8b2777a5f00c14bc41de24b15a001` |
| 14 | `lemma` | [sub_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/sub-eq-top-iff--bddd66da5b4921c661077011.md) | 110 | `result-track:bddd66da5b4921c661077011dc688b0501a4aca92aab08fd00c0208d65c4e15e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/instance--9b77d184958f09c7454a3b2d.md) | 113 | `declaration-track:9b77d184958f09c7454a3b2d2a279675ccb463e4cc1d9e254a4fd24297a653b6` |
| 16 | `lemma` | [add_neg_cancel_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/add-neg-cancel-of-ne-top--63d6a25f22f1b916f1b6853e.md) | 135 | `result-track:63d6a25f22f1b916f1b6853e7ffe6559fda2645d62a6b292a5762ad6d7943acb` |
| 17 | `lemma` | [add_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/add-eq-top--a0e1da50c82d49665d0ec5b8.md) | 141 | `result-track:a0e1da50c82d49665d0ec5b8a28f2c0d4acaff31b49036617f65ac690ec6a607` |
| 18 | `lemma` | [top_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/top-ne-zero--ed13d4730f7da79fcbe5eef8.md) | 157 | `result-track:ed13d4730f7da79fcbe5eef80404412d8ebf50751f7bfd84baeda431aea79ef5` |
| 19 | `lemma` | [neg_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/neg-eq-top--db5315f7e9afa2075dda338d.md) | 165 | `result-track:db5315f7e9afa2075dda338db79cd34ecdf7eca5b20bf7e3bbad795caa18bcfc` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/instance--e86cc11f4d9e7e9592879063.md) | 173 | `declaration-track:e86cc11f4d9e7e9592879063322c8abbb2d3189dbd46e331c413a96d5c01f8f6` |
| 21 | `lemma` | [injective_add_left_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/injective-add-left-of-ne-top--6fddb78487120c98c0bc916e.md) | 206 | `result-track:6fddb78487120c98c0bc916e50d0b6e38458f1152cb8ac4b1aad22d02124a470` |
| 22 | `lemma` | [injective_add_right_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/injective-add-right-of-ne-top--8cc05acf751138627cdf0b3e.md) | 211 | `result-track:8cc05acf751138627cdf0b3edf595245c0ad2d0ee841031e0e349ac41d9e2239` |
| 23 | `lemma` | [strictMono_add_left_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/strictmono-add-left-of-ne-top--0b7068a88001b7043307ebf0.md) | 214 | `result-track:0b7068a88001b7043307ebf089bbe6b65b3c5f5ed58d3f5386b20b0c69a3cbdc` |
| 24 | `lemma` | [strictMono_add_right_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/strictmono-add-right-of-ne-top--fe15d0525f173db885796975.md) | 219 | `result-track:fe15d0525f173db8857969756c38f7a14bec988765596bdb12ee5528dcf84289` |
| 25 | `lemma` | [sub_pos](../../../../../mathematics/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/declarations/sub-pos--9c81929a839a9bdbcce3d05d.md) | 222 | `result-track:9c81929a839a9bdbcce3d05ddd4f60237f51b2f231c6ed90774c7154796d7207` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
