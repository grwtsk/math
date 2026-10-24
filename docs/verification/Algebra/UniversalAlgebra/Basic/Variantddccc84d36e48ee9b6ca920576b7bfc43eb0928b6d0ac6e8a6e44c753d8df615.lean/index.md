# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfe73d57984911ce794760aecb2e622f76ece785",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfe73d57984911ce794760aecb2e622f76ece785`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zpow_right_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-right-strictmono--e10954cc96c07f738684c89e.md) | 33 | `result-track:e10954cc96c07f738684c89e920cb4c00985b5dc8eb549fbf7ca968910ba976f` |
| 2 | `lemma` | [one_lt_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/one-lt-zpow--c8b649f8e13a9975bcb7415b.md) | 38 | `result-track:c8b649f8e13a9975bcb7415b404dcaee7e6150869336c3e39186a7420bbe6824` |
| 3 | `lemma` | [zpow_right_strictAnti](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-right-strictanti--2c604d5918356b5422d0f8a3.md) | 44 | `result-track:2c604d5918356b5422d0f8a3c3709ad8042c171c8672b1234b49b5799325390d` |
| 4 | `lemma` | [zpow_right_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-right-inj--64937fd5fad9e0afb3b13d92.md) | 50 | `result-track:64937fd5fad9e0afb3b13d92ba3f614d90efce2ba401ddc9e94b66994fc5273a` |
| 5 | `lemma` | [zpow_right_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-right-mono--f0ce2415596655d717f7d9f0.md) | 54 | `result-track:f0ce2415596655d717f7d9f068ff7609ead36dd18bf646743478a44fb0b8412f` |
| 6 | `lemma` | [zpow_le_zpow_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-le-zpow-right--8852d6392cf88ee14cd8b9db.md) | 62 | `result-track:8852d6392cf88ee14cd8b9db72c3d3c36e62798aaa2679757b6d7893addcc7a0` |
| 7 | `lemma` | [zpow_lt_zpow_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-lt-zpow-right--c02d48ce56053b94dfd4deef.md) | 67 | `result-track:c02d48ce56053b94dfd4deef9cd8d046d405a7c9eef0844cbe8a3e04c943bb36` |
| 8 | `lemma` | [zpow_le_zpow_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-le-zpow-iff-right--e2fe9a873ddb768fa68e8dfb.md) | 72 | `result-track:e2fe9a873ddb768fa68e8dfb199c0b5b99c84ed9e4c9bf5c0a8a8d02e665d370` |
| 9 | `lemma` | [zpow_lt_zpow_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-lt-zpow-iff-right--1cbbea3ed4017e1c2518a7c8.md) | 78 | `result-track:1cbbea3ed4017e1c2518a7c8ee15f5dc16ae906f534e173c79806d1ebd8d207b` |
| 10 | `lemma` | [zpow_left_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-left-strictmono--241301e4e1115d3c5a87d20f.md) | 86 | `result-track:241301e4e1115d3c5a87d20f3dddb9d1b3080e2f7710f5f9b5487235aedc5b07` |
| 11 | `lemma` | [zpow_left_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-left-mono--1f461588c1fbfbaa148081f7.md) | 92 | `result-track:1f461588c1fbfbaa148081f77589482f7e912838be0b4195e88b8b75d4f60811` |
| 12 | `lemma` | [zpow_le_zpow_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-le-zpow-left--fe378857975ff71ea89a5e4e.md) | 100 | `result-track:fe378857975ff71ea89a5e4e49510cfa0cf3280be11da68b5aa8a8fea0a333bd` |
| 13 | `lemma` | [zpow_lt_zpow_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-lt-zpow-left--07a17ed4d19ec77fd452dd71.md) | 105 | `result-track:07a17ed4d19ec77fd452dd71e1f6b39d2e1c36f53e2a6290e6561b10fe23eec0` |
| 14 | `lemma` | [zpow_le_zpow_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-le-zpow-iff-left--05a276d53af5a8d40653d3e7.md) | 116 | `result-track:05a276d53af5a8d40653d3e75c45ed50e26e3de81b1ebd9b9a2546a8aa2b3685` |
| 15 | `lemma` | [zpow_lt_zpow_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/zpow-lt-zpow-iff-left--383fe721f7c80984a71e5526.md) | 122 | `result-track:383fe721f7c80984a71e5526d85e4d24ae2c33fc5158161451f0a77fbf7f877e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/instance--4eba5791ce7207ae1cf8ebaa.md) | 128 | `declaration-track:4eba5791ce7207ae1cf8ebaac2fe35d73e328834e08b401313651018e479d87f` |
| 17 | `theorem` | [not_isCyclic_of_denselyOrdered](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/declarations/not-iscyclic-of-denselyordered--b90cc1fcf5939d1f27c6c5fd.md) | 134 | `result-track:b90cc1fcf5939d1f27c6c5fd502c32545247c552a1b81980020e4dd3a29aad8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
