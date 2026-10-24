# Verification target: GRWTSK.Topology.AlgebraicTopology.BranchSeamCell.Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0476bf875c0decd12ae9ebd0727d6a051bb64ea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0476bf875c0decd12ae9ebd0727d6a051bb64ea`.

Source path: `GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Core.ComplexAnalysis.RectangleContour` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientOneForm](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean/declarations/coefficientoneform--5e492ccdb7d281102cf7f454.md) | 41 | `declaration-track:5e492ccdb7d281102cf7f454f2d9ad4b3933b0d5266efeaab2fdcaeb571cc93a` |
| 2 | `theorem` | [curveIntegral_coefficientOneForm_homotopy](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean/declarations/curveintegral-coefficientoneform-homotopy--63df195ce38f233f4946cf2a.md) | 45 | `result-track:63df195ce38f233f4946cf2acce33d88c1e2e582f12b5c08abec52acfd5c02de` |
| 3 | `theorem` | [four_seam_cells_cancel](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean/declarations/four-seam-cells-cancel--8a98fadc34fefb08c00b2843.md) | 87 | `result-track:8a98fadc34fefb08c00b28435756cf15dfd906ae3789b2645c2a07ff1a37909e` |
| 4 | `theorem` | [coefficientOneForm_curveIntegral_segment](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean/declarations/coefficientoneform-curveintegral-segment--f0bbf9c92fe7389a7954d5ff.md) | 159 | `result-track:f0bbf9c92fe7389a7954d5ffed179ae5a96dbd0b8f4bc5326330cee53a58f671` |
| 5 | `theorem` | [coefficientOneForm_curveIntegral_add_reverse_eq_zero](../../../../../mathematics/Topology/AlgebraicTopology/BranchSeamCell/Variant97cf5ebedbc3d3e7194a80d252e3095a4737f50dff57e6f9f25e94229966931c.lean/declarations/coefficientoneform-curveintegral-add-reverse-eq-zero--bbda39baebc2401900a07dff.md) | 169 | `result-track:bbda39baebc2401900a07dff17a6879a52d9e1090f13190777bf0e5ef2219d79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
