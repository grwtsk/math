# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Traces.Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2013a6ca1e3b7da5aa0b8bc8c7e03cd5593171e4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2013a6ca1e3b7da5aa0b8bc8c7e03cd5593171e4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.Traces` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.TracesChi` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.ThmDE.TracesHyp` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DataDChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/datadchi--f71c2acf0a296fbbc75b11b0.md) | 37 | `declaration-track:f71c2acf0a296fbbc75b11b027db79b95a53a3f2bfe2b7a7d7f9482e62641e77` |
| 2 | `structure` | [FactsDChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/factsdchi--3d3fa70c2da83b070a93e394.md) | 45 | `declaration-track:3d3fa70c2da83b070a93e39487c10037c2dacfd0f923640036015ce7cf3e2657` |
| 3 | `lemma` | [NcntD_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/ncntd-lower--9711f1e57a08e5e86e72ac3f.md) | 73 | `result-track:9711f1e57a08e5e86e72ac3fa07ed461aed1d51f69405a3dfaf66a37fd858816` |
| 4 | `lemma` | [T_le_NcntD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/t-le-ncntd--b959725a7d938365216ef36e.md) | 89 | `result-track:b959725a7d938365216ef36e50d1db3fa7e749e1c2a3ee6235fdac3e08da6f7c` |
| 5 | `lemma` | [NcntD_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/ncntd-pos--ef93858dd5523e40081736d9.md) | 98 | `result-track:ef93858dd5523e40081736d98fed66a8f250b19f2f38ae8ad58bd10b7e32e170` |
| 6 | `lemma` | [regimeD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/regimed--17252dba8d68398699e38b19.md) | 105 | `result-track:17252dba8d68398699e38b1957347aa7b1c283aabacd5f0c9587af11754fe2e0` |
| 7 | `lemma` | [tr1'D](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/tr1-d--44bfcf4a7dca0e38c953a1d9.md) | 115 | `result-track:44bfcf4a7dca0e38c953a1d92503bb794428c3674473aecb7267ce2f478fb321` |
| 8 | `def` | [mainTr2D](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/maintr2d--d3d059085d38bf2dce6a19f0.md) | 153 | `declaration-track:d3d059085d38bf2dce6a19f0ccceb253de9648689a38c8122c741ebb0a89d01e` |
| 9 | `lemma` | [tr2_firstD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/tr2-firstd--feb15eda15e066124e4d780a.md) | 157 | `result-track:feb15eda15e066124e4d780ab730582c7f63c28358b5a4c17b4f8dabbc967eb1` |
| 10 | `lemma` | [tr2D](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/tr2d--72ea4e2132725cad6fdf55f5.md) | 195 | `result-track:72ea4e2132725cad6fdf55f585ca780380c9138b00e84e9cbdad72797cfeeafc` |
| 11 | `lemma` | [ratioD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/ratiod--3429245cb5d7d389bd3843f5.md) | 219 | `result-track:3429245cb5d7d389bd3843f5416a56d5ee14006bde711c248c4ee5d2bd919717` |
| 12 | `lemma` | [frhatD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/frhatd--574977a6fc781a9bee265e91.md) | 250 | `result-track:574977a6fc781a9bee265e91c9a90470c23c25cab12cf129b02b859f8e5f74c9` |
| 13 | `theorem` | [tracesBoundsDChi_of_factsDChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/declarations/tracesboundsdchi-of-factsdchi--29f97310938c4b06a60a91d6.md) | 275 | `result-track:29f97310938c4b06a60a91d690aced014809dbc1dfc7c2af985d2e3a06fa0e06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
