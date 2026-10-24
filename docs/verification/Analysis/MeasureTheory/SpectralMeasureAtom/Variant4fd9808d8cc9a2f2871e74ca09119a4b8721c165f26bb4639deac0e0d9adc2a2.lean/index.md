# Verification target: GRWTSK.Analysis.MeasureTheory.SpectralMeasureAtom.Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b7ee7a50a396f87be2421f957aa67942b38f72d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b7ee7a50a396f87be2421f957aa67942b38f72d`.

Source path: `GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean.json)

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
| 1 | `def` | [resolventMassKernel](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/resolventmasskernel--101277825f0f9a1eebe0e151.md) | 26 | `declaration-track:101277825f0f9a1eebe0e151ca49e487e740a2dcdb3cf74a3296c67e566d56a6` |
| 2 | `def` | [resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/resolventmass--43c2a3dccc06865da8661330.md) | 30 | `declaration-track:43c2a3dccc06865da866133046e42133da789928dd9e613d5ccdfe4ed3c9ed7e` |
| 3 | `theorem` | [resolventMassKernel_nonneg_le_one](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/resolventmasskernel-nonneg-le-one--ed058ddbfa12544ad97b6e0b.md) | 33 | `result-track:ed058ddbfa12544ad97b6e0b081623a10599c5639b47067e0e7b0dca1e091c4e` |
| 4 | `theorem` | [resolventMassKernel_measurable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/resolventmasskernel-measurable--d4088c212d41e09d14547754.md) | 40 | `result-track:d4088c212d41e09d1454775439844b4e3236d9793e64edee5d830ba846286113` |
| 5 | `theorem` | [resolventMassKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/resolventmasskernel-integrable--98aae745cdac8ef2bc6e29fe.md) | 44 | `result-track:98aae745cdac8ef2bc6e29fe532a7c898cd497f0cf2682b4ab238a8432725c2f` |
| 6 | `theorem` | [resolventMass_nonneg_le_total](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/resolventmass-nonneg-le-total--299496a26d66966fc728142b.md) | 52 | `result-track:299496a26d66966fc728142be04de592a67896ae5013b92c61b92147e23c6434` |
| 7 | `theorem` | [resolventMassKernel_tendsto_zero_right](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/resolventmasskernel-tendsto-zero-right--a0a15ace402f91b509f89d5e.md) | 62 | `result-track:a0a15ace402f91b509f89d5ef1efacdbf1bb1c03001691d427efff363d91faf6` |
| 8 | `theorem` | [resolventMass_tendsto_zero_atom](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/resolventmass-tendsto-zero-atom--7b74d158a95d8e49a2e49a3b.md) | 83 | `result-track:7b74d158a95d8e49a2e49a3b0d76ff587912b910146e4db2ba7d6f1f318f56bc` |
| 9 | `theorem` | [zero_atom_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/zero-atom-le-resolventmass--35f04587fd8a1cd4a32814d0.md) | 102 | `result-track:35f04587fd8a1cd4a32814d0bdbdbd6cd2a0100147ae3d776a5a9d1f51d6cd63` |
| 10 | `theorem` | [spectral_interval_mass_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/declarations/spectral-interval-mass-le-resolventmass--61298163b0722bf569d4f412.md) | 116 | `result-track:61298163b0722bf569d4f41204a2d30798d8ab96f3efe3e9019945255f893ee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
