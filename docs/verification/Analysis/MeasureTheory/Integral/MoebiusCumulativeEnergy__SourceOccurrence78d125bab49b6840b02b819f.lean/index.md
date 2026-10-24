# Verification target: GRWTSK.MeasureTheory.Integral.MoebiusCumulativeEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d63aa10a7624ab5bcadab6f0c905ba644865e18",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d63aa10a7624ab5bcadab6f0c905ba644865e18`.

Source path: `GRWTSK/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [globalPickup](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/globalpickup--b3e59ea4eecdc96997a907c7.md) | 13 | `declaration-track:b3e59ea4eecdc96997a907c7154692115679fa135340f22a70cb4d17412bec86` |
| 2 | `theorem` | [inventory_mono](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/inventory-mono--71f885bbe7d004d15bf3453a.md) | 15 | `result-track:71f885bbe7d004d15bf3453a1089e5f408de748d7a9026d129b7b9dca71eadb8` |
| 3 | `theorem` | [pickup_cutoff_consistent](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/pickup-cutoff-consistent--2fe6da3c8b15ce4ce1aea93e.md) | 21 | `result-track:2fe6da3c8b15ce4ce1aea93e3786a3cb493a76bdd34fbbe5d26c636e91331e5e` |
| 4 | `theorem` | [pickup_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/pickup-continuous--f254de3ae305f9ea6e9a0cfa.md) | 34 | `result-track:f254de3ae305f9ea6e9a0cfa094308aca7e46dde72673b8d3ba9bdae066e0f38` |
| 5 | `theorem` | [globalPickup_continuous](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/globalpickup-continuous--af93463892fa510803f54a18.md) | 41 | `result-track:af93463892fa510803f54a183fc5291deb93c1362e558cd43349f931975d88f2` |
| 6 | `theorem` | [energy_eq_global_integral](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/energy-eq-global-integral--8d72bd49ce7736dd998ff657.md) | 48 | `result-track:8d72bd49ce7736dd998ff657e5e02d65dbca2791cc966e123ab8360273409e5d` |
| 7 | `theorem` | [energy_common_cutoff](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/energy-common-cutoff--c63aca508c2ef424af54f120.md) | 55 | `result-track:c63aca508c2ef424af54f120c76c4f2160cefdb09aa85257ee214c5c7246cfcc` |
| 8 | `theorem` | [energy_monotone](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/energy-monotone--e5de8a93bd9fc7dd3ec2aaa0.md) | 62 | `result-track:e5de8a93bd9fc7dd3ec2aaa0218b1b434454c399063de6caf434d64eacaa148a` |
| 9 | `theorem` | [energy_zero](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/energy-zero--b3bb8d96d590d60d5b6f481c.md) | 68 | `result-track:b3bb8d96d590d60d5b6f481c1b674779f55b73f9a23455de323acf0f56d69f50` |
| 10 | `def` | [windowEnergy](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/windowenergy--8c9476385883a3f2c0944d2e.md) | 70 | `declaration-track:8c9476385883a3f2c0944d2e21daa99112b18d5fa737ee7340acb0c647108691` |
| 11 | `theorem` | [windowEnergy_common_cutoff](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/windowenergy-common-cutoff--6cb5ffccd0e197371778573d.md) | 72 | `result-track:6cb5ffccd0e197371778573dc76e0f1ded0fd9924c5dfa25d3fa31c2936ed53f` |
| 12 | `theorem` | [energy_successor](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/energy-successor--cf3a3a693dd18bf38ab500ac.md) | 79 | `result-track:cf3a3a693dd18bf38ab500ac9b8d164addbcd15a899edc8878550030e3037c2c` |
| 13 | `theorem` | [fixed_window_implies_energy_polynomial](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/fixed-window-implies-energy-polynomial--3d5c09d5d0200024442f5ffa.md) | 98 | `result-track:3d5c09d5d0200024442f5ffa61e9af7627c501a183cf000ea94ad7c0b52a9db7` |
| 14 | `theorem` | [fixed_window_implies_literal_P04](../../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/declarations/fixed-window-implies-literal-p04--fb92100e4035772cf5c2a1ea.md) | 132 | `result-track:fb92100e4035772cf5c2a1ea3f2329d4c1abc1fd1136ea70c6827d418b75806a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
