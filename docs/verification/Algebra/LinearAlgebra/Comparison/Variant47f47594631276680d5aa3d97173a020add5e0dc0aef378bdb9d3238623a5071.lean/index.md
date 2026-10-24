# Verification target: GRWTSK.Algebra.LinearAlgebra.Comparison.Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4b547b550b7d6f8f31bd0c139a43efb71bc903c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4b547b550b7d6f8f31bd0c139a43efb71bc903c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Padding` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixComparison](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/matrixcomparison--b8e934258091af5a04d1db73.md) | 7 | `declaration-track:b8e934258091af5a04d1db73aa182531a26794076262e5b57d59f973a67f8559` |
| 2 | `theorem` | [MatrixComparison.ext](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/matrixcomparison-ext--344aaa22f66cee157d0c0cca.md) | 13 | `result-track:344aaa22f66cee157d0c0cca0bf754227f8d8d06cca1262cad139813181236c3` |
| 3 | `def` | [zeroComparison](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/zerocomparison--3f72bebe34bfbf2e57f5fdf2.md) | 22 | `declaration-track:3f72bebe34bfbf2e57f5fdf2f0579f1ff51095f373bbc4b1cb05ebfb9c3c06f3` |
| 4 | `def` | [compare](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/compare--3b914ae7e7da3cb060a55f69.md) | 27 | `declaration-track:3b914ae7e7da3cb060a55f69322491a4f3f310ac09936e3be7e6a4fa1d706663` |
| 5 | `theorem` | [comparison_self_zero](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/comparison-self-zero--812221761c1573a57b8367c6.md) | 43 | `result-track:812221761c1573a57b8367c681015b7917f7dbdadc137e98cdee9a8e343c580f` |
| 6 | `theorem` | [comparison_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/comparison-symmetric--956c75b4baa098e64165873f.md) | 56 | `result-track:956c75b4baa098e64165873f02b3c01081d11d2064b272ebf04f66709cb6ba59` |
| 7 | `theorem` | [totalDiff_decomposes](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/totaldiff-decomposes--97343d94fca9d64668485234.md) | 74 | `result-track:97343d94fca9d64668485234a17ebe429ac1e316f9cdb08cf04ce15771e2863f` |
| 8 | `theorem` | [valueDiff_requires_both_active](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/valuediff-requires-both-active--685dddd6c50667bd7251c832.md) | 80 | `result-track:685dddd6c50667bd7251c8329ac9cdee865ff51a39136b7d7516cde09efa7aae` |
| 9 | `theorem` | [paddingDiff_detects_active_disagreement](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/paddingdiff-detects-active-disagreement--8bc32da57bd763595820df71.md) | 88 | `result-track:8bc32da57bd763595820df71171ce9fc0b1350c84b08219343253614c27e6782` |
| 10 | `structure` | [ComparisonWeights](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/comparisonweights--1d24a2545e21451ef21e58b9.md) | 96 | `declaration-track:1d24a2545e21451ef21e58b9067af4c5c715daa7698da726f4072f69c2cfa343` |
| 11 | `structure` | [ComparisonDistance](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/comparisondistance--ea363ee37cb37a564e11679d.md) | 101 | `declaration-track:ea363ee37cb37a564e11679df4490d8c7d1471ae4efc2075d608e1e117b54787` |
| 12 | `def` | [comparisonDistance](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/comparisondistance--6c21b67e63f3de4729a0583a.md) | 107 | `declaration-track:6c21b67e63f3de4729a0583ab3ce50dcb1ef1a619ff034d487a10f81e3978126` |
| 13 | `theorem` | [comparisonDistance_total_eq](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/comparisondistance-total-eq--1699403147e63171f867e31f.md) | 115 | `result-track:1699403147e63171f867e31fb707c686ab9765073e051bbcbcfb8ee6728150c2` |
| 14 | `theorem` | [comparisonDistance_self_zero](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/comparisondistance-self-zero--99bf4e2b6bf59b7ef500eb60.md) | 122 | `result-track:99bf4e2b6bf59b7ef500eb601561caaa16c5efad424e646b024fb614470e8a91` |
| 15 | `theorem` | [comparisonDistance_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/comparisondistance-symmetric--b869e7110a4fe84a914d833d.md) | 127 | `result-track:b869e7110a4fe84a914d833d64d7dfa9e6e135c90d5ac15456389fa96aaa31d1` |
| 16 | `theorem` | [totalDistance_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Comparison/Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071.lean/declarations/totaldistance-nonnegative--98f564ad990ec01ee2619456.md) | 132 | `result-track:98f564ad990ec01ee26194563324797aebccd104a00f5112d3875b15f8b435e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
