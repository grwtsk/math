# Verification target: GRWTSK.Algebra.LinearAlgebra.BalancedCoreHull.Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4db886eff2ee725b7de73d623bbec457fd9c3338",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4db886eff2ee725b7de73d623bbec457fd9c3338`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcore--739646389acefa10d8818d65.md) | 65 | `declaration-track:739646389acefa10d8818d65062fae78fd2af3b1b315dff86a22b4c9d8f529d0` |
| 2 | `def` | [balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcoreaux--2f5850f2e1ecac85f7552c62.md) | 70 | `declaration-track:2f5850f2e1ecac85f7552c6212ef8c3e64b67b7b567dbf27fbf8353e9b51a419` |
| 3 | `def` | [balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedhull--b344ff0cd70fc3cda6987cb8.md) | 75 | `declaration-track:b344ff0cd70fc3cda6987cb8fad5deada1e69b7dd0ef0edca7612e840d7a8487` |
| 4 | `theorem` | [balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcore-subset--ab002cb6b9f11f5f5ad9bece.md) | 81 | `result-track:ab002cb6b9f11f5f5ad9bece72c21d43f03aa1d20a6550486221e0082f9ad849` |
| 5 | `theorem` | [balancedCore_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcore-empty--a9042ad72c126d0c948fe84e.md) | 85 | `result-track:a9042ad72c126d0c948fe84e03babb2240a57881f1224dbef81754143f3115b6` |
| 6 | `theorem` | [mem_balancedCore_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/mem-balancedcore-iff--748053ce91f530fb70f15ce7.md) | 89 | `result-track:748053ce91f530fb70f15ce7acf7bbd1f22a5dc2dffe5f350d4c5e65c610e163` |
| 7 | `theorem` | [smul_balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/smul-balancedcore-subset--55e154f564537a94fd9c6577.md) | 93 | `result-track:55e154f564537a94fd9c6577f3e4bb47360088b5febe27db1a09fd5b90be69ef` |
| 8 | `theorem` | [balancedCore_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcore-balanced--e003f0a3fb85b7723563bc64.md) | 101 | `result-track:e003f0a3fb85b7723563bc641c2394f1fb4a24ad4c752d564d6e6e884b7576c8` |
| 9 | `theorem` | [Balanced.subset_balancedCore_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balanced-subset-balancedcore-of-subset--46ca4110ebc93bcf2ae32559.md) | 107 | `result-track:46ca4110ebc93bcf2ae325596d32e24ad4441533010e9dcb98a3a415537fcc70` |
| 10 | `theorem` | [mem_balancedCoreAux_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/mem-balancedcoreaux-iff--507ea086ab862407264a83fc.md) | 112 | `result-track:507ea086ab862407264a83fc05c1ac96e0927e16774f1182cbe18599a6fb90e7` |
| 11 | `theorem` | [mem_balancedHull_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/mem-balancedhull-iff--b88432ae8952c6d6671d3a0d.md) | 116 | `result-track:b88432ae8952c6d6671d3a0d4e67528ea676c80bb8b636d2034d1b117dcbb222` |
| 12 | `theorem` | [Balanced.balancedHull_subset_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balanced-balancedhull-subset-of-subset--77c742316a9bceefee0ff733.md) | 122 | `result-track:77c742316a9bceefee0ff733bfcb4aea6bd4fc6e6f1517fb95800accfad889f5` |
| 13 | `theorem` | [balancedCore_zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcore-zero-mem--a982e3ae5bbc486b99ab20d6.md) | 135 | `result-track:a982e3ae5bbc486b99ab20d6a6bc780052f7c1994d78e9d64aab9b09b3ea56d9` |
| 14 | `theorem` | [balancedCore_nonempty_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcore-nonempty-iff--d89ba501b39744c47c4dd2a6.md) | 139 | `result-track:d89ba501b39744c47c4dd2a67733d1e5253590ff4c45b20bc10ddb18811e408c` |
| 15 | `theorem` | [subset_balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/subset-balancedhull--ef5f36bc0412c1feb7ab0d4c.md) | 148 | `result-track:ef5f36bc0412c1feb7ab0d4ce196338e5b78b614c752e154ce53ccf10f5ceb28` |
| 16 | `theorem` | [balancedHull.balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedhull-balanced--cae3a759f12b7c7292583016.md) | 154 | `result-track:cae3a759f12b7c7292583016c39bc3b7cd070e1f3a9c10c60a12639a29decc6d` |
| 17 | `theorem` | [balancedCoreAux_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcoreaux-empty--8cfd6cb5039b9c6a424bbc57.md) | 171 | `result-track:8cfd6cb5039b9c6a424bbc570b3b08afad36127dbaa3e57c749bb95bc78892fc` |
| 18 | `theorem` | [balancedCoreAux_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcoreaux-subset--660737626385de4410e80f79.md) | 176 | `result-track:660737626385de4410e80f79eac4147f53417e756c836918207c1e4a2ffe0594` |
| 19 | `theorem` | [balancedCoreAux_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcoreaux-balanced--9635c9db87438da0a5244651.md) | 180 | `result-track:9635c9db87438da0a5244651fb588f075ef359f5da2f53f3d4067bc8ebf34986` |
| 20 | `theorem` | [balancedCoreAux_maximal](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcoreaux-maximal--28519b9e28bbf7de2903f9eb.md) | 194 | `result-track:28519b9e28bbf7de2903f9eb6f868ae1d8ba760dee8d00e3c0d5e705e4f5b08c` |
| 21 | `theorem` | [balancedCore_subset_balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcore-subset-balancedcoreaux--5a3f54b690d4ca9e2a6c0e13.md) | 202 | `result-track:5a3f54b690d4ca9e2a6c0e13967bd550a9201d7a1b71abefa8c9763c6988597d` |
| 22 | `theorem` | [balancedCore_eq_iInter](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcore-eq-iinter--8c2034e3e24a2250cbb86088.md) | 206 | `result-track:8c2034e3e24a2250cbb8608836fd0836cc4dd417006e47e0e31a05872c34ae0d` |
| 23 | `theorem` | [subset_balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/subset-balancedcore--aa816f25ece9d9bb495f0996.md) | 213 | `result-track:aa816f25ece9d9bb495f0996b82482b0b88e45767648f71c7269e18823844374` |
| 24 | `theorem` | [IsClosed.balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/isclosed-balancedcore--ae08ab1769decb2461733def.md) | 235 | `result-track:ae08ab1769decb2461733deff4ddc51c549a586036f70806f637b852bb98c047` |
| 25 | `theorem` | [balancedCore_mem_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/balancedcore-mem-nhds-zero--0d3d8800f02851c08f0dadf6.md) | 250 | `result-track:0d3d8800f02851c08f0dadf6bd491a32b5865838879e156564981114734c1a6e` |
| 26 | `theorem` | [nhds_basis_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/nhds-basis-balanced--9a85511a9d3bb60c7495df09.md) | 272 | `result-track:9a85511a9d3bb60c7495df09ce8fa4fc72e07ea65fb798b57fa7e47f9b8fa3ef` |
| 27 | `theorem` | [nhds_basis_closed_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/declarations/nhds-basis-closed-balanced--ad612b95fc5abddaefeaf34f.md) | 279 | `result-track:ad612b95fc5abddaefeaf34fef78364cecef38175812443bdfddd73f07e1199f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
