# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousEval.Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dddc99f031d71534dfa00048db6a61ca6172dbc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dddc99f031d71534dfa00048db6a61ca6172dbc`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Hom.ContinuousEvalConst` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousEval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/declarations/continuouseval--cf1cc37d634e145113798ed4.md) | 30 | `declaration-track:cf1cc37d634e145113798ed467fc127c717e151e25d5ddb652c987598fae2f59` |
| 2 | `theorem` | [Continuous.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/declarations/continuous-eval--b0655de6120cd230f271f1e6.md) | 42 | `result-track:b0655de6120cd230f271f1e6df9bec3cef01fa0de290c696424b0f414baa0a7a` |
| 3 | `theorem` | [ContinuousEval.of_continuous_forget](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/declarations/continuouseval-of-continuous-forget--d4a04607fcd62382a4012d5d.md) | 51 | `result-track:d4a04607fcd62382a4012d5d36e22bdd12777445aaed86763c7e51f843ac71e4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/declarations/instance--a1c7405e4cda1eff33ab3832.md) | 56 | `declaration-track:a1c7405e4cda1eff33ab3832e72f17709e6794b57c090d5c66cb3a1a7027799c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/declarations/instance--8377a054adc0d2f7bdaa74bd.md) | 59 | `declaration-track:8377a054adc0d2f7bdaa74bd29154b8d9eb9901904c18ae19ed134b18b512dd3` |
| 6 | `theorem` | [Filter.Tendsto.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/declarations/filter-tendsto-eval--02592095f481257ae837ce5e.md) | 62 | `result-track:02592095f481257ae837ce5eb18f8d0592a4b5503cb274bea3181532305d8f12` |
| 7 | `theorem` | [ContinuousAt.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/declarations/continuousat-eval--070588bcfa981e5ac2e6cc45.md) | 67 | `result-track:070588bcfa981e5ac2e6cc457138b4c26c50972eaa3f0944dd9cad7e2226b517` |
| 8 | `theorem` | [ContinuousWithinAt.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/declarations/continuouswithinat-eval--5c1efdc27c2a0658a16975a0.md) | 71 | `result-track:5c1efdc27c2a0658a16975a08563dd2b15245f21bbee2f0f9d1e55a7ea21dde4` |
| 9 | `theorem` | [ContinuousOn.eval](../../../../../mathematics/Topology/GeneralTopology/ContinuousEval/Variantdbeea98b63fc8aa048518ccca50ef6635f33a80cbc464d281e9040603da15b0f.lean/declarations/continuouson-eval--7315128e48e36cc4b868952c.md) | 75 | `result-track:7315128e48e36cc4b868952cd4bfa6b59a60ec1b69a0937988d06e5b64339c75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
