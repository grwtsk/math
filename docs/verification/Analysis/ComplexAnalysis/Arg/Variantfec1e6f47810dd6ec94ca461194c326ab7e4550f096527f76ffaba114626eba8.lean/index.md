# Verification target: GRWTSK.Analysis.ComplexAnalysis.Arg.Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1aa9bc32ea73456bfaed12b4c8f9822894f9733",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1aa9bc32ea73456bfaed12b4c8f9822894f9733`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Convex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Arg` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sameRay_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean/declarations/sameray-iff--4940eaf9ffd7f8bbfae3fa43.md) | 29 | `result-track:4940eaf9ffd7f8bbfae3fa43a7d025d76a111df350a2d58e6b7581145ecd3f7f` |
| 2 | `theorem` | [sameRay_iff_arg_div_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean/declarations/sameray-iff-arg-div-eq-zero--3dcfd9d19b8181e47b29d102.md) | 38 | `result-track:3dcfd9d19b8181e47b29d1025e0cd7197b4623d67fd634068765eaac6c69cf09` |
| 3 | `theorem` | [norm_add_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean/declarations/norm-add-eq-iff--db45c58390de22672b9e0461.md) | 44 | `result-track:db45c58390de22672b9e04613b0de1f512a6b729718e9d68e0986b8db6518a95` |
| 4 | `theorem` | [norm_sub_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean/declarations/norm-sub-eq-iff--6f67a77572171bb79fa3257c.md) | 47 | `result-track:6f67a77572171bb79fa3257c2fb9fb2823025ecf3fe021fc3abff3f71407efa2` |
| 5 | `theorem` | [sameRay_of_arg_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean/declarations/sameray-of-arg-eq--3211aeddd4509cdb6e34007c.md) | 50 | `result-track:3211aeddd4509cdb6e34007c1b69aba2a58fe804ef9473154d55212318d98e01` |
| 6 | `theorem` | [norm_add_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean/declarations/norm-add-eq--75c475653ef2110d226b9f58.md) | 53 | `result-track:75c475653ef2110d226b9f58674662597cf1f45d1dc945ac46314c2ce8bdd889` |
| 7 | `theorem` | [norm_sub_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Arg/Variantfec1e6f47810dd6ec94ca461194c326ab7e4550f096527f76ffaba114626eba8.lean/declarations/norm-sub-eq--4f00ea3fb213239e20f6dae3.md) | 56 | `result-track:4f00ea3fb213239e20f6dae350cb93aeaef2aee0ad453f60a15fe478a7f5cd04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
