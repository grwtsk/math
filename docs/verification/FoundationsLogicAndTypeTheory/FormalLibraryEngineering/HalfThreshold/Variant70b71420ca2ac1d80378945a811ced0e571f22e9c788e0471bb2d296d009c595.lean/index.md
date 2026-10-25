# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfThreshold.Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b69a1d48c587a3d76583b5cfc77630b89309881c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b69a1d48c587a3d76583b5cfc77630b89309881c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.AbsoluteRegion` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Terrain.BinaryCharge` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [roundHalfUp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/roundhalfup--ab29e2dd40384b8d28c74016.md) | 28 | `declaration-track:ab29e2dd40384b8d28c74016442e699f2239660e879054610be3e73faaaa2381` |
| 2 | `theorem` | [roundHalfUp_eq_true_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/roundhalfup-eq-true-iff--f9f542238c6eb22b8c3ad022.md) | 32 | `result-track:f9f542238c6eb22b8c3ad0220ca0c98f95f37160b90a333aef7dbefa8faf10cd` |
| 3 | `theorem` | [roundHalfUp_eq_false_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/roundhalfup-eq-false-iff--f0ada3201f3e610a64ff300d.md) | 37 | `result-track:f0ada3201f3e610a64ff300d1ea4f8dd344ec1ce068b21fac97c64abe59875fd` |
| 4 | `theorem` | [roundHalfUp_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/roundhalfup-half--ab8a57afa68511dcaf4ecad2.md) | 42 | `result-track:ab8a57afa68511dcaf4ecad24801b7b4b3fdcf63f63c75d0fff7a96e15948e8b` |
| 5 | `def` | [thresholdState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdstate--7f9dcb135057c123fe9d0a6b.md) | 46 | `declaration-track:7f9dcb135057c123fe9d0a6bb134b99854914f80386ae7e3218ec3c6241cf323` |
| 6 | `def` | [ThresholdEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdequivalent--000a628c77495d4f9f594f4a.md) | 50 | `declaration-track:000a628c77495d4f9f594f4ad8cbadc8520a90204a2f446b6095048b92e53562` |
| 7 | `theorem` | [thresholdEquivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdequivalent-refl--09f76d3a57e77be2e432d65f.md) | 53 | `result-track:09f76d3a57e77be2e432d65fe5e728f7e11dc9a728d930418152028cba3597a3` |
| 8 | `theorem` | [thresholdEquivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdequivalent-symm--44885c1b1c384c38de0fa0da.md) | 57 | `result-track:44885c1b1c384c38de0fa0da2c5b406ec398722abecf8b99acf22748d6abce4a` |
| 9 | `theorem` | [thresholdEquivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdequivalent-trans--96b904bb50e66e13e521741b.md) | 61 | `result-track:96b904bb50e66e13e521741bacdd81968721ba12af5ae3e03d4378f154aa341c` |
| 10 | `def` | [thresholdSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdsetoid--138c6b76c56a226b723ef7c0.md) | 67 | `declaration-track:138c6b76c56a226b723ef7c0832b591e9a81bdf78479b7128331b7185eb89ff2` |
| 11 | `theorem` | [thresholdState_restrictSignal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdstate-restrictsignal--7b1422257851b7d5f4151104.md) | 73 | `result-track:7b1422257851b7d5f415110464431e413f02080a47a6f7d77efb3ca43054ec9d` |
| 12 | `theorem` | [roundHalfUp_boolToReal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/roundhalfup-booltoreal--34b5a935a9f7e410411cddb9.md) | 81 | `result-track:34b5a935a9f7e410411cddb98f5d3ab007b0e18bf533996bc4cb849a6327f926` |
| 13 | `theorem` | [thresholdState_boolToReal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdstate-booltoreal--f940a0201f0a347d6b575426.md) | 87 | `result-track:f940a0201f0a347d6b57542639b5d71c4da312ae0f2c1138c8195fc280121ab0` |
| 14 | `theorem` | [thresholdState_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdstate-idempotent--6664622724d004aca0a6c102.md) | 94 | `result-track:6664622724d004aca0a6c102df9307302967ed2d2d7ec3f7cbaa4aeb319da04d` |
| 15 | `def` | [HasThresholdMargin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/hasthresholdmargin--5100f126b265e44b60511ce4.md) | 100 | `declaration-track:5100f126b265e44b60511ce466bfa1b6bd4888adf5f5f1c94b561976206db473` |
| 16 | `theorem` | [roundHalfUp_eq_of_margin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/roundhalfup-eq-of-margin--4d249ea8198a84b181624aa6.md) | 104 | `result-track:4d249ea8198a84b181624aa69cba07b25293142df7b199583143d236b5bc867a` |
| 17 | `theorem` | [thresholdState_eq_of_margin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfThreshold/Variant70b71420ca2ac1d80378945a811ced0e571f22e9c788e0471bb2d296d009c595.lean/declarations/thresholdstate-eq-of-margin--028d47ff619ab9507ac5ab07.md) | 136 | `result-track:028d47ff619ab9507ac5ab07845d880113faf4ef36cc73c8ffe3ac50a08ce45a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
