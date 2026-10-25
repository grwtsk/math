# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogDerivativeZeroExclusion.Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "402bc84e485c2800cc0e487bc99d7e5a92fc11a5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `402bc84e485c2800cc0e487bc99d7e5a92fc11a5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ComplexAnalysis.AnalyticLinearODE`](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.PoleRemovedSource`](../../../../../mathematics/NumberTheory/Zeta/PoleRemovedSource.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ode_on_euler_domain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/declarations/ode-on-euler-domain--f5efea2135801370bc0f32dc.md) | 26 | `result-track:f5efea2135801370bc0f32dcba5c223df75da8378f4943009246c752315140f2` |
| 2 | `theorem` | [ode_on_halfPlane](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/declarations/ode-on-halfplane--be77942e3d34b9d84d7537ad.md) | 38 | `result-track:be77942e3d34b9d84d7537ad42507b8f5836856c18516e43d6ea13acaa7c6f14` |
| 3 | `theorem` | [poleRemoved_ne_zero_of_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/declarations/poleremoved-ne-zero-of-extension--1bcd1f11ecff24cf170b3194.md) | 60 | `result-track:1bcd1f11ecff24cf170b3194efc0ade1c1a9dc55eb2bda3e975ffa61f69855b3` |
| 4 | `theorem` | [zeta_ne_zero_right_of_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/declarations/zeta-ne-zero-right-of-extension--7b6d34eb83d497ac7ae62904.md) | 73 | `result-track:7b6d34eb83d497ac7ae6290407fab20901049112666556c9d6cbc7c5633a7a8a` |
| 5 | `theorem` | [riemannHypothesis_of_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/declarations/riemannhypothesis-of-extension--117326d3c13ab0751b55f647.md) | 84 | `result-track:117326d3c13ab0751b55f647c9d512ccc582d8405a2415cc55396e7945662f6d` |
| 6 | `theorem` | [riemannHypothesis_of_exists_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/declarations/riemannhypothesis-of-exists-extension--19f9f30d15c5b74d88111e24.md) | 103 | `result-track:19f9f30d15c5b74d88111e24274e549d083de0081b9c45d5fa461c13207234b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
