# Verification target: GRWTSK.Analysis.FunctionalAnalysis.IndexSpectralBridge.Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5a9e0ad69469d19d9e741147237f5226e9eb848",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5a9e0ad69469d19d9e741147237f5226e9eb848`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.TraceFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.RH.SpectralRealization` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IndexSpectralComparisonData](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean/declarations/indexspectralcomparisondata--2e8db554047993d14913be61.md) | 27 | `declaration-track:2e8db554047993d14913be61a00b39b26cca2e40efb8344c4205fc4b2bb1faad` |
| 2 | `def` | [IndexSpectralBridgeCondition](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean/declarations/indexspectralbridgecondition--a67da49055c7ce938d066ab7.md) | 38 | `declaration-track:a67da49055c7ce938d066ab7f1db7a569ada5aad958d689b1a8a1c86491a3e51` |
| 3 | `theorem` | [index_spectral_bridge_from_trace_formula](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean/declarations/index-spectral-bridge-from-trace-formula--19cacba620c1a6b74a5c8eb2.md) | 42 | `result-track:19cacba620c1a6b74a5c8eb2001a4e7c048d203509441f6865115ac6bd4f3c5d` |
| 4 | `theorem` | [index_spectral_bridge_has_operator](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean/declarations/index-spectral-bridge-has-operator--8fcd53747147d2f12a276363.md) | 48 | `result-track:8fcd53747147d2f12a2763636ca6d3ea43d2270f88e6000bdddaf96a277837f7` |
| 5 | `theorem` | [index_spectral_bridge_has_pairing](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant24216584fe82d17d6da3685200d407092aa951ad26a79ea7a6025e76a274f888.lean/declarations/index-spectral-bridge-has-pairing--241cf24bf462302aa76cd89e.md) | 53 | `result-track:241cf24bf462302aa76cd89ed835748d499d6c2e2fb39c3ff4be49b462928422` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
