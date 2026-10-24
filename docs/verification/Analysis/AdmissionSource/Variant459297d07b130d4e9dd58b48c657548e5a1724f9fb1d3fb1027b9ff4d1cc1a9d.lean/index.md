# Verification target: GRWTSK.Analysis.AdmissionSource.Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e95dfffed82fdf68180bfffc55d449073cd21bb3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/index.md) · [Full source](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e95dfffed82fdf68180bfffc55d449073cd21bb3`.

Source path: `GRWTSK/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.Analysis.DigammaSeries` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.Analysis.ReciprocalKernel` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SUCAS.BridgeMultiplier` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuarterSeriesObligation](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/quarterseriesobligation--b810958c11be39b0127b3f5a.md) | 33 | `declaration-track:b810958c11be39b0127b3f5ab6abeb8d73dfb17cd45dd4294e19c1f76c8987ca` |
| 2 | `theorem` | [actual_multiplier_difference](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/actual-multiplier-difference--6597ec38a403a6e485bc0d41.md) | 38 | `result-track:6597ec38a403a6e485bc0d4138e39f70bde1269bd484b0c3ce28b8746aeed91f` |
| 3 | `theorem` | [quarter_series_of_derivative_limit](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/quarter-series-of-derivative-limit--1a3320d6d02d69db1e728ead.md) | 48 | `result-track:1a3320d6d02d69db1e728eadb2324ff8b0e5673cafd1a5fe3dad36a38c906608` |
| 4 | `theorem` | [multiplier_estimate_of_series](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/multiplier-estimate-of-series--cb4722e41d9f67efd9cc92d8.md) | 57 | `result-track:cb4722e41d9f67efd9cc92d8d6026f795cf76fee07bbbb730ae2222e93fae0ec` |
| 5 | `theorem` | [archimedean_integrability_of_series](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/archimedean-integrability-of-series--bf38c70918c6c4fc4eed3487.md) | 65 | `result-track:bf38c70918c6c4fc4eed3487a3ed440c8a7b67daf24011b596fb796b771adaa5` |
| 6 | `theorem` | [admission_of_derivative_limit](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/admission-of-derivative-limit--1343434ec6d1cef7c0abb862.md) | 72 | `result-track:1343434ec6d1cef7c0abb8620e5c5686595795907e74cf6b9614eed19361e725` |
| 7 | `theorem` | [quarter_series](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/quarter-series--c157cb9e953dd4df5be81d38.md) | 78 | `result-track:c157cb9e953dd4df5be81d380db2954709525f626649c6cbde08685a5ed4fc33` |
| 8 | `theorem` | [multiplier_estimate](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/multiplier-estimate--a384394143489b373ddd69a5.md) | 82 | `result-track:a384394143489b373ddd69a5acf3dfa8b0ee9bc85b52b3edf9f725e925a9dc51` |
| 9 | `theorem` | [archimedean_integrability](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/archimedean-integrability--2854066f75e554b8b29c33a2.md) | 86 | `result-track:2854066f75e554b8b29c33a23325d77a0a9e15a047aa82259436100a4cedcb88` |
| 10 | `theorem` | [normalization_admissibility](../../../../mathematics/Analysis/AdmissionSource/Variant459297d07b130d4e9dd58b48c657548e5a1724f9fb1d3fb1027b9ff4d1cc1a9d.lean/declarations/normalization-admissibility--d9049da6656e049d960a344e.md) | 91 | `result-track:d9049da6656e049d960a344e38b5c8b7902e7227e39490a38ab36c6b1c76210b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
