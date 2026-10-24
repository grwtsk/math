# Verification target: GRWTSK.Algebra.LinearAlgebra.BalancedCoreHull.Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5118af1439853e7c81bf7e74ae51b1ffbe27e026",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5118af1439853e7c81bf7e74ae51b1ffbe27e026`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Bound` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcore--4ac8afa0c5fb9504fc6aee12.md) | 63 | `declaration-track:4ac8afa0c5fb9504fc6aee12729f03dc028379f92b0523c9ae9dca72cd30b8d5` |
| 2 | `def` | [balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcoreaux--e8e3b955d5088ea58ff0eeb1.md) | 67 | `declaration-track:e8e3b955d5088ea58ff0eeb1769e30eb0dd805f8918c8c2820c7bd22a2c4767d` |
| 3 | `def` | [balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedhull--9f1ccd434b58dd026c9937ac.md) | 71 | `declaration-track:9f1ccd434b58dd026c9937aceb76e65fffce2437c6e88f8d85762fcc7767c018` |
| 4 | `theorem` | [balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcore-subset--db3269ae9ec9172eeb432268.md) | 76 | `result-track:db3269ae9ec9172eeb43226887457040b196a50eb1b05acea53a38b4b8a64aff` |
| 5 | `theorem` | [balancedCore_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcore-empty--ee204400a1736ea319605aac.md) | 79 | `result-track:ee204400a1736ea319605aacc58119fabc21e96e796df89736473d361f2606e3` |
| 6 | `theorem` | [mem_balancedCore_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/mem-balancedcore-iff--16c5bf5293e6e752945f2c00.md) | 82 | `result-track:16c5bf5293e6e752945f2c00b5c31664561ed28756faae7161ba62a3cdb44b26` |
| 7 | `theorem` | [smul_balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/smul-balancedcore-subset--ede0678b51665fadf1dbd370.md) | 85 | `result-track:ede0678b51665fadf1dbd3708c3e02ed48f0464d10043bf7887b2cb1a1b3d68b` |
| 8 | `theorem` | [balancedCore_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcore-balanced--d9789ad4748a23dbba61fd6d.md) | 92 | `result-track:d9789ad4748a23dbba61fd6d4370fc559e48ffaf11bc35402c72dbf259739923` |
| 9 | `theorem` | [Balanced.subset_balancedCore_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balanced-subset-balancedcore-of-subset--235180bdcc1aa9085e84d82a.md) | 97 | `result-track:235180bdcc1aa9085e84d82ad38a2b61521a26a012e76c66c1435e44d2e47d4e` |
| 10 | `lemma` | [Balanced.balancedCore_eq](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balanced-balancedcore-eq--81809dccb2dc164f9df0ba6d.md) | 101 | `result-track:81809dccb2dc164f9df0ba6d87203a0c85cd1deae4ecc5defc3d4c530bd330d3` |
| 11 | `theorem` | [mem_balancedCoreAux_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/mem-balancedcoreaux-iff--550ce12f22c754d47cb6da45.md) | 104 | `result-track:550ce12f22c754d47cb6da453ac49cecab24dcbb8d27a46cd7649a6029561295` |
| 12 | `theorem` | [mem_balancedHull_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/mem-balancedhull-iff--370c8d3d77ece400c7db631a.md) | 107 | `result-track:370c8d3d77ece400c7db631acc65f12e42cfe5cbef26d33c9a948afa57f26fb6` |
| 13 | `theorem` | [Balanced.balancedHull_subset_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balanced-balancedhull-subset-of-subset--4d6ac36ab99a8471c21f0b4c.md) | 112 | `result-track:4d6ac36ab99a8471c21f0b4c18d21e8621cc8829438aa3979129cf4feaa36cb9` |
| 14 | `theorem` | [balancedHull_mono](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedhull-mono--d6d8e6720daaedde841e64c3.md) | 119 | `result-track:d6d8e6720daaedde841e64c319b69c33fac3cf6b6031b45d250a9e4ad5993e13` |
| 15 | `theorem` | [balancedCore_zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcore-zero-mem--a546b94acf2c77b1ff6ddd89.md) | 132 | `result-track:a546b94acf2c77b1ff6ddd89d5fed818f3811e3dd88dbc163f9ae137c13ad1da` |
| 16 | `theorem` | [balancedCore_nonempty_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcore-nonempty-iff--ba2694889ef4afdaa42c9884.md) | 135 | `result-track:ba2694889ef4afdaa42c9884c8f4da16ae8b6ef3401614c9c493457a4e3b0697` |
| 17 | `lemma` | [Balanced.zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balanced-zero-mem--42e3a787da13ba102572e2cc.md) | 141 | `result-track:42e3a787da13ba102572e2cc589707936fa511c8c037ad4d4053f9c8bdfe6a0e` |
| 18 | `theorem` | [subset_balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/subset-balancedhull--173bc166b6632044ca5504ed.md) | 146 | `result-track:173bc166b6632044ca5504ed916f053dab9cd5e001806411f6fd80e94810e3e0` |
| 19 | `theorem` | [balancedHull.balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedhull-balanced--6a87e92e2ea611d0db15fcd4.md) | 149 | `result-track:6a87e92e2ea611d0db15fcd4d61eab10a4a492f0fd3516fc43f29e0ada499dbb` |
| 20 | `theorem` | [balancedHull_add_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedhull-add-subset--6f4bc9def633bd5c438a8c04.md) | 157 | `result-track:6f4bc9def633bd5c438a8c0464c504b5a7fd6fa7ef19c728e1455f3a7cc13ecc` |
| 21 | `theorem` | [balancedCoreAux_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcoreaux-empty--c8cc435b7388fbae7961e931.md) | 171 | `result-track:c8cc435b7388fbae7961e931f7cd6bbe7d386616f3f44c913e8dd6be44532c39` |
| 22 | `theorem` | [balancedCoreAux_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcoreaux-subset--304d33e84eebe64c0be4d0c1.md) | 175 | `result-track:304d33e84eebe64c0be4d0c188634bc1e7c0d14988a073cc715f519cfcb12043` |
| 23 | `theorem` | [balancedCoreAux_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcoreaux-balanced--8896baf16b0ee42a45778e3c.md) | 178 | `result-track:8896baf16b0ee42a45778e3c447c7cc57f5e1a183164ad3e7f231d37418f9f4e` |
| 24 | `theorem` | [balancedCoreAux_maximal](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcoreaux-maximal--26bcc9081e7878af1d0903fd.md) | 191 | `result-track:26bcc9081e7878af1d0903fd4241535fd8b02437ee311b3d542418ff3ce88ad5` |
| 25 | `theorem` | [balancedCore_subset_balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcore-subset-balancedcoreaux--a91355205860cbe847e930ac.md) | 198 | `result-track:a91355205860cbe847e930acc771ca08f0724345e269e0feb1451477830411ef` |
| 26 | `theorem` | [balancedCore_eq_iInter](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcore-eq-iinter--b422e21e6ac61e44d93188a9.md) | 201 | `result-track:b422e21e6ac61e44d93188a90d42213c964dddf33206a76f3e05c9df984e4a63` |
| 27 | `theorem` | [subset_balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/subset-balancedcore--820a0c0f404e74d3b020c762.md) | 207 | `result-track:820a0c0f404e74d3b020c7627ef5f202270d02032c6faf1d3a9f3b172924a4c0` |
| 28 | `theorem` | [IsClosed.balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/isclosed-balancedcore--835e0234f5357903e6e74121.md) | 228 | `result-track:835e0234f5357903e6e74121c47fef3b0ee472438ddda682eae0968ce00cc259` |
| 29 | `theorem` | [IsOpen.balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/isopen-balancedhull--2798a6997fa449a6a0bc1812.md) | 243 | `result-track:2798a6997fa449a6a0bc18120bea5594f3a44224f7640360f3262c5e72fc176f` |
| 30 | `theorem` | [balancedCore_mem_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/balancedcore-mem-nhds-zero--56e300ec49d679f7662b6a67.md) | 256 | `result-track:56e300ec49d679f7662b6a67352fb375420bf344a006d6b74a730adb17c36278` |
| 31 | `theorem` | [nhds_basis_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/nhds-basis-balanced--68a9421098f7f0c8232cec68.md) | 278 | `result-track:68a9421098f7f0c8232cec68e5411fb55f50a81a6219a20f0303990ba3dde5ee` |
| 32 | `theorem` | [nhds_basis_closed_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean/declarations/nhds-basis-closed-balanced--41c4ca63cd3184bd70416b15.md) | 284 | `result-track:41c4ca63cd3184bd70416b15afba895cdf7d134b6531597df615a57c53ba8138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
