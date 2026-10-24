# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Ring.Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e4522deae7aa431473a77b1414e1cea2f787300",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e4522deae7aa431473a77b1414e1cea2f787300`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasSum.mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/hassum-mul-left--44a375534a120c8a8c3178f9.md) | 34 | `result-track:44a375534a120c8a8c3178f9ce7c391797d060e81934a0b47c8d89d8f02f5765` |
| 2 | `theorem` | [HasSum.mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/hassum-mul-right--7282a445b118805055e105ba.md) | 38 | `result-track:7282a445b118805055e105ba2f98baecaabc3240d905eba851e81ad3e597a418` |
| 3 | `theorem` | [Summable.mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-mul-left--bde45488b764b7fc5923a1dd.md) | 42 | `result-track:bde45488b764b7fc5923a1dd29507c1547a303461159e5dbc8117dfb814e4eb4` |
| 4 | `theorem` | [Summable.mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-mul-right--30ae4a6648509cd96a47254d.md) | 46 | `result-track:30ae4a6648509cd96a47254d92051b8a0b3541aaa585028bce8f532e729dd2a7` |
| 5 | `theorem` | [Summable.tsum_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-tsum-mul-left--593a6356f9fa1462ce4df316.md) | 54 | `result-track:593a6356f9fa1462ce4df316f952a1deb51f90fff7ec84da295bd45b1e0e701b` |
| 6 | `theorem` | [Summable.tsum_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-tsum-mul-right--9629e580ad6b2fa3e207b0c8.md) | 58 | `result-track:9629e580ad6b2fa3e207b0c88a05adb52f64851f8465f179c78af113a787e6d2` |
| 7 | `theorem` | [Commute.tsum_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/commute-tsum-right--9f280c1da13188d741c9cb33.md) | 62 | `result-track:9f280c1da13188d741c9cb334a2b55f7c5ee124b75674460c96636e6391eba77` |
| 8 | `theorem` | [Commute.tsum_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/commute-tsum-left--19e0e8da8c916087750f93b1.md) | 68 | `result-track:19e0e8da8c916087750f93b1ebe536cf4afe4940fe4e3b056ea12be4ca9bd4e9` |
| 9 | `theorem` | [HasSum.div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/hassum-div-const--d4a1b3f44ca2f2394366d9ff.md) | 81 | `result-track:d4a1b3f44ca2f2394366d9ff8ac27988d39a82321aaf7c91a1cacc7b75eae44b` |
| 10 | `theorem` | [Summable.div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-div-const--522599f3468391cbd3e04960.md) | 85 | `result-track:522599f3468391cbd3e049606d5ae1a40207a6a345bd98e1d639e76d929aacaa` |
| 11 | `theorem` | [hasSum_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/hassum-mul-left-iff--8fca171f79c1d89ae8bd13f3.md) | 89 | `result-track:8fca171f79c1d89ae8bd13f30278427d4beed0dcb6b8e1dbf2d617e9d9cb6784` |
| 12 | `theorem` | [hasSum_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/hassum-mul-right-iff--660e218df34fb259b10eb32c.md) | 93 | `result-track:660e218df34fb259b10eb32c7d96fccf1b77ac8f0f61dc30dfde9ebc80c84868` |
| 13 | `theorem` | [hasSum_div_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/hassum-div-const-iff--97c632be2a2b932720c78546.md) | 97 | `result-track:97c632be2a2b932720c78546231a5d3aac92abadb5ca85457db93f77c89ed09b` |
| 14 | `theorem` | [summable_mul_left_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-mul-left-iff--d4dd083bf96d20c6b6e407c1.md) | 101 | `result-track:d4dd083bf96d20c6b6e407c18f690867de7f1cee482fa41efe6e7ae8d585a5e3` |
| 15 | `theorem` | [summable_mul_right_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-mul-right-iff--c1ffd2990cd6224fab71a681.md) | 105 | `result-track:c1ffd2990cd6224fab71a681f4b3f514f93eb78a6690a55c952fa9d18af41f7b` |
| 16 | `theorem` | [summable_div_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-div-const-iff--fa76e3366da311e73858a606.md) | 109 | `result-track:fa76e3366da311e73858a606b1acbd09c697204f06983c51cefe55b90ff762ff` |
| 17 | `theorem` | [tsum_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/tsum-mul-left--8add38bf797718cc19388fe6.md) | 113 | `result-track:8add38bf797718cc19388fe65c94d9d134dd123f2c0c102ea9dbf4d72043f88f` |
| 18 | `theorem` | [tsum_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/tsum-mul-right--e5c358230fd13e56d1f05755.md) | 120 | `result-track:e5c358230fd13e56d1f0575533db64911aa9e493cd7a7a02d1e57a64c9da55f8` |
| 19 | `theorem` | [tsum_div_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/tsum-div-const--147d175603133de95751b647.md) | 127 | `result-track:147d175603133de95751b647dd8f6975a96783de86db376ffbc63fc43c7b826a` |
| 20 | `theorem` | [HasSum.mul_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/hassum-mul-eq--8b0a5331782f893827c2bc76.md) | 154 | `result-track:8b0a5331782f893827c2bc76883f2c23c6b5c1b19efe897b47221bcc8ace08d4` |
| 21 | `theorem` | [HasSum.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/hassum-mul--8fdf06e9ef40650f9740650c.md) | 162 | `result-track:8fdf06e9ef40650f9740650cf9a0e0f4e28ac3b0a33e035e321d9551fdf006e8` |
| 22 | `theorem` | [tsum_mul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/tsum-mul-tsum--5a41916b7c8f9d69f5ff7d4b.md) | 171 | `result-track:5a41916b7c8f9d69f5ff7d4b8310c70ad4025eefd0e113acf3f1d1d6f5036da3` |
| 23 | `theorem` | [summable_mul_prod_iff_summable_mul_sigma_antidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-mul-prod-iff-summable-mul-sigma-antidiagonal--87eac9ff7247e5aea0f66c94.md) | 197 | `result-track:87eac9ff7247e5aea0f66c943ed56a0c1d3c50ccc26e10cf1f492eb49b63ca40` |
| 24 | `theorem` | [summable_sum_mul_antidiagonal_of_summable_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-sum-mul-antidiagonal-of-summable-mul--f19a37d6b8ff5f6ad67713a3.md) | 205 | `result-track:f19a37d6b8ff5f6ad67713a36d8d1b1f9e75c4ba680482257bc9faa5f54a8e3a` |
| 25 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_antidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/tsum-mul-tsum-eq-tsum-sum-antidiagonal--c8e753c01d23fbc3d54931ab.md) | 218 | `result-track:c8e753c01d23fbc3d54931ab1757598b35132e3a557a9247eff210e191fb9aff` |
| 26 | `theorem` | [summable_sum_mul_range_of_summable_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/summable-sum-mul-range-of-summable-mul--dd76531f1c8b0688c393659a.md) | 228 | `result-track:dd76531f1c8b0688c393659a9df32975c0553fd00f1338d2e9147dc847ac895e` |
| 27 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_range](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variant8bf1f2a5aecaf8f7fdbb7dfd0c60bb605120d4d408b52981d93e1dc6a6aab5be.lean/declarations/tsum-mul-tsum-eq-tsum-sum-range--ded7a985b0e8054e129002cd.md) | 239 | `result-track:ded7a985b0e8054e129002cdc50ef0e25ada63986ced97d6d87ad5d881fbca81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
