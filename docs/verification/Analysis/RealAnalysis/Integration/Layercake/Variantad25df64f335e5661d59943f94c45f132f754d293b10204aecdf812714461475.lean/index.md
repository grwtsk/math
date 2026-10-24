# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Layercake.Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9aeb10ce211de0ececd83a30212e61be39f0b41",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9aeb10ce211de0ececd83a30212e61be39f0b41`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_comp_eq_lintegral_meas_le_mul_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/lintegral-comp-eq-lintegral-meas-le-mul-of-measurable--c26108d8ef72b3f8600bcca3.md) | 80 | `result-track:c26108d8ef72b3f8600bcca3047f3e1993cac1226e9c3fcb86daf1fc8f3d0472` |
| 2 | `theorem` | [lintegral_comp_eq_lintegral_meas_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/lintegral-comp-eq-lintegral-meas-le-mul--56a87c28e0360d4400622e1f.md) | 172 | `result-track:56a87c28e0360d4400622e1f2f34c07125d44b41cb92d387f076b015b677c98a` |
| 3 | `theorem` | [lintegral_eq_lintegral_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/lintegral-eq-lintegral-meas-le--d7a959cb51fb435eb869b7f3.md) | 212 | `result-track:d7a959cb51fb435eb869b7f34414243960683d35ad971793ed8aaeba78c364cd` |
| 4 | `theorem` | [lintegral_rpow_eq_lintegral_meas_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/lintegral-rpow-eq-lintegral-meas-le-mul--42423a7bc9e50409dc16c058.md) | 234 | `result-track:42423a7bc9e50409dc16c05851d5c82321531a0847a067732342068098dd0e9e` |
| 5 | `theorem` | [meas_le_ne_meas_lt_subset_meas_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/meas-le-ne-meas-lt-subset-meas-pos--1f5e84031c3e4cc2b78a0aff.md) | 271 | `result-track:1f5e84031c3e4cc2b78a0aff61e534e9b9e07778620d1f76dcf2993beaa98b68` |
| 6 | `theorem` | [countable_meas_le_ne_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/countable-meas-le-ne-meas-lt--9d05071b577473eb0baa1477.md) | 293 | `result-track:9d05071b577473eb0baa14775badfe1de63f0c406a697cfde580982b8044a674` |
| 7 | `theorem` | [meas_le_ae_eq_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/meas-le-ae-eq-meas-lt--148f0959030dc1ed2048b293.md) | 300 | `result-track:148f0959030dc1ed2048b2936024a4446a406154b9f312fa2bcebd72d80a7be5` |
| 8 | `theorem` | [lintegral_comp_eq_lintegral_meas_lt_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/lintegral-comp-eq-lintegral-meas-lt-mul--127ff82504c721f0dfc98cc3.md) | 322 | `result-track:127ff82504c721f0dfc98cc3fbf8c12f4b17ac7eddcdebbef6c3fbb1965c4f86` |
| 9 | `theorem` | [lintegral_eq_lintegral_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/lintegral-eq-lintegral-meas-lt--9e99d40858bbaf1c0c3a6a9c.md) | 340 | `result-track:9e99d40858bbaf1c0c3a6a9cb4ac3328dc08c40c7eb1ec2e1e20eac5b3332c80` |
| 10 | `theorem` | [lintegral_rpow_eq_lintegral_meas_lt_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/declarations/lintegral-rpow-eq-lintegral-meas-lt-mul--43da5e56534d35c71efa669d.md) | 356 | `result-track:43da5e56534d35c71efa669dec40e7c578a80f3d5ec4933b0d932a1e8a5a115b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
