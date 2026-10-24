# Verification target: GRWTSK.Analysis.MeasureTheory.Function.Lp.CausalRestrictionBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c83c17b74b01115b239801fcb180c5c5b5ab42d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c83c17b74b01115b239801fcb180c5c5b5ab42d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteTranslationMultipliers`](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy`](../../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.SMul` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.TriangleInequality` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockAction](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/blockaction--1563f5429d4358656fc4418d.md) | 13 | `declaration-track:1563f5429d4358656fc4418d5759ed53e5afd58314cfff93cb104ff53e2743ef` |
| 2 | `theorem` | [shift_memLp_two](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/shift-memlp-two--3f3114c912697eae249753bd.md) | 17 | `result-track:3f3114c912697eae249753bdca77c926ea61f71c677c618f80d54779f88c5b2a` |
| 3 | `theorem` | [note_memLp_two](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/note-memlp-two--dbefd9c20a56fad47e70f0ab.md) | 29 | `result-track:dbefd9c20a56fad47e70f0abeb96b2ea6cdaba8e9510d5e8a1d42e0b3b992807` |
| 4 | `theorem` | [cascade_memLp_two](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/cascade-memlp-two--856dfe84fe316ea25732db42.md) | 33 | `result-track:856dfe84fe316ea25732db42720b63075f32791fb292be2c84942fbf3e5f3907` |
| 5 | `theorem` | [windowed_block_square_integrable](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/windowed-block-square-integrable--905f9f18bb9104cfe66a3a8e.md) | 40 | `result-track:905f9f18bb9104cfe66a3a8e0fe2f444bb6bb231d5d36290a73e892ffb307539` |
| 6 | `theorem` | [restriction_energy_le_full](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/restriction-energy-le-full--b33a6ea85111dee204d07ab6.md) | 49 | `result-track:b33a6ea85111dee204d07ab635a810fe74798a0a27e43e9df6c3f647d8139d4b` |
| 7 | `theorem` | [cutoff_block_exact](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/cutoff-block-exact--01398a575a8def6937cea806.md) | 55 | `result-track:01398a575a8def6937cea806421f42c760647a445f2d9bb5717434be0b195961` |
| 8 | `theorem` | [cutoff_block_energy_exact](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/cutoff-block-energy-exact--48413cdfdbc71e1ea04f6063.md) | 63 | `result-track:48413cdfdbc71e1ea04f6063712abb3da4fbcd95ae80c3e3665001691a0d85b6` |
| 9 | `theorem` | [actual_cutoff_energy_bound](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/actual-cutoff-energy-bound--d813bac1ee2f491ce8c5e768.md) | 73 | `result-track:d813bac1ee2f491ce8c5e768588688b901d3f0a32bea95c2a004113a8771a489` |
| 10 | `theorem` | [actual_cutoff_complex_energy_bound](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/declarations/actual-cutoff-complex-energy-bound--18e4b4d409daf41db41fe10f.md) | 86 | `result-track:18e4b4d409daf41db41fe10f3309255226ef18f6cfd1e2793cb4603d559c9731` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
