# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Module.Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d5d3732d7612f7937a36728a89e2d8a4ff0ec02",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d5d3732d7612f7937a36728a89e2d8a4ff0ec02`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.SMul` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instModuleOrderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/instmoduleorderdual--bd28cef11608667f703039be.md) | 37 | `declaration-track:bd28cef11608667f703039be8d5c6ebb73f284477d6cde70c31b2ecc1031d2b8` |
| 2 | `theorem` | [smul_neg_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-neg-iff-of-pos--9d920789ec9a09f3f545dc95.md) | 50 | `result-track:9d920789ec9a09f3f545dc95e8c32b7de802bce95964864c56067135008e4d1d` |
| 3 | `theorem` | [smul_lt_smul_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-lt-smul-of-neg--4cd6d53f6f93a4e21816e0c7.md) | 61 | `result-track:4cd6d53f6f93a4e21816e0c78c718a9518223570d655e8f92b1e968b0600d7ba` |
| 4 | `theorem` | [smul_le_smul_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-le-smul-of-nonpos--ec0d9bdbbffcc58c785ec233.md) | 66 | `result-track:ec0d9bdbbffcc58c785ec23345a535d09973eddf287bc8269092d8ede36541d1` |
| 5 | `theorem` | [eq_of_smul_eq_smul_of_neg_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/eq-of-smul-eq-smul-of-neg-of-le--737ef75ed3311d00bc4933d2.md) | 71 | `result-track:737ef75ed3311d00bc4933d2907dc057c690f397b1332d556b7d91f56aa814cf` |
| 6 | `theorem` | [lt_of_smul_lt_smul_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/lt-of-smul-lt-smul-of-nonpos--45b5129610c012a577aa25eb.md) | 76 | `result-track:45b5129610c012a577aa25eb02220d799caf443184fcea6b8e773b9a0a6193df` |
| 7 | `theorem` | [smul_lt_smul_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-lt-smul-iff-of-neg--f4512c9dcebf0db2e112c953.md) | 81 | `result-track:f4512c9dcebf0db2e112c953e8562c1e9e2281060bf09357bff2b870c8747f1f` |
| 8 | `theorem` | [smul_neg_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-neg-iff-of-neg--b0acaa2649e9ac76600ea355.md) | 86 | `result-track:b0acaa2649e9ac76600ea355b1a28e36074051461b474c2793470fd8ce5d77f7` |
| 9 | `theorem` | [smul_pos_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-pos-iff-of-neg--a7b83c55c406b22a8a931082.md) | 91 | `result-track:a7b83c55c406b22a8a93108294f31e8a0e81336050570df65013803e3e5bb51f` |
| 10 | `theorem` | [smul_nonpos_of_nonpos_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-nonpos-of-nonpos-of-nonneg--cd7ae53d7c8faf3a48457916.md) | 96 | `result-track:cd7ae53d7c8faf3a48457916b410e19acbd2d6cdbd55a97718f74802869ed163` |
| 11 | `theorem` | [smul_nonneg_of_nonpos_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-nonneg-of-nonpos-of-nonpos--550d03726486c9ff42105b50.md) | 102 | `result-track:550d03726486c9ff42105b50351e314e4e399edae527aa041670176c69150c6f` |
| 12 | `theorem` | [antitone_smul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/antitone-smul-left--d0dd59b4f81031d502f1bb35.md) | 115 | `result-track:d0dd59b4f81031d502f1bb35ea42b6adab603de3f2baa6ae8958cc7d391fc772` |
| 13 | `theorem` | [strict_anti_smul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/strict-anti-smul-left--158593e73b5289436cf937a6.md) | 119 | `result-track:158593e73b5289436cf937a69dcc2e834345adba7ba6366e54424e1902ec07e9` |
| 14 | `theorem` | [smul_add_smul_le_smul_add_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-add-smul-le-smul-add-smul--8916782ecdf7195435e42a0b.md) | 124 | `result-track:8916782ecdf7195435e42a0bbd3ee520c5d2f5edd88d4716f3d2e681aec0c1b8` |
| 15 | `theorem` | [smul_add_smul_le_smul_add_smul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-add-smul-le-smul-add-smul--8b8e18d8c27709cbba9b6d2a.md) | 134 | `result-track:8b8e18d8c27709cbba9b6d2a4ec6e5273c4117e3baba5f224285afc1b5e74694` |
| 16 | `theorem` | [smul_add_smul_lt_smul_add_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-add-smul-lt-smul-add-smul--17289af35439a1e864ac450c.md) | 141 | `result-track:17289af35439a1e864ac450c2d9e0042079a6f3add1d480d1027ea9b32e953f0` |
| 17 | `theorem` | [smul_add_smul_lt_smul_add_smul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-add-smul-lt-smul-add-smul--50c91dc85087c65f2a3a6572.md) | 152 | `result-track:50c91dc85087c65f2a3a6572f89e31dfc396cd6705be8cf767a7dcaf179f5871` |
| 18 | `theorem` | [smul_le_smul_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-le-smul-iff-of-neg--982fc121b4300542807ce72b.md) | 166 | `result-track:982fc121b4300542807ce72bcfe8ec977f6df2091962f53803a064378b83936d` |
| 19 | `theorem` | [inv_smul_le_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/inv-smul-le-iff-of-neg--55c36b72cf0415ddfc2ed8b6.md) | 171 | `result-track:55c36b72cf0415ddfc2ed8b6c53b74c53107c5a00fb4ad1c3ef5e4a0ced48cd4` |
| 20 | `theorem` | [inv_smul_lt_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/inv-smul-lt-iff-of-neg--45482f87bbf1a7818cb7c45e.md) | 175 | `result-track:45482f87bbf1a7818cb7c45e370fe8a42facfd2484e3dd5787a78c721bc1853d` |
| 21 | `theorem` | [smul_inv_le_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-inv-le-iff-of-neg--1a90f235b86691ae5eacf380.md) | 179 | `result-track:1a90f235b86691ae5eacf3807fd5cb898be2583f90045541db3d5d85060f2a49` |
| 22 | `theorem` | [smul_inv_lt_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-inv-lt-iff-of-neg--8f87096b6d00c59e382b314e.md) | 183 | `result-track:8f87096b6d00c59e382b314e945ad8e29ea7da7bdeebc7197bc8b02c020ae5c3` |
| 23 | `def` | [OrderIso.smulLeftDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/orderiso-smulleftdual--aa3a59f60b7c13f56ac564d6.md) | 191 | `declaration-track:aa3a59f60b7c13f56ac564d621bf4a0d61e9f4e93829b47d3770a7ea56ee56e6` |
| 24 | `theorem` | [smul_lowerBounds_subset_upperBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-lowerbounds-subset-upperbounds-smul--b94be16bad69498c39cd9627.md) | 208 | `result-track:b94be16bad69498c39cd9627ebbec309e5c59d9888f075b2eed559a874ffbadc` |
| 25 | `theorem` | [smul_upperBounds_subset_lowerBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/smul-upperbounds-subset-lowerbounds-smul--e012db9b427bfc70a672fe95.md) | 213 | `result-track:e012db9b427bfc70a672fe95d0e423ad53a2a2d165ea602347f34fed657792ec` |
| 26 | `theorem` | [BddBelow.smul_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/bddbelow-smul-of-nonpos--8b4f7ea2cc02c8ef031de8b8.md) | 218 | `result-track:8b4f7ea2cc02c8ef031de8b8158337aacd6017f62f2702080a48ea3ee3182ac7` |
| 27 | `theorem` | [BddAbove.smul_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/bddabove-smul-of-nonpos--b4fd20011547397a9abebd29.md) | 222 | `result-track:b4fd20011547397a9abebd295484f72a01d2972c7fd0c05851106957acee577a` |
| 28 | `theorem` | [lowerBounds_smul_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/lowerbounds-smul-of-neg--b9119d45ff2783f3484402c0.md) | 234 | `result-track:b9119d45ff2783f3484402c094d9f6d75028810ec9461823620e67c36138d494` |
| 29 | `theorem` | [upperBounds_smul_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/upperbounds-smul-of-neg--f4e88247ac3ca3ab9945491e.md) | 239 | `result-track:f4e88247ac3ca3ab9945491e0bd7d09e8fb94a02ea26ea9461840f16d8273160` |
| 30 | `theorem` | [bddBelow_smul_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/bddbelow-smul-iff-of-neg--0c1e1abc4970b689302d3447.md) | 244 | `result-track:0c1e1abc4970b689302d34471fdd5dfaa332b31b911d84e4033696eaab06ae31` |
| 31 | `theorem` | [bddAbove_smul_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Module/Variant431f9c0dcc8358f827fe70b2e7069e73a7eb834548d6c63595d9cf0c15331b6d.lean/declarations/bddabove-smul-iff-of-neg--8dcea91ba4b14330a6bf8a37.md) | 249 | `result-track:8dcea91ba4b14330a6bf8a373ab56f216d71e8726fef536a1ec8ab07f9b1124b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
