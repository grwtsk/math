# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualCenteredHalfZetaReduction.Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c64f6334a8bcf844aeffe19f04d6fee23c32345e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c64f6334a8bcf844aeffe19f04d6fee23c32345e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualHalfHarmonicZeta` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualVaughanMeanBound` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCenteredHalfZetaMain](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean/declarations/actualcenteredhalfzetamain--7d891addcbac62a985a0f4b6.md) | 31 | `declaration-track:7d891addcbac62a985a0f4b6e3a8c51bcf042ba4fafda14d5cdc6e23e6d3d17c` |
| 2 | `def` | [halfHarmonicQuotientDefect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean/declarations/halfharmonicquotientdefect--c334a2f59a702cb65b55806c.md) | 36 | `declaration-track:c334a2f59a702cb65b55806c6d361a850e47c173e02990de3fae9afedf77ca3b` |
| 3 | `theorem` | [halfHarmonicQuotientDefect_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean/declarations/halfharmonicquotientdefect-abs-le--5ae2adb955e41ad0f1a5e4a9.md) | 42 | `result-track:5ae2adb955e41ad0f1a5e4a949facb1166eea2b218a56b85fe0d32317717fc6a` |
| 4 | `theorem` | [closedCenteredHalfInventory_sub_zetaMain_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean/declarations/closedcenteredhalfinventory-sub-zetamain-eq--1155b7db3b45bcaa8628a501.md) | 114 | `result-track:1155b7db3b45bcaa8628a501e59f65bc3645fa6a95c2651a9f9b230d8fb4cb02` |
| 5 | `theorem` | [closedCenteredHalfInventory_sub_zetaMain_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean/declarations/closedcenteredhalfinventory-sub-zetamain-abs-le--af8e5631cfc046fbb6fcf96f.md) | 139 | `result-track:af8e5631cfc046fbb6fcf96f76c7dbad1c5e79769801f98638e76d662bf0c65a` |
| 6 | `theorem` | [actualCenteredColumnHalfInventory_sub_zetaMain_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variante9c00723386181ba9ddd0f7cf3a7491db6fdf5dd384207ed879b83c810693de9.lean/declarations/actualcenteredcolumnhalfinventory-sub-zetamain-abs-le--6f8498be9797a593f44bceb3.md) | 177 | `result-track:6f8498be9797a593f44bceb34ebecf0d0171038ffea81a3f5e48d4972b919c35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
