# Verification target: GRWTSK.Analysis.FunctionalAnalysis.TestFunctions.Variant178d60ba7b74497d483ce55cd824019fdf2bbe78e5cce08f370efa3d2cf1cc2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b432eb8d663f060220a7a8e0bee88698cbe44c4",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TestFunctions/Variant178d60ba7b74497d483ce55cd824019fdf2bbe78e5cce08f370efa3d2cf1cc2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/TestFunctions/Variant178d60ba7b74497d483ce55cd824019fdf2bbe78e5cce08f370efa3d2cf1cc2f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/TestFunctions/Variant178d60ba7b74497d483ce55cd824019fdf2bbe78e5cce08f370efa3d2cf1cc2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b432eb8d663f060220a7a8e0bee88698cbe44c4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TestFunctions/Variant178d60ba7b74497d483ce55cd824019fdf2bbe78e5cce08f370efa3d2cf1cc2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TestFunctions/Variant178d60ba7b74497d483ce55cd824019fdf2bbe78e5cce08f370efa3d2cf1cc2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RHTestFunction](../../../../../mathematics/Analysis/FunctionalAnalysis/TestFunctions/Variant178d60ba7b74497d483ce55cd824019fdf2bbe78e5cce08f370efa3d2cf1cc2f.lean/declarations/rhtestfunction--7956fb693681e1113030ec19.md) | 34 | `declaration-track:7956fb693681e1113030ec19e13560f40d63b0778d76deb978fbc654ef46c3e1` |
| 2 | `theorem` | [rh_test_function_has_schwartz_map](../../../../../mathematics/Analysis/FunctionalAnalysis/TestFunctions/Variant178d60ba7b74497d483ce55cd824019fdf2bbe78e5cce08f370efa3d2cf1cc2f.lean/declarations/rh-test-function-has-schwartz-map--1e7cbeed003c91081bb808f1.md) | 38 | `result-track:1e7cbeed003c91081bb808f1226ddb31fcecb51860205ef01034a0ee1d284c03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
