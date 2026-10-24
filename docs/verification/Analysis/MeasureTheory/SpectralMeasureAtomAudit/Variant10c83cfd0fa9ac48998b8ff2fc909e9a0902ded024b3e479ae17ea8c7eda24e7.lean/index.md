# Verification target: GRWTSK.Analysis.MeasureTheory.SpectralMeasureAtomAudit.Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57f0652ae18e955682d6959c80619a861468c68a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57f0652ae18e955682d6959c80619a861468c68a`.

Source path: `GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolventMassKernel](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/resolventmasskernel--812792689e5b8d9fd035fc4b.md) | 26 | `declaration-track:812792689e5b8d9fd035fc4b6044715bbb1cb445cfa1a7a14dab77389470719a` |
| 2 | `def` | [resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/resolventmass--bc6e855dd5bfdd37f56137b4.md) | 30 | `declaration-track:bc6e855dd5bfdd37f56137b44b85440b302f9a74c7ab1751cdfc3a271e64ef6c` |
| 3 | `theorem` | [resolventMassKernel_nonneg_le_one](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/resolventmasskernel-nonneg-le-one--ea9e9c8dc11ecab49e07d1af.md) | 33 | `result-track:ea9e9c8dc11ecab49e07d1af1b7ad3c1073db5d344e469612d1fb06a72a458e6` |
| 4 | `theorem` | [resolventMassKernel_measurable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/resolventmasskernel-measurable--8e85f10076864cd79edf61e0.md) | 40 | `result-track:8e85f10076864cd79edf61e0a2b7d74a0f89f7edac219b50311278d71d09c063` |
| 5 | `theorem` | [resolventMassKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/resolventmasskernel-integrable--b4ee898e293363e68d451809.md) | 44 | `result-track:b4ee898e293363e68d451809b641af87c4c2cb9982e8cc3fc1bfb169be8005dc` |
| 6 | `theorem` | [resolventMass_nonneg_le_total](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/resolventmass-nonneg-le-total--e6b12d942735b22eccb8a5fb.md) | 52 | `result-track:e6b12d942735b22eccb8a5fb0a4db093e84a0432918f43771fc3331ad496c793` |
| 7 | `theorem` | [resolventMassKernel_tendsto_zero_right](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/resolventmasskernel-tendsto-zero-right--2e2d025bc32385e0b639a93b.md) | 62 | `result-track:2e2d025bc32385e0b639a93bf73bfffb0990d199cec1299ac2cf148599b7d15d` |
| 8 | `theorem` | [resolventMass_tendsto_zero_atom](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/resolventmass-tendsto-zero-atom--e8d6a5b9faf881c08196372c.md) | 83 | `result-track:e8d6a5b9faf881c08196372c1c632bcb236a4ae41cba35e9e9891bc9a1940d67` |
| 9 | `theorem` | [zero_atom_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/zero-atom-le-resolventmass--8c8651f3fbcbf83fe005c9a2.md) | 102 | `result-track:8c8651f3fbcbf83fe005c9a2a4c6ab6b6957aec39636eb8e71ac9baf62ac2f4b` |
| 10 | `theorem` | [spectral_interval_mass_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/declarations/spectral-interval-mass-le-resolventmass--f77d868d04e0f3ce87a54e81.md) | 116 | `result-track:f77d868d04e0f3ce87a54e81e12fbf6731640e0a755c41ebe0d8d0f135859ff7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
