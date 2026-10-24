# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FiniteMeasureExt.Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c41a699c312749c113bc7d009ef7fbaeda2357a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c41a699c312749c113bc7d009ef7fbaeda2357a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.BoundedContinuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.MulExpNegMulSqIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.HasOuterApproxClosed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext_of_forall_mem_subalgebra_integral_eq_of_pseudoEMetric_complete_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean/declarations/ext-of-forall-mem-subalgebra-integral-eq-of-pseudoemetric-complete-count--4b7fd685e21b1f8ec16090ac.md) | 40 | `result-track:4b7fd685e21b1f8ec16090aca015c5cc983240ea19a27c2ded7ebb8c053192d4` |
| 2 | `theorem` | [ext_of_forall_mem_subalgebra_integral_eq_of_polish](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean/declarations/ext-of-forall-mem-subalgebra-integral-eq-of-polish--45f53ffef8ed56c948712a4a.md) | 76 | `result-track:45f53ffef8ed56c948712a4a09b50a8c54e0d664bf5a4f3c90deedb2167eaf24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
