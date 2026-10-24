# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FractionalMellin.Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66b3ff770812875a4868a8421c1f2643c525a7e3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66b3ff770812875a4868a8421c1f2643c525a7e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel--920d749482b7cd8008a6cbff.md) | 14 | `declaration-track:920d749482b7cd8008a6cbffff2439b7b2750f10456994a9242f829ef405fd91` |
| 2 | `theorem` | [fractionalKernel_below_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel-below-one--4d0b60ee07be947dba0b7cb2.md) | 18 | `result-track:4d0b60ee07be947dba0b7cb2237b665b3d46a62ddf2289a6a5b9b79d9e309d4e` |
| 3 | `theorem` | [fractionalKernel_integrable_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel-integrable-tail--981ffaa14f59c49f3fd94185.md) | 29 | `result-track:981ffaa14f59c49f3fd941855d8143f5256fdc27ebc7b86c930bdd74439702d4` |
| 4 | `theorem` | [fractionalKernel_integrable_near_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel-integrable-near-zero--2d57dd85c1e261bbd035cfce.md) | 45 | `result-track:2d57dd85c1e261bbd035cfce45570810d98024c4d2e62bf7a7396bbc66fa8384` |
| 5 | `theorem` | [fractionalKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel-integrable--fdbbf9add0ab860a549a9ed2.md) | 55 | `result-track:fdbbf9add0ab860a549a9ed20b784894413418029fe4340632e1fd3239377ee2` |
| 6 | `theorem` | [fractionalKernel_integral_near_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel-integral-near-zero--0b4d28b1f26496aeb3f36962.md) | 62 | `result-track:0b4d28b1f26496aeb3f369622a64f591d34eeb2be961f7594416fae13ff77915` |
| 7 | `theorem` | [fractionalKernel_integral_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel-integral-tail--ae94299a1b2a6b38bf321e0d.md) | 80 | `result-track:ae94299a1b2a6b38bf321e0dffbd4542718bce1da7bd9c86c75d452c0b64f7e2` |
| 8 | `theorem` | [fractionalKernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel-integral--d14d5bc8947512a7151b3d83.md) | 113 | `result-track:d14d5bc8947512a7151b3d83f274be0303c312e3451ddc042983ed76998b200f` |
| 9 | `theorem` | [fractionalKernel_scaled_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel-scaled-integrable--50bc8443eb40f2467202ccf0.md) | 121 | `result-track:50bc8443eb40f2467202ccf05dfc2b5d8ea6056c593a21a686dc1e76cc018766` |
| 10 | `theorem` | [fractionalKernel_scaled_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variant44eb135846b9fab8298b36009b694a0102a9ebe081ee44edaeda3610f90fd538.lean/declarations/fractionalkernel-scaled-integral--aebb91d62f1620a966c12ccb.md) | 137 | `result-track:aebb91d62f1620a966c12ccb280246e1f50172e08090f2b6c9122d07b93fe126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
