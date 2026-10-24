# Verification target: GRWTSK.Analysis.MeasureTheory.SpectralMeasureAtom.Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f3993ed80e25e74b22bfb81568effbb3b94b0a0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f3993ed80e25e74b22bfb81568effbb3b94b0a0`.

Source path: `GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolventMassKernel](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/resolventmasskernel--81fa39376cf8570277d5bc83.md) | 18 | `declaration-track:81fa39376cf8570277d5bc83740e4796769ab4d40a0dd1310fc706128b6613f5` |
| 2 | `def` | [resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/resolventmass--d5f4d4a78bb005b45f87dde2.md) | 22 | `declaration-track:d5f4d4a78bb005b45f87dde2a877155452265b7a3cbc301cdb6d088ee890b3d9` |
| 3 | `theorem` | [resolventMassKernel_nonneg_le_one](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/resolventmasskernel-nonneg-le-one--db4ee6bcbe75f5916f9ce69a.md) | 25 | `result-track:db4ee6bcbe75f5916f9ce69a47a4611b078ffd1de54c1ec733a18a6d620e45d7` |
| 4 | `theorem` | [resolventMassKernel_measurable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/resolventmasskernel-measurable--c1b3b076b071a12b2452a7a0.md) | 32 | `result-track:c1b3b076b071a12b2452a7a0d1dc75ddf417b90f9279f447e479686234a47b45` |
| 5 | `theorem` | [resolventMassKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/resolventmasskernel-integrable--15187f05dc31e84d140864de.md) | 36 | `result-track:15187f05dc31e84d140864de115327f8f5dbcc8a0ce4375a4e8624b2c6da48fe` |
| 6 | `theorem` | [resolventMass_nonneg_le_total](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/resolventmass-nonneg-le-total--02a757017e0668c47572c38f.md) | 44 | `result-track:02a757017e0668c47572c38f6eca4445b29193341e5ff081686602220406439f` |
| 7 | `theorem` | [resolventMassKernel_tendsto_zero_right](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/resolventmasskernel-tendsto-zero-right--01478d9db1bfeb60c4199f96.md) | 54 | `result-track:01478d9db1bfeb60c4199f9633323d5c3b656a31dabef882a4940dbbdf471b63` |
| 8 | `theorem` | [resolventMass_tendsto_zero_atom](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/resolventmass-tendsto-zero-atom--672efb324feb00d94dcba26b.md) | 75 | `result-track:672efb324feb00d94dcba26be98aba90b095b280696a353e2014737b8528f73b` |
| 9 | `theorem` | [zero_atom_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/zero-atom-le-resolventmass--22373696f2e38796296d19eb.md) | 94 | `result-track:22373696f2e38796296d19eba0aee6a41054bd62453731b83ea5e95c94ac3c4b` |
| 10 | `theorem` | [spectral_interval_mass_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtom/Variant88096619950ae67a69ea85b3cf9d330ef87df993578afa8624a5f61821c1795d.lean/declarations/spectral-interval-mass-le-resolventmass--66b6ca8cfc008aef3063030b.md) | 108 | `result-track:66b6ca8cfc008aef3063030b442a1eaf4d92c0a77d1b0e893015b3511f07006e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
