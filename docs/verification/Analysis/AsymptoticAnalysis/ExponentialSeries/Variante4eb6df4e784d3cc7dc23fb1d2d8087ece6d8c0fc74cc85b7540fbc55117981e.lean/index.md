# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ExponentialSeries.Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ebc70a6d29de26f4c24faa5e88f72668f100156",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ebc70a6d29de26f4c24faa5e88f72668f100156`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mathlib.Certificate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complex_exp_series_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/declarations/complex-exp-series-hassum--ba3077c8a8a8a3818bca0326.md) | 25 | `result-track:ba3077c8a8a8a3818bca032620a4ee5ed2ddde7e4d5e4d61a710665d6d23af84` |
| 2 | `theorem` | [complex_exp_series_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/declarations/complex-exp-series-summable--f6d8f30d44c75def3bc49916.md) | 33 | `result-track:f6d8f30d44c75def3bc4991671677b98b09760209866255e4e874b5b3858cc17` |
| 3 | `theorem` | [complex_exp_analyticAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/declarations/complex-exp-analyticat--8920977dee69bdad5ff1903f.md) | 41 | `result-track:8920977dee69bdad5ff1903fcfc27e37eb940897328559a5561b026a7d6a939f` |
| 4 | `theorem` | [complex_exp_differentiableAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/declarations/complex-exp-differentiableat--c7fa67ccd710f35d84c16bfe.md) | 47 | `result-track:c7fa67ccd710f35d84c16bfe524ffd29556e8befcfadc666b547b82ccfcf5517` |
| 5 | `def` | [exponentialSeriesContext](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/declarations/exponentialseriescontext--76fe33d245135fe09b1c80c4.md) | 53 | `declaration-track:76fe33d245135fe09b1c80c4d2b9ee43386625bd778e3bef299164eb17c088ef` |
| 6 | `def` | [exponentialSeriesClaim](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/declarations/exponentialseriesclaim--bb9959a4c73ffdea68d27643.md) | 60 | `declaration-track:bb9959a4c73ffdea68d276439fb1bcbbcafcf4845af4e5138a36a66095d0befa` |
| 7 | `def` | [exponentialSeriesMathlibProofCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/declarations/exponentialseriesmathlibproofcertificate--9230dba6de8b764d0b32872b.md) | 76 | `declaration-track:9230dba6de8b764d0b32872b62002026a9c4cd3be07d3a66643f7793b2899ff6` |
| 8 | `theorem` | [exponential_series_through_boundary_calculus](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/declarations/exponential-series-through-boundary-calculus--f907ce9e9159b8c0bfc682a9.md) | 93 | `result-track:f907ce9e9159b8c0bfc682a93d93e5f975bb55550700a06e89c4aaff2adb5a6f` |
| 9 | `theorem` | [exponential_series_no_direct_crossing](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/declarations/exponential-series-no-direct-crossing--dd926392654a1daa6e22248a.md) | 107 | `result-track:dd926392654a1daa6e22248a14456687b6dead0b18b62befa2d7e0d4a7bf84e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
