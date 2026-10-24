# Verification target: GRWTSK.Analysis.MeasureTheory.ContinuousLinearMap.Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "849b96854337f959297d8d30e4cf5613ce2b2977",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `849b96854337f959297d8d30e4cf5613ce2b2977`.

Source path: `GRWTSK/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Bilinear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/measurable--075319c491a4510a4f348f83.md) | 35 | `result-track:075319c491a4510a4f348f83cd0db02d50d75200e26fec8e979d89bcf15c8cec` |
| 2 | `theorem` | [measurable_comp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/measurable-comp--73f4bd16e23c7c7283c050c2.md) | 39 | `result-track:73f4bd16e23c7c7283c050c244239a244d1049f3d2619d2ba3f13acafd775fa2` |
| 3 | `instance` | [instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/instmeasurablespace--c5c67876bdf6e87a26f66dc7.md) | 51 | `declaration-track:c5c67876bdf6e87a26f66dc71fd12c36a850a994f60bec48c5053b666f9df104` |
| 4 | `instance` | [instBorelSpace](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/instborelspace--575f8ab5f072864f71da7e36.md) | 54 | `declaration-track:575f8ab5f072864f71da7e36fd3e0e51c29e00507b836094fabbd5d2d70b8f3a` |
| 5 | `theorem` | [measurable_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/measurable-apply--ea5209ea5aae3800f44def32.md) | 58 | `result-track:ea5209ea5aae3800f44def328f4ede18c09a93c6769215bc3e9cc5bef8408ccd` |
| 6 | `theorem` | [measurable_apply'](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/measurable-apply--05270c5c4519e3b6de3e67f6.md) | 63 | `result-track:05270c5c4519e3b6de3e67f61c73dc81dbdca422c535a266fe4b7834db130aad` |
| 7 | `theorem` | [measurable_coe](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/measurable-coe--1505ed9860d52e90660196bf.md) | 68 | `result-track:1505ed9860d52e90660196bf43c0d593d7b6aa8e342498dc2c39267f2457ff82` |
| 8 | `theorem` | [Measurable.apply_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/measurable-apply-continuouslinearmap--b3614dcbe8b36d2c0aa9d06a.md) | 81 | `result-track:b3614dcbe8b36d2c0aa9d06a34f8eb8822fb854f22f46584de0798ebb3b0f599` |
| 9 | `theorem` | [AEMeasurable.apply_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/aemeasurable-apply-continuouslinearmap--6bd4435ce58a92e966899197.md) | 86 | `result-track:6bd4435ce58a92e966899197ec5bda72e83ddc68d1a6b744a45d883e50fb0dfe` |
| 10 | `theorem` | [measurable_smul_const](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/measurable-smul-const--72eb84677cdab9cd7eacccb9.md) | 98 | `result-track:72eb84677cdab9cd7eacccb9df4e296c1a862ce5fbd7232e32da3849dd256e91` |
| 11 | `theorem` | [aemeasurable_smul_const](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351.lean/declarations/aemeasurable-smul-const--a0c9d37fa7c76befbeac72cd.md) | 102 | `result-track:a0c9d37fa7c76befbeac72cd9dc9a0848134b31fcfa53a00e240d601d44e2e10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
