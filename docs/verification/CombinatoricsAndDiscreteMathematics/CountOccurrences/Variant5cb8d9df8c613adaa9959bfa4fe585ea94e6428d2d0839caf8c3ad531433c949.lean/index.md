# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CountOccurrences.Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf6c4da68a15281d53c2923a0f38983c3615d41c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf6c4da68a15281d53c2923a0f38983c3615d41c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PositiveOccurrenceWindow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean/declarations/positiveoccurrencewindow--cf63711a98380d1f5cb5d7fb.md) | 27 | `declaration-track:cf63711a98380d1f5cb5d7fbff5e81441c475336206b4bff45b3ca95503d6532` |
| 2 | `def` | [PositiveCountFibres](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean/declarations/positivecountfibres--f5d73785c85b6cf9404ae297.md) | 31 | `declaration-track:f5d73785c85b6cf9404ae29770586981570f38ad5d81232b8571b7675b495920` |
| 3 | `def` | [positiveOccurrenceWindowEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean/declarations/positiveoccurrencewindowequiv--5614f8770cbfa091f0416d8b.md) | 36 | `declaration-track:5614f8770cbfa091f0416d8b10a145e3bc7f026f927d1dfacdc8b16a01c80372` |
| 4 | `theorem` | [positive_occurrence_window_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean/declarations/positive-occurrence-window-finite--21891160473700378dc927cf.md) | 50 | `result-track:21891160473700378dc927cffb455f8a4454347e9a67ab5b52bd74ade415e5f3` |
| 5 | `theorem` | [positive_occurrence_window_card_eq_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949.lean/declarations/positive-occurrence-window-card-eq-count--b9573d85ac238dd935ce43d3.md) | 60 | `result-track:b9573d85ac238dd935ce43d3694dd1ec6ba96bd413018a7b392bcbee8da38fa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
