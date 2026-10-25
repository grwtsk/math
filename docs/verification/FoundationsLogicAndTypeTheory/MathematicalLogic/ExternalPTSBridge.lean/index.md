# Verification target: GRWTSK.Logic.ExternalPTSBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d1dcfd0b7f8769e5617a484365ec2bb218baa56",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/ExternalPTSBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d1dcfd0b7f8769e5617a484365ec2bb218baa56`.

Source path: `GRWTSK/Logic/ExternalPTSBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/ExternalPTSBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Logic.TypedPortNormalization`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TheoremSource](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/theoremsource--59281f8fc4794bec39b2e976.md) | 9 | `declaration-track:59281f8fc4794bec39b2e976d5123c0e3d306f1a1af4250be1e18e773c4af81e` |
| 2 | `def` | [Normal](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/normal--5d0ba9a3deea37d43112e088.md) | 18 | `declaration-track:5d0ba9a3deea37d43112e0889a0cf8462b6ec9ff6763eda041f58cb60fdc1376` |
| 3 | `def` | [WeaklyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/weaklynormalizing--fcc9dcd3eae81b09bcd0c17e.md) | 22 | `declaration-track:fcc9dcd3eae81b09bcd0c17eae5b28ad44bad4e41a754492ce783326093ce86a` |
| 4 | `def` | [StronglyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/stronglynormalizing--eb090a62656b18de707c43cd.md) | 26 | `declaration-track:eb090a62656b18de707c43cde35f5b1728810932b54334ffd8f2ed938d971fb1` |
| 5 | `def` | [SystemWeaklyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/systemweaklynormalizing--daf0fa41542f53194b2bc388.md) | 30 | `declaration-track:daf0fa41542f53194b2bc388e8c72c5bdb444cd7564c3f3efa7119463e05801d` |
| 6 | `def` | [SystemStronglyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/systemstronglynormalizing--34d1176875c8c14bf43bec68.md) | 35 | `declaration-track:34d1176875c8c14bf43bec688f4ccf431c616173e333620ad6285949c5b2d974` |
| 7 | `def` | [Deterministic](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/deterministic--922c3bf3f11bad0eaf7acedc.md) | 40 | `declaration-track:922c3bf3f11bad0eaf7acedc2ab62dd72e926c9ac5b030d8e7500eca1449818a` |
| 8 | `def` | [LocallyConfluent](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/locallyconfluent--702587306db7f90b826a341b.md) | 44 | `declaration-track:702587306db7f90b826a341b1c67a2b7171e27bf072e1ffbeaffd3b2b1121f9d` |
| 9 | `def` | [HasUniqueNormalForm](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/hasuniquenormalform--cd6e14c8d30dcac2278c7d59.md) | 49 | `declaration-track:cd6e14c8d30dcac2278c7d597fa027ae42da49c573c78f470170d55808e8fbe5` |
| 10 | `structure` | [WeakToStrongTheorem](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/weaktostrongtheorem--c12039dd13b544205d2dea60.md) | 56 | `declaration-track:c12039dd13b544205d2dea607388cb0517b3e0d60642116d5d840d98a8f0decf` |
| 11 | `def` | [openAIWeakToStrongSource](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/openaiweaktostrongsource--70f3d62fbf531aafd4467fc0.md) | 66 | `declaration-track:70f3d62fbf531aafd4467fc034f7900042159c189ed423d6aa0c4d5e09a1cba7` |
| 12 | `theorem` | [systemStrong_of_bridge](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/systemstrong-of-bridge--27d675181073fe1e5338fbed.md) | 76 | `result-track:27d675181073fe1e5338fbed0ed6975866312286d0c409e985c6758c13522e2b` |
| 13 | `def` | [CanonicalStep](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/canonicalstep--00b292a7a03ce555d0f91f45.md) | 93 | `declaration-track:00b292a7a03ce555d0f91f455b386e08123815e1346deceb219b8eaf0232d964` |
| 14 | `theorem` | [normalForm_normal](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/normalform-normal--8df5366575f0dfcaa53eb4a5.md) | 97 | `result-track:8df5366575f0dfcaa53eb4a507387d22f379cb0397f3caa04228d794fd39a6ac` |
| 15 | `theorem` | [canonicalStep_normal_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/canonicalstep-normal-iff--d323f16bb26ed332ab44ea50.md) | 103 | `result-track:d323f16bb26ed332ab44ea50399774bf6f91150ddadb648ce63084871efe2e24` |
| 16 | `theorem` | [canonicalStep_weaklyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/canonicalstep-weaklynormalizing--3dcdd3a137e3b59f53ca31cc.md) | 113 | `result-track:3dcdd3a137e3b59f53ca31cc8853b0822b3abf0fdf39e8bc56c69969e4a5636a` |
| 17 | `theorem` | [canonicalStep_stronglyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/canonicalstep-stronglynormalizing--16376d69895a11738bb07fb7.md) | 123 | `result-track:16376d69895a11738bb07fb71a8408eb05ed30e2012b21078560862c9ccec544` |
| 18 | `theorem` | [canonicalStep_deterministic](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/canonicalstep-deterministic--5da66f8b2d0dcfc060516506.md) | 134 | `result-track:5da66f8b2d0dcfc0605165064c11e27dd13201d2ba84fb44166765ecd2305a34` |
| 19 | `theorem` | [canonicalStep_locallyConfluent](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/canonicalstep-locallyconfluent--5f3c22e85d995fa581a88d43.md) | 140 | `result-track:5f3c22e85d995fa581a88d435661da9fb13bb1f6d90e21e6361173102249c955` |
| 20 | `theorem` | [reachable_normal_eq_normalForm](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/reachable-normal-eq-normalform--34d29b02a158d791cac819f7.md) | 148 | `result-track:34d29b02a158d791cac819f71607210921573faa11560c9cbdc2031ef15fee00` |
| 21 | `theorem` | [canonicalStep_hasUniqueNormalForm](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/canonicalstep-hasuniquenormalform--b622216bfc30e8a1c5cb67c5.md) | 163 | `result-track:b622216bfc30e8a1c5cb67c529335c79efaf8de6bb5d05f4bc2923d8e3168a45` |
| 22 | `theorem` | [canonicalSystemWeaklyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/canonicalsystemweaklynormalizing--ed2e082bd5ac1384caf7f94c.md) | 174 | `result-track:ed2e082bd5ac1384caf7f94caa6b690184228953ff34ebddc2da0810259f9e2b` |
| 23 | `theorem` | [canonicalSystemStronglyNormalizing](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSBridge.lean/declarations/canonicalsystemstronglynormalizing--47f45b5bc04c06e9259e6af7.md) | 180 | `result-track:47f45b5bc04c06e9259e6af743af2fe33eb95cfc8b120256d775645127893dbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
