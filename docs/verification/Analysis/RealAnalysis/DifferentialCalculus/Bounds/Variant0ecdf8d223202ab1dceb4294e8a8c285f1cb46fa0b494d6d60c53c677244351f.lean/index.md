# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bounds.Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b09875f83f53cc49d989ae308c5697414b4dad0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b09875f83f53cc49d989ae308c5697414b4dad0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/declarations/macro-rules--61e23beef60cbb437eb081d3.md) | 36 | `declaration-track:61e23beef60cbb437eb081d3eed790c0bfd6c4060bde0578b2a3d5d8d8d6da84` |
| 2 | `theorem` | [sin_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/declarations/sin-lt--ecb71be644a3da1d37985153.md) | 45 | `result-track:ecb71be644a3da1d3798515397bcc244e8e89a27f1af867e441f037d967f0023` |
| 3 | `theorem` | [sin_gt_sub_cube](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/declarations/sin-gt-sub-cube--57768a6469c9e331de5279e5.md) | 63 | `result-track:57768a6469c9e331de5279e5624d35627468976a7187b9903b6fea2bda1291e6` |
| 4 | `theorem` | [deriv_tan_sub_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/declarations/deriv-tan-sub-id--149c3b958c4f323e8d17c261.md) | 76 | `result-track:149c3b958c4f323e8d17c261aea7dc0d3a09537e6043e992049f3e4943e05aac` |
| 5 | `theorem` | [lt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/declarations/lt-tan--a8ba467ab05ce262e7ac4bb6.md) | 85 | `result-track:a8ba467ab05ce262e7ac4bb65fe7fe7d58cb1a9b9c68cafb4c4d5c7593c186c1` |
| 6 | `theorem` | [le_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/declarations/le-tan--ec3a77fb44dc1996e5bd928f.md) | 120 | `result-track:ec3a77fb44dc1996e5bd928f27a06be16fa98f70dc7ab6ef8427f98e6ebf662e` |
| 7 | `theorem` | [cos_lt_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/declarations/cos-lt-one-div-sqrt-sq-add-one--60b309ed87c1e2b317cc9513.md) | 126 | `result-track:60b309ed87c1e2b317cc951323b6514896bfe215c05e0d2e08be898432fc0b33` |
| 8 | `theorem` | [cos_le_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant0ecdf8d223202ab1dceb4294e8a8c285f1cb46fa0b494d6d60c53c677244351f.lean/declarations/cos-le-one-div-sqrt-sq-add-one--562f43cf68b290503b7f83b8.md) | 150 | `result-track:562f43cf68b290503b7f83b8ac34728c01e72d7764e0e24e8c01f2eae8a86324` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
