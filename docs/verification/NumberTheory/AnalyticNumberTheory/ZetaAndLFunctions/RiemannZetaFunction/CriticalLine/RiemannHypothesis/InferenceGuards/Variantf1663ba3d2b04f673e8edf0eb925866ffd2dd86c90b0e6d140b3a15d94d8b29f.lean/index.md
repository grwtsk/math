# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InferenceGuards.Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f600c1a80e39d0f31299aec7c745244525b5bd24",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InferenceGuards/Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InferenceGuards/Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InferenceGuards/Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f600c1a80e39d0f31299aec7c745244525b5bd24`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InferenceGuards/Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InferenceGuards/Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Reflection.Polarization` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Reflection.Interval` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Coverage.Finite` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [trivial_zero_is_excluded](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InferenceGuards/Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f.lean/declarations/trivial-zero-is-excluded--cac10029030e11dfe65a1549.md) | 18 | `result-track:cac10029030e11dfe65a1549e992ea048050673b13f68ef288f21a93dfc0d26b` |
| 2 | `theorem` | [pole_is_excluded](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InferenceGuards/Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f.lean/declarations/pole-is-excluded--afaeafb90559ed994b9c9fa5.md) | 26 | `result-track:afaeafb90559ed994b9c9fa5e1e88cc41310560d50f4c96d2331fa1e3a6625b8` |
| 3 | `theorem` | [critical_reflection_is_not_gaussian_rotation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InferenceGuards/Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f.lean/declarations/critical-reflection-is-not-gaussian-rotation--da5a2b2792de1722a41659c5.md) | 31 | `result-track:da5a2b2792de1722a41659c57962c713f1c4967d54b1cc1b794c4162b6ae841d` |
| 4 | `theorem` | [hermitian_does_not_imply_positive_semidefinite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InferenceGuards/Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f.lean/declarations/hermitian-does-not-imply-positive-semidefinite--e020a7b08ee44a5eba652a5e.md) | 39 | `result-track:e020a7b08ee44a5eba652a5ea28d315ee17010b50ace9fc5100d7bf67269deca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
