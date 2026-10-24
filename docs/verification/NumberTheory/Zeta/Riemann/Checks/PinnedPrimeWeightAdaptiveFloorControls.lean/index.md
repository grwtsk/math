# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightAdaptiveFloorControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3c42514c902ef09685d0feec5fccaecd1ac761",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3c42514c902ef09685d0feec5fccaecd1ac761`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAdaptiveFloor`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [concrete_dyadic_primeWindow_identity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/declarations/concrete-dyadic-primewindow-identity--8373127b44a9e12b4c7c2a38.md) | 16 | `result-track:8373127b44a9e12b4c7c2a38e750b046ddf6dc507bffc2178bc849fe4d24e8a8` |
| 2 | `theorem` | [concrete_dyadic_chebyshev_positivePart_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/declarations/concrete-dyadic-chebyshev-positivepart-zero--f157513d10b0180c8db30c98.md) | 25 | `result-track:f157513d10b0180c8db30c98dd3372ee26ea119a7e4ac897c97058ef8aafe9f0` |
| 3 | `theorem` | [concrete_dyadic_adaptiveFloor_positive](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/declarations/concrete-dyadic-adaptivefloor-positive--276843fd67d1a22fd5f61606.md) | 34 | `result-track:276843fd67d1a22fd5f61606ed2bb0a6fe98656d3768efe943785c05e7a88e32` |
| 4 | `theorem` | [concrete_dyadic_adaptiveFloor_le_amplitude](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/declarations/concrete-dyadic-adaptivefloor-le-amplitude--e75077ce6cdc1ab7c445d13c.md) | 42 | `result-track:e75077ce6cdc1ab7c445d13cd851c4f98b326aeac73aad8a6ff7479de78fd265` |
| 5 | `theorem` | [concrete_dyadic_requiredCapacity_le_adaptiveMajorant](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/declarations/concrete-dyadic-requiredcapacity-le-adaptivemajorant--239eef5ad81d3907aa8b4d04.md) | 52 | `result-track:239eef5ad81d3907aa8b4d0405f7010cb47dfe026be4abac39cf12383dc77f82` |
| 6 | `theorem` | [concrete_dyadic_adaptiveMajorant_eq_logImprovedCubic](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/declarations/concrete-dyadic-adaptivemajorant-eq-logimprovedcubic--d75ee99e0fe48781ac9390cd.md) | 62 | `result-track:d75ee99e0fe48781ac9390cda4e3055d22fc696be2444f49c6f6ee9f6c52792d` |
| 7 | `theorem` | [concrete_dyadic_adaptiveMajorant_le_bertrandMajorant](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/declarations/concrete-dyadic-adaptivemajorant-le-bertrandmajorant--f71cd791fa68f22d81c93b04.md) | 74 | `result-track:f71cd791fa68f22d81c93b046b2bcca19fe5263f2b67151f62ae796497a9d511` |
| 8 | `def` | [requiredAdaptiveFloorObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/declarations/requiredadaptivefloorobligations--158c579c75b6197caffe74e4.md) | 85 | `declaration-track:158c579c75b6197caffe74e45b319276b9dd60ad6d1b15c4997b2a918045ea50` |
| 9 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAdaptiveFloorControls.lean/declarations/prohibitedpromotions--8b58175f89cfe1e1a10a1535.md) | 94 | `declaration-track:8b58175f89cfe1e1a10a153591eeb2aabd52977994ff87239877c97fa2e422f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
