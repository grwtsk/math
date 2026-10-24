# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FiniteMeasureExt.Variant609ecaffbe292193d4eda0f1f1781be5c6ceba7d68cc26fac2c64a762b8cdb8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5be00f131bd864287879e3c9b6d4e7b7ceba6a38",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant609ecaffbe292193d4eda0f1f1781be5c6ceba7d68cc26fac2c64a762b8cdb8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant609ecaffbe292193d4eda0f1f1781be5c6ceba7d68cc26fac2c64a762b8cdb8f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant609ecaffbe292193d4eda0f1f1781be5c6ceba7d68cc26fac2c64a762b8cdb8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5be00f131bd864287879e3c9b6d4e7b7ceba6a38`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant609ecaffbe292193d4eda0f1f1781be5c6ceba7d68cc26fac2c64a762b8cdb8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant609ecaffbe292193d4eda0f1f1781be5c6ceba7d68cc26fac2c64a762b8cdb8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.BoundedContinuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.MulExpNegMulSqIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.HasOuterApproxClosed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext_of_forall_mem_subalgebra_integral_eq_of_pseudoEMetric_complete_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant609ecaffbe292193d4eda0f1f1781be5c6ceba7d68cc26fac2c64a762b8cdb8f.lean/declarations/ext-of-forall-mem-subalgebra-integral-eq-of-pseudoemetric-complete-count--40fb98b996fbe46f623a121c.md) | 32 | `result-track:40fb98b996fbe46f623a121c3cc97a4f98fa2b07bb58ac2e6baab0028e7b3967` |
| 2 | `theorem` | [ext_of_forall_mem_subalgebra_integral_eq_of_polish](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant609ecaffbe292193d4eda0f1f1781be5c6ceba7d68cc26fac2c64a762b8cdb8f.lean/declarations/ext-of-forall-mem-subalgebra-integral-eq-of-polish--a17dffd9820998937912dd78.md) | 68 | `result-track:a17dffd9820998937912dd78d4377cfbd117e4b93a1ed37387edaa07ec5931e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
