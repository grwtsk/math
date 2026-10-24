# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddOrdCat.Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bc8fd3926f9af278b43a815f419052c680525d0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bc8fd3926f9af278b43a815f419052c680525d0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Bipointed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.PartOrdCat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Bounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/bddordcat--1d507bd9592dddcce82336e7.md) | 25 | `declaration-track:1d507bd9592dddcce82336e7b34e66a79db108ce3f134ad0042cae8990ad515b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/instance--0d8a6b4800e97bd992303110.md) | 33 | `declaration-track:0d8a6b4800e97bd99230311023c46dc4d88b1283ed402b470c5efef4a6f115c4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/instance--16f70c6cc70038d7afc234b3.md) | 36 | `declaration-track:16f70c6cc70038d7afc234b39588e6bf20b22e0f6d5317809aeed3e93c5dc5ad` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/of--b11544ab6d39267ecfaee219.md) | 42 | `declaration-track:b11544ab6d39267ecfaee219d10c591f7eb38f6dd4c92734e829bf44dde7e279` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/coe-of--5d415950dae831200eb2e4c4.md) | 48 | `result-track:5d415950dae831200eb2e4c4c5dfad8d497371d5eb3dd4c14ee5f886ec8eea38` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/instance--4c2276923552ee5be8d29109.md) | 52 | `declaration-track:4c2276923552ee5be8d291090a44cff7297ac2e8e64b4143a39373ae8b2198fc` |
| 7 | `instance` | [largeCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/largecategory--615a8d04459751a3af0261fa.md) | 55 | `declaration-track:615a8d04459751a3af0261fa3cffbeaee3b418693071a458fcacb31ccc1e28e6` |
| 8 | `instance` | [instFunLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/instfunlike--56c6696e87c85598139f2eb4.md) | 66 | `declaration-track:56c6696e87c85598139f2eb4f2c302f1b4098907365a81ddb8121dfd730c00b6` |
| 9 | `instance` | [concreteCategory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/concretecategory--e4f942a86379b6d0b39a12d9.md) | 69 | `declaration-track:e4f942a86379b6d0b39a12d94201666e7dad88390553e547468dd9e65a449ae3` |
| 10 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/hasforgettopartord--1f6f816e47acfc510ffb8359.md) | 76 | `declaration-track:1f6f816e47acfc510ffb8359ee0fe0cb7a636d7fef062b0db21b18d2cd5b0004` |
| 11 | `instance` | [hasForgetToBipointed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/hasforgettobipointed--939d23c1bfa1176396a26416.md) | 82 | `declaration-track:939d23c1bfa1176396a264168ca7076f1b0f933a1cce56b456469c277d851219` |
| 12 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/dual--bd236377d229b185bb76c972.md) | 91 | `declaration-track:bd236377d229b185bb76c972bdc760fd0c6831c4c34e8a42732233206e2363f7` |
| 13 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/iso-mk--abcb913cb09eb48cd50dbbe8.md) | 98 | `declaration-track:abcb913cb09eb48cd50dbbe8380eae3c838c6b7986bc064761eda102a1595c72` |
| 14 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/dualequiv--153792f91bfb19227174c119.md) | 107 | `declaration-track:153792f91bfb19227174c119c60ef8f6216196aaa28a3f5e46b73396afcafaaa` |
| 15 | `theorem` | [bddOrd_dual_comp_forget_to_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/bddord-dual-comp-forget-to-partordcat--9a8a180af786f8b49773b641.md) | 116 | `result-track:9a8a180af786f8b49773b6413247d704153f75a7f41ff85ca9187e92624ccee5` |
| 16 | `theorem` | [bddOrd_dual_comp_forget_to_bipointed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrdCat/Variant1a42e9cd63201de26923463627ae170942a9ceacf83c474e26d40685d745dcb1.lean/declarations/bddord-dual-comp-forget-to-bipointed--bf8c0227b52c5b25d3160efd.md) | 122 | `result-track:bf8c0227b52c5b25d3160efd7329d5a74838ee470fbc160bdf390eacec0f48ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
