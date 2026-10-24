# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.FunctionSeries.Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bb7ab00839986ebf656ab7ed7e10958dfbd51e0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bb7ab00839986ebf656ab7ed7e10958dfbd51e0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendstoUniformlyOn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/declarations/tendstouniformlyon-tsum--c9638cdff830216c16eff400.md) | 26 | `result-track:c9638cdff830216c16eff400b2fc15b45523e3c282321e38cf74538542c3da7f` |
| 2 | `theorem` | [tendstoUniformlyOn_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/declarations/tendstouniformlyon-tsum-nat--dd67d5d7c9d51ecfa1cbed9d.md) | 41 | `result-track:dd67d5d7c9d51ecfa1cbed9d15053d1930310d1e590ce9613773a9f791ea5d8f` |
| 3 | `theorem` | [tendstoUniformlyOn_tsum_of_cofinite_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/declarations/tendstouniformlyon-tsum-of-cofinite-eventually--8b588065b42a2e6a8995e979.md) | 49 | `result-track:8b588065b42a2e6a8995e97993e61351bb96bf6154bf914297a16532117c9889` |
| 4 | `theorem` | [tendstoUniformlyOn_tsum_nat_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/declarations/tendstouniformlyon-tsum-nat-eventually--2707d5c233673c7bbba27395.md) | 75 | `result-track:2707d5c233673c7bbba27395674522170a13131d7bf16d2f63685279ebe83d43` |
| 5 | `theorem` | [tendstoUniformly_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/declarations/tendstouniformly-tsum--2769084ecd85db7cd3ee82da.md) | 85 | `result-track:2769084ecd85db7cd3ee82dab56b8407c0e92bc03b0c855be36d6ded652847be` |
| 6 | `theorem` | [tendstoUniformly_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/declarations/tendstouniformly-tsum-nat--0c92c5b5fab793722b574f17.md) | 92 | `result-track:0c92c5b5fab793722b574f17cd96a3e89ed73a5238e58aff3bddf8cc9052db30` |
| 7 | `theorem` | [tendstoUniformly_tsum_of_cofinite_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/declarations/tendstouniformly-tsum-of-cofinite-eventually--240c5c5d88e98469716e3ebd.md) | 100 | `result-track:240c5c5d88e98469716e3ebd504fc5bede757671f3633eb9b8960abc9d0ca4d0` |
| 8 | `theorem` | [continuousOn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/declarations/continuouson-tsum--1afc551c2fe93631291369cd.md) | 109 | `result-track:1afc551c2fe93631291369cd068508a47663249784af81a0ecdf0bfd66df9a67` |
| 9 | `theorem` | [continuous_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/declarations/continuous-tsum--9d50c12761ff40f179f400bb.md) | 119 | `result-track:9d50c12761ff40f179f400bb6fddb1060a7424c104bb64eada3e9dad48490d73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
