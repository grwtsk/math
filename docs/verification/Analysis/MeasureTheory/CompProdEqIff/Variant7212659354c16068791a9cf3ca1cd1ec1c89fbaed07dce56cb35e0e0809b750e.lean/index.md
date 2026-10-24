# Verification target: GRWTSK.Analysis.MeasureTheory.CompProdEqIff.Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2f5c7ec230e3488b4c5aea26ff43b334cb3b02c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CompProdEqIff/Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2f5c7ec230e3488b4c5aea26ff43b334cb3b02c`.

Source path: `GRWTSK/Analysis/MeasureTheory/CompProdEqIff/Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CompProdEqIff/Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.AbsolutelyContinuous` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [compProd_withDensity](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e.lean/declarations/compprod-withdensity--c4169fa9f58a66308b9840d1.md) | 34 | `result-track:c4169fa9f58a66308b9840d1f65f5eb2286b7aa9eccb6009dc3bf0605552ce58` |
| 2 | `lemma` | [ae_eq_of_compProd_eq](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e.lean/declarations/ae-eq-of-compprod-eq--e64501ee1b636667c8b3999f.md) | 51 | `result-track:e64501ee1b636667c8b3999f0c071a0cd1893ec480159c6392fd8bbcbf4c3bca` |
| 3 | `lemma` | [compProd_eq_iff](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e.lean/declarations/compprod-eq-iff--182d35244e3047cbd457f64d.md) | 71 | `result-track:182d35244e3047cbd457f64daaaf0e71d08ad532e68f25a197db56a947351577` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
