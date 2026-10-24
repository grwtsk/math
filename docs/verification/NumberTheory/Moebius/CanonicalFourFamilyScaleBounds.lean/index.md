# Verification target: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyScaleBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a281dc5c927ca05646a735f813809fbaab389da",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a281dc5c927ca05646a735f813809fbaab389da`.

Source path: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyStrictGap`](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [anchored_family_center_injective](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/declarations/anchored-family-center-injective--38205fa1c2e515a2d2647747.md) | 14 | `result-track:38205fa1c2e515a2d26477472844bb1762c366ed7c1207681fecfb3f78d4802f` |
| 2 | `theorem` | [selected_pair_unique](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/declarations/selected-pair-unique--e9bdfdaa265c9dd80343b10d.md) | 22 | `result-track:e9bdfdaa265c9dd80343b10d227e086a76eaa861ecfb12710c2adc577fd75cb1` |
| 3 | `theorem` | [abs_fullMatrixEntry_le_log](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/declarations/abs-fullmatrixentry-le-log--c08c1a04e15a43f9718ad200.md) | 45 | `result-track:c08c1a04e15a43f9718ad20089ec1d875a2706ff9a6c32d0b6d5b5bca2cc3a5b` |
| 4 | `def` | [fullMatrixScaleBudget](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/declarations/fullmatrixscalebudget--507ab952e7d0e6c55cc87f3a.md) | 94 | `declaration-track:507ab952e7d0e6c55cc87f3a13d54e6c867c96435864497c20a5a6c504e45e45` |
| 5 | `theorem` | [fullMatrix_frobenius_le](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/declarations/fullmatrix-frobenius-le--ef8c24ce234bac52dff5d511.md) | 97 | `result-track:ef8c24ce234bac52dff5d5114707663d0aaa0fdb935c60552e068865793b3679` |
| 6 | `theorem` | [fullAdjointDamping_scale_lower](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/declarations/fulladjointdamping-scale-lower--7ed4394467a5cba29efa68f0.md) | 116 | `result-track:7ed4394467a5cba29efa68f03666f2ce4a3a15eeae4f5639fa15edffb27da7ab` |
| 7 | `theorem` | [fullAdjointResidual_scale_descent](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/declarations/fulladjointresidual-scale-descent--21a50b1d6c948f14914904d1.md) | 127 | `result-track:21a50b1d6c948f14914904d136db69799ef78af997510774ef6d2b56014f1742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
