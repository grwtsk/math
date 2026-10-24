# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8a96a15d2dbf54e3853a6ed98e74f2c268a42fc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8a96a15d2dbf54e3853a6ed98e74f2c268a42fc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [volume_regionBetween_eq_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/declarations/volume-regionbetween-eq-integral--1b228eb9688ec7e7926c2bd5.md) | 28 | `result-track:1b228eb9688ec7e7926c2bd5c942ff07937c71086dc16898ebb87c265486cd95` |
| 2 | `theorem` | [volume_regionBetween_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/declarations/volume-regionbetween-eq-integral--3b6ef3290f3835ae408a0375.md) | 42 | `result-track:3b6ef3290f3835ae408a0375e2a8063dc80aa85a479a46a0d7bfd554e8b2f51b` |
| 3 | `theorem` | [Real.integrable_of_summable_norm_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/declarations/real-integrable-of-summable-norm-icc--e78d431f09580a2db8c6e183.md) | 59 | `result-track:e78d431f09580a2db8c6e18340f9d673ad020036d3e3b195968c7f8ee5d71ac1` |
| 4 | `theorem` | [integral_comp_neg_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/declarations/integral-comp-neg-iic--47fdd28844e6d5f376fc00e7.md) | 89 | `result-track:47fdd28844e6d5f376fc00e771787930af331536fb671495d8e2a4b121c627c1` |
| 5 | `theorem` | [integral_comp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/declarations/integral-comp-neg-ioi--257f51c637ad3913eb937521.md) | 99 | `result-track:257f51c637ad3913eb9375216a3a2e2141890351830f85cd1009230d8f961132` |
| 6 | `theorem` | [integral_comp_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/declarations/integral-comp-abs--89cb1cad5367f1d642196ca6.md) | 104 | `result-track:89cb1cad5367f1d642196ca65d6841e206c016feed40813b19b73f9d00507edc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
