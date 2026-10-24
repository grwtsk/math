# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DivisorRepresentation.Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e91e3c787e492f46bd7bed83db9675c2c6b05197",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e91e3c787e492f46bd7bed83db9675c2c6b05197`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.Divisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Divisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/divisor--33a08f1379bdfd7a6a909879.md) | 29 | `declaration-track:33a08f1379bdfd7a6a90987915e5342c785e7afef2e20fccb4268e946f17d9d5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/instance--cac2a53fe92527bd486140ae.md) | 38 | `declaration-track:cac2a53fe92527bd486140aeda4cab847fa30bf83dc2469b63dd59409dd07af9` |
| 3 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/ext--50042cc091eefa065eebb1d4.md) | 41 | `result-track:50042cc091eefa065eebb1d4fafbf002da03c925297bc31e993fe732ac7f13aa` |
| 4 | `theorem` | [ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/ne-zero--46c0a2e733e185d6f8efd66e.md) | 47 | `result-track:46c0a2e733e185d6f8efd66e13b4806b10b345c7aac95e679dfe1861c082ed73` |
| 5 | `theorem` | [pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/pos--7cd73c6940e26a4d9a7cf133.md) | 49 | `result-track:7cd73c6940e26a4d9a7cf1334023200d08c87a22706fb08e971b6ae9e0ad4da9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/instance--2f3082e63ecb2323fce4b83a.md) | 51 | `declaration-track:2f3082e63ecb2323fce4b83ac2a3b134007e77ec8804e23c96dd0763f503690e` |
| 7 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/le-iff--4e969ff9880bea039a8d8a22.md) | 58 | `result-track:4e969ff9880bea039a8d8a22711fa76df7cd63b37abdbf00545b894a74d2ba75` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/instance--a118e5a9f730f76d8270d922.md) | 60 | `declaration-track:a118e5a9f730f76d8270d9223a7dd7a32a28544f05a9b9552c5cca0effb35cdc` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/instance--a6742909a9385b988f714b32.md) | 70 | `declaration-track:a6742909a9385b988f714b32f82074d075cec4d5aca79c0e5311964c3c929279` |
| 10 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/coe-bot--b1785a4d8bb91900fd9eab5e.md) | 77 | `result-track:b1785a4d8bb91900fd9eab5e49de9d1ac57918f038f9419fd60a03a14d14108c` |
| 11 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/coe-top--bf48de297c67148d26df8eb9.md) | 79 | `result-track:bf48de297c67148d26df8eb9d8b1c3c236a8b5c900736b6cca473e82595949cf` |
| 12 | `theorem` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/coe-inf--3cb64936246c50893e843d5b.md) | 81 | `result-track:3cb64936246c50893e843d5b81fc08120b17a6ac09f21f697c802984347e9cf9` |
| 13 | `theorem` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/coe-sup--0713e3d76b3ee0a430c08e32.md) | 83 | `result-track:0713e3d76b3ee0a430c08e329903ad466ead8d153fd435988f88400ff58fed5e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/instance--b692d7d790595a5d0c759443.md) | 85 | `declaration-track:b692d7d790595a5d0c759443832b2f67db3766798fa6e4d25a75220af90ed5c5` |
| 15 | `def` | [valuationOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/valuationorderiso--52c43e07c278aa315c52dd74.md) | 93 | `declaration-track:52c43e07c278aa315c52dd743e1378e5b05728442883032557869b9697747ce3` |
| 16 | `theorem` | [valuationOrderIso_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/valuationorderiso-apply--638ad12b61ae354d3d74b3be.md) | 101 | `result-track:638ad12b61ae354d3d74b3bea1efa3d837b1b8151ab155e0228f6e1fbed88608` |
| 17 | `theorem` | [valuation_reconstruct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/valuation-reconstruct--a3f7c38ebf5239b61262776a.md) | 105 | `result-track:a3f7c38ebf5239b61262776a14cb724196ca48c97fe44b7eb12f701dd18fa34a` |
| 18 | `theorem` | [card_eq_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/card-eq-product--9601b3ddb3c178ccd4a68441.md) | 110 | `result-track:9601b3ddb3c178ccd4a684415f1fe3acc6109d0d7c3abaece73f19db03d2df8c` |
| 19 | `abbrev` | [ValuationChains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/valuationchains--6a552846bda39d69a215120d.md) | 118 | `declaration-track:6a552846bda39d69a215120d74a8e84617af26efc7ca2bb6cdcca65e8c1dd18a` |
| 20 | `def` | [chainMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/chainmap--f92af5fa4fa82273114fef32.md) | 121 | `declaration-track:f92af5fa4fa82273114fef32e60e7e302c55426616b505ab78582e802b9f684c` |
| 21 | `theorem` | [chainMap_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/chainmap-apply--65290dc5b62ee9cb9291f2c0.md) | 128 | `result-track:65290dc5b62ee9cb9291f2c04d7f7ddc41628c8e47dc2f8530972f9593ceb451` |
| 22 | `def` | [boundedValuationChainOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/boundedvaluationchainorderiso--650aefa2618306507b4ef591.md) | 134 | `declaration-track:650aefa2618306507b4ef59182195583e1b641de397088c4cc15927988431763` |
| 23 | `def` | [productOfChainsOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/declarations/productofchainsorderiso--77725fe2e57702733d2d4f4e.md) | 171 | `declaration-track:77725fe2e57702733d2d4f4e08d0cfe9bfed9ec33d38bc2e5a67af53f1fa79fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
