# Verification target: GRWTSK.Analysis.MeasureTheory.Unique.Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60758afde70d320b9eeca6dbf816d00a25d73622",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60758afde70d320b9eeca6dbf816d00a25d73622`.

Source path: `GRWTSK/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Disintegration.Integral` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_condKernel_of_measure_eq_compProd'](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/declarations/eq-condkernel-of-measure-eq-compprod--1457c7777d93ddf357e53826.md) | 55 | `result-track:1457c7777d93ddf357e538264c4fdb7e9f03a866e0dd7a02756a723268924236` |
| 2 | `lemma` | [eq_condKernel_of_measure_eq_compProd_real](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/declarations/eq-condkernel-of-measure-eq-compprod-real--5132bbaede132279671aaa0b.md) | 67 | `result-track:5132bbaede132279671aaa0bdf658c082b9038b860ec107ac8b853445d695bbe` |
| 3 | `theorem` | [eq_condKernel_of_measure_eq_compProd](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/declarations/eq-condkernel-of-measure-eq-compprod--0df1922f67555fabd8255adc.md) | 88 | `result-track:0df1922f67555fabd8255adc8115a05eb5987be715469d5c8b47f58fd915d48b` |
| 4 | `lemma` | [condKernel_compProd](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/declarations/condkernel-compprod--2c01b488419d7479ff691120.md) | 133 | `result-track:2c01b488419d7479ff69112006b4f5eb33f0ed71caeb574caa0f65e1a843e985` |
| 5 | `lemma` | [Kernel.apply_eq_measure_condKernel_of_compProd_eq](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/declarations/kernel-apply-eq-measure-condkernel-of-compprod-eq--27a7d4be6b7daa9aa8c5ac1a.md) | 143 | `result-track:27a7d4be6b7daa9aa8c5ac1ad96fd2bb9835eb6be27301af91b05a7bc2953f15` |
| 6 | `lemma` | [Kernel.condKernel_apply_eq_condKernel](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/declarations/kernel-condkernel-apply-eq-condkernel--f582939133ec3d0da507a9b8.md) | 159 | `result-track:f582939133ec3d0da507a9b884908a2f32d8811557cf5243bfb73fcf99b9e735` |
| 7 | `lemma` | [condKernel_const](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/declarations/condkernel-const--b2eba7f74f37523da6e6bb10.md) | 164 | `result-track:b2eba7f74f37523da6e6bb1037c81bfe28af32de5d405aa2b69d60c1f37da459` |
| 8 | `theorem` | [eq_condKernel_of_kernel_eq_compProd](../../../../../mathematics/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/declarations/eq-condkernel-of-kernel-eq-compprod--e74bea0a029258bbac7aed1d.md) | 181 | `result-track:e74bea0a029258bbac7aed1d7cc141625e5534db8de9b2dfbedefcacf2462f60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
