# Verification target: GRWTSK.Analysis.MeasureTheory.SpectralMeasureAtomStatements.Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bd54721469d254915c452d69f6a8ae8c158d9e9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bd54721469d254915c452d69f6a8ae8c158d9e9`.

Source path: `GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean.json)

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
| 1 | `def` | [resolventMassKernel](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/resolventmasskernel--42458ed7cadabe692500e76d.md) | 26 | `declaration-track:42458ed7cadabe692500e76d0e32266f946f1bf4c8a1c7f219a4244fca7280a5` |
| 2 | `def` | [resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/resolventmass--cc7ac1268305eb2bcfd767b7.md) | 30 | `declaration-track:cc7ac1268305eb2bcfd767b792a722f3ad89c2b8873c7685ac2ac5c9126c6d24` |
| 3 | `theorem` | [resolventMassKernel_nonneg_le_one](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/resolventmasskernel-nonneg-le-one--6240678ad48833f1cddb1d7b.md) | 33 | `result-track:6240678ad48833f1cddb1d7b9fdfad7a9b1d0e6979a263c261b86d0bf278e07d` |
| 4 | `theorem` | [resolventMassKernel_measurable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/resolventmasskernel-measurable--0db3c6b644623d5dc09e2115.md) | 40 | `result-track:0db3c6b644623d5dc09e21150960659b83f8815b3bc708d6be90d3cdd49dd59c` |
| 5 | `theorem` | [resolventMassKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/resolventmasskernel-integrable--69cca37c092d9f179595e0c3.md) | 44 | `result-track:69cca37c092d9f179595e0c353b185f35f25d2b626062520c20e705fb320be39` |
| 6 | `theorem` | [resolventMass_nonneg_le_total](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/resolventmass-nonneg-le-total--09652523f4ebd0cf55ce8b8d.md) | 52 | `result-track:09652523f4ebd0cf55ce8b8d0b4c5c649f08216d43c19b8657682ae2424f6dd1` |
| 7 | `theorem` | [resolventMassKernel_tendsto_zero_right](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/resolventmasskernel-tendsto-zero-right--96654061df9b39012007df90.md) | 62 | `result-track:96654061df9b39012007df907f10cd4ebe69b5da9a3aa8e45e930f5775e193bb` |
| 8 | `theorem` | [resolventMass_tendsto_zero_atom](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/resolventmass-tendsto-zero-atom--ef0f5225efd0e9a4629c79b5.md) | 83 | `result-track:ef0f5225efd0e9a4629c79b526104bafab34883e1a9d768dbf4bd07f41744540` |
| 9 | `theorem` | [zero_atom_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/zero-atom-le-resolventmass--99137c94167c113a7a5e646c.md) | 102 | `result-track:99137c94167c113a7a5e646c1c0904e1cc3b9aaf845cba363808d02a35368da9` |
| 10 | `theorem` | [spectral_interval_mass_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/spectral-interval-mass-le-resolventmass--923d05717e0fbc5bb03df4b2.md) | 116 | `result-track:923d05717e0fbc5bb03df4b2212f35a25b3d15f41208b4aa165938d316bf6ac5` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--383d53716ae928f5b8b64fd3.md) | 141 | `declaration-track:383d53716ae928f5b8b64fd3cd8880c244d5bca24cd5f22c6d10f1e8e7a43282` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--f1e68dcd99c78933171ac02c.md) | 143 | `declaration-track:f1e68dcd99c78933171ac02c34bec4a17192d0c3db6f9537f8bd437553b180da` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--cf344d94fb2571036c607301.md) | 146 | `declaration-track:cf344d94fb2571036c60730190b140d88c76a4a3f87d6c465acc6200e1426518` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--e67c20cdd5d025d858bbef9c.md) | 150 | `declaration-track:e67c20cdd5d025d858bbef9c89b4fa491e6c903bbdbf571c9b8b849d802b3fc5` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--f471b02d1710aece2dee1163.md) | 153 | `declaration-track:f471b02d1710aece2dee1163602595115bbf0999c0d5b6d5dcc1dca123e871b0` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--e91ff96e5307bd8dd34ca3a9.md) | 157 | `declaration-track:e91ff96e5307bd8dd34ca3a92eeeec07437229b180234b314af0e76e99b418da` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--e5595fa8739ffa387b56bf25.md) | 162 | `declaration-track:e5595fa8739ffa387b56bf25ee40afa8c748ed4367df10b25e125d82d407f62b` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--f42f5ed294e39438c21d2e8d.md) | 167 | `declaration-track:f42f5ed294e39438c21d2e8d64db8f62e4a3b2aa037ccb60212b157973708152` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--968ec3b839ff01976967ffeb.md) | 172 | `declaration-track:968ec3b839ff01976967ffeb889de575e68cef9db62d4ca500034559011869b6` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant8fcbba190fba7ebe8d4fabaa8b120b5ba9fac08e08b634c1d3ce807e95bbbf57.lean/declarations/example--e130664f0c5704fe0b602908.md) | 176 | `declaration-track:e130664f0c5704fe0b602908ee3b066fca1b23af1d8565437ef2a7cc914a19b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
