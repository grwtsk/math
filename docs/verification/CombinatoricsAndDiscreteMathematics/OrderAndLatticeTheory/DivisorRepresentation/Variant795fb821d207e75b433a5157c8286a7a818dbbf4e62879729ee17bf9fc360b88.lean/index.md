# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DivisorRepresentation.Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e54b311ba7701db9c01b40e2661e4857e1b4e14",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e54b311ba7701db9c01b40e2661e4857e1b4e14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.Divisors` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Divisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/divisor--e86b6c2b662938e19e6d3fa0.md) | 21 | `declaration-track:e86b6c2b662938e19e6d3fa0f5f80077c82d57e5eab127fa351c4a5f10a5b194` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/instance--10614761490a0cea10d7343f.md) | 30 | `declaration-track:10614761490a0cea10d7343f0e9b624d2339cbd96d86ae5ccc47e6e83c2a94a9` |
| 3 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/ext--d9f4470a538cf66c499ee017.md) | 33 | `result-track:d9f4470a538cf66c499ee01789f2faa5513d96ea40124a07f51eef895327df70` |
| 4 | `theorem` | [ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/ne-zero--f761a0ea6e64bb70344d187a.md) | 39 | `result-track:f761a0ea6e64bb70344d187a7284976e446541b9dd7ae863bfb59ab0edc291a2` |
| 5 | `theorem` | [pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/pos--0df0f0f2da3efe28f688f443.md) | 41 | `result-track:0df0f0f2da3efe28f688f443ace644ab675ed6d565267270455faf6483c18fa1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/instance--d37296260d8dd57899bd8a6a.md) | 43 | `declaration-track:d37296260d8dd57899bd8a6a655d424847452fc7587ecbdd816afe4b557db721` |
| 7 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/le-iff--960b0f0376d3271cf8679327.md) | 50 | `result-track:960b0f0376d3271cf86793273fad3da265afe9993c4b0d86f14ed02dfbc567b8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/instance--52c742b87b5fe8bf45a412a4.md) | 52 | `declaration-track:52c742b87b5fe8bf45a412a4011ef2c1f60f1e1b0029a7be5b98b2593456af9e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/instance--6d22ad3e7fdbb8ae7c417076.md) | 62 | `declaration-track:6d22ad3e7fdbb8ae7c417076773a2c111e8bb151b5ada3ef407a1782ec744ea8` |
| 10 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/coe-bot--f2334bd32afea6922267e866.md) | 69 | `result-track:f2334bd32afea6922267e8665988b5b11c10d4bc0c85a4904d54d2309c903955` |
| 11 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/coe-top--dcec6e6fb8a62749c48dadd4.md) | 71 | `result-track:dcec6e6fb8a62749c48dadd4d88a534de439eee1b159ffa16fbbc6970990b86c` |
| 12 | `theorem` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/coe-inf--cf54b8aa82cc33ae50285826.md) | 73 | `result-track:cf54b8aa82cc33ae50285826477d1a177897149e3fba4584a9fe9017699a1926` |
| 13 | `theorem` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/coe-sup--e2312627eec0ad42e0391469.md) | 75 | `result-track:e2312627eec0ad42e039146976eebd491770a46d44298f6ba71ce7561d00f1be` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/instance--e7b5611402ef910a25d54c71.md) | 77 | `declaration-track:e7b5611402ef910a25d54c7161fecd0c14069a3191e90fec0af78d59b2083a6f` |
| 15 | `def` | [valuationOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/valuationorderiso--08493388a8841c03da2c6a0d.md) | 85 | `declaration-track:08493388a8841c03da2c6a0d89e7fc390cb0e7f9638bc0df3153d7594a7cf40f` |
| 16 | `theorem` | [valuationOrderIso_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/valuationorderiso-apply--3525df3d2cd2dc7d3ebddcf8.md) | 93 | `result-track:3525df3d2cd2dc7d3ebddcf8f500f7c4ae6ca772dea41a2dd086a39e602f51b6` |
| 17 | `theorem` | [valuation_reconstruct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/valuation-reconstruct--ba134cf15147812cdf5df72f.md) | 97 | `result-track:ba134cf15147812cdf5df72f3628b221e80797cb67550eae27a910b001f6b172` |
| 18 | `theorem` | [card_eq_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/card-eq-product--f82792ee247bb5097ef20f46.md) | 102 | `result-track:f82792ee247bb5097ef20f46f66c2e2edaec9a771c626ef4994adf5db0fed84b` |
| 19 | `abbrev` | [ValuationChains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/valuationchains--07932f3a862f6d683aa20506.md) | 110 | `declaration-track:07932f3a862f6d683aa20506517ae00d254bf48359edbfd32e78a5cd650c835d` |
| 20 | `def` | [chainMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/chainmap--0bb44a2c6d69aada516b2171.md) | 113 | `declaration-track:0bb44a2c6d69aada516b21710353ea1887ded78ed1e0c7dd6c1d0d152661be5e` |
| 21 | `theorem` | [chainMap_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/chainmap-apply--e609b835617a2cdd614bf937.md) | 120 | `result-track:e609b835617a2cdd614bf93777223cd5dae2adbc1acc4631749a136c0cf3c677` |
| 22 | `def` | [boundedValuationChainOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/boundedvaluationchainorderiso--ac59a9e2e44a4c306d7ab88b.md) | 126 | `declaration-track:ac59a9e2e44a4c306d7ab88b8060d55065ca37c99aa7091c7316b4f4ac6aff33` |
| 23 | `def` | [productOfChainsOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant795fb821d207e75b433a5157c8286a7a818dbbf4e62879729ee17bf9fc360b88.lean/declarations/productofchainsorderiso--3aad81e47249abd9ab3919ca.md) | 163 | `declaration-track:3aad81e47249abd9ab3919ca2a8b3859238c294b35e67554bafce10be21451ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
