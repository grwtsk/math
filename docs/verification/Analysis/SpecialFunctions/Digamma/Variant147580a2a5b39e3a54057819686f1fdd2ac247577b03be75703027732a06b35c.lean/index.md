# Verification target: GRWTSK.Analysis.SpecialFunctions.Digamma.Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d627d94a189a80cbdd3936f8603734529af80ede",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d627d94a189a80cbdd3936f8603734529af80ede`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [digamma](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma--dba5446de31bdbe673630872.md) | 56 | `declaration-track:dba5446de31bdbe673630872e5788ba23644d1e9169b24eb643f43cfca179963` |
| 2 | `theorem` | [digamma_def](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma-def--d3ac6a4f6914fedd1cc3fc66.md) | 58 | `result-track:d3ac6a4f6914fedd1cc3fc66a0ce108fb9055c252283dcfb39df35dd361224f3` |
| 3 | `theorem` | [digamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma-zero--a35b3d05402fa6223b6b194f.md) | 61 | `result-track:a35b3d05402fa6223b6b194ffe725dfeded767544620156b5fb4fceb8ed242f4` |
| 4 | `theorem` | [digamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma-one--eed04fa84efcae262b604023.md) | 64 | `result-track:eed04fa84efcae262b6040238a4f296bae1f588b32d8a7a54acbb4b409c3b3b4` |
| 5 | `theorem` | [digamma_one_half](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma-one-half--98d7d596da65148345efc635.md) | 67 | `result-track:98d7d596da65148345efc635cd39adc0877e828a64bea4211e3707efe90d0a9b` |
| 6 | `theorem` | [digamma_apply_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma-apply-add-one--438cacd9324eb1d825115529.md) | 72 | `result-track:438cacd9324eb1d8251155295b54920b2a788bd8d9792c8a3c49aabb6a3217d1` |
| 7 | `theorem` | [digamma_apply_add_nat](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma-apply-add-nat--642877853249e57ad6873f83.md) | 80 | `result-track:642877853249e57ad6873f8331e0b2e5554a8663f65b0bde40200bb4d0488693` |
| 8 | `theorem` | [digamma_nat_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma-nat-add-one--8ff93ba77883b66adff44ab9.md) | 93 | `result-track:8ff93ba77883b66adff44ab9abb8e8cfce3ff98cb7a697167e5ba1060a52282c` |
| 9 | `theorem` | [digamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma-one-sub--3313dbbe063a20fdcac4ee61.md) | 102 | `result-track:3313dbbe063a20fdcac4ee6116e84d7a11d95c7e8d94cd999f8864a62032758e` |
| 10 | `theorem` | [meromorphic_digamma](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/meromorphic-digamma--beee29e66348ed7b11823470.md) | 116 | `result-track:beee29e66348ed7b1182347006c0cab3c8065e16d639eeece919762b6f128ecb` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.SpecialFunctions.Digamma.Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.HasDerivAt.logDeriv_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/root-grwtsk-analysis-specialfunctions-digamma-variantbdd92157a3511e187a0--3a479cea5d92bca9d8f058eb.md) | 121 | `result-track:3a479cea5d92bca9d8f058eb0626fc232d6093ea8a559e16f349e0d25fec6006` |
| 12 | `theorem` | [digamma_two_mul](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/declarations/digamma-two-mul--b2f6655ff9d8307f11f38113.md) | 132 | `result-track:b2f6655ff9d8307f11f3811312f8ac832999212633d8c1831a1d239ee8e4a924` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
