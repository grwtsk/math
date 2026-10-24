# Verification target: GRWTSK.NumberTheory.Farey.CatMapMeasuredMixingTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "466495b9fb8ffb9c3c55e84c9b73389c69b3531b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `466495b9fb8ffb9c3c55e84c9b73389c69b3531b`.

Source path: `GRWTSK/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction`](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.MeasureTheory.Measure.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasPositiveOpenRealMass](../../../../mathematics/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/declarations/haspositiveopenrealmass--4a37514c7a29d0f2d51c3178.md) | 59 | `declaration-track:4a37514c7a29d0f2d51c31785145c999fa45bbfc1060004ab08aaa9db93ac08a` |
| 2 | `def` | [HasRealSetMixing](../../../../mathematics/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/declarations/hasrealsetmixing--7e299c24b9e0144bcc1af4f8.md) | 66 | `declaration-track:7e299c24b9e0144bcc1af4f8795850a8209f8723c17c033d3b78527d68487c6e` |
| 3 | `theorem` | [eventualOpenMixing_of_realSetMixing](../../../../mathematics/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/declarations/eventualopenmixing-of-realsetmixing--7238824aec0067ec126dc9d0.md) | 77 | `result-track:7238824aec0067ec126dc9d01a5eefb0ab357517f36ab31eb690259ca70d009a` |
| 4 | `theorem` | [oddLocalReturns_of_realSetMixing](../../../../mathematics/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/declarations/oddlocalreturns-of-realsetmixing--756f1f86ef936f5f6a1223d6.md) | 103 | `result-track:756f1f86ef936f5f6a1223d6d5757e92f284a0dbacb70c9d9f849f4561f64916` |
| 5 | `theorem` | [catTorus_oddLocalReturns_of_realSetMixing](../../../../mathematics/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/declarations/cattorus-oddlocalreturns-of-realsetmixing--6a2a63d6221d0f376278ca9f.md) | 115 | `result-track:6a2a63d6221d0f376278ca9f25b540318bbe03a3086bf20ce41ea8ab3c2a7504` |
| 6 | `theorem` | [no_continuous_cat_phase_extension_of_realSetMixing](../../../../mathematics/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/declarations/no-continuous-cat-phase-extension-of-realsetmixing--3bbf0ac8381106ff7ec5de42.md) | 132 | `result-track:3bbf0ac8381106ff7ec5de4214c6f4dfeaafb94dceb2376a7eae8a61cc0b6dac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
