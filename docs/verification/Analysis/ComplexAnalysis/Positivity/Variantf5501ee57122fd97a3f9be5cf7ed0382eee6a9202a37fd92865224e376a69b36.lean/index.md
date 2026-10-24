# Verification target: GRWTSK.Analysis.ComplexAnalysis.Positivity.Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b44c0396d403cf1cc4a168e937bd9bb19683c430",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Positivity/Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b44c0396d403cf1cc4a168e937bd9bb19683c430`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Positivity/Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Positivity/Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.TaylorSeries` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonneg_of_iteratedDeriv_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36.lean/declarations/nonneg-of-iteratedderiv-nonneg--0c1e52c6de006d71b25dd78e.md) | 34 | `result-track:0c1e52c6de006d71b25dd78ee61772f650cb97559028fb60085936cd71dd29ba` |
| 2 | `theorem` | [nonneg_of_iteratedDeriv_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36.lean/declarations/nonneg-of-iteratedderiv-nonneg--761cff856887556f5b0ec8c2.md) | 55 | `result-track:761cff856887556f5b0ec8c2fe5070939c5ed2e66e0ccc83864d1ebf60ec3887` |
| 3 | `theorem` | [apply_le_of_iteratedDeriv_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36.lean/declarations/apply-le-of-iteratedderiv-nonneg--5373085162897c8d5a0046bd.md) | 65 | `result-track:5373085162897c8d5a0046bddfc347a9812757253d6a9fc8b77d58fa87d68f12` |
| 4 | `theorem` | [apply_le_of_iteratedDeriv_alternating](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36.lean/declarations/apply-le-of-iteratedderiv-alternating--a35b3435bde2e494dca7e35c.md) | 80 | `result-track:a35b3435bde2e494dca7e35cfaf59c0795de17b04759c07e12a74091fa690d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
