# Verification target: GRWTSK.Analysis.MeasureTheory.Inner.Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4672f3779e53c73391e6a182386717b5b8ce6147",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4672f3779e53c73391e6a182386717b5b8ce6147`.

Source path: `GRWTSK/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Measurable.inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean/declarations/measurable-inner--592afe0351f4e8a7ff15f02e.md) | 28 | `result-track:592afe0351f4e8a7ff15f02e151bcefad557d4f0f8cca76e1093a00d5aacb5aa` |
| 2 | `theorem` | [Measurable.const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean/declarations/measurable-const-inner--63fee7ef4aa59a0f61fe98e9.md) | 34 | `result-track:63fee7ef4aa59a0f61fe98e9a29867069de334fbbca7c5e2522f5130000bda1c` |
| 3 | `theorem` | [Measurable.inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean/declarations/measurable-inner-const--0f69b8c07ef82634afbcd137.md) | 40 | `result-track:0f69b8c07ef82634afbcd137b719e0524ef12439dd36d14a082312455bc1d2ac` |
| 4 | `theorem` | [AEMeasurable.inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean/declarations/aemeasurable-inner--c8472c9cc493488219b1bae7.md) | 46 | `result-track:c8472c9cc493488219b1bae7e6fb4cb2e2fff0b1fe8acd0bf2e33a0e7de46171` |
| 5 | `theorem` | [AEMeasurable.const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean/declarations/aemeasurable-const-inner--a089d35313b96df7debb1bbf.md) | 55 | `result-track:a089d35313b96df7debb1bbf627d37f2f577d1631d7e2f4436e2784acda6215f` |
| 6 | `theorem` | [AEMeasurable.inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641.lean/declarations/aemeasurable-inner-const--276d5074ad178b1758023633.md) | 62 | `result-track:276d5074ad178b1758023633ba317ae8c1eb695f6c57f3c37dd28dc018427f74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
