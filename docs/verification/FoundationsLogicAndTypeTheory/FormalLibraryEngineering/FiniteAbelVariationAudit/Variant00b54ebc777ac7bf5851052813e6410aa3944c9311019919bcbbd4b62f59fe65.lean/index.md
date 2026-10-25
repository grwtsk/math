# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteAbelVariationAudit.Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48e119f9511ccdbf1a9e5867c622247780c32f69",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48e119f9511ccdbf1a9e5867c622247780c32f69`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_Icc_mul_by_parts_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/declarations/sum-icc-mul-by-parts-ico--0c41573dc3bb39da82e248d6.md) | 18 | `result-track:0c41573dc3bb39da82e248d64c40310cc91047a9c0283294c8824f74d9c8c9de` |
| 2 | `theorem` | [sum_Icc_mul_by_parts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/declarations/sum-icc-mul-by-parts--cab0c04243962ad06d77257b.md) | 34 | `result-track:cab0c04243962ad06d77257b0d8fd4630964697df430f885b7b8738ca10dd75a` |
| 3 | `theorem` | [centered_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/declarations/centered-sum--dd8a52c4ca59a96c9b8aa24e.md) | 44 | `result-track:dd8a52c4ca59a96c9b8aa24efdca029ff529fb2d7004135e86d2bf5768a34609` |
| 4 | `theorem` | [centered_sum_mul_by_parts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/declarations/centered-sum-mul-by-parts--cc734c048cc0dfdbfb348d13.md) | 49 | `result-track:cc734c048cc0dfdbfb348d1352807c461b10d738ece2bd048423a3b989e6dd10` |
| 5 | `theorem` | [weighted_error_abs_le_sqrt_variation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/declarations/weighted-error-abs-le-sqrt-variation--122bc5f5c2208ec79b5e84ff.md) | 58 | `result-track:122bc5f5c2208ec79b5e84ff8d95864f50ea8afafe88d1750fe51066fe775afc` |
| 6 | `theorem` | [weighted_error_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/declarations/weighted-error-zero--99fa39068f35b0fd900087a0.md) | 98 | `result-track:99fa39068f35b0fd900087a04402a445fbbff0e8963e70f6c179c78f75df7488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
