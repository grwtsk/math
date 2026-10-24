# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualGoodKernel.Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6046b03ecc61afa5f11d3a77f8bfecc44ec5bb29",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6046b03ecc61afa5f11d3a77f8bfecc44ec5bb29`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogarithmicSource` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualLogSource_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/declarations/actuallogsource-contdiff--93f703f9d9c1fc0b976d652c.md) | 18 | `result-track:93f703f9d9c1fc0b976d652c79627fc72d97575c6779b43350d361c397c7ba18` |
| 2 | `theorem` | [actualLogSource_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/declarations/actuallogsource-tendsto-zero--9e0bbd74abbad90c4d28b6be.md) | 36 | `result-track:9e0bbd74abbad90c4d28b6beb17eb84ace89082619fa06d617ee547fc64c1cae` |
| 3 | `theorem` | [actualLogSource_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/declarations/actuallogsource-deriv-hascompactsupport--50974291eb6e746804a99a92.md) | 43 | `result-track:50974291eb6e746804a99a9298088cf27e275104199e6d6ee54381783401dfcf` |
| 4 | `theorem` | [actualLogSource_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/declarations/actuallogsource-integrable-global--f916e49c4585283c13829f1f.md) | 47 | `result-track:f916e49c4585283c13829f1fb80abc79e66cd538b8dbc4cbc97e6fefb7b432a6` |
| 5 | `theorem` | [actualLogSource_weighted_derivative_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/declarations/actuallogsource-weighted-derivative-integrable-global--46450326f68b0eb28def53ad.md) | 52 | `result-track:46450326f68b0eb28def53add785e2836d5be78bf701479517c512c71a74ed86` |
| 6 | `theorem` | [actualLogSource_weighted_derivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/declarations/actuallogsource-weighted-derivative-integrable--ab5bae73c86837bf1422970b.md) | 59 | `result-track:ab5bae73c86837bf1422970badbadfea2f36f6d16b87fd42521f39894eff8d4b` |
| 7 | `theorem` | [actual_good_kernel_hypotheses](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/declarations/actual-good-kernel-hypotheses--8c4f707d93145f0ee7f1a3ee.md) | 63 | `result-track:8c4f707d93145f0ee7f1a3eef5f341a3a8ab5711e2a325a7935c005358d36c98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
