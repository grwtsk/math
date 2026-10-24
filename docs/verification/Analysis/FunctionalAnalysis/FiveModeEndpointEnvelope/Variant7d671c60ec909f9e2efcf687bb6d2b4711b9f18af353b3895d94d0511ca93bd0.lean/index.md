# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FiveModeEndpointEnvelope.Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "771f5dc48a63330c24eb230599a50c383c97c0c7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `771f5dc48a63330c24eb230599a50c383c97c0c7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Jensen` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointEnvelope](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/declarations/endpointenvelope--8727fa860e31a78336a17747.md) | 18 | `declaration-track:8727fa860e31a78336a17747ed0cb3848564c54d055f680b6351f5b51703f593` |
| 2 | `def` | [endpointEnvelopeFirst](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/declarations/endpointenvelopefirst--36c138f9b643ebbdecf3c430.md) | 19 | `declaration-track:36c138f9b643ebbdecf3c430e3594ab7bba670bf32a187edb5956ff50f47a5f9` |
| 3 | `def` | [endpointEnvelopeSecond](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/declarations/endpointenvelopesecond--2dcbf79c21a1ace7c49a1b81.md) | 20 | `declaration-track:2dcbf79c21a1ace7c49a1b810b335b2c0fec049274d2963bc2dc22bd30ef064e` |
| 4 | `theorem` | [endpointEnvelope_hasDerivAt](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/declarations/endpointenvelope-hasderivat--81da36c81f536c21670fd2e8.md) | 23 | `result-track:81da36c81f536c21670fd2e8cfb2dd3356e119686c7e611c46a53f89cff0f8d4` |
| 5 | `theorem` | [endpointEnvelopeFirst_hasDerivAt](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/declarations/endpointenvelopefirst-hasderivat--64961da232ae4f9b359fc0fe.md) | 32 | `result-track:64961da232ae4f9b359fc0fe35d1fd7b7874c95ace48766063f32f3a4d0217e7` |
| 6 | `theorem` | [endpointEnvelope_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/declarations/endpointenvelope-convex--e0241a202c20295aed469107.md) | 41 | `result-track:e0241a202c20295aed469107a5a2d5b439ee2d0de6bb7c1c3b7ee4f3e6da6427` |
| 7 | `theorem` | [endpointEnvelope_le_endpoint_max](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/declarations/endpointenvelope-le-endpoint-max--ec627aa703462523fa40347c.md) | 58 | `result-track:ec627aa703462523fa40347c1b51cc8b016574ca88dd419db958accd3ef57cb4` |
| 8 | `theorem` | [endpointEnvelope_le_rational_max](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/declarations/endpointenvelope-le-rational-max--7511e749c8a960947dfb443d.md) | 63 | `result-track:7511e749c8a960947dfb443d73c04d494b18e5350f47716eb75d423fa5c8bb21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
