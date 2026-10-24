# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNineHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27a73d8d2cdea5a84ae16359a6aef453eb5d8b85",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27a73d8d2cdea5a84ae16359a6aef453eb5d8b85`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTailDefect`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNineHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightBernstein.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nineHeight_joint_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/nineheight-joint-bound--2574bf0fb136e52d7be744c6.md) | 23 | `result-track:2574bf0fb136e52d7be744c6d33def252623aae04b5673d129f90bb4b5178368` |
| 2 | `theorem` | [nineHeight_multiplier_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/nineheight-multiplier-bound--6bf62f3f991b9ed8382b24cf.md) | 40 | `result-track:6bf62f3f991b9ed8382b24cfe837b7478f297de21edfab6192837a2d4a7b2618` |
| 3 | `theorem` | [nineHeight_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/nineheight-source-error--d07df7fcffa66fabec989f31.md) | 53 | `result-track:d07df7fcffa66fabec989f314e139118ff82dd93079f433f9b34d448e9188054` |
| 4 | `theorem` | [poleNormalized_norm_lower_nineHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/polenormalized-norm-lower-nineheight--c478ab12a750cabc7b6d881f.md) | 70 | `result-track:c478ab12a750cabc7b6d881fd8e4e7f29d7718dca9083460e372248562c75304` |
| 5 | `theorem` | [poleNormalized_nonzero_nineHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/polenormalized-nonzero-nineheight--28fec45b330f6b3d1d2240f9.md) | 75 | `result-track:28fec45b330f6b3d1d2240f957b7d3866b815ac009db1cc8c440b027180a26cb` |
| 6 | `theorem` | [nontrivialZetaZero_height_gt_nine](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/nontrivialzetazero-height-gt-nine--d757dba511b8769d269d8ff2.md) | 83 | `result-track:d757dba511b8769d269d8ff2b6119ab272ce76c46c5b536f9d39d18d14c26905` |
| 7 | `theorem` | [noTargetZero_nineHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/notargetzero-nineheight--cff0f63378ee3ea7487c158a.md) | 100 | `result-track:cff0f63378ee3ea7487c158ab5dee0d48aa3aec201f59de407da388e95dc8737` |
| 8 | `theorem` | [windowRH_nine](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/windowrh-nine--86116b78105d429b80e4f014.md) | 105 | `result-track:86116b78105d429b80e4f014e02a34ff2b750b66f1dd7f3c43d4e9f4cee71303` |
| 9 | `theorem` | [shellRH_eight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/shellrh-eight--460c3ca7fe06c85331992cce.md) | 111 | `result-track:460c3ca7fe06c85331992ccee9ae6f6171a992c56040bef3d38054b6832d4177` |
| 10 | `theorem` | [deformation_norm_lower_nineHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/deformation-norm-lower-nineheight--a23c393626e2c948ce82a3c7.md) | 113 | `result-track:a23c393626e2c948ce82a3c7b8f9d0ee989d5397bc3d1d0c2715f2306025c5f6` |
| 11 | `theorem` | [inverse_deformation_differentiableAt_nineHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/inverse-deformation-differentiableat-nineheight--14cdb03dcb653a10f803fe5b.md) | 123 | `result-track:14cdb03dcb653a10f803fe5b3f722c78c0698c2c77011ad5e86b2a5044ecbee4` |
| 12 | `theorem` | [finiteModel_relative_error_nineHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/finitemodel-relative-error-nineheight--86cbb801e4dc91b207350d12.md) | 134 | `result-track:86cbb801e4dc91b207350d127a014a0001a7667d04293a12716fd6fee1a2c74b` |
| 13 | `theorem` | [window_ten_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/window-ten-of-shell--0071eec8a7ba7b4a8988feb3.md) | 151 | `result-track:0071eec8a7ba7b4a8988feb31bac4d5ecdb9584d0182c53cded94b876273ba40` |
| 14 | `theorem` | [all_windows_of_above_nine](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/all-windows-of-above-nine--acb858f1c265088f0ac4762a.md) | 154 | `result-track:acb858f1c265088f0ac4762ad8ec19a938bb22df6a21819d47ccde8fd043a690` |
| 15 | `theorem` | [rh_of_above_nine](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/declarations/rh-of-above-nine--30defb991286d6be00ac3915.md) | 164 | `result-track:30defb991286d6be00ac39157fbe97a01d418b1424802ab3475a0fefa710b40a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
